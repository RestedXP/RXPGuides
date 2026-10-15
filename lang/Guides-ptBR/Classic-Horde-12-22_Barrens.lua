if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 12-17 Sertões
#displayname 14-18 Sertões << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#next 17-22 Cordilheira das Torres de Pedra/Sertões/Vale Gris


step << Tauren Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >> Entre na Caverna Sopravento
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
    >>Mate |cRXP_ENEMY_Sectários|r. Para pegar um |cRXP_LOOT_Bornal de Reagentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento na Encruzilhada
    .target Kargal Battlescar
step << Warrior !Undead
    #xprate <1.5
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior !Undead
    #xprate <1.5
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1502 >>Entregue Thun'grim Olhafogo
    .accept 1503 >>Aceite Aço forjado
    .target Thun'grim Firegaze
step << Warrior !Undead
    #xprate <1.5
    .goto The Barrens,55.05,26.65
    >>Pegue as |cRXP_PICK_Barras de Aço Forjado|r no |cRXP_LOOT_Baú de Ferro Roubado|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #xprate <1.5
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior !Undead
    #xprate <1.5
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1503 >>Entregue Aço forjado
    .target Thun'grim Firegaze
step << !Shaman !Warrior/Undead
    #softcore
    #completewith ThievesPickup
    .goto The Barrens,50.72,32.61
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Shaman !Warrior/Undead
    #hardcore
    #completewith ThievesPickup
    .subzone 380 >> Vá para A Encruzilhada
step << !Shaman !Warrior/Undead
    #softcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #hardcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step << !Shaman !Warrior/Undead
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue Recrutamento na Encruzilhada << !Druid
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Shaman !Warrior/Undead
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step << !Shaman !Warrior/Undead
    #hardcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << !Shaman !Warrior/Undead
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
    .target Thork
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #hardcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para Orgrimmar!|r
    .fp The Crossroads >> Aprenda a rota de voo da Encruzilhada
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Undead
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Aprenda a rota de voo da Encruzilhada
    .target Devrak
    .isQuestAvailable 1492
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .accept 848 >>Aceite Esporos de Fungos
    .turnin 1358 >>Entregue Uma amostra para Hermógenes << Undead/Rogue/Mage/Priest/Warlock
    .target Apothecary Helbrim
    .isQuestAvailable 848
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .turnin 1358 >>Entregue Uma amostra para Hermógenes << Undead/Rogue/Mage/Priest/Warlock
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_dele|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T135613:0|t[Cano de Atirar do Caçador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << !Shaman !Warrior/Undead
    #label ThievesPickup
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Raptores ladrões
    .target Gazrog
step << !Tauren !Shaman !Warrior/Undead
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >> Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #softcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step
    #optional
    #completewith DisruptTheAttacks
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Bicos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >> Vá ao topo da montanha
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >> Entre no Covil de Brumedo
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>Clique com o botão direito no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Certifique-se de ter uma|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_(duração de 30 minutos) com você|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << skip
    #xprate <1.5 << !Hunter
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >> Desça a montanha de onde você veio
    .isQuestComplete 924
--XX !Tauren !Undead
step << Shaman
    #sticky
    #label FireTar2
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>Mate um |cRXP_ENEMY_Rabdomante Crinavalha|r ou |cRXP_ENEMY_Tecespinho Crinavalha|r. Pegue um |cRXP_LOOT_Piche Ígneo|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
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
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão. Se não estiver disponível, você a receberá depois
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
step
    #requires FireTar2 << Shaman
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
step << Warrior !Undead
    #xprate >1.49
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior !Undead
    #xprate >1.49
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1502 >>Entregue Thun'grim Olhafogo
    .accept 1503 >>Aceite Aço forjado
    .target Thun'grim Firegaze
step << Warrior !Undead
    #xprate >1.49
    .goto The Barrens,55.05,26.65
    >>Pegue as |cRXP_PICK_Barras de Aço Forjado|r no |cRXP_LOOT_Baú de Ferro Roubado|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #xprate >1.49
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior !Undead
    #xprate >1.49
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1503 >>Entregue Aço forjado
    .target Thun'grim Firegaze
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
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
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Bicos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Shaman Troll/Shaman Orc/Warrior Orc/Warrior Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Entregue Retorno à Encruzilhada
    .target Zargh
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r e |cRXP_FRIENDLY_Thork|r
    .turnin 842 >>Entregue Recrutamento na Encruzilhada << Tauren Shaman
    .turnin 844 >>Entregue A ameaça pinote
    .accept 845 >>Aceite As zevras
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 871 >>Entregue Cortando o ataque pela raiz
    .accept 872 >>Aceite Adeus aos ataques
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step << Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Tauren Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_dele|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >> Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc Warrior/Troll Warrior/Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto The Barrens,52.5,30.7,0
    .vendor >>|cRXP_WARN_Veja se|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_está na Encruzilhada. Ele vende poções e|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_com estoque limitado|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão. Se não estiver disponível, você a receberá depois
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
    .dungeon RFC
step << Tauren
    #optional
    #completewith KreenigSnarlsnout1
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
    #label KreenigSnarlsnout1
    .goto The Barrens,58.69,27.08
    >>Mate o |cRXP_ENEMY_Kreenig Rosnento|r. Saqueie o |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
step << Tauren
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
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
step << Tauren
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
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
    .goto Durotar,39.16,58.56,10 >> Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Call of Fogo - Missão - Missão
    .accept 1526 >>Aceite Clamor do Fogo
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Pegue uma |cRXP_LOOT_Brasa Faiscante|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>Clique no |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Call of Fogo - Missão - Missão
    .accept 1527 >>Aceite Clamor do Fogo
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entregue Call of Fogo - Missão - Missão
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Vá para Orgrimmar
    .dungeon RFC
step << Tauren
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para lugar nenhum!|r
    .fp Orgrimmar >> Aprenda a rota de voo de Orgrimmar
    .target Doras
    .isQuestAvailable 5728
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto Durotar,53.08,9.19,0
    >>Mate inimigos da |cRXP_ENEMY_Lâmina Ardente|r na Rocha da Caveira até cair a |cRXP_LOOT_Insígnia do Tenente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Entregue Escondido Enemies
    .accept 5727 >> Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 5761 >>Aceite Mate a besta
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Entregue Escondido Enemies
    .accept 5728 >> Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Insígnia do Tenente] |cRXP_WARN_pois você não precisa mais dela|r
step << !Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entre no portal da instância das Cavernas Ígneas e atravesse-o
    .dungeon RFC
step << !Undead
    >>|cRXP_WARN_Se possível, peça aos membros do grupo que compartilhem as seguintes missões|r
    .accept 5722 >> Aceite Em busca da algibeira perdida
    .accept 5723 >> Aceite Testando a força do inimigo
    .dungeon RFC
step << !Undead
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Entregue Em busca da algibeira perdida
    .accept 5724 >> Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << !Undead
    #label TroggsShamans
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    >>Mate |cRXP_ENEMY_Taragaman, o Famélico|r. Saqueie-o para pegar seu |cRXP_LOOT_Coração|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << !Undead
    #label BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Bazzalan|r e |cRXP_ENEMY_Jergosh, o Invocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << !Undead
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5761 >>Entregue Mate a besta
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Entregue Escondido Enemies
    .accept 5729 >> Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5729 >> Entregue Escondido Enemies
    .accept 5730 >> Aceite Escondido Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Entregue Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith KreenigSnarlsnout
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .use 6948
    .zoneskip The Barrens
    .bindlocation 380,1
    .subzoneskip 380
    .dungeon RFC
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Devrak
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
    .zoneskip Thunder Bluff

    --not worth to turn in 5723/5724 w/o TB flight path

step << skip
    #completewith RFCTurninsTB1
    .goto Mulgore,68.68,60.34,120,0
    .zone Thunder Bluff >>Vá ao sul até o Acampamento Taurajo e entre em Mulgore. De lá, vá a Penhasco do Trovão
    >>|cRXP_WARN_Se tiver a rota de voo de Penhasco do Trovão, voe para lá|r
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >> Aprenda a rota de voo de Acampamento Taurajo << !Tauren
    .target Omusa Thunderhorn
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Thunder Bluff >> Aprenda a rota de voo de Penhasco do Trovão
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .use 6948
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,>0
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
step
    #optional
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #optional
    #completewith next
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Mate o |cRXP_ENEMY_Kreenig Rosnento|r. Saqueie o |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Vá até o Altar de Espinhos|r. Lance |T136126:0|t[Conversão de Vida] até ficar quase sem vida. Depois, lance |T136168:0|t[Funil de Vida] no seu ajudante para morrer e obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r]
    *|cRXP_WARN_Você será ressuscitado imediatamente após morrer|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para aprender|r |T136168:0|t[Mestre Canalizador]
step
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,0
    .goto The Barrens,59.26,24.67,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
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
    >>|cRXP_WARN_Pode aparecer em vários locais|r
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
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << !Tauren !Undead
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5 << !Hunter
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >> Vá em direção a Durotar
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
    .goto Durotar,39.16,58.56,10 >> Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Call of Fogo - Missão - Missão
    .accept 1526 >>Aceite Clamor do Fogo
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Pegue uma |cRXP_LOOT_Brasa Faiscante|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Clique no |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Call of Fogo - Missão - Missão
    .accept 1527 >>Aceite Clamor do Fogo
step << Shaman
    #optional
    #completewith FireEnd
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
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
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
step << skip
    #completewith RatchetEnter
    >>Mate |cRXP_ENEMY_Uivadores Helióscamo|r. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #optional
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Mate |cRXP_ENEMY_Zevra Corredora|r. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >> Vá para Vila Catraca
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
    .target Gazlowe
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Aprenda a rota de voo de Vila Catraca
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Pôster de Procura-se|r
    .accept 894 >>Aceite A rebimboca
    .goto The Barrens,62.98,37.22
    .accept 895 >>Aceite PROCURA-SE: Barão Longacosta
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
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você estiver no nível 16|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
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
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você estiver nível no 16|r
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
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T133052:0|t[Martelo] |cRXP_BUY_dele|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T133052:0|t[Martelo]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para a mão secundária|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe a segunda|r |T135343:0|t[Cimitarra] |cRXP_WARN_em sua mão secundária|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 819 >>Entregue Barril Vazio de Chen
    .accept 821 >>Aceite Barril Vazio do Chen
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Suco de Melão] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_WARN_são muito baratos, compre quantos quiser|r
    .vendor >> Venda os itens de lixo
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Exclua o|r |T133735:0|t[Manual de Operação do Console de Controle] |cRXP_WARN_das bolsas, pois não é mais necessário|r
step
    #optional
    #completewith BaronLongshore
    >>Mate |cRXP_ENEMY_Bucaneiros dos Mares do Sul|r e |cRXP_ENEMY_Canhoneiros dos Mares do Sul|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
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
    >>Mate |cRXP_ENEMY_Bucaneiros dos Mares do Sul|r e |cRXP_ENEMY_Canhoneiros dos Mares do Sul|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 887 >>Entregue Os Flibusteiros dos Mares do Sul
    .turnin 895 >>Entregue PROCURA-SE: Barão Longacosta
    .accept 890 >>Aceite Carregamento perdido
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .turnin 890 >>Entregue Carregamento perdido
    .accept 892 >>Aceite Carregamento perdido
    .accept 896 >>Aceite A fortuna do mineiro
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue Carregamento perdido
    .accept 888 >>Aceite Butim Roubado
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
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você estiver no nível 16|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
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
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você estiver nível no 16|r
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
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T133052:0|t[Martelo] |cRXP_BUY_dele|r
    .collect 2028,1,850,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T133052:0|t[Martelo]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para a mão secundária|r
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
    --Enter completewith label
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
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
    .turnin 872 >>Entregue Adeus aos ataques
    .target +Thork
    .goto The Barrens,51.50,30.87
    .turnin 845 >>Entregue As zevras
    .accept 903 >>Aceite Predadores dos Sertões
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Munição Pesada] |cRXP_BUY_dele|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Compre um|r |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] |cRXP_BUY_dele se disponível e reabasteça suas flechas|r
    >>|cRXP_WARN_Se não estiver disponível, compre um|r |T135490:0|t[Arco Reforçado] |cRXP_WARN_no lugar|r
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
    #optional
    #completewith RegtharDeathgate1
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #optional
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de centauro
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .target Regthar Deathgate
step
    #optional
    #xprate <1.5
    #completewith KodobaneTurnin
    >>Mate |cRXP_ENEMY_Cavalgantes Kolkar|r e |cRXP_ENEMY_Tempestários Kolkar|r. Pegue suas |cRXP_LOOT_Braçadeiras|r
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #optional
    #completewith Barak
    >>Pegue |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto The Barrens,44.73,22.18
    >>Pegue o |cRXP_PICK_Abandoned Mordelisca Ninho|r no chão para |T294479:0|t[|cRXP_LOOT_Abandoned Mordelisca Ovo|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto The Barrens,45.06,22.54
    >>Mergulhe até a |cRXP_PICK_Rachadura Borbulhante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Mate |cRXP_ENEMY_Barak Findekodo|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Cuidado! Os ataques corpo a corpo de |cRXP_ENEMY_Barak Findekodo|r causam MUITO dano, e ele é protegido por um |cRXP_ENEMY_Cavalgante Kolkar|r. Eles podem prendê-lo com redes e atirar à distância|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
step
    #xprate <1.5
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
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
    >>Mate |cRXP_ENEMY_Predadores da Savana|r. Pegue suas |cRXP_LOOT_Garras|r e |cRXP_LOOT_Presas|r
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
    >>Mate |cRXP_ENEMY_Harpias Asabruxa|r e |cRXP_ENEMY_Asabruxas Plumerrante|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather

    --RFC turnin section below no longer possible due to TB logout skip no longer workng

step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #optional
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Suba pelo caminho à esquerda
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Salte em uma das gaiolas. Faça um Logout Pular saindo da conta e entrando novamente|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >> Suba de elevador até Penhasco do Trovão
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << skip --!Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith Samophlange
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << skip --!Tauren
    #completewith Samophlange
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Abandone Testando a força do inimigo
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Abandone O poder de destruir...
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Abandone Inimigos ocultos
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Abandone Mate a besta
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
    .accept 875 >>Aceite Tenentes harpias
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate >1.49
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >> Entregue Os Charcos Esquecidos
    .accept 877 >> Aceite O Oásis Estagnado
    .target Tonga Runetotem
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Predadores dos Sertões
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparece após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando apareceu, pule este passo|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não apareceu após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantiu o primeiro ataque, abandone Echeyaki, volte à cidade e aceite a missão novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    +|cRXP_WARN_Cuidado com os|r |cRXP_ENEMY_Garrafoices Helióscamo|r |cRXP_WARN_na área. Eles chegam ao nível 18 e podem usar|r |T132152:0|t[Surra]
    .dungeon RFC
    .xp >17,1
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #completewith Samophlange
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #completewith Samophlange
    +|cRXP_WARN_Cuidado com os|r |cRXP_ENEMY_Garrafoices Helióscamo|r |cRXP_WARN_na área. Eles chegam ao nível 18 e podem usar|r |T132152:0|t[Surra]
    --.dungeon !RFC
    .xp >17,1
step
    #optional
    #completewith Samophlange
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    --.dungeon !RFC
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrang Sanguebravo|r
    >>|cRXP_FRIENDLY_Vrang Sanguebravo|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_com estoque limitado|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>> Venda os lixos e repare seu equipamento
    .target Vrang Wildgore
    --.dungeon !RFC
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 894 >>Entregue A rebimboca
    .accept 900 >>Aceite A rebimboca
step
    .goto The Barrens,52.33,11.57
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Cuidado! Dois inimigos aparecerão após você fechar a válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Um inimigo aparecerá após você fechar a válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Clique na |cRXP_PICK_Válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 900 >>Entregue A rebimboca
    .accept 901 >>Aceite A rebimboca
step
    .goto The Barrens,52.84,10.40
    >>Mate |cRXP_ENEMY_Engenhoqueiro Faísca|r no edifício. Pegue a |cRXP_LOOT_Chave do Painel|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 901 >>Entregue A rebimboca
    .accept 902 >>Aceite A rebimboca
step
    #optional
    #completewith Ignition
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
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
    >>Mate |cRXP_ENEMY_Raptores|r. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto The Barrens,56.5,7.5
    >>Chegue ao nível 16 matando inimigos aqui, pois as próximas 3 missões são bem difíceis
	.xp 16
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Fen
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    .accept 858 >>Aceite Ignição
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Feitor Grelha|r |cRXP_WARN_ou|r |cRXP_ENEMY_Fera Lodosa|r |cRXP_WARN_estiverem presentes. São inimigos raros e fortes de nível 19|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Mate |cRXP_ENEMY_Supervisor Rancatraca|r. Pegue sua |cRXP_LOOT_Chave|r
    >>|cRXP_WARN_Ele patrulha de um lado a outro da plataforma|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
    .turnin 858 >>Entregue Ignição
    .accept 863,1 >>Aceite A Fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
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
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
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
    >>Mate |cRXP_ENEMY_Segurança da Empreendimentos S.A.|r e |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue a |cRXP_LOOT_Esmeralda Olho-de-gato|r
    >>|cRXP_WARN_Se não cair após matar 25+ inimigos, pode pular esta missão|r
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
    >>Mate |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue seus |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
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
    >>Mate |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue seus |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
    >>|cRXP_WARN_Você também pode comprá-los na Casa de Leilões|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_Pule na viga de madeira. Faça um Logout Skip saindo e entrando no jogo. Volte a Orgrimmar se não conseguir|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .zoneskip Orgrimmar
step
    #completewith SpiritsPickup
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada oeste
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Crie|r |T133685:0|t[Bandagens de Linho] |cRXP_WARN_até atingir nível de profissão 40 ou mais|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Pule esta etapa se não tiver|r |T132889:0|t[Linho] |cRXP_WARN_suficiente para atingir nível 40 de profissão|r
    .train 3276 >> Aprenda |T133688:0|t[Bandagem de Linho Grossa]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> |cRXP_WARN_Crie|r |T133688:0|t[Bandagem de Linho Grossa] |cRXP_WARN_até atingir nível 50 ou mais de profissão|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Pule esta etapa se não tiver|r |T132889:0|t[Linho] |cRXP_WARN_suficiente para atingir nível 50 de profissão|r
    .train 3274 >> Aprenda Socorrista Profissional
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith SpiritsPickup
    +|cRXP_WARN_Não venda seus|r |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 527 >> Treine |T135894:0|t[Dissipar Magia]
    >>|cRXP_WARN_Você precisará de|r |T135894:0|t[Dissipar Magia] |cRXP_WARN_para obter uma runa mais tarde|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Treine suas magias de classe
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Treine suas magias de classe
    .target Pephredo
    .xp <18,1
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o mestre de mantícoras
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >> Entregue Doraso, o mestre de mantícoras
    .accept 6386 >> Aceite Retorno à Encruzilhada
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead !Shaman !Warrior
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .accept 6386 >> Aceite Retorno à Encruzilhada
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para lugar nenhum!|r
    .fp Orgrimmar >> Aprenda a rota de voo de Orgrimmar
    .target Doras
    .isQuestAvailable 4921
step << Shaman
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Certifique-se de que você aprendeu|r |T136075:0|t[Expurgar] |cRXP_WARN_Pois será necessário para obter uma runa mais tarde|r
    .train 8019 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Certifique-se de que você aprendeu|r |T136075:0|t[Expurgar] |cRXP_WARN_Pois será necessário para obter uma runa mais tarde|r
    .train 913 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor Solárbol|r
    .accept 1061 >>Aceite Os espíritos das Torres de Pedra
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Treine [Abrir Fechadura]
    .train 921 >> Treine |T133644:0|t [Bater Carteira]
    .accept 2379 >> Aceite Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Entregue A Mão Despedaçada
    .accept 1858 >> Aceite The Estilhaçada Hand - Missão
    .target Therzok
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entregue Zando'zan
    .accept 2382 >>Aceite Wrenix da Vila Catraca
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #optional
    #completewith next
    .goto Orgrimmar,42.10,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre um|r |T134065:0|t[Thieves' Ferramentas] |cRXP_BUY_dele|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>|cRXP_WARN_Use|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_para abrir a |r |T133626:0|t[Algibeira de Tazan]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entregue A Mão Despedaçada
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
    .turnin 1858 >>Entregue A Mão Despedaçada
    .target Therzok
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Treine suas magias de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Treine suas magias de classe
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Seta de Fogo (Grau 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Treine as magias do seu mascote
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135490:0|t[Arco Reforçado] |cRXP_BUY_dele|r
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
step << Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha] |cRXP_WARN_quando você estiver no nível 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid/Mage
    #season 2
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Bendotado|r
    >>|cRXP_BUY_Compre uma|r |T134237:0|t[Chave do Butim de Kolkar] |cRXP_BUY_na Casa de Leilões se possível|r
    >>|cRXP_WARN_Você precisará disso para obter o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_e aprender|r |T236167:0|t[Rugido Selvagem] << Druid
    >>|cRXP_WARN_Você precisará disso para obter as|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: REÇÃO ERNAGE]|r |cRXP_WARN_e aprender|r |T132869:0|t[Regeneração] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #optional
    #label SpiritsPickup
step
    #completewith FoodandWater2
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater2
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Doras
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Raptores ladrões
    .accept 3281 >>Aceite Prata roubada
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
    .accept 875 >>Aceite Tenentes harpias
    .target Darsok Swiftdagger
step
    #xprate >1.49
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >>Entregue Os Charcos Esquecidos
    .accept 877 >>Aceite O Oásis Estagnado
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Predadores dos Sertões
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
step << !Tauren !Undead !Warrior !Shaman
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Entregue Retorno à Encruzilhada
    .target Zargh
    .isOnQuest 6386
step
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparece após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando apareceu, pule este passo|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não apareceu após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantiu o primeiro ataque, abandone Echeyaki, volte à cidade e aceite a missão novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Garrafoices furiosos
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destrua o|r |T134227:0|t[Berrante de Echeyaki] |cRXP_WARN_você não precisa mais disso|r
step << Warrior
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>Clique em |cRXP_PICK_Horda Estandarte de Guerra|r
    .train 403489,1
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Aceite Consumido pelo ódio
    .accept 4921 >>Aceite Perdida em combate
    .target Mankrik
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 2382 >>Entregue Wrenix da Vila Catraca
    .accept 2381 >>Aceite Saqueando os saqueadores
    .target Wrenix the Wretched
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aparato Mercadotrônico do Wrenix|r
    >>|cRXP_WARN_Obtenha um|r |T134059:0|t[B.E.C.A.] |cRXP_WARN_e |r |T134065:0|t[Ferramentas de Ladrões]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 902 >>Entregue A rebimboca
    .turnin 863 >> Entregue A fuga
    .accept 3921 >> Aceite Juntatudy Jogafora << Hunter
    .accept 1483 >> Aceite Zé Fízzica
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >> Entregue A fortuna do mineiro
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 902 >>Entregue A rebimboca
    .accept 3921 >> Aceite Juntatudy Jogafora << Hunter
    .accept 1483 >> Aceite Zé Fízzica
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >> Entregue A fortuna do mineiro
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .turnin 863 >> Entregue A fuga
    .accept 1483 >> Aceite Zé Fízzica
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .accept 1483 >> Aceite Zé Fízzica
    .target Sputtervalve
step
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 865 >>Aceite Chifres de raptor
    .accept 1069 >>Aceite Ovos de Aranha de Fundolimo
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Compre um|r |T135129:0|t[Arpão de Pesca] |cRXP_BUY_dele|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>Use o |T135129:0|t[Arpão de Pesca] em |cRXP_ENEMY_Bruuz|r e mate-o. Pegue dele a |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] << Warrior
    >>|cRXP_WARN_Ele patrulha ao redor do barco afundado na água|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] |cRXP_WARN_para treinar|r |T132394:0|t[Golpe Rápido]
    .use 208778
    .itemcount 208778,1
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Suco de Melão] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_WARN_são muito baratos, compre quantos quiser|r
    .vendor >> Venda os itens de lixo
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Pule no navio, desça ao segundo andar e aumente sua perícia em Arrombamento para pelo menos 70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Ao atingir 70 em Arrombamento, vá ao andar inferior do navio e abra |cRXP_PICK_A Joia dos Mares do Sul|r
    >>|cRXP_WARN_Use|r |T134059:0|t[B.E.C.A.] |cRXP_WARN_no|r |cRXP_ENEMY_Polly|r
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
step << Warrior
    #season 2
    #completewith next
    .subzone 385 >>Vá para Northwatch Segurar
step << Warrior
    #season 2
    .goto The Barrens,62.55,56.31
    >>Clique em |cRXP_PICK_Aliança Estandarte de Guerra|r
    >>Mate |cRXP_ENEMY_Lieutenant Stonebrew|r conforme ele aparece. Saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r] |cRXP_WARN_para aprender|r |T132347:0|t[Raiva Infinita]
    .use 208741
    .itemcount 208741,1
step
    #optional
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #optional
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r e |cRXP_LOOT_Penas|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Pegue a |cRXP_PICK_Prata Roubada|r no chão
    .complete 3281,1 --Stolen Silver (1)
step
    #optional
    #xprate <1.5
    #completewith Verog
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor de O Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #xprate >1.49
    #completewith next
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor de O Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Clique na |cRXP_PICK_Rachadura Borbulhante|r debaixo d'água
    .complete 877,1 --Test the Dried Seeds (1)
step << Druid/Mage
    #optional
    #season 2
    #completewith Verog
    >>Mate os |cRXP_ENEMY_Kolkar|r. Saqueie-os para obter um |T134237:0|t[|cRXP_LOOT_Kolkar Booty Chave|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step
    #optional
    #xprate <1.5
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
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <1.5
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Mate |cRXP_ENEMY_Verog|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode aparecer sempre que um |cRXP_ENEMY_Kolkar|r é morto|r
    >>|cRXP_WARN_Em um servidor altamente populado ou lançamento recente, sua melhor opção é acampar no ponto de reaparecimento|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step << Druid/Mage
    #season 2
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
    >>Mate os |cRXP_ENEMY_Kolkar|r. Saqueie-os para obter um |T134237:0|t[|cRXP_LOOT_Kolkar Booty Chave|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid/Mage
    #season 2
    .goto The Barrens,52.7,41.8
    >>Abra o |cRXP_PICK_Kolkar Booty|r para |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] << Druid
    >>Abra um baú de |cRXP_PICK_Butim de Kolkar|r para pegar as |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: REÇÃO ERNAGE|r] << Mage
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 << Druid --Ferocious Idol (1)
    .collect 208754,1 << Mage --Spell Notes: TENGI RONEERA (1)
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >> |cRXP_WARN_Equipe o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_assim que aprender|r |T132115:0|t[Forma de Felino]
    .use 208689
    .itemcount 208689,1
    .train 407988,1 << Druid
    .train 401767,1 << Mage
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_Cause dano de sangramento 20 vezes a humanoides com|r |T132152:0|t[Rasgar] |cRXP_WARN_ou|r |T132122:0|t[Estraçalhar] |cRXP_WARN_e então use o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_novamente para aprender|r |T236167:0|t[Rugido Selvagem]
    .use 208689
    .itemcount 208689,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_para treinar|r |T132869:0|t[Regeneração]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
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
    #optional
    #completewith LakotaMani1
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>Clique no |cRXP_PICK_Blue Objetos de Clássico|r. Mate mais |cRXP_ENEMY_Sunscale Scytheclaws|r se você não tiver uma |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Clique no |cRXP_PICK_Ninho de Raptor Vermelho|r. Mate mais |cRXP_ENEMY_Garrafoices Helióscamo|r se você não tiver uma |T132914:0|t[Pena de Helióscamo]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Clique no |cRXP_PICK_Ninho de Raptor Amarelo|r. Mate mais |cRXP_ENEMY_Garrafoices Helióscamo|r se você não tiver uma |T132914:0|t[Pena de Helióscamo]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #optional
    #completewith next
    >>Abate |cRXP_ENEMY_Sunscale Scytheclaws|r. Saque-os para seus |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cadáver Arrebentado|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Cifre de Lagarto Trovejante|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
	>>Mate |cRXP_ENEMY_Lakota'mani|r. Pegue o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #optional
    #completewith CampTArrive
    >>Abate os |cRXP_ENEMY_Stormsnouts|r. Saqueie-os para |cRXP_LOOT_Chifre|r. Isso não precisa ser concluído agora
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Você precisa ter aprendido|r |T135813:0|t[Armadilha Imolante] |cRXP_WARN_ou qualquer outra armadilha para poder obter esta runa|r
step << Hunter
    #season 2
    #loop
    .goto The Barrens,43.12,57.37,0
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37,40,0
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Usar |T135813:0|t[Armadilha Imolante] no caminho de patrulha do |cRXP_ENEMY_Patrolling Cheetah|r para remover seu bônus
    >>Abate-o e saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r] |cRXP_WARN_para aprender|r |T132270:0|t[Domínio das Feras]
    .use 208701
    .itemcount 208701,1
step
    #label CampTArrive
    #completewith next
    .goto The Barrens,45.23,58.41,120 >> Viaje para Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Byula|r
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 883 >>Entregue Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em guerra
    .target Mangletooth
step
    #optional
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >> Aprenda a rota de voo de Acampamento Taurajo << !Tauren
    .target Omusa Thunderhorn
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Entre em Mulgore
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Pegue o elevador para Penhasco do Trovão
    >>|cRXP_WARN_Se tiver a rota de voo de Penhasco do Trovão, voe para lá|r
    .dungeon RFC
step
    #optional
    #completewith RFCTurninsTB1
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >> Aprenda a rota de voo de Acampamento Taurajo << !Tauren
    .fly Crossroads >>Voe para A Encruzilhada
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entregue Perdida em combate
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Entregue O Oásis Estagnado
    .accept 880 >>Aceite Seres alterados
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entregue Garrafoices furiosos
    .accept 3261 >>Aceite Jorn Vidente do Céu
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entregue Prata roubada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step
    .destroy 5165 >>|cRXP_WARN_Destrua quaisquer|r |T132914:0|t[Penas de Helióscamo] |cRXP_WARN_que ainda tiver|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
step
    #xprate >1.49
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .target Regthar Deathgate
step
    #xprate <1.5
    #completewith Hezrul
    .subzone 387 >> Vá ao Oásis das Águas Claras
    .isQuestTurnedIn 851
step
    #optional
    #xprate <1.5
    #completewith Hezrul
    >>Abate os |cRXP_ENEMY_Oasis Snapjaws|r procurando por |cRXP_ENEMY_Hezrul Marca de Sangue|r. Saqueie-os para seus |cRXP_LOOT_Conchas|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #optional
    #xprate <1.5
    #completewith next
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <1.5
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
    >>Encontre e mate |cRXP_ENEMY_Hezrul Marca de Sangue|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulha ao redor do lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #xprate <1.5
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
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    >>|cRXP_WARN_Pode pular esta missão se conseguiu poucos itens até agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto The Barrens,48.32,40.25
    >>Abra o |cRXP_PICK_Ninho de Mordelisca Vazio|r no chão para |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa of Lacerar|r] |cRXP_WARN_para treinar|r |T132131:0|t[Lacerar]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #optional
    #xprate <1.5
    #completewith CounterattackComplete
    .abandon 855 >> Abandone Braçadeiras de Centauro se não pegou o suficiente antes para compensar concluí-la
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #completewith CounterattackComplete
    +|cRXP_WARN_Esta próxima missão é muito difícil e é recomendado se agrupar. Você pode kitar Senhor da Guerra Krom'zar ao redor do prédio onde o dador de missão está localizado|r
    +|cRXP_WARN_Pule esta missão se não conseguir completá-la. Você terá outra oportunidade em um nível mais alto|r
    .isQuestTurnedIn 852
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <1.5
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Ele pode levar até 3 minutos para aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #optional
    #xprate <1.5
    #completewith StonetalonPickups
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <1.5
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
    .isOnQuest 875
step
    #label StonetalonPickups
    #completewith next
    .goto The Barrens,35.26,27.88,30 >> Vá em direção a |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    #label StonetalonPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Entregue Os espíritos das Torres de Pedra
    .accept 1062 >> Aceite Invasores goblins
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >> Aceite Vingue minha vila
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .maxlevel 20 << !Druid
step
    #optional
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1061 >> Entregue Os espíritos das Torres de Pedra
    .accept 1062 >> Aceite Invasores goblins
    .target Seereth Stonebreak
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 17-22 Cordilheira das Torres de Pedra/Sertões/Vale Gris
#displayname 18-22 Cordilheira das Torres de Pedra/Sertões/Vale Gris << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#next RestedXP Horda 22-30\22-24 Hillsbrad


step << Druid
    #season 2
    #completewith next
    >>Abate |cRXP_ENEMY_Grimtotem Taurens|r. Saque o |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] deles
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
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
    >>Mate |cRXP_ENEMY_Rufiões do Temível Totem|r e |cRXP_ENEMY_Mercenários Temível Totem|r na área
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #season 2
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
    >>Abate |cRXP_ENEMY_Grimtotems|r. Saque o |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] deles
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #season 2
    #completewith AvengeVillageTurnin
    .equip 18,210534 >> |cRXP_WARN_Equipe o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #completewith next
    >>|cRXP_WARN_Lance|r |T136085:0|t[Recrescimento] |cRXP_WARN_ou|r |T136041:0|t[Toque de Cura] |cRXP_WARN_em 10 Bestas aliadas diferentes tais como Pets de Caçador/Druidas em Forma de Urso/Xamãs em Lobo Fantasma|r
    .train 410021 >> |cRXP_WARN_Use o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] |cRXP_WARN_para treinar|r |T132143:0|t[Golpes Selvagens]
    .itemcount 210534,1
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6548 >> Entregue Vingue minha vila
    .accept 6629 >> Aceite Mate Grundig Nuvem Negra
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .accept 6629 >> Aceite Mate Grundig Nuvem Negra
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Suba pelo caminho até a fogueira
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Mate |cRXP_ENEMY_Grundig Nuvem Negra|r e |cRXP_ENEMY_Brutos Temível Totem|r
    >>|cRXP_WARN_Mate todos os seis|r |cRXP_ENEMY_Brutos Temível Totem|r |cRXP_WARN_antes de iniciar a missão lá dentro|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaya Casco Chato|r
    .accept 6523,1 >> Aceite Proteja Kaya
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
    .accept 6461 >> Aceite Fome sangrenta
    .target Xen'Zilla
step << Priest/Mage/Warlock
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Mate todos os |cRXP_ENEMY_Rastejantes de Fundolimo|r que encontrar
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    .goto Stonetalon Mountains,59.08,75.70
    >>Clique no |cRXP_FRIENDLY_Cartaz de Procurado|r
    .accept 6284 >>Aceite Aracnofobia
    .group << Priest/Mage
step << Warlock/Priest/Mage
    #completewith Besseleth1
    >>Mate |cRXP_ENEMY_Cospeçonhas de Fundolimo|r e |cRXP_ENEMY_Rastejantes de Fundolimo|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #completewith next
    >>Saque os |cRXP_PICK_Ovos de Aranha|r perto das árvores
    >>|cRXP_WARN_Cuidado! Os|r |cRXP_ENEMY_Filhotes de Aranha de Fundolimo|r |cRXP_WARN_podem invocar uma|r |cRXP_ENEMY_Matriarca de Fundolimo|r de nível 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step << Warlock/Priest/Mage
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Mate |cRXP_ENEMY_Besseleth|r. Pegue a |cRXP_LOOT_Presa de Besseleth|r
    >>|cRXP_WARN_Elimine os inimigos ao redor de|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Cuidado, ela prende você com teias. Mantenha-a sob Medo e com efeitos de dano periódico|r << Warlock
    >>|cRXP_WARN_Esta missão é opcional. Se não conseguir completá-la, pule-a. Você pode tentar novamente depois|r << Warlock
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 2 << Priest/Mage
step << Warlock/Priest/Mage
    .goto Stonetalon Mountains,54.99,76.03
    >>Mate |cRXP_ENEMY_Rastejantes de Fundolimo|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
    .group 0 << Priest/Mage
step << !Warlock
    .goto Stonetalon Mountains,67.38,86.99,80,0
    .goto Stonetalon Mountains,61.44,81.74,80,0
    .goto Stonetalon Mountains,58.44,75.90,40,0
    .goto Stonetalon Mountains,54.99,76.03
    >>Mate |cRXP_ENEMY_Rastejantes de Fundolimo|r
    >>|cRXP_WARN_Guarde as|r |T134339:0|t[Vesículas Pequenas de Peçonha] |cRXP_WARN_que pegar|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Vá ao Retiro Rocha do Sol
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Jayka|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeeda|r no segundo andar da estalagem
    .vendor >> |cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dela se estiverem disponíveis|r << !Warrior
    .vendor >> |cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_e|r |T134413:0|t[Raiz-da-vida] |cRXP_BUY_dela se estiverem disponíveis|r << Warrior
    .target Jeeda
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maggran Ata Terra|r
	.turnin 6284 >> Entregue Aracnofobia
    .target Maggran Earthbinder
	.isQuestComplete 6284
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Aprenda a rota de voo de Retiro Rocha do Sol
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Vá em direção a |cRXP_FRIENDLY_Zé Fízzica|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1483 >> Entregue Zé Fízzica
    .accept 1093 >> Aceite o Super Ceifador 6000
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
    >>Mate |cRXP_ENEMY_Cospeçonhas de Fundolimo|r
    >>|cRXP_WARN_Guarde as|r |T134339:0|t[Vesículas Pequenas de Peçonha] |cRXP_WARN_que pegar|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veenix|r
    .vendor >>|cRXP_BUY_Compre um|r |T135329:0|t[Espada do Carrasco] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Se não estiver disponível, compre uma|r |T135280:0|t[Falx Dácia] |cRXP_WARN_no lugar|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Undead Warrior
    #optional
    #completewith BluePrints
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <19,1
step << Undead Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Shaman
    #season 0
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 2
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T133476:0|t[Mangual] |cRXP_BUY_dele|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T133476:0|t[Mangual]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dele.|r
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
    #label Windshear
    .subzone 461 >> Vá ao Rochedo Cortavento
    .isOnQuest 1093
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
    >>Mate |cRXP_ENEMY_Operadores da Empreendimentos S.A.|r. Pegue seus |cRXP_LOOT_Diagramas|r
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
    #optional
	#completewith next
	+|cRXP_WARN_Se tiver mais de 15 |cRXP_LOOT_Ovos de Fundolimo|r|cRXP_WARN_, separe os excedentes da pilha (Shift + clique) e descarte-os|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1093 >> Entregue o Super Ceifador 6000
    .accept 1094 >> Aceite as instruções adicionais
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
    .goto Stonetalon Mountains,59.04,73.01,80,0
    >>Termine de matar |cRXP_ENEMY_Rastejantes de Fundolimo|r
    >>|cRXP_WARN_Guarde as|r |T134339:0|t[Vesículas Pequenas de Peçonha] |cRXP_WARN_que pegar|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Treine suas magias de classe
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Treine suas magias de classe
    .target Loganaar
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >> Use a Pedra de Regresso para voltar ao Acampamento Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Byula|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
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
	#completewith LakotaMani2
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
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
    #label LakotaMani2
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Mate |cRXP_ENEMY_Lakota'mani|r. Pegue o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
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
step << Warlock/Shaman
    #loop
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
    .xp 19+11000 >> Mate inimigos até atingir 11000+/21300 de xp
    --VV 1.5x Add 1.5x grind step
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Abate |cRXP_ENEMY_Sunscale Scytheclaws|r. Saque-os para seus |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
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
    >>Acabe de matar |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Acabe de matar |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r. Pegue a |cRXP_LOOT_Carcaça Fresca de Zevra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
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
step << Shaman/Priest
    #season 2
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>Lance |T136075:0|t[Expurgar] na |cRXP_ENEMY_Miragem do Deserto|r para matá-la. Pegue dela a |T134419:0|t|cRXP_LOOT_[Runa Terrana]|r << Shaman
    >>Lance |T135894:0|t[Dissipar Magia] no |cRXP_ENEMY_Miragem do Deserto|r para matá-lo. Saqueie-o pela |T135975:0|t[|cRXP_FRIENDLY_Profecia do Óbito do Rei|r] << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r. Pegue a |cRXP_LOOT_Carcaça Fresca de Zevra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>Use a |T134368:0|t[|cRXP_LOOT_Carcaça Fresca de Zevra|r] na árvore morta para invocar |cRXP_ENEMY_Ishamuhale|r. Mate-o e pegue sua |cRXP_LOOT_Presa|r
    >>|cRXP_WARN_A Carcaça dura apenas 30 minutos!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .subzone 392 >> Vá para Vila Catraca
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 2381 >>Entregue Saqueando os saqueadores
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 888 >>Entregue Butim Roubado
    .target Gazlowe
step
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_Se tiver|cRXP_LOOT_3 de ouro|r sobrando, você pode comprar uma runa de|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_na estalagem de Vila Catraca. Avalie se pode pagar e se a runa é útil para sua classe. Você sempre pode comprá-la mais tarde|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grizzby|r na estalagem
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Compre e use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Harmoniosa|r] |cRXP_WARN_para treinar|r |T237549:0|t[Serendipidade] << Priest
    .train 410010 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sacrifício|r] |cRXP_WARN_para treinar|r |T134596:0|t[Gravar Calças - Sacrifício Divino] << Paladin
    .train 401761 >>|cRXP_WARN_Compre e use as|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Retroceder Tempo|r] |cRXP_WARN_para treinar|r |T237538:0|t[Retroceder Tempo] << Mage
    .train 410122 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Lobo Solitário|r] |cRXP_WARN_para treinar|r |T132266:0|t[Lobo solitário] << Hunter
    .train 416042 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sobrevivência|r] |cRXP_WARN_para treinar|r |T132126:0|t[A Lei da Selva] << Druid
    .train 425445 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Armipotente|r] |cRXP_WARN_para treinar|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] |cRXP_WARN_para treinar|r |T237562:0|t[Pacto Demoníaco] << Warlock
    .train 424990 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Adaga de Bloqueio|r] |cRXP_WARN_para treinar|r |T237531:0|t[Adaga de Bloqueio] << Rogue
    .train 410096 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Duas Armas|r] |cRXP_WARN_para treinar|r |T132686:0|t[Gravar Peitoral - Especialização em Duas Armas] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r, |cRXP_FRIENDLY_Cáliper Porcatraca|r e |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 1094 >>Entregue instruções adicionais
    .accept 1095 >>Aceite as instruções adicionais
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entregue Chifres de raptor
    .turnin 1069 >>Entregue Ovos de Aranha de Fundolimo
    .accept 1491 >>Aceite Bebidas inteligentes
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r, |cRXP_FRIENDLY_Cáliper Porcatraca|r e |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 1094 >>Entregue instruções adicionais
    .accept 1095 >>Aceite as instruções adicionais
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entregue Chifres de raptor
    .turnin 1069 >>Entregue Ovos de Aranha de Fundolimo
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
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
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irriteixon|r
    .vendor >> Compre dele |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r] se estiver disponível
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
    .isQuestTurnedIn 865
step << Warrior
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipe as|r |T134583:0|t[|cRXP_FRIENDLY_Calças Encadeadas Potentes|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipe as|r |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    .home >>Defina sua Pedra de Retorno em Ratchet
    .target Innkeeper Wiley
    .dungeon WC
    .bindlocation 392
    .isQuestTurnedIn 865
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Operador de Grua Mafuá|r
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
step << Hunter
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Aceite Apresente-se a Kadrak
    .target Thork
step
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .turnin 875 >>Entregue Tenentes harpias
    .accept 876 >>Aceite Serena Plumassangue
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <1.5
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 876 >>Aceite Serena Plumassangue
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r e |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 899 >>Entregue Consumido pelo ódio
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Entregue Seres alterados
    .accept 1489 >>Aceite Hamuul Runa Totem
    .accept 3301 >>Aceite Mura Runa Totem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    .destroy 5085 >>|cRXP_WARN_Apague qualquer|r |T133721:0|t[Presa de Javatusco Costagulha] |cRXP_WARN_que você ainda tenha|r
    .itemcount 5085,1
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .dungeon !WC
    .dungeon DM
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Aceite Ovo tipo extra
    .target Korran
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Aceite Chamado da Água
    .target Searn Firewarder
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Treine suas magias de classe
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .trainer >> Treine suas magias de classe
    .accept 1507 >>Aceite Devorador de Almas
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Tormento (Grau 2)]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Entregue Cazul cego
    .accept 1509 >>Aceite Notícias de Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> Agora procure um grupo para as Minas Mortas
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Treine suas magias de classe
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
    .train 845 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Treine suas magias de classe
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Treine suas magias de classe
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Treine suas magias de classe
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Treine suas magias de classe
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Treine suas magias de classe
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Bendotado|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Frasco de Óleo] |cRXP_BUY_da Casa de Leilões se possível|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Saia de Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto Durotar,50.8,13.8,40 >>Suba a Torre do Zepelim
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
    .goto Westfall,30.01,86.02,200 >> Nade de Grom'Gol diretamente para oeste até o Arrecife Torpe, depois para norte em direção a Cerro Oeste
    >>|cRXP_WARN_Mantenha-se longe da ilha. Siga o ponto de referência para sua segurança!|r
    .dungeon DM
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Vá ao Farol de Cerro Oeste
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 103 >> Aceite A chama não pode apagar
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 103 >> Entregue Guardião da Chama
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >> Aceite O mar não está para peixe
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mate |cRXP_ENEMY_Velho Olho-turvo|r. Pegue sua |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrulha ao longo da Praia Grande. Se não o encontrar por lá, espere que ele aparecerá no acampamento de |cRXP_ENEMY_Murlocs|r mais ao sul|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >> Entregue O mar não está para peixe
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandone Guardião da Chama
    .dungeon DM
step
    #label EnterDM
    .goto Eastern Kingdoms,40.92,81.97,8,0
    .goto Eastern Kingdoms,40.92,82.02,8,0
    .goto Eastern Kingdoms,40.89,82.09,8,0
    .goto Eastern Kingdoms,40.96,82.10,8,0
    .goto Eastern Kingdoms,40.92,82.16,15,0
    .goto Eastern Kingdoms,40.82,82.30,15,0
    .goto Eastern Kingdoms,40.77,82.52,15,0
    .goto Eastern Kingdoms,40.74,82.61,15,0
    .goto Eastern Kingdoms,40.63,82.49,15,0
    .goto Eastern Kingdoms,40.50,82.45
    .zone 291 >> Entre no portal da Instância Minas Mortas. Carregue
    .dungeon DM
step
    .hs >> Retorne para Savanas após completar Minas Mortas
    .zone The Barrens >> Chegue aos Sertões
    .use 6948
    .dungeon DM
step
    #optional
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
	.fly Crossroads >> Voe para A Encruzilhada
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
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Ratchet >> Voe para Ponto de Ancoragem
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Entregue Clamor da água
    .accept 1530 >>Aceite Chamado da Água
    .target Islen Waterseer
step << !Warlock !Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Boticário Hermógenes|r |cRXP_WARN_inicia uma missão com prazo de 45 minutos|r
    .accept 853 >> Aceite Boticária Zaqueia
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
    .fly Camp Taurajo >> Voe para Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Voe para Camp Taurajo
    .target Bragok
    .subzoneskip 380
step
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Voe para Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
step
    .goto The Barrens,44.55,59.27
    >>Mate |cRXP_ENEMY_Javatuscos Costagulha|r. Pegue |T134128:0|t[|cRXP_LOOT_Estilhaço de Sangue|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 878 >>Entregue Tribos em guerra
    .accept 5052 >>Aceite Estilhaços de Sangue de Agamaggan
    .turnin 5052 >>Entregue Estilhaços de Sangue de Agamaggan
    .target Mangletooth
step
    #completewith IshamuhaleTurnin
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    +|cRXP_WARN_Use seus|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_para obter buffs. Guarde pelo menos 4 deles para depois|r << Tauren/Shaman/Orc Warrior/Troll Warrior
    +|cRXP_WARN_Use seus|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_para obter buffs. Guarde pelo menos 4 deles para depois|r << !Tauren !Shaman !Warrior/Undead
    +|cRXP_WARN_Desative as funções de conclusão automática de addons como Questie ou Leatrix Plus para isso!|r
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .turnin 883 >>Entregue Lakota'mani
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
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
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
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>> Vá para o sul rumo a |cRXP_FRIENDLY_Salma|r
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
    .use 7766 >> |cRXP_WARN_Encha seu|r |T132825:0|t[Odre Marrom Vazio] |cRXP_WARN_na fonte abaixo da cabana de Salma|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma|r
    .turnin 1535 >>Entregue Clamor da água
    .accept 1536 >>Aceite Chamado da Água
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .subzone 378 >>Vá de volta para Camp Taurajo
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
    .accept 6382 >>Aceite A Caçada do Vale Gris << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 913 >>Entregue O grito do Falcotrom
    .accept 874 >>Aceite Mahren Vidente do Céu
    .accept 6382 >>Aceite A Caçada do Vale Gris << Hunter
    .target Jorn Skyseer
step << !Tauren !Shaman !Warrior/Undead
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .aura 16618 >>|cRXP_WARN_Se você tem 10|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r |cRXP_WARN_sobrando, use-os para obter|r |T136022:0|t[Espírito do vento] |cRXP_WARN_de|r |cRXP_FRIENDLY_Denterroto|r
    >>|cRXP_WARN_Pule esta etapa se tiver a rota de voo de Penhasco do Trovão|r
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren !Shaman !Warrior/Undead
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Entre em Mulgore
step << !Tauren !Shaman !Warrior/Undead
    #completewith DeathDUPpickup
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Pegue o elevador para Penhasco do Trovão
    >>|cRXP_WARN_Se tiver a rota de voo de Penhasco do Trovão, voe para lá|r
step << Tauren/Shaman/Orc Warrior/Troll Warrior
    #completewith DeathDUPpickup
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Aprenda a usar Maças de Duas Mãos
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
    .collect 3137,200,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposite os |T134128:0|t[Estilhaços de Sangue]
    .bankdeposit 5059 >> Deposite a |T132938:0|t[Garra de Escavação]
    .target Chesmu
    .isOnQuest 868
step
    #optional
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposite os |T134128:0|t[Estilhaços de Sangue]
    .target Chesmu
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Vá ao Platô dos Espíritos e entre nos Poços da Visão
step
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >> Aceite Até que a morte nos separe
    .target Clarice Foster
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entregue Boticário Zaqueu
    .accept 962 >> Aceite Ofídeas
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Aceite Ofídeas
    .target Apothecary Zamah
    .dungeon WC
step
    #optional
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entregue Boticário Zaqueu
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Aceite Peste Devoradora << Undead Priest
    .accept 5642 >> Aceite Guarda Sombria << Troll Priest
    .trainer >> Treine suas magias de classe
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Treine suas magias de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Treine suas magias de classe
    .target Archmage Shymm
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Crie|r |T133688:0|t[Bandagem de Linho Grossa] |cRXP_WARN_até atingir nível 80 ou mais de profissão|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Pule esta etapa se não tiver|r |T132889:0|t[Linho] |cRXP_WARN_suficiente para atingir nível 80 de profissão|r
    .train 3277 >> Aprenda |T133684:0|t[Bandagem de Lã]
    .train 7934 >> Aprenda |T134437:0|t[Antipeçonha] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Crie|r |T134437:0|t[Antipeçonha] |cRXP_WARN_se encontrou algumas|r |T134339:0|t[Vesículas Pequenas de Peçonha]
    >>|cRXP_WARN_Guarde-os para depois|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Entregue Hamuul Runa Totem
    .accept 1490 >> Aceite Nara Juba Agreste
    .target Arch Druid Hamuul Runetotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >> Entregue Nara Juba Agreste
    .accept 914 >> Aceite Líderes da Presa
    .target Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >> Entregue Nara Juba Agreste
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .trainer >> Treine suas magias de classe
    .accept 27 >> Aceite Uma lição a aprender
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 27 >> Entregar Uma Lição a Aprender
    .accept 28 >> Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,28,1 >>Pegue o |cRXP_PICK_Recipiente de Adorno|r no fundo do lago para obter um |T134125:0|t[Adorno de Altar]
    >>|cRXP_WARN_Não vá embaixo d'água até chegar direto acima do Bauble|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> |cRXP_WARN_Use o|r |T134125:0|t[Adorno de Altar] |cRXP_WARN_no Santuário de Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 28 >> Entregar Prova do Lago
    .accept 30 >> Aceitar Prova do Leão Marinho
    .target Tajarri
step << Druid
    .hs >> Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .dungeon !WC
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bonthen Vento do Prado|r
    .fly Thunder Bluff >> Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .dungeon WC
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bonthen Vento do Prado|r
    .fly Thunder Bluff >> Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >> Vá ao Platô dos Caçadores
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa Chifre Troante|r
    .train 24494 >> Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Vá ao Platô dos Caçadores
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm|r
    .train 845 >>Treine suas magias de classe
    .accept 1823 >>Aceite Fale com Ruga
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
    #optional
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Se for mais barato, você pode comprar uma arma verde do leilão em vez disso|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Etu Totem da Fúria|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
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
    .xp <20,1
step << Shaman
    #season 0
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Etu Totem da Fúria|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <21,1
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
    .xp <20,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kina Chifre Troante|r|cRXP_BUY_. Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_dela|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kina Chifre Troante
step << Hunter
    #completewith KayaLives
    #optional
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dela|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kina Chifre Troante

    --WC

step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    +Agora procure um grupo para a Caverna Ululante
    >>Farme |cRXP_ENEMY_Javatuscos|r |cRXP_WARN_enquanto forma um grupo para a Caverna Ululante|r
    .dungeon WC
step
    .goto The Barrens,46.15,36.93,100 >> Vá à Caverna Ululante
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Suba a montanha junto à pedra de encontro da Caverna Ululante
    >>|cRXP_WARN_Siga a seta com atenção para chegar à caverna escondida|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Eles ficam acima da entrada da Caverna Ululante|r
    .accept 1486 >> Aceite Pelegos anormais
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Aceite Erradicação de Anormais
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #hardcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Mate todas as |cRXP_ENEMY_Feras Anormais|r que encontrar. Pegue seus |cRXP_LOOT_Pelegos|r
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_LOOT_Pelegos|r |cRXP_WARN_suficientes para todos|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>Mate todas as |cRXP_ENEMY_Feras Anormais|r que encontrar. Pegue seus |cRXP_LOOT_Pelegos|r
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
    >>|cRXP_WARN_Ele demora para reaparecer. Pule esta etapa se não conseguir encontrá-lo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Atravesse o portal para entrar na instância da Caverna Ululante
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_LOOT_Pelegos|r |cRXP_WARN_suficientes para todos|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Mate |cRXP_ENEMY_Assoladores Anormais|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Trôpegos|r e |cRXP_ENEMY_Presáteras|r
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
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Discípulo de Naralex|r na entrada da Caverna Ululante. Escolte-o em segurança até |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Ao chegar a |cRXP_FRIENDLY_Naralex|r, você será atacado por duas ondas de inimigos e, por fim, por |cRXP_ENEMY_Mutanus, o Devorador|r
    >>Mate-o, pegue o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r] e use-o para iniciar a missão
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Aceite A lasca faiscante
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
    #hardcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Mate |cRXP_ENEMY_Assoladores Anormais|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Trôpegos|r e |cRXP_ENEMY_Presáteras|r. Pegue seus |cRXP_ENEMY_Pelegos|r
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
    >>Mate |cRXP_ENEMY_Assoladores Anormais|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Trôpegos|r e |cRXP_ENEMY_Presáteras|r
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
    >>Mate |cRXP_ENEMY_Raptores Anormais|r. Pegue seus |cRXP_ENEMY_Pelegos|r
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
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GShard
    .hs >> Use sua Pedra de Regresso para ir a Vila Catraca
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .turnin 1491 >>Entregue Bebidas inteligentes
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Operador de Grua Mafuá|r
    .turnin 959 >> Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Suba a montanha
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .turnin 6981 >> Entregue A lasca faiscante
    .accept 3369 >> Aceite Em Pesadelos
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .accept 3369 >> Aceite Em Pesadelos
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Eles ficam acima da entrada da Caverna Ululante|r
    .turnin 1486 >> Entregue Pelegos anormais
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .turnin 1487 >> Entregue Erradicação de Anormais
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Ele fica acima da entrada da Caverna Ululante|r
    .turnin 1487 >> Entregue Erradicação de Anormais
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Ele fica acima da entrada da Caverna Ululante|r
    .turnin 1486 >> Entregue Pelegos anormais
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
step << skip
    #completewith next
    .subzone 378 >> Vá ao sul até o Acampamento Taurajo
    .dungeon WC
step << skip
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 914 >>Entregue Líderes da Presa
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Entregue Em Pesadelos
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    #completewith next
    .goto Thunder Bluff,28.51,28.95,10 >> Vá ao Platô dos Espíritos e entre nos Poços da Visão
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 962 >>Entregue Ofídeas
    .target Apothecary Zamah
    .isQuestComplete 962
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
    .abandon 962 >>Abandone Ofídeas
step
    #xprate <1.5
    #completewith Serena
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .subzoneskip 380
    .isQuestTurnedIn 852 << !Hunter
step
    #xprate >1.49
    #completewith CounterattackTurnin2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .subzoneskip 380
    .target Tal
    .isQuestTurnedIn 852 << !Hunter
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #optional
    #completewith Serena
    .abandon 855 >>Abandone Braçadeiras de centauro
step
    #completewith CounterattackTurnin2
    +|cRXP_WARN_A próxima missão é muito difícil. Recomenda-se formar um grupo. Você pode atrair |cRXP_ENEMY_Senhor da Guerra Krom'zar|r ao redor do prédio onde está o responsável pela missão, mantendo distância|r
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Ele pode levar até 3 minutos para aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #label CounterattackTurnin2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <1.5
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <1.5
    #label Serena
    .goto The Barrens,39.16,12.16
    >>Mate |cRXP_ENEMY_Serena Plumassangue|r. Pegue sua |cRXP_LOOT_Cabeça|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    .goto The Barrens,49.05,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Juntatudy Jogafora|r
    .turnin 3921 >> Entregue Juntatudy Jogafora
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    .goto The Barrens,48.12,5.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torek|r
    .turnin 6541 >> Entregue Apresente-se a Kadrak
    .target Kadrak
step << Hunter
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torek|r para iniciar a escolta
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_reaparece em 5 minutos|r
    .accept 6544 >> Aceite Junte-se aos bons
    .target Torek
step << Hunter
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Siga |cRXP_FRIENDLY_Torek|r
    >>Deixe |cRXP_FRIENDLY_Torek|r e seus |cRXP_FRIENDLY_Saqueadores de Machadada|r receberem os ataques dos |cRXP_ENEMY_Guerreiros da Asa de Prata|r e dos |cRXP_ENEMY_Sentinelas da Asa de Prata|r
    >>|cRXP_WARN_Após eliminar os inimigos do prédio, corra até a sacada. Quando |cRXP_ENEMY_Duriel Flameluna|r chegar, deixe |cRXP_FRIENDLY_Torek|r e seus |cRXP_FRIENDLY_Saqueadores de Machadada|r atraírem os ataques antes de causar dano|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ertog Raivatusco|r
    .turnin 6544 >> Entregue Junte-se aos bons
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani Coração Trovejante|r
    .turnin 6382 >> Entregue A Caçada do Vale Gris
    .turnin 6383 >> Entregue A Caçada do Vale Gris
    .target Senani Thunderheart
step << Hunter
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Aprenda a rota de voo para Posto Machadada
    .target Vhulgra
step << Hunter
    #completewith EnterSTM2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Vhulgra
    .zoneskip The Barrens
step << !Hunter
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Hunter
    #xprate <1.5
    #hardcore
    #completewith next
    .subzone 380 >>Vá para A Encruzilhada
step
    #xprate <1.5
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 876 >> Entregue Serena Plumassangue
    .accept 1060 >> Aceite Uma carta para Jin'Zil
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <1.5
    #optional
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .accept 1060 >> Aceite Uma carta para Jin'Zil
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Aceite Ovo tipo extra
    .target Korran
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Cena de Invasores Goblins
    .accept 1063 >>Aceite A Bruxa Anciã
    .accept 1068 >>Aceite Retalhando as máquinas retalhadoras
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya está viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Cena de Invasores Goblins
    .accept 1063 >>Aceite A Bruxa Anciã
    .accept 1068 >>Aceite Retalhando as máquinas retalhadoras
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
    .timer 4,Cena de Invasores Goblins
    .accept 1063 >>Aceite A Bruxa Anciã
    .accept 1068 >>Aceite Retalhando as máquinas retalhadoras
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya está viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6523
step
    #label STMturnins1
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Cena de Invasores Goblins
    .accept 1063 >>Aceite A Bruxa Anciã
    .accept 1068 >>Aceite Retalhando as máquinas retalhadoras
    .goto The Barrens,35.26,27.88
    .target Seereth Stonebreak
step
    #completewith BloodFeedersTI
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Suba pelo caminho à esquerda
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mandingueiro Jin'Zil|r
    .turnin 1060 >> Entregue Uma carta para Jin'Zil
    .accept 1058 >> Aceite A magia florestal de Jin'Zil
    .target Witch Doctor Jin'Zil
    .isQuestTurnedIn 876
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mandingueiro Jin'Zil|r
    .accept 1058 >> Aceite A magia florestal de Jin'Zil
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entregue Notícias de Dogran
    .accept 1511 >>Aceite Trago do Ken'zigla
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Fome sangrenta
    .target Xen'Zilla
step << skip
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Salte em uma das gaiolas. Faça um Logout Pular saindo da conta e entrando novamente|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
step << skip
    #completewith ElderCroneTurnin
    .goto Thunder Bluff,54.18,27.01,20,0
    .goto Thunder Bluff,50.75,37.07,40 >> Suba de elevador até Penhasco do Trovão
step << Hunter
    .goto Stonetalon Mountains,59.08,75.70
    >>Clique no |cRXP_FRIENDLY_Cartaz de Procurado|r
    .accept 6284 >>Aceite Aracnofobia
step << Hunter
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Mate |cRXP_ENEMY_Besseleth|r. Pegue a |cRXP_LOOT_Presa de Besseleth|r
    >>|cRXP_WARN_Elimine os inimigos ao redor de|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Cuidado, ela prende você com teias|r
    >>|cRXP_WARN_Esta missão é opcional. Se não conseguir completá-la, pule-a|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #completewith Tsunaman1
    .subzone 460 >>Vá ao Retiro Rocha do Sol
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maggran Ata Terra|r
	.turnin 6284 >> Entregue Aracnofobia
    .target Maggran Earthbinder
    .isQuestComplete 6284
step
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tammra Campo de Vento|r
    .turnin 6401 >>Entregue Kaya está viva
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Jayka|r
    >>|cRXP_WARN_NÃO vincule sua|r |T134414:0|t[Pedra de Regresso]
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .vendor >> Venda os itens de lixo
    .target Innkeeper Jayka
    .isOnQuest 1095
step
    .goto Stonetalon Mountains,47.52,62.38,5,0
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeeda|r no segundo andar da estalagem
    .vendor 4083 >> |cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dela se estiverem disponíveis|r << !Warrior
    .vendor 4083 >> |cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_e|r |T134413:0|t[Raiz-da-vida] |cRXP_BUY_dela se estiverem disponíveis|r << Warrior
    .target Jeeda
    .isOnQuest 1095
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Suba pelo caminho à direita
step
    #xprate <1.5
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tsunomem|r
    .accept 6562 >>Aceite Problemas nas Profundezas
    .accept 6393 >>Aceite Guerra elemental
    .target Tsunaman
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1095 >>Entregue instruções adicionais
    .target Ziz Fizziks
step
    #xprate <1.5
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
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #xprate <1.5
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
    >>Mate |cRXP_ENEMY_XT:4|r. Ele patrulha o lado norte do rio
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,73.78,59.52
    .subzone 2160 >> Entre na Mina Cortavento
    .group
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piznik|r
    >>|cRXP_WARN_Esta missão leva 5 minutos e fará aparecer 3 ondas de kobolds em momentos definidos:|r
    >>|cRXP_WARN_Primeira onda aos 15 segundos (3 kobolds), segunda aos 2 minutos e 15 segundos (4 kobolds: 2 conjuradores e 2 corpo a corpo) e terceira aos 3 minutos e 20 segundos (4 kobolds). O objetivo é concluído aos 5 minutos|r
    .accept 1090 >> Aceite Ordens de Hanfritz
    .target Piznik
    .group 2
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.77,60.19
    >>Proteja |cRXP_FRIENDLY_Piznik|r dos |cRXP_ENEMY_Daninhos de Cortavento|r que chegarem
    >>|cRXP_WARN_Primeira onda aos 15 segundos (3 kobolds), segunda aos 2 minutos e 15 segundos (4 kobolds: 2 conjuradores e 2 corpo a corpo) e terceira aos 3 minutos e 20 segundos (4 kobolds). O objetivo é concluído aos 5 minutos|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 2
step
    #xprate <1.5
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >> Entregue Ordens de Hanfritz
    .accept 1092 >> Aceite Ordens de Hanfritz
    .target Piznik
    .group
step << skip
    #xprate <1.5
    .goto Stonetalon Mountains,71.83,60.34
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_Pule na roda de madeira. Faça um Logout Skip saindo e entrando no jogo|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .group
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1092 >> Entregue Ordens de Hanfritz
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #xprate <1.5
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
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
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
    >>Mate |cRXP_ENEMY_XT:4|r. Ele patrulha o lado norte do rio
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
    .isQuestTurnedIn 1092
    .group 0
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Entre no Túnel Garracava
step << skip
    #xprate <1.5
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_Pule na pedra branca à direita. Faça um Logout Skip saindo e entrando no jogo|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .zoneskip Ashenvale
step
    #xprate <1.5
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Vá em direção ao Assentamento Zoram'gar
    >>|cRXP_WARN_Evite os guardas de Astranaar no caminho. Siga o ponto indicado por segurança|r
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
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
    .xp 21 >> Mate inimigos até o nível 21
step
    #xprate <1.5
    #label ZoramFP
   .goto Ashenvale,12.24,33.80
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
   .fp Zoram'gar Outpost >> Obtenha a rota de voo do Assentamento Zoram'gar
   .target Andruk
   .isQuestAvailable 6442
step
    #xprate <1.5
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r e |cRXP_FRIENDLY_Marukai|r
   .turnin 6562 >> Entregue Problemas nas Profundezas
   .target +Je'neu Sancrea
   .goto Ashenvale,11.56,34.29
   .accept 216 >> Aceitar No meio do caminho tinha uma pedra... e um pelocardo...
   .target +Karang Amakkar
   .goto Ashenvale,11.90,34.53
   .accept 6462 >> Aceite Patuá troll
   .target +Mitsuwa
   .goto Ashenvale,11.65,34.85
   .accept 6442 >> Aceite Nagas na Praia de Zoram
   .target +Marukai
   .goto Ashenvale,11.69,34.90
step
    #xprate <1.5
   .goto Ashenvale,12.06,34.63
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muglash|r
   >>|cRXP_WARN_Isso iniciará uma missão de escolta. Cuidado, ela é difícil|r
   .accept 6641,1 >> Aceite Vorsha, a Açoitadora
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
   .goto Ashenvale,9.63,27.63
   >>Clique no get there
   >>|cRXP_WARN_Aparecerão ondas de|r |cRXP_ENEMY_Nagas|r |cRXP_WARN_. Cuidado quando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_aparecer, ela causa muito dano|r
   >>|cRXP_WARN_Você pode deixar|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_atrair os ataques antes de enfrentá-la|r
   .complete 6641,1 --Defeat Vorsha the Lasher
   .mob Vorsha the Lasher
step << Priest
    #xprate <1.5
    #season 0,1
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Procure um grupo para as Profundezas Negras agora se quiser uma varinha muito melhor (Cetro da Lápide). Você também pode fazer as Profundezas Negras quando estiver no Vale Gris, no nível 26–28
    .dungeon BFD
step
    #xprate <1.5
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
    #xprate <1.5
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
    .xp 21+21450 >> Ganhe 21450+/25200 de experiência
    .dungeon !BFD << Priest
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mensageiro do Brado Guerreiro|r e |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >> Entregue Vorsha, a Açoitadora
    .target +Warsong Runner
    .goto Ashenvale,12.22,34.21
    .turnin 6442 >> Entregue Nagas na Praia de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Aceitar A essência de Aku'mai
    .accept 6921 >> Aceitar Nas ruínas
    .accept 6565 >> Aceitar Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .accept 6563 >> Aceitar A essência de Aku'mai
    .accept 6921 >> Aceitar Nas ruínas
    .target Je'neu Sancrea
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Kalimdor,43.89,35.23,100 >> Vá para a entrada de Profundezas Negras
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>Pegue a |cRXP_LOOT_Safira de Aku'Mai|r na parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
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
    >>Mate |cRXP_ENEMY_Sacerdotisas da Maré das Profundezas Negras|r. Pegue um |T134332:0|t[|cRXP_LOOT_Bilhete Úmido|r] e use-o para iniciar a missão
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Aceitar Lealdade aos Deuses Antigos
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
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
    >>Pegue a |cRXP_LOOT_Safira de Aku'Mai|r na parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step << Priest
    #xprate <1.5
    #season 0,1
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Atravesse o portal para entrar na instância das Profundezas Negras
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Argênteo Thaelrid|r
    .accept 6561 >>Aceite Vilania nas Profundezas Negras
    .target Argent Guard Thaelrid
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Mate |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    #completewith next
    >>Pegue o |cRXP_PICK_Núcleo das Profundezas|r na |cRXP_LOOT_Pedra das Profundezas|r no fundo da água
    >>|cRXP_WARN_Pegar este item fará aparecer|r |cRXP_ENEMY_Barão Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Mate |cRXP_ENEMY_Barão Aquanis|r. Pegue um |T136222:0|t[|cRXP_LOOT_Globo d'Água Estranho|r]. Use-o para aceitar a missão
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Aceitar O Barão Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Pegue o |cRXP_PICK_Núcleo das Profundezas|r na |cRXP_LOOT_Pedra das Profundezas|r no fundo da água
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    >>Mate o |cRXP_ENEMY_Senhor do Crepúsculo Kelris|r. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .hs >> Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    >>|cRXP_WARN_Abate|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_primeiro se desejar. Este é o último chefe da masmorra|r
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Entregue Vilania nas Profundezas Negras
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Zoram'gar >> Voe para o Assentamento Zoram'gar
    .target Tal
    .zoneskip Ashenvale
    .dungeon BFD
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entregue A essência de Aku'mai
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Entregue Nas ruínas
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step << Priest
    #xprate <1.5
    #season 0,1
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Entregue O Barão Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #xprate <1.5
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karang|r
    .accept 216 >> Aceitar No meio do caminho tinha uma pedra... e um pelocardo...
    .target Karang Amakkar
step
    #xprate >1.49
    #completewith JourneytoTM
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharm|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Tharm
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step
    #xprate <1.5
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >> Voe para Penhasco do Trovão
    .zoneskip Thunder Bluff
    .target Andruk
    .cooldown item,6948,<0
step
    #completewith JourneytoTM
    .hs >> Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
    .cooldown item,6948,>0
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_Espere a cena terminar|r
    .turnin 1063 >> Entregue A Bruxa Anciã
    .timer 6,Cena de A Velha Anciã
    .accept 1064 >> Aceite Ajuda Renegada
    .target Magatha Grimtotem
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Entregue Ajuda Renegada
    .accept 1065 >> Aceite A jornada para Serraria Tarren
    .target Apothecary Zamah
step << Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
step << !Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Warlock
    #optional
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Andruk
    .zoneskip Ashenvale,1
step << !Warlock
    #optional
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Andruk
    .zoneskip Ashenvale,1
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Logmar|r
    .turnin 1511 >>Entregue Trago do Ken'zigla
    .accept 1515 >>Aceite O cativeiro de Dogran
    .target Grunt Logmar
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Dogran|r
    .turnin 1515 >>Entregue O cativeiro de Dogran
    .accept 1512 >>Aceite Presente do amor
    .target Grunt Dogran
step << Warlock
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .turnin 1512 >>Entregue Presente do amor
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .turnin 1513 >>Entregue A Vinculação
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Treine suas magias de classe
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Treine suas magias de classe
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Compre uma|r |T135640:0|t[Jambiya] |cRXP_BUY_dele se você não tiver uma adaga|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 8676 >>Aprenda |T132282:0|t[Emboscar]
    .train 1943 >>Aprenda |T132302:0|t[Ruptura]
    .train 1856 >>Aprenda |T132331:0|t[Sumir]
    .train 1725 >>Treine |T132289:0|t[Distração]
    .train 1785 >>Aprenda |T132320:0|t[Furtividade Grau 2]
    .accept 2460 >>Aceite A saudação dos Mão Despedaçada
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Após |cRXP_FRIENDLY_Shenthul|r fazer a saudação, selecione-o e digite /salute
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entregue A saudação dos Mão Despedaçada
    .accept 2458 >>Aceite Missão secreta
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre|r |T134387:0|t[Pó de Clarão] |cRXP_BUY_dele|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Treine suas magias de classe
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Treine suas magias de classe
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Thuul|r no topo da cabana
    .train 3567 >> Aprenda |T135759:0|t[Teleporte: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Entregue Guarda Sombria
    .trainer >> Treine suas magias de classe
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Entre nos Sertões pela saída oeste
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >> Vá em direção ao Charco de Lodo
step << Druid
    .goto The Barrens,56.67,8.32
    >>Abra o |cRXP_PICK_Cofre Estranho|r na água para obter o |T133443:0|t[Meio-pingente da Agilidade Aquática]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Selecione |cRXP_FRIENDLY_Capataz Arruela|r, use seu |T134536:0|t[Sinalizador] DUAS VEZES e digite /salute
    >>|cRXP_WARN_Cuidado! NÃO se aproxime até ele ficar amigável ou ele atacará você!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capataz Arruela|r
    .turnin 2458 >>Entregue Missão secreta
    .accept 2478 >>Aceite Missão: possível, mas não provável
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Use |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Capataz Biela|r para pegar sua |cRXP_LOOT_Chave da Torre|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Cada inimigo aqui recebe mais dano de certas habilidades|r
    >>Use |T132282:0|t[Emboscar] nos |cRXP_ENEMY_Peões Mutantes da Empreendimentos S.A.|r
    >>Use |T132302:0|t[Ruptura] nos |cRXP_ENEMY_Patrulheiros da Empreendimentos S.A.|r
    >>Use |T132292:0|t[Eviscerar] nos |cRXP_ENEMY_Vigias da Empreendimentos S.A.|r uma vez (1 ponto de combo)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Entre na Torre dos Ladinos e mate |cRXP_ENEMY_Peões|r, |cRXP_ENEMY_Patrulheiros|r e |cRXP_ENEMY_Vigias|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>No topo da torre, você encontrará |cRXP_ENEMY_Capataz-chefe Puzik Gallywix|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Emboscar] |cRXP_WARN_para reduzir a vida dele à metade. Use|r |T132155:0|t[Esfaquear] |cRXP_WARN_para recuperar energia e use|r |T136205:0|t[Evasão]
	>>|cRXP_WARN_Lembre-se de usar uma Poção e|r |T132819:0|t[Chá de Cardo] |cRXP_WARN_se necessário|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Use Arrombamento para abrir o |cRXP_PICK_Cofre de Gallywix|r e pegue a |cRXP_LOOT_Mistura|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto The Barrens,61.33,4.21,120 >>Vá em direção à Mina Veio do Pedregulho
step << skip --Rogue/Druid
    #hardcore
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_Pule na viga de madeira. Faça um Logout Skip saindo e entrando no jogo. Volte a Orgrimmar se não conseguir|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue/Druid
    #hardcore
    #completewith flytoORG
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada oeste
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entregue Missão: possível, mas não provável
    .accept 2479 >>Aceite A ajuda de Hinoto
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre |r |T133849:0|t[Poeira da Decomposição] |cRXP_BUY_e|r |T132793:0|t[Ampolas Vazias] |cRXP_BUY_dele|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Treine suas magias de classe
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
    .train 6192 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Treine as magias do seu mascote
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compre |r |T135423:0|t[Machado de Arremesso Mortal] |cRXP_BUY_dele|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_Se tiver|r |T134437:0|t[Antipeçonha]|cRXP_WARN_, use uma para se curar do|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Descarte o|r |T134536:0|t[Sinalizador] |cRXP_WARN_da bolsa, pois não precisa mais dela|r
    .destroy 8066 >> |cRXP_WARN_Destrua o|r |T134374:0|t[Apito do Arruela] |cRXP_WARN_da bolsa, pois não precisa mais dele|r
step
    #optional
    #label flytoORG
step
    #optional
    .abandon 6421 >>Abandone Ravina da Avalanche
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
    .abandon 6563 >>Abandone A essência de Aku'mai
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#name 13-20 Savanas
#version 1
#group Horda 1-22
#groupid RXP-SRGCE-H1
#next 20-24 Cordilheira das Torres de Pedra/Sertões


step << !Tauren
    #xprate <2.1 << !Undead
    #softcore
    #completewith ThievesPickup
    .goto The Barrens,50.72,32.61
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 380
step << !Tauren
    #xprate <2.1 << !Undead
    #hardcore
    #completewith ThievesPickup
    .goto The Barrens,52.34,29.27,150 >> Vá para A Encruzilhada
    .subzoneskip 380
step << !Tauren
    #softcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue Recrutamento na Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step << !Tauren
    #hardcore
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << !Tauren
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
    .target Thork
    .maxlevel 15
step << !Undead !Tauren
    #xprate <2.1
    #hardcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para Orgrimmar!|r
    .fp The Crossroads >> Aprenda a rota de voo da Encruzilhada
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Undead
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Aprenda a rota de voo da Encruzilhada
    .target Devrak
    .isQuestAvailable 1492
step << !Tauren
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .accept 848 >>Aceite Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestAvailable 848
step << !Tauren
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
    .xp >15,1
step << Orc Hunter/Troll Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >15,1
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Compre um|r |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] |cRXP_BUY_dele se disponível e reabasteça suas flechas|r
    >>|cRXP_WARN_Se não estiver disponível, compre um|r |T135490:0|t[Arco Reforçado] |cRXP_WARN_no lugar|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .xp <16,1
step << Orc Warrior
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Nargal Olho da Morte|r|cRXP_BUY_. Compre um|r |T132395:0|t[Tabar] |cRXP_BUY_dele|r
    .collect 1196,1,871,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #season 2
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Nargal Olho da Morte|r|cRXP_BUY_. Compre uma ou duas|r |T135640:0|t[Jambiya] |cRXP_BUY_dele|r
    .collect 2207,1,871,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #season 2
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compre um|r |T133490:0|t[Maça] |cRXP_BUY_dele|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe a|r |T133490:0|t[Maça]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compre um|r |T133490:0|t[Maça] |cRXP_BUY_dele|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T133490:0|t[Maça]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Tauren
    #label ThievesPickup
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Raptores ladrões
    .target Gazrog
step << !Tauren
    #xprate <2.1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >> Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Undead
    #xprate >2.09
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >> Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << !Undead !Tauren
    #xprate >2.09
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Entregue Retorno à Encruzilhada
    .target Zargh
step << !Undead !Tauren
    #xprate <2.1
    #softcore
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step << Warlock
    #season 2
    #sticky
    #completewith BarrensEnd
    #label ExplorerImp
    >>Ao fazer missões, lance |T136163:0|t|cRXP_FRIENDLY_[Drenar Alma]|r em inimigos até receber um |T133257:0|t|cRXP_LOOT_Alma do Explorador|r. |cRXP_WARN_Use-o para aprender a invocar um|r |T236294:0|t|cRXP_FRIENDLY_[Diabrete Explorador]|r
    .train 445459 >>|cRXP_WARN_Use a|r |T133257:0|t|cRXP_LOOT_Alma do Explorador|r |cRXP_WARN_para aprender a evocar um|r |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith BarrensEnd
    #label FelPortalRune
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presente. Se você encontrar um, invoque seu |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r] e fale com ele enquanto está ao lado de um portal para enviá-lo em uma expedição. Depois de 10-20 minutos, ele retornará com saque e uma chance de lhe conceder uma |T134419:0|t[|cRXP_FRIENDLY_Runa da Guarda Vil|r] << Warlock
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presente. Se você encontrar um, feche-o usando um |T134945:0|t[|cRXP_LOOT_Pergaminho de Recomposição Espacial|r]. Você receberá |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Seta Incendiária|r] << Mage
    >>|cRXP_WARN_Fique atento aos portais até conseguir a runa|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 429311,1 << Mage
    .train 431756,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith BarrensEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Guarda Vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Evocar Guarda Vil] << Warlock
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r] |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #completewith DisruptTheAttacks
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Bicos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >> Vá ao topo da montanha
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >> Entre no Covil de Brumedo
    .isOnQuest 924
step << !Tauren !Undead
    #xprate <1.5
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>Clique com o botão direito no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Certifique-se de ter uma|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_(duração de 30 minutos) com você|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << skip
    #xprate <1.5
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >> Desça a montanha de onde você veio
    .isQuestComplete 924
--XX !Tauren !Undead
step << Shaman
    #sticky
    #label FireTar1
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>Mate um |cRXP_ENEMY_Rabdomante Crinavalha|r ou |cRXP_ENEMY_Tecespinho Crinavalha|r. Pegue um |cRXP_LOOT_Piche Ígneo|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
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
    .maxlevel 15
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Se não estiver disponível, você conseguirá mais tarde|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
    .maxlevel 15
step
    #requires FireTar1<< Shaman
    #label DisruptTheAttacks
    #loop
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
    .maxlevel 15
step << Warrior !Undead
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior !Undead
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1502 >>Entregue Thun'grim Olhafogo
    .accept 1503 >>Aceite Aço forjado
    .target Thun'grim Firegaze
step << Warrior !Undead
    .goto The Barrens,55.05,26.65
    >>Pegue as |cRXP_PICK_Barras de Aço Forjado|r no |cRXP_LOOT_Baú de Ferro Roubado|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior !Undead
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior !Undead
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1503 >>Entregue Aço forjado
    .target Thun'grim Firegaze
step << !Undead !Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step
    #optional
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
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
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Bicos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Tauren Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto The Barrens,52.5,30.7,0
    .vendor >>|cRXP_WARN_Veja se|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_está na Encruzilhada. Ele vende poções e|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_com estoque limitado|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue Recrutamento na Encruzilhada << Tauren Shaman
    .turnin 844 >>Entregue A ameaça pinote
    .accept 845 >>Aceite As zevras
    .target Sergra Darkthorn
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entregue Cortando o ataque pela raiz
    .accept 872 >>Aceite Adeus aos ataques
    .target Thork
    .isQuestComplete 871
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Aceite Adeus aos ataques
    .target Thork
    .isQuestTurnedIn 871
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step << !Tauren !Undead
    #softcore
    #xprate <2.1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,872,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
    .xp >15,1
step << Orc Hunter/Troll Hunter
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >15,1
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Compre um|r |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] |cRXP_BUY_dele se disponível e reabasteça suas flechas|r
    >>|cRXP_WARN_Se não estiver disponível, compre um|r |T135490:0|t[Arco Reforçado] |cRXP_WARN_no lugar|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .xp <16,1
step << Tauren Hunter
    #optional
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_dele|r
    .collect 2511,1,872,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equipe o|r |T135613:0|t[Cano de Atirar do Caçador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Orc Warrior
    #optional
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Nargal Olho da Morte|r|cRXP_BUY_. Compre um|r |T132395:0|t[Tabar] |cRXP_BUY_dele|r
    .collect 1196,1,872,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Nargal Deatheye
step << Orc Warrior
    #optional
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equipe o|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Nargal Olho da Morte|r|cRXP_BUY_. Compre uma ou duas|r |T135640:0|t[Jambiya] |cRXP_BUY_dele|r
    .collect 2207,1,872,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Nargal Deatheye
step << Troll Rogue/Orc Rogue
    #optional
    #season 2
    #completewith KreenigSnarlsnout
    +|cRXP_WARN_Equipe o|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compre um|r |T133490:0|t[Maça] |cRXP_BUY_dele|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Orc Shaman/Troll Shaman
    #xprate <2.1
    #optional
    #completewith KreenigSnarlsnout1
    +|cRXP_WARN_Equipe o|r |T133490:0|t[Maça]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << Shaman
    #xprate >2.09
    #optional
    .goto The Barrens,51.23,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compre uma|r |T133490:0|t[Maça] |cRXP_BUY_dele|r
    .collect 852,1,871,1 --Collect Mace (1)
    .money <0.1739
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
    .target Nargal Deatheye
step << Shaman
    #xprate >2.09
    #optional
    #completewith KreenigSnarlsnout1
    +|cRXP_WARN_Equipe o|r |T133490:0|t[Maça]
    .use 852
    .itemcount 852,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.2
step << !Undead !Tauren
    #completewith HiddenEnemiesPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon RFC
step << Tauren
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão. Se não estiver disponível, você a receberá depois
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
    .dungeon RFC
step << Tauren
    #completewith KreenigSnarlsnout1
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #completewith next
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #label KreenigSnarlsnout1
    .goto The Barrens,58.69,27.08
    >>Abata |cRXP_ENEMY_Kreenig Rosnento|r. Saque-o para obter seu |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .dungeon RFC
    .isOnQuest 872
step << Tauren
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
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .dungeon RFC
    .isOnQuest 872
step << Tauren
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Tauren Shaman
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
    .goto Durotar,39.16,58.56,10 >> Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Call of Fogo - Missão - Missão
    .accept 1526 >>Aceite Clamor do Fogo
    .target Telf Joolam
    .dungeon RFC
step << Tauren Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo]
    .use 6636
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Pegue uma |cRXP_LOOT_Brasa Faiscante|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .dungeon RFC
step << Tauren Shaman
    .goto Durotar,38.96,58.22
    >>Clique no |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Call of Fogo - Missão - Missão
    .accept 1527 >>Aceite Clamor do Fogo
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entregue Call of Fogo - Missão - Missão
    .target Kranal Fiss
    .dungeon RFC
step << Tauren Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Saque |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão. Espere pelo reaparecimento se não estiver disponível
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
    .dungeon RFC
step << Tauren
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step << Tauren
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Vá para Orgrimmar
    .dungeon RFC
step << Tauren
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para lugar nenhum!|r
    .fp Orgrimmar >> Aprenda a rota de voo de Orgrimmar
    .target Doras
    .isQuestAvailable 5728
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto Durotar,53.08,9.19,0
    >>Mate inimigos da |cRXP_ENEMY_Lâmina Ardente|r na Rocha da Caveira até cair a |cRXP_LOOT_Insígnia do Tenente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Entregue Escondido Enemies
    .accept 5727 >> Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 5761 >>Aceite Mate a besta
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << !Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Entregue Escondido Enemies
    .accept 5728 >> Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << !Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Insígnia do Tenente] |cRXP_WARN_pois você não precisa mais dela|r
step << !Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entre no portal da instância das Cavernas Ígneas e atravesse-o
    .dungeon RFC
step << !Undead
    >>|cRXP_WARN_Se possível, peça aos membros do grupo que compartilhem as seguintes missões|r
    .accept 5722 >> Aceite Em busca da algibeira perdida
    .accept 5723 >> Aceite Testando a força do inimigo
    .dungeon RFC
step << !Undead
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Entregue Em busca da algibeira perdida
    .accept 5724 >> Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << !Undead
    #label TroggsShamans
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << !Undead
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    >>Mate |cRXP_ENEMY_Taragaman, o Famélico|r. Saqueie-o para pegar seu |cRXP_LOOT_Coração|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << !Undead
    #label BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Bazzalan|r e |cRXP_ENEMY_Jergosh, o Invocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << !Undead
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5761 >>Entregue Mate a besta
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Entregue Escondido Enemies
    .accept 5729 >> Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << !Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5729 >> Entregue Escondido Enemies
    .accept 5730 >> Aceite Escondido Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << !Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Entregue Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Tauren
    #completewith RFCTurninsTB1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Doras
    .zoneskip Orgrimmar,1
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << !Tauren
    #completewith KreenigSnarlsnout
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .use 6948
    .bindlocation 380
    .zoneskip The Barrens
    .dungeon RFC
step << Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Devrak
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
    .zoneskip Thunder Bluff

    --not worth to turn in 5723/5724 w/o TB flight path

step << skip
    #completewith RFCTurninsTB1
    .goto Mulgore,68.68,60.34,120,0
    .zone Thunder Bluff >>Vá ao sul até o Acampamento Taurajo e entre em Mulgore. De lá, vá a Penhasco do Trovão
    >>|cRXP_WARN_Se tiver a rota de voo de Penhasco do Trovão, voe para lá|r
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >> Aprenda a rota de voo de Acampamento Taurajo << !Tauren
    .target Omusa Thunderhorn
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #completewith RFCTurninsTB1
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .target Rahauro
    .isOnQuest 5724
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << Tauren/Orc Warrior/Troll Warrior/Orc Shaman/Troll Shaman
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isQuestComplete 5723
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step << skip
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Thunder Bluff >> Aprenda a rota de voo de Penhasco do Trovão
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .use 6948
    .zoneskip Thunder Bluff,1
    .bindlocation 380
    .cooldown item,6948,>0
    .dungeon RFC
step
    #optional
    #completewith KreenigSnarlsnout
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .zoneskip Thunder Bluff,1
    .cooldown item,6948,<0
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
step
    #optional
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Mate o |cRXP_ENEMY_Kreenig Rosnento|r. Saqueie o |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
step << Warlock
    #season 2
    .train 403932,1
    >>|cRXP_WARN_Vá até o Altar de Espinhos|r. Lance |T136126:0|t[Conversão de Vida] até ficar quase sem vida. Depois, lance |T136168:0|t[Funil de Vida] no seu ajudante para morrer e obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r]
    *|cRXP_WARN_Você será ressuscitado imediatamente após morrer|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
    .isOnQuest 872
step << Warlock
    #season 2
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para aprender|r |T136168:0|t[Mestre Canalizador]
    .isOnQuest 872
step
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
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
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step << !Tauren !Undead
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead
    #xprate <1.5
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >> Vá em direção a Durotar
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
    .goto Durotar,39.16,58.56,10 >> Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Call of Fogo - Missão - Missão
    .accept 1526 >>Aceite Clamor do Fogo
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Pegue uma |cRXP_LOOT_Brasa Faiscante|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Clique no |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Call of Fogo - Missão - Missão
    .accept 1527 >>Aceite Clamor do Fogo
step << Shaman
    #completewith FireEnd
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
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
    .use 4926 >> Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
step << skip
    #completewith RatchetEnter
    >>Mate |cRXP_ENEMY_Uivadores Helióscamo|r. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
--XX Need to add goto about halfway down since they only spawn up north, would be too messy to add it
step
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Mate |cRXP_ENEMY_Zevra Corredora|r. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >> Vá para Vila Catraca
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
    .target Gazlowe
    .maxlevel 16
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Aprenda a rota de voo de Vila Catraca
    .target Bragok
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Pôster de Procura-se|r
    .accept 894 >>Aceite A rebimboca
    .target Sputtervalve
    .maxlevel 16
step
    .goto The Barrens,62.59,37.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wanted Poster|r
    .accept 895 >>Aceite PROCURA-SE: Barão Longacosta
    .maxlevel 16
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
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você estiver no nível 16|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
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
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você estiver nível no 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Shaman
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T133052:0|t[Martelo] |cRXP_BUY_dele|r
    .collect 2028,1,895,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T133052:0|t[Martelo]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para a mão secundária|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #season 0
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe a segunda|r |T135343:0|t[Cimitarra] |cRXP_WARN_em sua mão secundária|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um ou dois|r |T135302:0|t[Cotó] |cRXP_BUY_dele|r
    .collect 2208,1,895,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135302:0|t[Cotó]
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 819 >>Entregue Barril Vazio de Chen
    .accept 821 >>Aceite Barril Vazio do Chen
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Suco de Melão] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_WARN_são muito baratos, compre quantos quiser|r
    .vendor >> Venda os itens de lixo
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Exclua o|r |T133735:0|t[Manual de Operação do Console de Controle] |cRXP_WARN_das bolsas, pois não é mais necessário|r
step
    #completewith BaronLongshore
    >>Mate |cRXP_ENEMY_Bucaneiros dos Mares do Sul|r e |cRXP_ENEMY_Canhoneiros dos Mares do Sul|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith Southsea
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
    .isOnQuest 895
step
    #label Southsea
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>Mate |cRXP_ENEMY_Bucaneiros dos Mares do Sul|r e |cRXP_ENEMY_Canhoneiros dos Mares do Sul|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
    .isOnQuest 887
step << Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
	>>Mate |cRXP_ENEMY_Tazan|r. Pegue sua |cRXP_LOOT_Algibeira|r
    >>|cRXP_WARN_Ele patrulha subindo e descendo a colina|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
    .isOnQuest 1963
    .maxlevel 16
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 887 >>Entregue Os Flibusteiros dos Mares do Sul
    .turnin 895 >>Entregue PROCURA-SE: Barão Longacosta
    .accept 890 >>Aceite Carregamento perdido
    .target Gazlowe
    .isQuestComplete 887
    .isQuestComplete 895
step
    #optional
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .accept 890 >>Aceite Carregamento perdido
    .target Gazlowe
    .isQuestTurnedIn 887
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .turnin 890 >>Entregue Carregamento perdido
    .accept 892 >>Aceite Carregamento perdido
    .accept 896 >>Aceite A fortuna do mineiro
    .target Wharfmaster Dizzywig
    .isQuestTurnedIn 887
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .accept 896 >>Aceite A fortuna do mineiro
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue Carregamento perdido
    .accept 888 >>Aceite Butim Roubado
    .target Gazlowe
    .isQuestTurnedIn 887
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
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você estiver no nível 16|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
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
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você estiver nível no 16|r
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
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 0
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T133052:0|t[Martelo] |cRXP_BUY_dele|r
    .collect 2028,1,850,1 --Collect Hammer (1)
    .money <0.5065
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Shaman
    #season 2
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T133052:0|t[Martelo]
    .use 2028
    .itemcount 2028,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith FlyToXroads1
    |cRXP_WARN_+Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 0
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para a mão secundária|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #season 0
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    #season 2
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um ou dois|r |T135302:0|t[Cotó] |cRXP_BUY_dele|r
    .collect 2208,1,850,1 --Collect Poniard (1)
    .money <0.3842
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
    .target Ironzar
step << Rogue
    #season 2
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T135302:0|t[Cotó]
    .use 2208
    .itemcount 2208,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.4
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue Adeus aos ataques
    .target Thork
    .isQuestComplete 5041
    .isQuestComplete 872
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Sergra|r
    .turnin 872 >>Entregue Adeus aos ataques
    .target Thork
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .target Thork
    .isQuestComplete 5041
step
    #optional
    #completewith RegtharDeathgate1
    .abandon 871 >>Abandone Cortando o ataque pela raiz
    .abandon 5041 >>Abandone Suprimentos para a Encruzilhada
step
    #label XroadsTurnins3
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Entregue As zevras
    .accept 903 >>Aceite Predadores dos Sertões
    .target Sergra Darkthorn
step << skip
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Munição Pesada] |cRXP_BUY_dele|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Compre um|r |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] |cRXP_BUY_dele se disponível e reabasteça suas flechas|r
    >>|cRXP_WARN_Se não estiver disponível, compre um|r |T135490:0|t[Arco Reforçado] |cRXP_WARN_no lugar|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_dele|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith RegtharDeathgate1
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .maxlevel 16
step
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de centauro
    .target Regthar Deathgate
step
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
step
    #xprate <2.1
    #completewith KodobaneTurnin
    >>Mate |cRXP_ENEMY_Cavalgantes Kolkar|r e |cRXP_ENEMY_Tempestários Kolkar|r. Pegue suas |cRXP_LOOT_Braçadeiras|r
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #completewith Barak
    >>Pegue |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Druid
    #season 2
    .goto The Barrens,44.73,22.18
    >>Pegue o |cRXP_PICK_Abandoned Mordelisca Ninho|r no chão para |T294479:0|t[|cRXP_LOOT_Abandoned Mordelisca Ovo|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    .goto The Barrens,45.06,22.54
    >>Mergulhe até a |cRXP_PICK_Rachadura Borbulhante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Mate |cRXP_ENEMY_Barak Findekodo|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Cuidado! Os ataques corpo a corpo de |cRXP_ENEMY_Barak Findekodo|r causam MUITO dano, e ele é protegido por um |cRXP_ENEMY_Cavalgante Kolkar|r. Eles podem prendê-lo com redes e atirar à distância|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    #completewith KodobaneTurnin
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #xprate >2.09
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>Mate |cRXP_ENEMY_Predadores da Savana|r. Pegue suas |cRXP_LOOT_Garras|r e |cRXP_LOOT_Presas|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
step
    #xprate <2.1
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #xprate >2.09
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate >2.09
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .target Regthar Deathgate
step
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
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
    >>Mate |cRXP_ENEMY_Predadores da Savana|r. Pegue suas |cRXP_LOOT_Garras|r e |cRXP_LOOT_Presas|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #xprate <2.1
    #loop
    .goto The Barrens,41.84,14.81,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>Mate |cRXP_ENEMY_Harpias Asabruxa|r e |cRXP_ENEMY_Asabruxas Plumerrante|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Suba pelo caminho à esquerda
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Salte em uma das gaiolas. Faça um Logout Pular saindo da conta e entrando novamente|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >> Suba de elevador até Penhasco do Trovão
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step << skip --!Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step << skip --!Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step << skip --!Tauren
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step << skip --!Tauren
    #completewith Samophlange
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step << skip --!Tauren
    #completewith Samophlange
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Abandone Testando a força do inimigo
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Abandone O poder de destruir...
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Abandone Inimigos ocultos
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Abandone Mate a besta
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
    .accept 875 >>Aceite Tenentes harpias
    .target Darsok Swiftdagger
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >> Entregue Os Charcos Esquecidos
    .accept 877 >> Aceite O Oásis Estagnado
    .target Tonga Runetotem
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Predadores dos Sertões
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparece após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando apareceu, pule este passo|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não apareceu após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantiu o primeiro ataque, abandone Echeyaki, volte à cidade e aceite a missão novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
    .dungeon RFC
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    +|cRXP_WARN_Cuidado com os|r |cRXP_ENEMY_Garrafoices Helióscamo|r |cRXP_WARN_na área. Eles chegam ao nível 18 e podem usar|r |T132152:0|t[Surra]
    .dungeon RFC
    .xp >17,1
step << skip --!Tauren Orc !Warrior !Shaman/Troll !Warrior !Shaman
    #xprate <2.1
    #completewith Samophlange
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .dungeon RFC
step
    #xprate <2.1
    #completewith Samophlange
    +|cRXP_WARN_Cuidado com os|r |cRXP_ENEMY_Garrafoices Helióscamo|r |cRXP_WARN_na área. Eles chegam ao nível 18 e podem usar|r |T132152:0|t[Surra]
    --.dungeon !RFC
    .xp >17,1
step
    #xprate >2.09
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate >2.09
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >> Entregue Os Charcos Esquecidos
    .accept 877 >> Aceite O Oásis Estagnado
    .target Tonga Runetotem
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Predadores dos Sertões
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparece após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando apareceu, pule este passo|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #xprate >2.09
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não apareceu após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantiu o primeiro ataque, abandone Echeyaki, volte à cidade e aceite a missão novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    #optional
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Garrafoices furiosos
    .target Sergra Darkthorn
    .xp <20,1
step
    #optional
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .xp <20,1
step
    #optional
    .maxlevel 19,NorthBarrensSkip
step
    #xprate <2.1
    #completewith Samophlange
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    --.dungeon !RFC
step
    #xprate >2.09
    #completewith Samophlange
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrang Sanguebravo|r
    >>|cRXP_FRIENDLY_Vrang Sanguebravo|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_com estoque limitado|r << Orc Warrior/Troll Warrior/Tauren Warrior
	.vendor	>> Venda os lixos e repare seu equipamento
    .target Vrang Wildgore
    --.dungeon !RFC
step
    #xprate >2.09
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 894 >>Entregue A rebimboca
    .accept 900 >>Aceite A rebimboca
step
    .goto The Barrens,52.33,11.57
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Cuidado! Dois inimigos aparecerão após você fechar a válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
    .isOnQuest 900
step
    .goto The Barrens,52.29,11.40
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Um inimigo aparecerá após você fechar a válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
    .isOnQuest 900
step
    .goto The Barrens,52.40,11.40
    >>Clique na |cRXP_PICK_Válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
    .isOnQuest 900
step
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 900 >>Entregue A rebimboca
    .accept 901 >>Aceite A rebimboca
    .isQuestComplete 900
step
    #optional
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .accept 901 >>Aceite A rebimboca
    .isQuestTurnedIn 900
step
    .goto The Barrens,52.84,10.40
    >>Mate |cRXP_ENEMY_Engenhoqueiro Faísca|r no edifício. Pegue a |cRXP_LOOT_Chave do Painel|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
    .isQuestTurnedIn 900
step
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 901 >>Entregue A rebimboca
    .accept 902 >>Aceite A rebimboca
    .isQuestTurnedIn 900
step
    #completewith Ignition
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
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
    >>Mate |cRXP_ENEMY_Raptores|r. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #optional
    .goto The Barrens,56.5,7.5
    .xp 16>> Suba até o nível 16
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r no Charco de Lodo
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    .accept 858 >>Aceite Ignição
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Feitor Grelha|r |cRXP_WARN_ou|r |cRXP_ENEMY_Fera Lodosa|r |cRXP_WARN_estiverem presentes. São inimigos raros e fortes de nível 19|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Mate |cRXP_ENEMY_Supervisor Rancatraca|r. Pegue sua |cRXP_LOOT_Chave|r
    >>|cRXP_WARN_Ele patrulha de um lado a outro da plataforma|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
    .turnin 858 >>Entregue Ignição
    .accept 863,1 >>Aceite A Fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
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
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
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
    >>Mate |cRXP_ENEMY_Segurança da Empreendimentos S.A.|r e |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue a |cRXP_LOOT_Esmeralda Olho-de-gato|r
    >>|cRXP_WARN_Se não cair após matar 25+ inimigos, pode pular esta missão|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
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
    >>Mate |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue seus |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
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
    >>Mate |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue seus |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
    >>|cRXP_WARN_Você também pode comprá-los na Casa de Leilões|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_Pule na viga de madeira. Faça um Logout Skip saindo e entrando no jogo. Volte a Orgrimmar se não conseguir|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .zoneskip Orgrimmar
step
    #completewith SpiritsPickup
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada oeste
step
    #optional
    #label NorthBarrensSkip
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Crie|r |T133685:0|t[Bandagens de Linho] |cRXP_WARN_até atingir nível de profissão 40 ou mais|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Pule esta etapa se não tiver|r |T132889:0|t[Linho] |cRXP_WARN_suficiente para atingir nível 40 de profissão|r
    .train 3276 >> Aprenda |T133688:0|t[Bandagem de Linho Grossa]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> |cRXP_WARN_Crie|r |T133688:0|t[Bandagem de Linho Grossa] |cRXP_WARN_até atingir nível 50 ou mais de profissão|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Pule esta etapa se não tiver|r |T132889:0|t[Linho] |cRXP_WARN_suficiente para atingir nível 50 de profissão|r
    .train 3274 >> Aprenda Socorrista Profissional
    .target Arnok
    .skill firstaid,<40,1
step
    #completewith next
    +|cRXP_WARN_Tenha cuidado para não vender seu|r |T132794:0|t[|cRXP_LOOT_Frasco de Óleo|r]!
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    #season 2
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 527 >> Treine |T135894:0|t[Dissipar Magia]
    >>|cRXP_WARN_Você precisará de|r |T135894:0|t[Dissipar Magia] |cRXP_WARN_para obter uma runa mais tarde|r
    .target Ur'kyo
    .xp <18,1
step << Priest
    #optional
    #season 0
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Treine suas magias de classe
    .target Pephredo
    .xp <18,1
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o mestre de mantícoras
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >> Entregue Doraso, o mestre de mantícoras
    .accept 6386 >> Aceite Retorno à Encruzilhada
    .target Doras
    .isOnQuest 6385
step << !Tauren !Undead
    #xprate <2.1
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .accept 6386 >> Aceite Retorno à Encruzilhada
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para lugar nenhum!|r
    .fp Orgrimmar >> Aprenda a rota de voo de Orgrimmar
    .target Doras
    .isQuestAvailable 4921
step << Shaman
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Certifique-se de que você aprendeu|r |T136075:0|t[Expurgar] |cRXP_WARN_Pois será necessário para obter uma runa mais tarde|r
    .train 8019 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 2
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Certifique-se de que você aprendeu|r |T136075:0|t[Expurgar] |cRXP_WARN_Pois será necessário para obter uma runa mais tarde|r
    .train 913 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
step << Shaman
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Certifique-se de que você aprendeu|r |T136075:0|t[Expurgar] |cRXP_WARN_Pois será necessário para obter uma runa mais tarde|r
    .train 8019 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    #season 0
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    >>|cRXP_WARN_Certifique-se de que você aprendeu|r |T136075:0|t[Expurgar] |cRXP_WARN_Pois será necessário para obter uma runa mais tarde|r
    .train 913 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
step
    #xprate <2.1
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor Solárbol|r
    .accept 1061 >>Aceite Os espíritos das Torres de Pedra
    .target Zor Lonetree
step << Shaman/Hunter
    #season 2
    .goto Orgrimmar,38.923,38.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Zor Solárbol|r
    .train 409580 >>|cRXP_WARN_Compre e use o|r |T133739:0|t|cRXP_LOOT_[Tratado do Coração de Leão]|r |cRXP_WARN_para aprender|r |T132185:0|t[Coração de Leão] << Hunter
    .train 425336 >>|cRXP_WARN_Compre e use o|r |T133747:0|t|cRXP_LOOT_[Revelação da Fúria Xamanística]|r |cRXP_WARN_para aprender|r |T136088:0|t[Fúria Xamanística] << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .money <0.5
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Treine [Abrir Fechadura]
    .train 921 >> Treine |T133644:0|t [Bater Carteira]
    .accept 2379 >> Aceite Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Entregue A Mão Despedaçada
    .accept 1858 >> Aceite The Estilhaçada Hand - Missão
    .target Therzok
    .isQuestComplete 1963
step << Orc Rogue/Troll Rogue
    #optional
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .accept 1858 >> Aceite The Estilhaçada Hand - Missão
    .target Therzok
    .isQuestTurnedIn 1963
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
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>|cRXP_WARN_Use|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_para abrir a |r |T133626:0|t[Algibeira de Tazan]
    .complete 1858,1 --Tazan's Logbook (1)
    .itemcount 5060,1
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,53.99,68.05
    >>|cRXP_WARN_Use|r |T133644:0|t[Bater Carteira] |cRXP_WARN_em|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_na estalagem. Use a chave dele para abrir|r |T133626:0|t[Algibeira de Tazan]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isQuestTurnedIn 1963
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entregue A Mão Despedaçada
    .target Therzok
    .isQuestTurnedIn 1963
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Compre uma ou duas|r |T135342:0|t[Cris] |cRXP_BUY_dele|r
    .collect 2209,1,881,1 --Collect Kris (1)
    .money <0.7115
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .target Kareth
step << Orc Rogue/Troll Rogue
    #optional
    #completewith FoodandWater2
    .abandon 1963 >> Abandone The Estilhaçada Hand - Missão
step << Rogue
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipe o|r |T135342:0|t[Cris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp <19,1
step << Rogue
    #optional
    #completewith FoodandWater2
    +Equipe o|cRXP_WARN_ |T135342:0|t[Cris] |rquando estiver no nível 19
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp >19,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Treine suas magias de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Treine suas magias de classe
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Sacrificar]
    .collect 16351,1,881,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Seta de Fogo (Grau 3)]
    .collect 16316,1,881,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Treine as magias do seu mascote
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
step << Tauren Warrior/Undead Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprenda a usar Machados de Duas Mãos
    .train 227 >>Treine Cajados
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135490:0|t[Arco Reforçado] |cRXP_BUY_dele|r
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
step << Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha] |cRXP_WARN_quando você estiver no nível 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Druid
    #season 2
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Bendotado|r
    >>|cRXP_BUY_Compre uma|r |T134237:0|t[Chave do Butim de Kolkar] |cRXP_BUY_na Casa de Leilões se possível|r
    >>|cRXP_WARN_Você precisará disso para obter o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_para|r |T236167:0|t[Rugido Selvagem] << Druid
    .collect 5020,1 --Kolkar Booty Key (1)
	.target Auctioneer Thathung
    .itemcount 208689,<1,1 << Druid
    .train 407988,1 << Druid
step
    #optional
    #label SpiritsPickup
step
    #completewith FoodandWater2
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater2
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Doras
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Raptores ladrões
    .accept 3281 >>Aceite Prata roubada
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
    .accept 875 >>Aceite Tenentes harpias
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >> Entregue Os Charcos Esquecidos
    .accept 877 >> Aceite O Oásis Estagnado
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Predadores dos Sertões
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
step << !Tauren !Undead
    #xprate <2.1
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Entregue Retorno à Encruzilhada
    .target Zargh
    .isOnQuest 6386
step
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparece após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando apareceu, pule este passo|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não apareceu após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantiu o primeiro ataque, abandone Echeyaki, volte à cidade e aceite a missão novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Garrafoices furiosos
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destrua o|r |T134227:0|t[Berrante de Echeyaki] |cRXP_WARN_você não precisa mais disso|r
step << Warrior
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>Clique em |cRXP_PICK_Horda Estandarte de Guerra|r
    .train 403489,1
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Aceite Consumido pelo ódio
    .accept 4921 >>Aceite Perdida em combate
    .target Mankrik
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 2382 >>Entregue Wrenix da Vila Catraca
    .accept 2381 >>Aceite Saqueando os saqueadores
    .target Wrenix the Wretched
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aparato Mercadotrônico do Wrenix|r
    >>|cRXP_WARN_Obtenha um|r |T134059:0|t[B.E.C.A.] |cRXP_WARN_e |r |T134065:0|t[Ferramentas de Ladrões]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue A rebimboca
    .turnin 863 >>Entregue A fuga
    .target Sputtervalve
    .isQuestComplete 863
    .isOnQuest 902
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue A rebimboca
    .target Sputtervalve
    .isOnQuest 902
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .turnin 863 >>Entregue A fuga
    .target Sputtervalve
    .isQuestComplete 863
step
    #xprate <2.1
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .accept 3921 >>Aceite Juntatudy Jogafora << Hunter
    .accept 1483 >>Aceite Zé Fízzica
    .target Sputtervalve
    .isQuestTurnedIn 902 << Hunter
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dizzywig|r
    .turnin 896 >>Entregue A fortuna do mineiro
    .target Wharfmaster Dizzywig
    .isQuestComplete 896
step
    #xprate <2.1
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 865 >>Aceite Chifres de raptor
    .accept 1069 >>Aceite Ovos de Aranha de Fundolimo
    .target Mebok Mizzyrix
step
    #xprate >2.09
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 865 >>Aceite Chifres de raptor
    .target Mebok Mizzyrix
step << Warrior
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Compre um|r |T135129:0|t[Arpão de Pesca] |cRXP_BUY_dele|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>Use o |T135129:0|t[Arpão de Pesca] em |cRXP_ENEMY_Bruuz|r e mate-o. Pegue dele a |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] << Warrior
    >>|cRXP_WARN_Ele patrulha ao redor do barco afundado na água|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] |cRXP_WARN_para treinar|r |T132394:0|t[Golpe Rápido]
    .use 208778
    .itemcount 208778,1
step
    #sticky
    #completewith LeaveRatchet
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_Se tiver|cRXP_LOOT_3 de ouro|r sobrando, você pode comprar uma runa de|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_na estalagem de Vila Catraca. Avalie se pode pagar e se a runa é útil para sua classe. Você sempre pode comprá-la mais tarde|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grizzby|r na estalagem
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Compre e use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Harmoniosa|r] |cRXP_WARN_para treinar|r |T237549:0|t[Serendipidade] << Priest
    .train 410010 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sacrifício|r] |cRXP_WARN_para treinar|r |T134596:0|t[Gravar Calças - Sacrifício Divino] << Paladin
    .train 401761 >>|cRXP_WARN_Compre e use as|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Retroceder Tempo|r] |cRXP_WARN_para treinar|r |T237538:0|t[Retroceder Tempo] << Mage
    .train 410122 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Lobo Solitário|r] |cRXP_WARN_para treinar|r |T132266:0|t[Lobo solitário] << Hunter
    .train 416042 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sobrevivência|r] |cRXP_WARN_para treinar|r |T132126:0|t[A Lei da Selva] << Druid
    .train 425445 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Armipotente|r] |cRXP_WARN_para treinar|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] |cRXP_WARN_para treinar|r |T237562:0|t[Pacto Demoníaco] << Warlock
    .train 424990 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Adaga de Bloqueio|r] |cRXP_WARN_para treinar|r |T237531:0|t[Adaga de Bloqueio] << Rogue
    .train 410096 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Duas Armas|r] |cRXP_WARN_para treinar|r |T132686:0|t[Gravar Peitoral - Especialização em Duas Armas] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Suco de Melão] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|T133918:0|t[Pargos-da-lama Bocalonga] |cRXP_WARN_são muito baratos, compre quantos quiser|r
    .vendor >> Venda os itens de lixo
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
    #season 0
	#completewith SSTreasure
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Pule no navio, desça ao segundo andar e aumente sua perícia em Arrombamento para pelo menos 70|r
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Pule no navio, desça ao segundo andar e aumente sua perícia em Arrombamento para pelo menos 70|r
    .train 424984,3 --Saber slash rune already learned, no need to get 80 LP
step << Rogue
    #season 2
	#completewith SSTreasure
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Pule no navio, desça ao segundo andar e aumente sua perícia em Arrombamento para pelo menos 80|r
    .train 424984,1 --Saber slash rune not learned yet, need to get 80 LP
step << Rogue
    #label SSTreasure
    .goto The Barrens,64.95,45.44
    >>Ao atingir 70 em Arrombamento, vá ao andar inferior do navio e abra |cRXP_PICK_A Joia dos Mares do Sul|r
    >>|cRXP_WARN_Use|r |T134059:0|t[B.E.C.A.] |cRXP_WARN_no|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto The Barrens,63.58,49.25
    >>Pegue o |cRXP_PICK_Caixote|r no chão
    .complete 888,2 --Telescopic Lens (1)
    .isOnQuest 888
step
    .goto The Barrens,62.63,49.64
    >>Pegue o |cRXP_PICK_Caixote|r no chão
    .complete 888,1 --Shipment of Boots (1)
    .isOnQuest 888
step << Warrior/Rogue
    #season 2
    #completewith EndlessRageRune << Warrior
    #completewith SaberSlashRune << Rogue
    .subzone 385 >>Vá para Northwatch Segurar
step << Warrior
    #season 2
    .goto The Barrens,62.55,56.31
    >>Clique em |cRXP_PICK_Aliança Estandarte de Guerra|r
    >>Mate |cRXP_ENEMY_Lieutenant Stonebrew|r conforme ele aparece. Saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step << Warrior
    #season 2
    #label EndlessRageRune
    .train 403489 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r] |cRXP_WARN_para aprender|r |T132347:0|t[Raiva Infinita]
    .use 208741
    .itemcount 208741,1
step << Rogue
    #season 2
    .goto The Barrens,62.31,54.22
    >>Pegue o |cRXP_PICK_Stable Hand's Trunk|r no topo do estábulo para |T134419:0|t[|cRXP_FRIENDLY_Rune of Talho de Sabre|r]
    >>|cRXP_WARN_Suba a colina e pule para o topo da muralha do castelo. De lá, você pode pular para o telhado do estábulo|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    #label SaberSlashRune
    .train 424984 >>|cRXP_WARN_Usar|r |T134419:0|t[|cRXP_FRIENDLY_Runa of Talho de Sabre|r] |cRXP_WARN_para treinar|r |T132375:0|t[Talho de Sabre]
    .use 208772
    .itemcount 208772,1
step
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r e |cRXP_LOOT_Penas|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
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
step << Druid
    #xprate <2.1
    #season 2
    #completewith Verog
    >>Mate os |cRXP_ENEMY_Kolkar|r. Saqueie-os para obter um |T134237:0|t[|cRXP_LOOT_Kolkar Booty Chave|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #xprate <2.1
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
    .goto The Barrens,55.80,45.78,50,0
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #xprate <2.1
    .goto The Barrens,52.95,41.75
    >>Mate |cRXP_ENEMY_Verog|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode aparecer sempre que um |cRXP_ENEMY_Kolkar|r é morto|r
    >>|cRXP_WARN_Em um servidor altamente populado ou lançamento recente, sua melhor opção é acampar no ponto de reaparecimento|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #optional
    #label Verog
step << Druid
    #season 2
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
    >>Mate os |cRXP_ENEMY_Kolkar|r. Saqueie-os para obter um |T134237:0|t[|cRXP_LOOT_Kolkar Booty Chave|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    .goto The Barrens,52.7,41.8
    >>Abra o |cRXP_PICK_Kolkar Booty|r para |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .itemcount 208689,<1,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .equip 18,208689 >> |cRXP_WARN_Equipe o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_assim que aprender|r |T132115:0|t[Forma de Felino]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    #completewith Nest
    .train 407988 >>|cRXP_WARN_Cause dano de sangramento 20 vezes a humanoides com|r |T132152:0|t[Rasgar] |cRXP_WARN_ou|r |T132122:0|t[Estraçalhar] |cRXP_WARN_e então use o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_novamente para aprender|r |T236167:0|t[Rugido Selvagem]
    .use 208689
    .itemcount 208689,1
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
    .goto The Barrens,55.72,42.14,30,0
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor de O Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani1
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>Clique no |cRXP_PICK_Blue Objetos de Clássico|r. Mate mais |cRXP_ENEMY_Sunscale Scytheclaws|r se você não tiver uma |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Clique no |cRXP_PICK_Ninho de Raptor Vermelho|r. Mate mais |cRXP_ENEMY_Garrafoices Helióscamo|r se você não tiver uma |T132914:0|t[Pena de Helióscamo]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Clique no |cRXP_PICK_Ninho de Raptor Amarelo|r. Mate mais |cRXP_ENEMY_Garrafoices Helióscamo|r se você não tiver uma |T132914:0|t[Pena de Helióscamo]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Abate |cRXP_ENEMY_Sunscale Scytheclaws|r. Saque-os para seus |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cadáver Arrebentado|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Cifre de Lagarto Trovejante|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
	>>Mate |cRXP_ENEMY_Lakota'mani|r. Pegue o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTArrive
    >>Abate os |cRXP_ENEMY_Stormsnouts|r. Saqueie-os para |cRXP_LOOT_Chifre|r. Isso não precisa ser concluído agora
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Você precisa ter aprendido|r |T135813:0|t[Armadilha Imolante] |cRXP_WARN_ou qualquer outra armadilha para poder obter esta runa|r
step << Hunter
    #season 2
    #loop
    .goto The Barrens,43.12,57.37,0
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37,40,0
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Usar |T135813:0|t[Armadilha Imolante] no caminho de patrulha do |cRXP_ENEMY_Patrolling Cheetah|r para remover seu bônus
    >>Abate-o e saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step << Hunter
    #season 2
    .train 410110 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r] |cRXP_WARN_para aprender|r |T132270:0|t[Domínio das Feras]
    .use 208701
    .itemcount 208701,1
step
    #label CampTArrive
    #completewith next
    .goto The Barrens,45.23,58.41,120 >> Viaje para Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Byula|r
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 883 >>Entregue Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em guerra
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >> Aprenda a rota de voo de Acampamento Taurajo << !Tauren
    .fly Crossroads >>Voe para A Encruzilhada
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entregue Perdida em combate
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Entregue O Oásis Estagnado
    .accept 880 >>Aceite Seres alterados
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entregue Garrafoices furiosos
    .accept 3261 >>Aceite Jorn Vidente do Céu
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entregue Prata roubada
    .goto The Barrens,51.93,30.32
    .target +Gazrog
step
    .destroy 5165 >>|cRXP_WARN_Destrua quaisquer|r |T132914:0|t[Penas de Helióscamo] |cRXP_WARN_que ainda tiver|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok

    --Warlock skips Herog/Counterattack below for 150% route. Will do it later otwt Stonetalon for class q into logout skip to TB

step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    #label Leaders
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #xprate <2.1
    #completewith Hezrul
    .subzone 387 >> Vá ao Oásis das Águas Claras
    .isQuestTurnedIn 851
step
    #xprate <2.1
    #completewith Hezrul
    >>Abate os |cRXP_ENEMY_Oasis Snapjaws|r procurando por |cRXP_ENEMY_Hezrul Marca de Sangue|r. Saqueie-os para seus |cRXP_LOOT_Conchas|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #xprate <2.1
    #completewith next
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #xprate <2.1
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
    >>Encontre e mate |cRXP_ENEMY_Hezrul Marca de Sangue|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulha ao redor do lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #xprate <2.1
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
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    >>|cRXP_WARN_Pode pular esta missão se conseguiu poucos itens até agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .itemcount 5030,5 --Centaur Bracers (5)
    .isOnQuest 855
step << Druid
    #season 2
    .goto The Barrens,48.32,40.25
    >>Abra o |cRXP_PICK_Ninho de Mordelisca Vazio|r no chão para |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa of Lacerar|r] |cRXP_WARN_para treinar|r |T132131:0|t[Lacerar]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
step
    #xprate <2.1
    #optional
    #completewith CounterattackComplete
    .abandon 855 >> Abandone Braçadeiras de Centauro se não pegou o suficiente antes para compensar concluí-la
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith CounterattackComplete
    +|cRXP_WARN_Esta próxima missão é muito difícil e é recomendado se agrupar. Você pode kitar Senhor da Guerra Krom'zar ao redor do prédio onde o dador de missão está localizado|r
    +|cRXP_WARN_Pule esta missão se não conseguir completá-la. Você terá outra oportunidade em um nível mais alto|r
    .isQuestTurnedIn 852
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Ele pode levar até 3 minutos para aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith StonetalonPickups
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #xprate <2.1
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
    .isOnQuest 875
step
    #xprate <2.1
    #label BarrensEnd
    #completewith next
    .goto The Barrens,35.26,27.88,30 >> Vá em direção a |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Entregue Os espíritos das Torres de Pedra
    .accept 1062 >> Aceite Invasores goblins
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >> Aceite Vingue minha vila
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .maxlevel 20
step
    #xprate <2.1
    #map Stonetalon Mountains
    #label StonetalonPickups
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1061 >> Entregue Os espíritos das Torres de Pedra
    .accept 1062 >> Aceite Invasores goblins
    .target Seereth Stonebreak

    ]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 20-24 Cordilheira das Torres de Pedra/Sertões
#version 1
#group Horda 1-22
#groupid RXP-SRGCE-H1
#next 24-26 Sertões Meridionais << !Rogue !Shaman
#next 23-24 Eira dos Montes Missões de Classe << Rogue/Shaman


step << Druid
    #xprate <2.1
    #season 2
    #completewith next
    >>Abate |cRXP_ENEMY_Grimtotem Taurens|r. Saque o |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] deles
    .collect 210534,1 -- Idol of the Wild (1)
    .train 410021,1
step
    #xprate <2.1
    #optional
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
    >>Mate |cRXP_ENEMY_Rufiões do Temível Totem|r e |cRXP_ENEMY_Mercenários Temível Totem|r na área
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
    .isOnQuest 6548
step << Druid
    #xprate <2.1
    #season 2
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
    >>Abate |cRXP_ENEMY_Grimtotems|r. Saque o |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] deles
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    .equip 18,210534 >> |cRXP_WARN_Equipe o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #xprate <2.1
    #season 2
    #completewith BloodFeedersPickup
    >>|cRXP_WARN_Lance|r |T136085:0|t[Recrescimento] |cRXP_WARN_ou|r |T136041:0|t[Toque de Cura] |cRXP_WARN_em 10 Bestas aliadas diferentes tais como Pets de Caçador/Druidas em Forma de Urso/Xamãs em Lobo Fantasma|r
    .train 410021 >> |cRXP_WARN_Use o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] |cRXP_WARN_para treinar|r |T132143:0|t[Golpes Selvagens]
    .itemcount 210534,1
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6548 >> Entregue Vingue minha vila
    .accept 6629 >> Aceite Mate Grundig Nuvem Negra
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #xprate <2.1
    #optional
    #label AvengeVillageTurnin
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .accept 6629 >> Aceite Mate Grundig Nuvem Negra
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Suba pelo caminho até a fogueira
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto Stonetalon Mountains,73.65,86.13
    >>Mate |cRXP_ENEMY_Grundig Nuvem Negra|r e |cRXP_ENEMY_Brutos Temível Totem|r
    >>|cRXP_WARN_Mate todos os seis|r |cRXP_ENEMY_Brutos Temível Totem|r |cRXP_WARN_antes de iniciar a missão lá dentro|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaya Casco Chato|r
    .accept 6523,1 >> Aceite Proteja Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escolte |cRXP_FRIENDLY_Kaya|r e fique perto dela
    >>|cRXP_WARN_Cuidado! Três|r |cRXP_ENEMY_Temíveis Totens|r |cRXP_WARN_aparecerão quando você chegar à fogueira no Acampamento Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya está viva
    .target Makaba Flathoof
    .isQuestComplete 6523
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya está viva
    .target Makaba Flathoof
    .isQuestComplete 6523
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .target Makaba Flathoof
    .isQuestComplete 6629
step
    #xprate <2.1
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .accept 6401 >>Aceite Kaya está viva
    .target Makaba Flathoof
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Suba pelo caminho à esquerda
step
    #xprate <2.1
    #label BloodFeedersPickup
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Aceite Fome sangrenta
    .target Xen'Zilla
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Mate todos os |cRXP_ENEMY_Rastejantes de Fundolimo|r que encontrar
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <2.1
    .goto Stonetalon Mountains,59.08,75.70
    >>Clique no |cRXP_FRIENDLY_Cartaz de Procurado|r
    .accept 6284 >>Aceite Aracnofobia
step
    #xprate <2.1
    #completewith Besseleth1
    >>Mate |cRXP_ENEMY_Cospeçonhas de Fundolimo|r e |cRXP_ENEMY_Rastejantes de Fundolimo|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
step
    #xprate <2.1
    #completewith next
    >>Saque os |cRXP_PICK_Ovos de Aranha|r perto das árvores
    >>|cRXP_WARN_Cuidado! Os|r |cRXP_ENEMY_Filhotes de Aranha de Fundolimo|r |cRXP_WARN_podem invocar uma|r |cRXP_ENEMY_Matriarca de Fundolimo|r de nível 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .group 0 << Priest/Mage
step
    #xprate <2.1
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Mate |cRXP_ENEMY_Besseleth|r. Pegue a |cRXP_LOOT_Presa de Besseleth|r
    >>|cRXP_WARN_Elimine os inimigos ao redor de|r |cRXP_ENEMY_Besseleth|r|cRXP_WARN_. Cuidado, ela prende você com teias. Mantenha-a sob Medo e com efeitos de dano periódico|r << Warlock
    >>|cRXP_WARN_Esta missão é difícil. Pule-a se necessário|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    #xprate <2.1
    .goto Stonetalon Mountains,67.38,86.99,80,0
    .goto Stonetalon Mountains,61.44,81.74,80,0
    .goto Stonetalon Mountains,58.44,75.90,40,0
    .goto Stonetalon Mountains,54.99,76.03
    >>Mate |cRXP_ENEMY_Rastejantes de Fundolimo|r
    >>|cRXP_WARN_Guarde as|r |T134339:0|t[Vesículas Pequenas de Peçonha] |cRXP_WARN_que pegar|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Vá ao Retiro Rocha do Sol
step
    #xprate <2.1
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Jayka|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isOnQuest 1483
step
    #xprate <2.1
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeeda|r no segundo andar da estalagem
    .vendor >> |cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dela se estiverem disponíveis|r << !Warrior
    .vendor >> |cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_e|r |T134413:0|t[Raiz-da-vida] |cRXP_BUY_dela se estiverem disponíveis|r << Warrior
    .target Jeeda
    .isOnQuest 1483
step
    #xprate <2.1
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tammra Campo de Vento|r
    .turnin 6401 >>Entregue Kaya está viva
    .target Tammra Windfield
    .isQuestTurnedIn 6523
step
    #xprate <2.1
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maggran Ata Terra|r
	.turnin 6284 >> Entregue Aracnofobia
    .target Maggran Earthbinder
    .isQuestComplete 6284
step
    #xprate <2.1
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Aprenda a rota de voo de Retiro Rocha do Sol
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Vá em direção a |cRXP_FRIENDLY_Zé Fízzica|r
step
    #xprate <2.1
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1483 >> Entregue Zé Fízzica
    .accept 1093 >> Aceite o Super Ceifador 6000
    .target Ziz Fizziks
step
    #xprate <2.1
    #completewith Windshear
    >>Saque os |cRXP_PICK_Ovos de Aranha|r perto das árvores
    >>|cRXP_WARN_Cuidado! Os|r |cRXP_ENEMY_Filhotes de Aranha de Fundolimo|r |cRXP_WARN_podem invocar uma|r |cRXP_ENEMY_Matriarca de Fundolimo|r de nível 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #xprate <2.1
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
    >>Mate |cRXP_ENEMY_Cospeçonhas de Fundolimo|r
    >>|cRXP_WARN_Guarde as|r |T134339:0|t[Vesículas Pequenas de Peçonha] |cRXP_WARN_que pegar|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Troll Warrior/Orc Warrior/Tauren Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
    .xp <20,1
step << Undead Warrior
    #xprate <2.1
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veenix|r
    .vendor >>|cRXP_BUY_Compre um|r |T135329:0|t[Espada do Carrasco] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Se não estiver disponível, compre uma|r |T135280:0|t[Falx Dácia] |cRXP_WARN_no lugar|r
    .money <1.5024
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
step << Undead Warrior
    #xprate <2.1
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.1
    .xp <21,1
step << Shaman
    #xprate <2.1
    #season 0
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #xprate <2.1
    #season 0
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #xprate <2.1
    #season 2
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T133476:0|t[Mangual] |cRXP_BUY_dele|r
    .collect 925,1,899,1 --Collect Flail (1)
    .money <0.7797
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #xprate <2.1
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T133476:0|t[Mangual]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Rogue
    #xprate <2.1
    #season 0
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dele|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #xprate <2.1
    #season 0
    #optional
    #completewith BluePrints
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #xprate <2.1
    #season 2
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre uma ou duas|r |T135342:0|t[Cris] |cRXP_BUY_dele|r
    .collect 2209,1,899,1 --Collect Kris (1)
    .money <0.7115
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
step << Rogue
    #xprate <2.1
    #season 2
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135342:0|t[Cris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.8
    .xp <19,1
step
    #xprate <2.1
    #label Windshear
    .subzone 461 >> Vá ao Rochedo Cortavento
    .isOnQuest 1093
step
    #xprate <2.1
    #completewith next
    >>Mate |cRXP_ENEMY_Madeireiros da Empreendimentos S.A.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #xprate <2.1
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Mate |cRXP_ENEMY_Operadores da Empreendimentos S.A.|r. Pegue seus |cRXP_LOOT_Diagramas|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #xprate <2.1
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
    #xprate <2.1
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
    #optional
    #xprate <2.1
	#completewith next
	+|cRXP_WARN_Se tiver mais de 15 |cRXP_LOOT_Ovos de Fundolimo|r|cRXP_WARN_, separe os excedentes da pilha (Shift + clique) e descarte-os|r
step
    #xprate <2.1
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1093 >> Entregue o Super Ceifador 6000
    .accept 1094 >> Aceite as instruções adicionais
    .target Ziz Fizziks
step
    #xprate <2.1
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Termine de matar |cRXP_ENEMY_Rastejantes de Fundolimo|r
    >>|cRXP_WARN_Guarde as|r |T134339:0|t[Vesículas Pequenas de Peçonha] |cRXP_WARN_que pegar|r << Rogue
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
    .train 1430 >> Treine suas magias de classe
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Treine suas magias de classe
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Treine suas magias de classe
    .target Loganaar
    .xp <22,1
step
    #completewith JornSkyseerTurnin
    .hs >> Use a Pedra de Regresso para voltar ao Acampamento Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Voe para Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
    .cooldown item,6948,<0
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 3261 >>Entregue Jorn Vidente do Céu
    .accept 882 >>Aceite Ishamuhale
    .target Jorn Skyseer
step << Warlock
    #season 2
    #sticky
    #completewith CounterattackTurnin3
    #label ExplorerImp
    >>Ao fazer missões, lance |T136163:0|t|cRXP_FRIENDLY_[Drenar Alma]|r em inimigos até receber um |T133257:0|t|cRXP_LOOT_Alma do Explorador|r. |cRXP_WARN_Use-o para aprender a invocar um|r |T236294:0|t|cRXP_FRIENDLY_[Diabrete Explorador]|r
    .train 445459 >>|cRXP_WARN_Use a|r |T133257:0|t|cRXP_LOOT_Alma do Explorador|r |cRXP_WARN_para aprender a evocar um|r |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith CounterattackTurnin3
    #label FelPortalRune
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presente. Se você encontrar um, invoque seu |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r] e fale com ele enquanto está ao lado de um portal para enviá-lo em uma expedição. Depois de 10-20 minutos, ele retornará com saque e uma chance de lhe conceder uma |T134419:0|t[|cRXP_FRIENDLY_Runa da Guarda Vil|r] << Warlock
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presente. Se você encontrar um, feche-o usando um |T134945:0|t[|cRXP_LOOT_Pergaminho de Recomposição Espacial|r]. Você receberá |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Seta Incendiária|r] << Mage
    >>|cRXP_WARN_Fique atento aos portais até conseguir a runa|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 429311,1 << Mage
    .train 431756,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith CounterattackTurnin3
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Guarda Vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Evocar Guarda Vil] << Warlock
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r] |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
	#completewith LakotaMani2
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
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
step
    #label LakotaMani2
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Mate |cRXP_ENEMY_Lakota'mani|r. Pegue o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
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
step << Warlock/Shaman
    #optional
    #loop
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
    .xp 19 >> Triture até o nível 19
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Abate |cRXP_ENEMY_Sunscale Scytheclaws|r. Saque-os para seus |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
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
    >>Acabe de matar |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Acabe de matar |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r. Pegue a |cRXP_LOOT_Carcaça Fresca de Zevra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
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
step << Shaman/Priest
    #season 2
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>Lance |T136075:0|t[Expurgar] na |cRXP_ENEMY_Miragem do Deserto|r para matá-la. Pegue dela a |T134419:0|t|cRXP_LOOT_[Runa Terrana]|r << Shaman
    >>Lance |T135894:0|t[Dissipar Magia] no |cRXP_ENEMY_Miragem do Deserto|r para matá-lo. Saqueie-o pela |T135975:0|t[|cRXP_FRIENDLY_Profecia do Óbito do Rei|r] << Priest
    .collect 208758,1 << Shaman --Earthen Rune (1)
    .collect 205932,1 << Priest-- Prophecy of a King's Demise (1)
    .unitscan Desert Mirage
    .train 410107,1 << Shaman
    .train 402849,1 << Priest
    .train 370,3 << Shaman --Purge
    .train 527,3 << Priest --Dispel Magic
--XX Respawns after 85s-170s
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r. Pegue a |cRXP_LOOT_Carcaça Fresca de Zevra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>Use a |T134368:0|t[|cRXP_LOOT_Carcaça Fresca de Zevra|r] na árvore morta para invocar |cRXP_ENEMY_Ishamuhale|r. Mate-o e pegue sua |cRXP_LOOT_Presa|r
    >>|cRXP_WARN_A Carcaça dura apenas 30 minutos!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith FlytoXroads
    .goto The Barrens,63.07,36.31 << Rogue
    .goto The Barrens,62.68,36.23 << !Rogue
    .subzone 392 >> Vá para Vila Catraca
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 2381 >>Entregue Saqueando os saqueadores
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 888 >>Entregue Butim Roubado
    .target Gazlowe
    .isQuestComplete 888
step
    #sticky
    #completewith FlytoXroads
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_Se tiver|cRXP_LOOT_3 de ouro|r sobrando, você pode comprar uma runa de|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_na estalagem de Vila Catraca. Avalie se pode pagar e se a runa é útil para sua classe. Você sempre pode comprá-la mais tarde|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grizzby|r na estalagem
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Compre e use o|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Harmoniosa|r] |cRXP_WARN_para treinar|r |T237549:0|t[Serendipidade] << Priest
    .train 410010 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sacrifício|r] |cRXP_WARN_para treinar|r |T134596:0|t[Gravar Calças - Sacrifício Divino] << Paladin
    .train 401761 >>|cRXP_WARN_Compre e use as|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Retroceder Tempo|r] |cRXP_WARN_para treinar|r |T237538:0|t[Retroceder Tempo] << Mage
    .train 410122 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Lobo Solitário|r] |cRXP_WARN_para treinar|r |T132266:0|t[Lobo solitário] << Hunter
    .train 416042 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sobrevivência|r] |cRXP_WARN_para treinar|r |T132126:0|t[A Lei da Selva] << Druid
    .train 425445 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Armipotente|r] |cRXP_WARN_para treinar|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] |cRXP_WARN_para treinar|r |T237562:0|t[Pacto Demoníaco] << Warlock
    .train 424990 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Adaga de Bloqueio|r] |cRXP_WARN_para treinar|r |T237531:0|t[Adaga de Bloqueio] << Rogue
    .train 410096 >>|cRXP_WARN_Compre e use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização em Duas Armas|r] |cRXP_WARN_para treinar|r |T132686:0|t[Gravar Peitoral - Especialização em Duas Armas] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    .money <3.0
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r, |cRXP_FRIENDLY_Cáliper Porcatraca|r e |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 1094 >>Entregue instruções adicionais
    --.accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entregue Chifres de raptor
    .turnin 1069 >>Entregue Ovos de Aranha de Fundolimo
    .accept 1491 >>Aceite Bebidas inteligentes
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
    .dungeon WC
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r, |cRXP_FRIENDLY_Cáliper Porcatraca|r e |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 1094 >>Entregue instruções adicionais
    --.accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entregue Chifres de raptor
    .turnin 1069 >>Entregue Ovos de Aranha de Fundolimo
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r e |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 865 >>Entregue Chifres de raptor
    .accept 1491 >>Aceite Bebidas inteligentes
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
    .dungeon WC
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r e |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 865 >>Entregue Chifres de raptor
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xaveco|r
    .vendor >>Compre |T134583:0|t[|cRXP_FRIENDLY_Calças Encadeadas Potentes|r] dele se estiver disponível
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irriteixon|r
    .vendor >> Compre dele |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r] se estiver disponível
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .equip 9,4794
step << Warrior
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipe as|r |T134583:0|t[|cRXP_FRIENDLY_Calças Encadeadas Potentes|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipe as|r |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    .home >>Defina sua Pedra de Retorno em Ratchet
    .target Innkeeper Wiley
    .dungeon WC
    .bindlocation 392
    .isQuestTurnedIn 865
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Operador de Grua Mafuá|r
    .accept 959 >> Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step << Hunter
    #xprate <2.1
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Aceite Apresente-se a Kadrak
    .target Thork
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .turnin 875 >>Entregue Tenentes harpias
    .accept 876 >>Aceite Serena Plumassangue
    .target Darsok Swiftdagger
    .isQuestComplete 875
 step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 876 >>Aceite Serena Plumassangue
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r e |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 899 >>Entregue Consumido pelo ódio
    .target +Tonga Runetotem
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Entregue Seres alterados
    .accept 1489 >>Aceite Hamuul Runa Totem
    .accept 3301 >>Aceite Mura Runa Totem << Shaman/Rogue
    .target +Mankrik
    .goto The Barrens,52.26,31.93
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Aceite Ovo tipo extra
    .target Korran
step
    .destroy 5085 >>|cRXP_WARN_Apague qualquer|r |T133721:0|t[Presa de Javatusco Costagulha] |cRXP_WARN_que você ainda tenha|r
    .itemcount 5085,1
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Aceite Chamado da Água
    .target Searn Firewarder
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Treine suas magias de classe
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .trainer >>Treine suas magias de classe
    .accept 1507 >>Aceite Devorador de Almas
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Tormento (Grau 2)]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Entregue Cazul cego
    .accept 1509 >>Aceite Notícias de Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> Agora procure um grupo para as Minas Mortas
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Treine suas magias de classe
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
    .train 845 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Treine suas magias de classe
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Treine suas magias de classe
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Treine suas magias de classe
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Treine suas magias de classe
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Treine suas magias de classe
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
    --VV Adjust to 20-22 level range
step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Bendotado|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Frasco de Óleo] |cRXP_BUY_da Casa de Leilões se possível|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Saia de Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto Durotar,50.8,13.8,40 >>Suba a Torre do Zepelim
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
    .goto Westfall,30.01,86.02,200 >> Nade de Grom'Gol diretamente para oeste até o Arrecife Torpe, depois para norte em direção a Cerro Oeste
    >>|cRXP_WARN_Mantenha-se longe da ilha. Siga o ponto de referência para sua segurança!|r
    .dungeon DM
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Vá ao Farol de Cerro Oeste
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >> Aceite O mar não está para peixe
    .accept 103 >> Aceite A chama não pode apagar
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 103 >> Entregue Guardião da Chama
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mate |cRXP_ENEMY_Velho Olho-turvo|r. Pegue sua |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrulha ao longo da Praia Grande. Se não o encontrar por lá, espere que ele aparecerá no acampamento de |cRXP_ENEMY_Murlocs|r mais ao sul|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >> Entregue O mar não está para peixe
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandone Guardião da Chama
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
    .zone 291 >> Entre no portal da Instância Minas Mortas. Carregue
    .dungeon DM
step
    .hs >> Retorne para Savanas após completar Minas Mortas
    .zone The Barrens >> Chegue aos Sertões
    .use 6948
    .dungeon DM
step
    #optional
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
	.fly Crossroads >> Voe para A Encruzilhada
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
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Ratchet >> Voe para Ponto de Ancoragem
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Entregue Clamor da água
    .accept 1530 >>Aceite Chamado da Água
    .target Islen Waterseer
step << !Warlock !Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Boticário Hermógenes|r |cRXP_WARN_inicia uma missão com prazo de 45 minutos|r
    .accept 853 >> Aceite Boticária Zaqueia
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Você está em uma missão com limite de tempo, não fique ausente. Ela será entregue 20-30 minutos após ser aceita|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Voe para Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Voe para Camp Taurajo
    .target Bragok
    .subzoneskip 380
step
    #xprate <2.1 << Warlock
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Voe para Camp Taurajo
    .target Devrak
    .subzoneskip 380,1

    --Warlock Class Q section

step << Warlock
    #xprate >2.09
    #label EnterSTMWL
    #completewith KenZiglaWL
    .zone Stonetalon Mountains >> Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step << Warlock
    #xprate >2.09
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Suba pelo caminho à esquerda
step << Warlock
    #xprate >2.09
    #label KenZiglaWL
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entregue Notícias de Dogran
    .accept 1511 >>Aceite Trago do Ken'zigla
    .target Ken'zigla
step << Warlock
    #xprate >2.09
    #completewith next
    .hs >>Use a Pedra de Regresso para voltar ao Acampamento Taurajo
    .subzoneskip 378
    .bindlocation 378,1
    .cooldown item,6948,>0
    .dungeon !WC
step << Warlock
    #xprate >2.09
    #completewith next
    .subzone 378 >>Viaje para Camp Taurajo
step << Warlock
    #xprate >2.09
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Logmar|r
    .turnin 1511 >>Entregue Trago do Ken'zigla
    .accept 1515 >>Aceite O cativeiro de Dogran
    .target Grunt Logmar
step
    .goto The Barrens,44.55,59.27
    >>Mate |cRXP_ENEMY_Javatuscos Costagulha|r. Pegue |T134128:0|t[|cRXP_LOOT_Estilhaço de Sangue|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 878 >>Entregue Tribos em guerra
    .accept 5052 >>Aceite Estilhaços de Sangue de Agamaggan
    .turnin 5052 >>Entregue Estilhaços de Sangue de Agamaggan
    .target Mangletooth
    .addquestitem 5075,5052
step
    #optional
    #completewith IshamuhaleTurnin
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    +|cRXP_WARN_Use seus|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_para obter buffs. Guarde pelo menos 4 deles para depois|r
    +|cRXP_WARN_Desative as funções de conclusão automática de addons como Questie ou Leatrix Plus para isso!|r
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .turnin 883 >>Entregue Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .target Jorn Skyseer
step << Warlock
    #xprate >2.09
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Dogran|r
    .turnin 1515 >>Entregue O cativeiro de Dogran
    .accept 1512 >>Aceite Presente do amor
    .target Grunt Dogran
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
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .accept 6382 >>Aceite A Caçada do Vale Gris << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .accept 6382 >>Aceite A Caçada do Vale Gris << Hunter
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
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
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>> Vá para o sul rumo a |cRXP_FRIENDLY_Salma|r
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
    .use 7766 >> |cRXP_WARN_Encha seu|r |T132825:0|t[Odre Marrom Vazio] |cRXP_WARN_na fonte abaixo da cabana de Salma|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma|r
    .turnin 1535 >>Entregue Clamor da água
    .accept 1536 >>Aceite Chamado da Água
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .subzoneskip 378 >>Vá de volta para Camp Taurajo
step << Shaman
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
step << Shaman
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
    .isQuestComplete 913
step << !Tauren
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .aura 16618 >>|cRXP_WARN_Se você tem 10|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r |cRXP_WARN_sobrando, use-os para obter|r |T136022:0|t[Espírito do vento] |cRXP_WARN_de|r |cRXP_FRIENDLY_Denterroto|r
    >>|cRXP_WARN_Pule esta etapa se tiver a rota de voo de Penhasco do Trovão|r
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Entre em Mulgore
step << !Tauren
    #completewith DeathDUPpickup
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Pegue o elevador para Penhasco do Trovão
    >>|cRXP_WARN_Se tiver a rota de voo de Penhasco do Trovão, voe para lá|r
step << Tauren
    #completewith DeathDUPpickup
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Aprenda a usar Maças de Duas Mãos
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
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Vá ao Platô dos Espíritos e entre nos Poços da Visão
step << Rogue/Shaman
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >> Aceite Até que a morte nos separe
    .target Clarice Foster
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entregue Boticário Zaqueu
    .accept 962 >> Aceite Ofídeas
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Aceite Ofídeas
    .target Apothecary Zamah
    .dungeon WC
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entregue Boticário Zaqueu
    .target Apothecary Zamah
    .isOnQuest 853
step
    #optional
    #label ZamahTurnin
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    --.accept 5644 >> Accept Devouring Plague << Undead Priest
    .accept 5642 >> Aceite Guarda Sombria << Troll Priest
    .trainer >> Treine suas magias de classe
    .target Miles Welsh
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Treine suas magias de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Treine suas magias de classe
    .target Archmage Shymm
    .xp <22,1
    .xp >24,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 2121 >> Treine suas magias de classe
    .target Archmage Shymm
    .xp <24,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 8046 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <24,1
step
    #xprate <2.1 << Warlock
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Crie|r |T133688:0|t[Bandagens Pesadas de Linho] |cRXP_WARN_até sua habilidade em Primeiros Socorros ser 80 ou superior|r
    .skill firstaid,<1,1
step
    #xprate <2.1 << Warlock
    #label FirstAid2
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Pule esta etapa se não tiver|r |T132889:0|t[Linho] |cRXP_WARN_suficiente para atingir nível 80 de profissão|r
    .train 3277 >> Aprenda |T133684:0|t[Bandagem de Lã]
    .train 7934 >> Aprenda |T134437:0|t[Antipeçonha] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Crie|r |T134437:0|t[Antipeçonha] |cRXP_WARN_se encontrou algumas|r |T134339:0|t[Vesículas Pequenas de Peçonha]
    >>|cRXP_WARN_Guarde-os para depois|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Entregue Hamuul Runa Totem
    .accept 1490 >> Aceite Nara Juba Agreste
    .target Arch Druid Hamuul Runetotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >> Entregue Nara Juba Agreste
    .accept 914 >> Aceite Líderes da Presa
    .target Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >> Entregue Nara Juba Agreste
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .trainer >> Treine suas magias de classe
    .target Turak Runetotem
step
    #label SacredFlame
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zangan Casco de Pedra|r
    .accept 1195 >> Aceite A Chama Sagrada
    .target Zangen Stonehoof
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >> Vá ao Platô dos Caçadores
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <22,1
    .xp >24,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 19885 >> Aprenda |T132320:0|t[Rastrear Furtivos]
    .target Urek Thunderhorn
    .xp <24,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa Chifre Troante|r
    .train 24494 >> Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Vá ao Platô dos Caçadores
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm|r
    .train 845 >> Treine suas magias de classe
    .accept 1823 >>Aceite Fale com Ruga
    .target Torm Ragetotem
step << Rogue
    #season 0
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kard Totem da Fúria|r|cRXP_BUY_. Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dele.|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #season 0
    #optional
    #completewith FlyOrgSR
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #season 2
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kard Totem da Fúria|r|cRXP_BUY_. Compre uma ou duas|r |T135342:0|t[Cris] |cRXP_BUY_dele|r
    .collect 2209,1,493,1 --Collect Kris (1)
    .money <0.7115
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #season 2
    #optional
    #completewith FlyOrgSR
    +|cRXP_WARN_Equipe o|r |T135342:0|t[Cris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .xp <19,1
step << Warrior/Shaman
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Se for mais barato, você pode comprar uma arma verde do leilão em vez disso|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Etu Totem da Fúria|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith FlyCampT
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    #season 0
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Etu Totem da Fúria|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 0
    #optional
    #completewith CallofWater2
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
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
    #completewith CallofWater2
    +|cRXP_WARN_Equipe o|r |T133476:0|t[Mangual]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <20,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kina Chifre Troante|r|cRXP_BUY_. Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_dela|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kina Chifre Troante
step << Hunter
    #optional
    #completewith FlyCampT
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dela|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kina Chifre Troante
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Agora procure um grupo para a Caverna Ululante
    >>Farme |cRXP_ENEMY_Javatuscos|r enquanto monta um grupo para as Cavernas Ululantes
    .dungeon WC
step
    .goto The Barrens,46.15,36.93,100 >> Vá à Caverna Ululante
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Suba a montanha junto à pedra de encontro da Caverna Ululante
    >>|cRXP_WARN_Siga a seta com atenção para chegar à caverna escondida|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Eles ficam acima da entrada da Caverna Ululante|r
    .accept 1486 >> Aceite Pelegos anormais
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Aceite Erradicação de Anormais
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #hardcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    #completewith EnterWC
    >>Mate todas as |cRXP_ENEMY_Feras Anormais|r que encontrar. Pegue seus |cRXP_LOOT_Pelegos|r
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_LOOT_Pelegos|r |cRXP_WARN_suficientes para todos|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #softcore
    #completewith EnterWC
    >>Mate todas as |cRXP_ENEMY_Feras Anormais|r que encontrar. Pegue seus |cRXP_LOOT_Pelegos|r
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
    >>|cRXP_WARN_Ele demora para reaparecer. Pule esta etapa se não conseguir encontrá-lo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Atravesse o portal para entrar na instância da Caverna Ululante
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith GlowingShard
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_LOOT_Pelegos|r |cRXP_WARN_suficientes para todos|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #softcore
    #completewith GlowingShard
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Mate |cRXP_ENEMY_Assoladores Anormais|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Trôpegos|r e |cRXP_ENEMY_Presáteras|r
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
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Discípulo de Naralex|r na entrada da Caverna Ululante. Escolte-o em segurança até |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Ao chegar a |cRXP_FRIENDLY_Naralex|r, você será atacado por duas ondas de inimigos e, por fim, por |cRXP_ENEMY_Mutanus, o Devorador|r
    >>Mate-o, pegue o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r] e use-o para iniciar a missão
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Aceite A lasca faiscante
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
    #hardcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Mate |cRXP_ENEMY_Assoladores Anormais|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Trôpegos|r e |cRXP_ENEMY_Presáteras|r. Pegue seus |cRXP_ENEMY_Pelegos|r
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
    >>Mate |cRXP_ENEMY_Assoladores Anormais|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Trôpegos|r e |cRXP_ENEMY_Presáteras|r
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
    >>Mate |cRXP_ENEMY_Raptores Anormais|r. Pegue seus |cRXP_ENEMY_Pelegos|r
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
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GShard
    .hs >> Use sua Pedra de Regresso para ir a Vila Catraca
    .use 6948
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .turnin 1491 >>Entregue Bebidas inteligentes
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Operador de Grua Mafuá|r
    .turnin 959 >> Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Suba a montanha
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .turnin 6981 >> Entregue A lasca faiscante
    .accept 3369 >> Aceite Em Pesadelos
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .accept 3369 >> Aceite Em Pesadelos
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Eles ficam acima da entrada da Caverna Ululante|r
    .turnin 1486 >> Entregue Pelegos anormais
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .turnin 1487 >> Entregue Erradicação de Anormais
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Ele fica acima da entrada da Caverna Ululante|r
    .turnin 1487 >> Entregue Erradicação de Anormais
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Ele fica acima da entrada da Caverna Ululante|r
    .turnin 1486 >> Entregue Pelegos anormais
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
step << skip
    #completewith next
    .goto The Barrens,44.45,59.16,100 >> Vá ao sul até o Acampamento Taurajo
    .subzoneskip 378
    .dungeon WC
step << skip
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 914 >>Entregue Líderes da Presa
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Entregue Em Pesadelos
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    #completewith next
    .goto Thunder Bluff,28.51,28.95,10 >> Vá ao Platô dos Espíritos e entre nos Poços da Visão
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 962 >>Entregue Ofídeas
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
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
    .abandon 962 >>Abandone Ofídeas
step
    #xprate <2.1
    #completewith Serena
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .subzoneskip 380
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 852
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #completewith CounterattackTurnin2
    +|cRXP_WARN_Esta próxima missão é muito difícil e é recomendado se agrupar. Você pode kitar Senhor da Guerra Krom'zar ao redor do prédio onde o dador de missão está localizado|r
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Ele pode levar até 3 minutos para aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #xprate <2.1
    #optional
    #completewith Serena
    .abandon 855 >>Abandone Braçadeiras de centauro
step
    #xprate <2.1
    #label Serena
    .goto The Barrens,39.16,12.16
    >>Mate |cRXP_ENEMY_Serena Plumassangue|r. Pegue sua |cRXP_LOOT_Cabeça|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isQuestTurnedIn 875
step << Hunter
    #xprate <2.1
    .goto The Barrens,49.05,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Juntatudy Jogafora|r
    .turnin 3921 >> Entregue Juntatudy Jogafora
    .target Wenikee Boltbucket
    .isOnQuest 3921
step << Hunter
    #xprate <2.1
    .goto The Barrens,48.12,5.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torek|r
    .turnin 6541 >> Entregue Apresente-se a Kadrak
    .target Kadrak
step << Hunter
    #xprate <2.1
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torek|r para iniciar a escolta
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_reaparece em 5 minutos|r
    .accept 6544 >> Aceite Junte-se aos bons
    .target Torek
step << Hunter
    #xprate <2.1
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Siga |cRXP_FRIENDLY_Torek|r
    >>Deixe |cRXP_FRIENDLY_Torek|r e seus |cRXP_FRIENDLY_Saqueadores de Machadada|r receberem os ataques dos |cRXP_ENEMY_Guerreiros da Asa de Prata|r e dos |cRXP_ENEMY_Sentinelas da Asa de Prata|r
    >>|cRXP_WARN_Após eliminar os inimigos do prédio, corra até a sacada. Quando |cRXP_ENEMY_Duriel Flameluna|r chegar, deixe |cRXP_FRIENDLY_Torek|r e seus |cRXP_FRIENDLY_Saqueadores de Machadada|r atraírem os ataques antes de causar dano|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step << Hunter
    #xprate <2.1
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ertog Raivatusco|r
    .turnin 6544 >> Entregue Junte-se aos bons
    .target Ertog Ragetusk
    .isQuestComplete 6544
step << Hunter
    #xprate <2.1
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani Coração Trovejante|r
    .turnin 6382 >> Entregue A Caçada do Vale Gris
    .turnin 6383 >> Entregue A Caçada do Vale Gris
    .target Senani Thunderheart
step << Hunter
    #xprate <2.1
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Aprenda a rota de voo para Posto Machadada
    .target Vhulgra
step << Hunter
    #xprate <2.1
    #completewith EnterSTM2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Vhulgra
    .zoneskip The Barrens
step << !Hunter
    #xprate <2.1
    #softcore
    #completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Hunter
    #xprate <2.1
    #hardcore
    #completewith next
    .subzone 380 >>Vá para A Encruzilhada
step
    #xprate <2.1
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 876 >> Entregue Serena Plumassangue
    .accept 1060 >> Aceite Uma carta para Jin'Zil
    .target Darsok Swiftdagger
    .isQuestComplete 876
step
    #xprate <2.1
    #optional
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .accept 1060 >> Aceite Uma carta para Jin'Zil
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Aceite Ovo tipo extra
    .target Korran
step
    #xprate <2.1
    #completewith CounterattackTurnin3
    +|cRXP_WARN_Esta próxima missão é muito difícil e é recomendado se agrupar. Você pode kitar Senhor da Guerra Krom'zar ao redor do prédio onde o dador de missão está localizado|r
step
    #xprate <2.1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #xprate <2.1
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Ele pode levar até 3 minutos para aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #xprate <2.1
    #label CounterattackTurnin3
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    #xprate <2.1
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step
    #xprate <2.1
    #label STMturnins1
    #map Stonetalon Mountains
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Cena de Invasores Goblins
    .accept 1063 >>Aceite A Bruxa Anciã
    --.accept 1068 >> Accept Shredding Machines
    .target Seereth Stonebreak
step
    #xprate <2.1
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Suba pelo caminho à esquerda
step
    #xprate <2.1
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mandingueiro Jin'Zil|r
    .turnin 1060 >> Entregue Uma carta para Jin'Zil
    --.accept 1058 >> Accept Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
    .isQuestTurnedIn 876
step << Warlock
    #xprate <2.1
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entregue Notícias de Dogran
    .accept 1511 >>Aceite Trago do Ken'zigla
    .target Ken'zigla
step
    #xprate <2.1
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Fome sangrenta
    .target Xen'Zilla
step << skip
    #xprate <2.1
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Salte em uma das gaiolas. Faça um Logout Pular saindo da conta e entrando novamente|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
step << skip
    #xprate <2.1 << !Warlock
    #completewith ElderCroneTurnin
    .goto Thunder Bluff,54.18,27.01,20,0
    .goto Thunder Bluff,50.75,37.07,40 >> Pegue o elevador para Penhasco do Trovão
step
    #xprate <2.1
    .hs >>Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
step
    #xprate <2.1
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Vá ao Platô dos Anciãos
step
    #xprate <2.1
    #label ElderCroneTurnin
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_Espere a cena terminar|r
    .turnin 1063 >> Entregue A Bruxa Anciã
    .timer 6,Cena de A Velha Anciã
    .accept 1064 >> Aceite Ajuda Renegada
    .target Magatha Grimtotem
step
    #xprate <2.1
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Entregue Ajuda Renegada
    .accept 1065 >> Aceite A jornada para Serraria Tarren << Rogue/Shaman
    .target Apothecary Zamah
step << !Shaman !Rogue
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .subzoneskip 378
step << Warlock
    #xprate <2.1
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Logmar|r
    .turnin 1511 >>Entregue Trago do Ken'zigla
    .accept 1515 >>Aceite O cativeiro de Dogran
    .target Grunt Logmar
step << Warlock
    #xprate <2.1
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Dogran|r
    .turnin 1515 >>Entregue O cativeiro de Dogran
    .accept 1512 >>Aceite Presente do amor
    .target Grunt Dogran
step << Shaman/Rogue
    #label FlyOrgSR
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Compre uma|r |T135640:0|t[Jambiya] |cRXP_BUY_dele se você não tiver uma adaga|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Treine |T133644:0|t [Bater Carteira]
    .train 8676 >> Aprenda |T132282:0|t[Emboscar]
    .train 1943 >> Aprenda |T132302:0|t[Ruptura]
    .train 1856 >> Aprenda |T132331:0|t[Sumir]
    .train 1725 >> Treine |T132289:0|t[Distração]
    .train 1785 >> Aprenda |T132320:0|t[Furtividade Grau 2]
    .accept 2460 >>Aceite A saudação dos Mão Despedaçada
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Após |cRXP_FRIENDLY_Shenthul|r fazer a saudação, selecione-o e digite /salute
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entregue A saudação dos Mão Despedaçada
    .accept 2458 >>Aceite Missão secreta
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre|r |T134387:0|t[Pó de Clarão] |cRXP_BUY_dele|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Entre nas Savanas pela saída ocidental
    .zoneskip The Barrens
step << Rogue
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >> Vá em direção ao Charco de Lodo
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Selecione |cRXP_FRIENDLY_Capataz Arruela|r, use seu |T134536:0|t[Sinalizador] DUAS VEZES e digite /salute
    >>|cRXP_WARN_Cuidado! NÃO se aproxime até ele ficar amigável ou ele atacará você!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    #label MissionProbable
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capataz Arruela|r
    .turnin 2458 >>Entregue Missão secreta
    .accept 2478 >>Aceite Missão: possível, mas não provável
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Use |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Capataz Biela|r para pegar sua |cRXP_LOOT_Chave da Torre|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Cada inimigo aqui recebe mais dano de certas habilidades|r
    >>Use |T132282:0|t[Emboscar] nos |cRXP_ENEMY_Peões Mutantes da Empreendimentos S.A.|r
    >>Use |T132302:0|t[Ruptura] nos |cRXP_ENEMY_Patrulheiros da Empreendimentos S.A.|r
    >>Use |T132292:0|t[Eviscerar] nos |cRXP_ENEMY_Vigias da Empreendimentos S.A.|r uma vez (1 ponto de combo)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Entre na Torre dos Ladinos e mate |cRXP_ENEMY_Peões|r, |cRXP_ENEMY_Patrulheiros|r e |cRXP_ENEMY_Vigias|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>No topo da torre, você encontrará |cRXP_ENEMY_Capataz-chefe Puzik Gallywix|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Emboscar] |cRXP_WARN_para reduzir a vida dele à metade. Use|r |T132155:0|t[Esfaquear] |cRXP_WARN_para recuperar energia e use|r |T136205:0|t[Evasão]
	>>|cRXP_WARN_Lembre-se de usar uma Poção e|r |T132819:0|t[Chá de Cardo] |cRXP_WARN_se necessário|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Use Arrombamento para abrir o |cRXP_PICK_Cofre de Gallywix|r e pegue a |cRXP_LOOT_Mistura|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto The Barrens,61.33,4.21,120 >>Vá em direção à Mina Veio do Pedregulho
step << skip --Rogue
    #hardcore
    .goto The Barrens,60.48,3.76
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_Pule na viga de madeira. Faça um Logout Skip saindo e entrando no jogo. Volte a Orgrimmar se não conseguir|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .zoneskip Orgrimmar
step << Rogue
    #softcore
    #completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Rogue
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue
    #hardcore
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada oeste
    .isQuestComplete 2478
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entregue Missão: possível, mas não provável
    .accept 2479 >>Aceite A ajuda de Hinoto
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre |r |T133849:0|t[Poeira da Decomposição] |cRXP_BUY_e|r |T132793:0|t[Ampolas Vazias] |cRXP_BUY_dele|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Rogue
    >>|cRXP_WARN_Se tiver|r |T134437:0|t[Antipeçonha]|cRXP_WARN_, use uma para se curar do|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Descarte o|r |T134536:0|t[Sinalizador] |cRXP_WARN_da bolsa, pois não precisa mais dela|r
    .destroy 8066 >> |cRXP_WARN_Destrua o|r |T134374:0|t[Apito do Arruela] |cRXP_WARN_da bolsa, pois não precisa mais dele|r
step
    #optional
    .abandon 6421 >>Abandone Ravina da Avalanche
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
    .abandon 6563 >>Abandone A essência de Aku'mai
]])
