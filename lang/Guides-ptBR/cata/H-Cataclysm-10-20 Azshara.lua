if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 10-22 Azshara
#displayname 11-22 Azshara << Goblin/Pandaren
#next 22-27 Vale Gris
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Rogue Cata/Warlock Cata/Mage Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >>Vá para a Fenda da Sombra
step << Priest Cata/Paladin Cata
    #completewith next
    .goto 1454,49.88,75.54,30 >>Entre em Grommash Segurar
step << Shaman Cata/Druid Cata
    #completewith next
    .goto 1454,44.84,75.46,40,0
    .goto 1454,41.53,60.64,40 >>Vá para o Vale da Sabedoria
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gordul|r
    .train 61922 >>Treine suas magias de classe
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rekkol|r.
    >>|cRXP_BUY_Compre|r |T132273:0|t[Veneno Instantâneo] |cRXP_BUY_dele|r
    .collect 6947,20,14129,1 --Instant Poison (20)
    .target Rekkul
step << Shaman Cata
    .goto 1454,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sahi|r
    .train 3599 >>Treine suas magias de classe
    .target Sahi Cloudsinger
    .xp <10,1
step << Druid Cata
    .goto 1454,44.79,51.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalla|r
    .train 5215 >>Treine suas magias de classe
    .target Shalla Whiteleaf
    .xp <10,1
step << Mage Cata
    .goto 1454,48.45,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marud|r
    .train 5505 >>Treine suas magias de classe
    .target Marud
    .xp <10,1
step << Priest Cata
    .goto 1454,49.17,70.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tyelis|r
    .train 8092 >>Treine suas magias de classe
    .target Tyelis
    .xp <10,1
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1120 >>Treine suas magias de classe
    .target Mirket
    .xp <10,1
step << Paladin Cata
    .goto 1454,49.27,71.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pyreanor|r
    .train 82242 >>Treine suas magias de classe
    .target Master Pyreanor
    .xp <10,1
step
    #completewith next
    .goto 1454,59.59,50.63,40,0
    .goto 1454,65.39,49.14,40 >>Vá para o Vale de Honra
step << !Goblin
    .goto 1454,66.433,49.292
    >>Clique em |cRXP_PICK_Warchief's Comando Tabuleiro|r
    .accept 28496 >>Aceite Ordens do Chefe Guerreiro: Azshara!
    .isQuestAvailable 28496
step << !Warrior !Paladin !Rogue !Hunter !Shaman
    #completewith next
    .goto 1454,66.84,50.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kira|r
    .vendor >>Compre e Conserte
    .target Kiro
step << Warrior Cata
    .goto 1454,73.71,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ronakada|r
    .train 71 >>Treine suas magias de classe
    .target Blademaster Ronakada
    .xp <10,1
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Koru|r
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T133477:0|t[Maça Gigante] (24s) << Orc/Troll
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T133477:0|t[Maça Gigante] (25s 34c) << Tauren
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T133477:0|t[Maça Gigante] (26s 67c) << Undead/BloodElf
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T133477:0|t[Maça Gigante] (21s 34c) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Koru|r
    >>|cRXP_BUY_Compre uma|r |T133477:0|t[Maça Gigante] |cRXP_BUY_dele|r
    .collect 1197,1,14129,1 --Collect Giant Mace (1)
    .money <0.2400 << Orc/Troll
    .money <0.2534 << Tauren
    .money <0.2667 << Undead/BloodElf
    .money <0.2134 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_WARN_Pule este passo se você não escolheu Aperfeiçoamento!|r
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T132938:0|t[Direita-Handed Soqueira] (19s 17c) e |T132938:0|t[Soqueira de Canhoto] [19s 24c] << Orc/Troll
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T132938:0|t[Direita-Handed Soqueira] (20s 24c) e |T132938:0|t[Soqueira de Canhoto] [20s 31c] << Tauren
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T132938:0|t[Direita-Handed Soqueira] (17s 4c) e |T132938:0|t[Soqueira de Canhoto] [17s 10c] << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compre|r |T132938:0|t[Direita-Handed Soqueira] |cRXP_BUY_e|r |T132938:0|t[Soqueira de Canhoto] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Pule este passo se você não escolheu Aperfeiçoamento!|r
    .collect 15905,1,14129,1 --Collect Right-Handed Brass Knuckles (1)
    .collect 15906,1,14129,1 --Collect Left-Handed Brass Knuckles (1)
    .money <0.3841 << Orc/Troll
    .money <0.4045 << Tauren
    .money <0.3450 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zendo'jian|r
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T135489:0|t[Arco Recurvo Laminado] (15s 76c) << Orc/Troll
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T135489:0|t[Arco Recurvo Laminado] (16s 64c) << Tauren
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T135489:0|t[Arco Recurvo Laminado] (17s 52c) << Undead/BloodElf
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T135489:0|t[Arco Recurvo Laminado] (14s 2c) << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
    .xp <11,1
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Compre um|r |T135489:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,14129,1 --Laminated Recurve Bow (1)
    .money <0.1576 << Orc/Troll
    .money <0.1664 << Tauren
    .money <0.1752 << Undead/BloodElf
    .money <0.1402 << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoma|r
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T135346:0|t[Alfanje] (18s 20c cada); compre dois se tiver dinheiro suficiente << Orc/Troll
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T135346:0|t[Alfanje] (20s 23c cada); compre dois se tiver dinheiro suficiente << Undead/BloodElf
    .vendor >>Venda lixo e conserte. Venda sua arma se der dinheiro suficiente para |T135346:0|t[Alfanje] (16s 18c cada); compre dois se tiver dinheiro suficiente << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compre um ou dois|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,14129,1 --Cutlass (1)
    .money <0.1820 << Orc/Troll
    .money <0.2023 << Undead/BloodElf
    .money <0.1618 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Warrior/Paladin
    #optional
    #completewith RunawayShredder
    +Equipe a |T133477:0|t[Maça Gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Equipe a |T132938:0|t[Direita-Handed Soqueira]
    .use 15905
    .itemcount 15905,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Equipe a |T132938:0|t[Soqueira de Canhoto]
    .use 15906
    .itemcount 15906,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter
    #optional
    #completewith RunawayShredder
    +Equipe o |T135489:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp <11,1
step << Hunter
    #optional
    #completewith RunawayShredder
    +Equipe o |T135489:0|t[Arco Recurvo Laminado] quando estiver no nível 11
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp >11,1
step << Rogue
    #optional
    #completewith RunawayShredder
    +Equipe o |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter Cata
    .goto 1454,63.87,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak Tiroatroz|r
    .train 1978 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <10,1
step
    #completewith RunawayShredder
    .goto 1454,75.39,4.15,0
    .zone Azshara >>Entre em Azshara pela saída norte
step
    #optional
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ag'tor|r
    .turnin 25648 >>Vá para Além de Durotar
    .accept 14118 >>Aceite Carne para as Tropas
    .accept 14117 >>Aceite Olhos Atentos do Vale Gris
    .target Ag'tor Bloodfist
    .isOnQuest 25648
step
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ag'tor|r
    .accept 14118 >>Aceite Carne para as Tropas
    .accept 14117 >>Aceite Olhos Atentos do Vale Gris
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grabbit|r
    .turnin 25275 >>Entregue Relatório ao Capitão do Trabalho
    .accept 14129 >>Aceite Retalhador Desgovernado!
    .target Labor Captain Grabbit
    .isOnQuest 25275
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grabbit|r
    .turnin 28496 >>Entregue Ordens do Chefe Guerreiro: Azshara!
    .accept 14129 >>Aceite Retalhador Desgovernado!
    .target Labor Captain Grabbit
    .isOnQuest 28496
step
    #label RunawayShredder
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grabbit|r
    .accept 14129 >>Aceite Retalhador Desgovernado!
    .target Labor Captain Grabbit
step
    #completewith DefendtheGates
    >>Mate os |cRXP_ENEMY_Talrendis Batedores|r. Eles estão em furtividade
    >>Mate os |cRXP_ENEMY_Weakened Mosshoof Stags|r. Saqueie-os para obter |cRXP_LOOT_Slab of Carne|r
    >>|cRXP_ENEMY_Talrendis Batedores|r |cRXP_WARN_podem saltar em você enquanto você mata|r |cRXP_ENEMY_Enfraquecido Mosshoof Stags|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .mob Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    .goto 76,27.47,73.55,60,0
    .goto 76,28.55,72.22,60,0
    .goto 76,29.89,71.73
    >>Ataque um |cRXP_ENEMY_Retalhador Desgovernado|r. Monte-o quando ficar aliado
    .complete 14129,1 --Runaway Shredder Captured (1)
    .mob Runaway Shredder
step
    .goto 76,27.33,76.17
    .turnin 14129 >>Entregue Retalhador Desgovernado!
    .accept 14134 >>Aceite Os Diários do Capitão
step
    #loop
    .goto 1447/1,-4994.10010,2593.60010,0
    .waypoint 1447/1,-4941.39990,2669.00000,30,0
    .waypoint 1447/1,-4994.10010,2593.60010,30,0
    .waypoint 1447/1,-5032.80029,2625.69995,30,0
    .waypoint 1447/1,-5063.00000,2662.30005,30,0
    >>Usar |T135437:0|t[Recolher Lenha]|r em |cRXP_PICK_Azshara Madeira Serrada Piles|r para coletar |cRXP_LOOT_Madeira Serrada|r
    .complete 14134,1 --Azshara Lumber (6)
step
    .turnin 14134 >>Entregue Os Diários do Capitão
    .accept 14135 >>Aceite Subindo na Árvore
step
    #loop
    .goto 1447/1,-5007.70020,2719.19995,0
    .waypoint 1447/1,-5007.70020,2719.19995,30,0
    .waypoint 1447/1,-5013.30029,2780.50000,30,0
    .waypoint 1447/1,-5084.10010,2787.19995,30,0
    .waypoint 1447/1,-5088.00000,2726.50000,30,0
    >>|cRXP_WARN_Usar|r |T134427:0|t[Serra Circular]|r |cRXP_WARN_em|r |cRXP_FRIENDLY_Azshara Saplings|r |cRXP_WARN_para provocar|r |cRXP_ENEMY_Talrendis Snipers|r |cRXP_WARN_ataquem você|r
    >>|cRXP_WARN_Usar|r |T134427:0|t[Serra Circular]|r |cRXP_WARN_e|r |T132330:0|t[Lançar Lâmina]|r |cRXP_WARN_para matar os|r |cRXP_ENEMY_Talrendis Snipers|r
    -->>|cRXP_WARN_Make sure your|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_hits the very core of the tree|r
    .complete 14135,1 --Talrendis Sniper (9)
    .mob Talrendis Sniper
    .target Azshara Sapling
step
    #label DefendtheGates
    .turnin 14135 >>Entregue Subindo na Árvore
    .accept 14146 >>Aceite Defenda os Portões!
step
    #completewith next
    .goto 76,27.00,76.76,50 >>Retorne ao Portão Traseiro de Orgrimmar
step
    .goto 76,27.017,76.728
    >>|cRXP_WARN_Use|r |T134427:0|t[Serra Circular]|r|cRXP_WARN_,|r |T132330:0|t[Lançar Lâmina]|r |cRXP_WARN_and|r |T133716:0|t[Lançador de Granadas]|r |cRXP_WARN_to kill|r |cRXP_ENEMY_Talrendis Raiders|r
    >>|cRXP_WARN_If you lost your Retalhador, mount a|r |cRXP_FRIENDLY_Retalhador de Reserva|r |cRXP_WARN_instead|r
    .complete 14146,1 --Talrendis Raider (20)
    .mob Talrendis Raider
    .target Backup Shredder
step
    .turnin 14146 >>Entregue Defenda os Portões!
    .accept 14155 >>Aceite Arboricídio
step
    .goto 76,21.506,75.870
    >>Mate o |cRXP_ENEMY_Anciente de Talrendis|r a oeste
    >>|cRXP_WARN_If you lost your Retalhador, mount a|r |cRXP_FRIENDLY_Retalhador de Reserva|r |cRXP_WARN_instead|r
    >>|cRXP_WARN_Lance|r |T132489:0|t[Recarregar] |cRXP_WARN_se seu |cRXP_FRIENDLY_Retalhador|r estiver com pouca saúde|r
    .complete 14155,1 --Talrendis Ancient (1)
    .unitscan Talrendis Ancient
    .target Backup Shredder
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Talrendis Batedores|r. Eles estão em furtividade
    >>Mate os |cRXP_ENEMY_Weakened Mosshoof Stags|r. Saqueie-os para obter |cRXP_LOOT_Slab of Carne|r
    >>|cRXP_ENEMY_Talrendis Batedores|r |cRXP_WARN_podem saltar em você enquanto você mata|r |cRXP_ENEMY_Enfraquecido Mosshoof Stags|r
    >>|cRXP_WARN_Skip this step if you're not almost done at this point|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .disablecheckbox
    .unitscan Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    #label ArborcideTurnin
    .goto 76,27.00,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grabbit|r
    .turnin 14155 >>Entregue Arboricídio
    .accept 14162 >>Aceite Apresente-se a Horzak
    .target Labor Captain Grabbit
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ag'tor|r
    .collect 47039,1,14127 --Scout's Orders (1)
    .accept 14127 >>Aceite O Retorno dos Altaneiros?
    .turnin 14127 >>Entregue O Retorno dos Altaneiros?
    .use 47039
    .itemcount 47039,1
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14117 >>Entregue Os Olhos de Vale Gris
    .target Ag'tor Bloodfist
    .isQuestComplete 14117
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14127 >>Entregue O Retorno dos Altaneiros?
    .target Ag'tor Bloodfist
    .isQuestComplete 14118
step
    #completewith Horzak1
    #optional
    .abandon 14118 >>Abandone Carne para as Tropas
step
    #completewith Horzak1
    #optional
    .abandon 14117 >>Abandone Os Olhos de Vale Gris
step
    #completewith Horzak1
    .subzone 4830 >>Viaje para o Terminal do Foguete de Orgrimmar
step
    .goto Azshara,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malynea|r
    .turnin 14128 >>Entregue O Retorno dos Altaneiros?
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    #label Horzak1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Horzak|r e a |cRXP_FRIENDLY_Encarregada Fisk|r
    .turnin 14162 >>Entregue o Relatório a Horzak
    .accept 14161 >>Aceite Basiliscos Ariscos
    .accept 14165 >>Aceite Coração de Pedra (e Rins, e Fígado, e...)
    .target +Horzak Zignibble
    .goto 76,29.15,66.25
    .accept 14197 >>Aceite Ferro Fundido (e Mal Pago)
    .target +Foreman Fisk
    .goto Azshara,29.07,66.25
step
    #completewith next
    .subzone 4744 >>Voe a Oeste para o Mountainfoot Stripmine
step
    #loop
    .goto 76,25.976,68.758,0
    .goto 76,25.533,69.045,0
    .goto 76,25.096,69.901,0
    .waypoint 76,25.976,68.758,30,0
    .waypoint 76,25.533,69.045,30,0
    .waypoint 76,25.096,69.901,30,0
    .aura 67032 >>Pegue o |cRXP_FRIENDLY_Minerador do Sopé|r
    .target Mountainfoot Miner
    .isOnQuest 14165
step
    .goto 76,29.075,66.418
	>>Carregue o |cRXP_FRIENDLY_Minerador do Sopé|r de volta para o Orgrimmar Rocketway Exchange
    >>|cRXP_WARN_Você não pode montar ou mudar de forma enquanto faz isto!|r
    .complete 14165,1 --Stonified Miner Delivered
    .target Mountainfoot Miner
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Horzak|r
    .turnin 14165 >>Entregue Coração de Pedra (e Rins, e Fígado, e...)
    .accept 14190 >>Aceite O Prisma Perfeito
    .target Horzak Zignibble
step
    #completewith GreyBasilisks
    >>Saque |cRXP_PICK_Lingotes de Ferro|r e |cRXP_PICK_Pilhas de Ferro|r no chão para |cRXP_LOOT_Mountainfoot Ferro|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith Refleshify
    >>Mate |cRXP_ENEMY_Greystone Basilisks|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    .goto 76,21.91,69.37
    >>Mate os |cRXP_ENEMY_Talrendis Sabotadores|r. Saqueie-os para o |cRXP_LOOT_Cristal Pendant|r
    .complete 14190,1 --Crystal Pendant (1)
    .mob Talrendis Saboteur
step
    .goto 76,20.26,70.40
    >>Clique no |cRXP_PICK_Rádio do Quartel-General|r
    .turnin 14190 >>Entregue O Prisma Perfeito
    .accept 14192 >>Aceite O Tal do Cristal
step
    .goto 76,20.03,69.97
    >>Clique no |cRXP_PICK_Armário de Armas|r
    .turnin 14192 >>Entregue O Tal do Cristal
    .accept 14194 >>Aceite Recarnificação
step
    #label Refleshify
    #loop
    .goto 76,24.869,69.998,0
    .waypoint 76,22.454,69.462,20,0
    .waypoint 76,22.948,69.353,20,0
    .waypoint 76,23.338,71.559,20,0
    .waypoint 76,24.442,69.803,20,0
    .waypoint 76,24.869,69.998,20,0
    .waypoint 76,24.877,71.476,20,0
    .waypoint 76,24.633,72.520,20,0
    .waypoint 76,26.635,70.113,20,0
    .waypoint 76,25.517,69.028,20,0
    .waypoint 76,24.911,68.008,20,0
    .waypoint 76,23.005,68.003,20,0
    .use 48104 >>|cRXP_WARN_Usar|r |T249182:0|t[The Refleshifier] |cRXP_WARN_em|r os |cRXP_FRIENDLY_Mineradores do Sopé|r
    .complete 14194,1 --Mountainfoot Miner Destoned (8)
    .target Mountainfoot Miner
step
    #label GreyBasilisks
    #loop
    .goto 76,24.459,70.185,0
    .waypoint 76,24.459,70.185,40,0
    .waypoint 76,26.214,70.118,40,0
    .waypoint 76,24.683,68.383,40,0
    .waypoint 76,22.607,69.349,40,0
    >>Mate os |cRXP_ENEMY_Basiliscos Greystone|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    #loop
    .goto 76,22.683,68.753,0
    .waypoint 76,21.973,69.859,30,0
    .waypoint 76,22.683,68.753,30,0
    .waypoint 76,24.608,70.578,30,0
    .waypoint 76,25.493,69.020,30,0
    .waypoint 76,25.367,68.128,30,0
    .waypoint 76,22.933,67.848,30,0
    >>Pegue os |cRXP_PICK_Lingotes de Ferro|r e os |cRXP_PICK_Depósitos de Ferro|r no chão para |cRXP_LOOT_Mountainfoot Ferro|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith next
    .subzone 4830 >>Voe para o Orgrimmar Rocketway Exchange
step
    .goto 76,29.12,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fisk|r
    .turnin 14197 >>Entregue Ferro Fundido (e Mal Pago)
    .target Foreman Fisk
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Horzak|r
    .turnin 14161 >>Entregue Basiliscos Ariscos
    .turnin 14194 >>Entregue Recarnificação
    .target Horzak Zignibble
step
    .goto 76,29.53,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Worcester|r
    .accept 14468 >>Aceite Precisa-se: Buchas de Canhão
    .target Private Worcester
step
    #completewith next
    .subzone 1233 >>Viaje para o Norte em direção à Serra dos Esquecidos
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Molotov|r
    .turnin 14468 >>Entregue Precisa-se: Buchas de Canhão
    .accept 14469 >>Aceite Otimização de Recursos
    .target Commander Molotov
step
    .goto 76,29.38,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glix|r
    .accept 14470 >>Aceite Inovação Militar
    .target Glix Grindlock
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xiz|r
    .accept 14471 >>Aceite Morteiro Certeiro
    .target Xiz "The Eye" Salvoblast
step
    #completewith next
    >>Pegue os |cRXP_FRIENDLY_Soldados Mortos|r no chão para o |cRXP_LOOT_Suprimentos Militares|r
    >>|cRXP_WARN_Cuidado com os|r |cFFEB144CMinas Terrestres|r|cRXP_WARN_. Você será lançado para longe se pisar nelas!|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    >>Mate o |cRXP_ENEMY_Senhor da Guerra Krellian|r. Pegue o |cRXP_LOOT_GAF|r no chão depois
    .complete 14470,1 --Warlord Krellian (1)
    .mob +Warlord Krellian
    .goto 76,27.562,52.010
    .complete 14470,2 --SFG (1)
    .goto 76,27.693,51.903
step
    #loop
    .goto 76,29.619,53.022,0
    .waypoint 76,28.259,53.135,20,0
    .waypoint 76,28.735,52.656,20,0
    .waypoint 76,29.212,52.368,20,0
    .waypoint 76,29.619,53.022,20,0
    .waypoint 76,29.508,54.180,20,0
    .waypoint 76,29.166,54.338,20,0
    .waypoint 76,28.623,54.670,20,0
    >>Saque |cRXP_FRIENDLY_Soldados Mortos|r no chão para |cRXP_LOOT_Suprimentos Militares|r
    >>|cRXP_WARN_Cuidado com as|r |cFFEB144CMinas Terrestres|r|cRXP_WARN_. Você será lançado para longe se pisar nelas|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glix|r
    .turnin 14470 >>Entregue Inovação Militar
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Molotov|r
    .turnin 14469 >>Entregue Otimização de Recursos
    .target Commander Molotov
step
    .goto 76,31.12,57.59
    .vehicle >>Monte o |cRXP_FRIENDLY_Bilgewater Morteiro|r
    .target Bilgewater Mortar
    .isOnQuest 14471
step
    .goto 76,31.12,57.59
    >>|cRXP_WARN_Usar|r |T252172:0|t[Rodada de Morteiro] |cRXP_WARN_para matar|r os |cRXP_ENEMY_Iralisca Atacantes|r
    .complete 14471,1 --Spitelash Attackers blown to bits (60)
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xiz|r
    .turnin 14471 >>Entregue Morteiro Certeiro
    .target Xiz "The Eye" Salvoblast
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glix|r
    .accept 14472 >>Aceite Bem na Fuça!
    .target Glix Grindlock
step
    .goto 76,31.61,60.49
    .use 49700 >>|cRXP_WARN_Use seu|r |T133032:0|t[GAF] |cRXP_WARN_para matar um|r |cRXP_ENEMY_Filho Escravizado de Arkkoroc|r
    .complete 14472,1 --Enslaved Son of Arkkoroc (1)
    .mob Enslaved Son of Arkkoroc
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glix|r
    .turnin 14472 >>Entregue Bem na Fuça!
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Molotov|r
    .accept 24452 >>Aceite De Olho nas Oportunidades
    .target Commander Molotov
step
    .goto 76,31.924,50.964
    >>Vá para o centro das Ruínas de Eldarath
    .use 49701 >>|cRXP_WARN_Usar seu|r |T133866:0|t[Gerador de Área de Furtividade] |cRXP_WARN_para ficar invisível|r
    .complete 24452,1 --Heart of Arkkoroc identified
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Molotov|r
    .turnin 24452 >>Entregue De Olho nas Oportunidades
    .accept 24453 >>Aceite Perdeu a Guerra, mas Ganhou a Guerra
    .target Commander Molotov
step
    #completewith next
    .subzone 4830 >>Viaje para o Terminal do Foguete de Orgrimmar
step
    .goto 76,29.53,66.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Worcester|r
    .turnin 24453 >>Entregue Perdeu a Guerra, mas Ganhou a Guerra
    .target Private Worcester
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Custer|r
    .accept 14202 >>Aceite A Marcha do Progresso
    .target Custer Clubnik
step
    .goto 76,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malynea|r
    .accept 14201 >>Aceite Mil Histórias na Areia
    .target Malynea Skyreaver
step
    #completewith next
    >>Saque |cRXP_PICK_Ancient Debril Piles|r do chão para |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    >>Defenda a |cRXP_FRIENDLY_Topógrafa-júnior Goblina|r dos |cRXP_ENEMY_Shades of Hate|r conforme marca os levantamentos
    .use 48655 >>|cRXP_WARN_Usar|r |T133015:0|t[Surveyor's Sinalizador] |cRXP_WARN_para convocar um novo|r |cRXP_FRIENDLY_Goblin Surveyor|r |cRXP_WARN_se necessário|r
    .complete 14202,2 --Survey North Marker (1)
    .goto 76,34.69,71.58
    .complete 14202,3 --Survey East Marker (1)
    .goto 1447/1,-5434.39990,2637.10010
    .complete 14202,1 --Survey West Marker (1)
    .goto 76,34.263,76.616
    .target Goblin Surveyor Jr. Grade
    .mob Shade of Hate
step
    #loop
    .goto 1447/1,-5316.60010,2747.90015,0
    .waypoint 1447/1,-5316.60010,2747.90015,40,0
    .waypoint 1447/1,-5409.30029,2716.69995,40,0
    .waypoint 1447/1,-5457.70020,2650.60010,40,0
    .waypoint 1447/1,-5385.00000,2562.80005,40,0
    .waypoint 1447/1,-5335.39990,2535.40015,40,0
    .waypoint 1447/1,-5274.00000,2535.90015,40,0
    .waypoint 1447/1,-5221.60010,2638.00000,40,0
    >>Saque |cRXP_PICK_Ancient Debril Piles|r do chão para |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Custer|r
    .turnin 14202 >>Entregue A Marcha do Progresso
    .accept 14209 >>Aceite O Capô Mal-Assombrado
    .target Custer Clubnik
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Malynea|r
    .turnin 14201 >>Entregue Mil Histórias na Areia
    --.accept 14215 >>Accept Memories of the Dead
    .target Malynea Skyreaver
    --could skip 14215 and follow-up
step
    .goto 76,30.14,67.25
    >>Clique |cRXP_FRIENDLY_Trator do Chamorra|r
    >>Mate o |cRXP_ENEMY_Ectoplasm|r que aparece. Saque-o para obter o |cRXP_LOOT_Sample|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .target Clubnik's Dozer
    .mob Ectoplasmic Exhaust
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Custer|r
    .turnin 14209 >>Entregue O Capô Mal-Assombrado
    .accept 14423 >>Aceite O Exorcismo de Petúnia
    .target Custer Clubnik
step
    .goto 76,30.08,67.27
    .cast 68007 >>|cRXP_WARN_Use|r |T135619:0|t[Abençoado Flaregun] |cRXP_WARN_perto de|r |cRXP_FRIENDLY_Trator do Chamorra|r
    .timer 34,O Exorcismo de Petúnia RP
    >>Ataque |cRXP_ENEMY_Trator do Chamorra|r quando ficar hostil
    .complete 14423,1 --Clubnik's Dozer Exorcised (1)
    .use 49350
    .target Clubnik's Dozer
    .isOnQuest 14423
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Custer|r
    .turnin 14423 >>Entregue O Exorcismo de Petúnia
    .accept 14424 >>Aceite Uma Pitadinha de Ciência
    .target Custer Clubnik

    --next 2 quests not mandatory to continue in zone, could skip

step << skip
    .goto 1447/1,-5381.60010,2720.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Kalytha|r em Lake Mennar
    .aura 67704 >>|cRXP_WARN_Deixe que ela lhe dê o|r |T136223:0|t[Memórias dos Mortos] |cRXP_WARN_Bônus|r
    .skipgossip
    .target Spirit of Kalytha
    .isOnQuest 14215
step << skip
    .goto 76,37.515,74.507
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Arquimaga Selwyn|r
    .complete 14215,1 --Kalytha's Secret Learned (1)
    .skipgossip
    .target Archmage Selwyn
step << skip
    .turnin 14215 >>Entregue Memórias dos Mortos
    .accept 14216 >>Aceite O Mistério da Pedra Sarcen
step << skip
    .goto 76,35.57,75.31
    >>Pegue o |cRXP_PICK_Ancient Pedra Cask|r no fundo do lago para a |cRXP_LOOT_Sarcen Pedra|r
    .complete 14216,1 --Sarcen Stone (1)
step << skip
    .goto 76,29.68,66.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malynea|r
    .turnin 14216 >>Entregue O Mistério da Pedra Sarcen
    .target Malynea Skyreaver

    --Travel to next area here

step
    #completewith next
    .goto 1447/1,-4993.50000,2936.90015,5,0
    .goto 1447/1,-4998.70020,2947.10010,3 >>Pegue o elevador até a plataforma
step
    .goto Azshara,29.49,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cavalga-foguete de Borraquilha|r
    .gossipoption 112430 >>Pegue o rocketride para Southern Rocketway Terminus
    .timer 41,Southern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14424
step
    .goto 76,50.411,74.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Greely|r
    .turnin 14424 >>Entregue Uma Pitadinha de Ciência
    .accept 14308 >>Aceite Ciência, Demência, Qual a Diferença?
    .target Assistant Greely
step
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Smooks|r
    .accept 14258 >>Aceite Morteiro Certeiro
    .target Bombardier Captain Smooks
step
    #completewith GoblinFires
    >>Pegue |cRXP_PICK_Projéteis de Morteiro Goblin|r do chão
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    #completewith NineVisit1
    .use 49132 >>|cRXP_WARN_Aponte seu|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_em incêndios e|r |cRXP_FRIENDLY_Research Interns|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
step
    .goto 76,45.07,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Twistex|r
    .accept 14322 >>Aceite Ai Ai Ai, Dona Ciência! Coisa Feia!
    .target Twistex Happytongs
step
    #label NineVisit1
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobaia Nove|r
    .accept 14408 >>Aceite O Plano da 9
    .target Subject Nine
step
    #label GoblinFires
    #loop
    .goto 76,44.122,76.798,0
    .waypoint 76,44.122,76.798,30,0
    .waypoint 76,43.906,74.755,30,0
    .waypoint 76,43.465,75.872,30,0
    .use 49132 >>|cRXP_WARN_Aponte seu|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_para fogos e|r |cRXP_FRIENDLY_Estagiários de Pesquisa|r
    >>|cRXP_WARN_Cuidado com|r |cRXP_ENEMY_Subject Quatro|r|cRXP_WARN_ (raptor vermelho). Ele pode matá-lo de um golpe|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
    .unitscan Subject Four
step
    .goto 76,43.82,77.39
    >>Clique em |cRXP_PICK_Squawkbox do Laboratório Secreto|r
    .turnin 14308 >>Entregue Ciência, Demência, Qual a Diferença?
    .accept 14310 >>Aceite Falha de Segmentação: Núcleo Expulso
step
    .goto 76,43.818,77.301,10,0
    .goto 76,43.983,76.263,12,0
    .goto 76,44.108,75.642,12,0
    .goto 76,45.267,75.668,20,0
    .goto 76,46.571,75.710,20,0
    .goto 76,47.874,75.147,20,0
    .goto 76,49.490,74.495
    >>Clique em |cRXP_PICK_Painel de Controle do Reator|r para iniciar a escolta
    >>Escorte o carrinho de volta para o Southern Rocketway Exchange
    .use 49132 >>|cRXP_WARN_Aponte seu|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_para o|r |cRXP_FRIENDLY_Brutamontes de Laboratório|r |cRXP_WARN_sempre que ele estiver em fogo|r
    .complete 14310,1 --Azsharite Core Delivered (1)
    .target Hulking Labgoblin
step
    .goto 76,50.42,74.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Greely|r
    .turnin 14310 >>Entregue Falha de Segmentação: Núcleo Expulso
    .accept 14370 >>Aceite O Mistério da Azsharita
    .accept 14371 >>Aceite Fome de Gigante
    .target Assistant Greely
step
    .goto 76,45.97,76.08
    >>Clique em |cRXP_PICK_Campainha da Porta|r
    >>Mate o |cRXP_ENEMY_Goblin Mutante|r que aparece. Saque-o para conseguir seus |cRXP_LOOT_Foguete Plans|r
    .complete 14408,1 --Ring Door Buzzer (1)
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
    .skipgossip
    --VV Gossipoption
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Mistwing Cliffdwellers|r. Saque-os para seus |cRXP_LOOT_Carcasses|r
    >>Mate os |cRXP_ENEMY_Static-Carregado Hippogryphs|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    #loop
    .goto 76,46.586,71.044,0
    .goto 76,42.053,70.833,0
    .goto 76,41.660,77.979,0
    .goto 76,44.681,81.500,0
    .waypoint 76,46.586,71.044,40,0
    .waypoint 76,43.917,70.036,40,0
    .waypoint 76,43.212,68.401,40,0
    .waypoint 76,42.053,70.833,40,0
    .waypoint 76,41.660,77.979,40,0
    .waypoint 76,43.022,81.757,40,0
    .waypoint 76,44.681,81.500,40,0
    >>Pegue |cRXP_PICK_Azsharite Formations|r do chão para obter |cRXP_LOOT_Azsharite Samples|r
    .complete 14370,1 --Azsharite Sample (5)
step
    #loop
    .goto 76,44.908,79.037,0
    .waypoint 76,45.723,72.688,60,0
    .waypoint 76,45.068,77.881,60,0
    .waypoint 76,44.908,79.037,60,0
    >>Mate os |cRXP_ENEMY_Alanévoa Cliffdwellers|r. Saque-os para conseguir seus |cRXP_LOOT_Carcasses|r
    >>Mate os |cRXP_ENEMY_Hipogrifos Estaticamente Carregados|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobaia Nove|r
    .turnin 14408 >>Entregue O Plano da 9
    .accept 14422 >>Aceite Eram os Deuses Dinossauros?
    .target Subject Nine
step
    .goto 76,44.06,75.09
    .aura 69704,5+ >>Abra 5 |cRXP_PICK_Jaulas de Espécimes|r no Laboratório Secreto
    .isOnQuest 14422
step
    .goto 76,42.25,76.08
    >>Entregue para |cRXP_FRIENDLY_Cobaia Nove|r
    .complete 14422,1 --Experimental Raptor Delivered (5)
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobaia Nove|r
    .turnin 14422 >>Entregue Eram os Deuses Dinossauros?
    .target Subject Nine
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Twistex|r
    .turnin 14322 >>Entregue Ai Ai Ai, Dona Ciência! Coisa Feia!
    .target Twistex Happytongs
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Greely|r
    .turnin 14370 >>Entregue O Mistério da Azsharita
    .turnin 14371 >>Entregue Fome de Gigante
    .accept 14377 >>Aceite Grandes Amigos
    .target Assistant Greely
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gormungan|r
    .complete 14377,1 --Secret of Azsharite Discovered (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Greely|r
    .turnin 14377 >>Entregue Grandes Amigos
    .accept 14385 >>Aceite Experimento com Azsharita Nº1
    .target Assistant Greely
step
    .goto 76,50.53,74.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hobart|r
    .accept 14383 >>Aceite Os Terríveis Engenhoqueiros das Profundezas Devastadas
    .target Hobart Grapplehammer
step
    #completewith next
    .subzone 1256 >>Voe para The Ruined Reaches
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Netgun Gnomes|r, os |cRXP_ENEMY_Zapper Gnomes|r e os |cRXP_ENEMY_Blingo Apertaporca|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 76,39.89,84.76
    >>Saque o |cRXP_LOOT_Giant-Sized Laxative|r
    >>|cRXP_WARN_Pegue o elevador para o andar superior do edifício onde|r |cRXP_ENEMY_Blingo Apertaporca|r |cRXP_WARN_está localizado|r
    .complete 14385,2 --Giant-Sized Laxative (1)
step
    #loop
    .goto 76,40.921,84.919,0
    .waypoint 76,40.921,84.919,40,0
    .waypoint 76,42.938,85.531,40,0
    .waypoint 76,40.990,83.634,40,0
    .waypoint 76,42.123,83.416,40,0
    .waypoint 76,43.943,82.385,40,0
    >>Mate os |cRXP_ENEMY_Netgun Gnomes|r, os |cRXP_ENEMY_Zapper Gnomes|r e os |cRXP_ENEMY_Blingo Apertaporca|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gormungan|r
    .complete 14385,1 --Try to Feed Gormungan (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Greely|r
    .turnin 14385 >>Entregue Experimento com Azsharita Nº1
    .accept 14388 >>Aceite Experimento com Azsharita Nº2
    .target Assistant Greely
 step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Greely|r
    .aura 68710 >>Encolha em um Rato
    .skipgossipid 111824
    .isOnQuest 14388
    .target Assistant Greely
step
    .goto 76,50.313,74.422
    .vehicle >>Monte o |cRXP_FRIENDLY_Rato da Foguetovia|r
    .target Rocketway Rat
    .isOnQuest 14388
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gormungan|r
    >>|cRXP_WARN_Usar|r |T132328:0|t[Apressar] |cRXP_WARN_para aumentar sua velocidade de movimento|r
    .complete 14388,1 --Gormungan Scared (1)
    .skipgossip
    .target Gormungan
step
    #loop
    .goto 76,46.532,75.907,0
    .goto 76,43.494,75.449,0
    .waypoint 76,46.532,75.907,20,0
    .waypoint 76,46.070,76.435,20,0
    .waypoint 76,44.095,76.145,20,0
    .waypoint 76,44.205,77.003,20,0
    .waypoint 76,43.494,75.449,20,0
    .waypoint 76,43.825,75.554,20,0
    .waypoint 76,43.536,74.743,20,0
    >>Pegue os |cRXP_PICK_Goblin Morteiro Conchas|r do chão
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Greely|r
    .turnin 14388 >>Entregue Experimento com Azsharita Nº2
    .target Assistant Greely
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hobart|r
    .turnin 14383 >>Entregue Os Terríveis Engenhoqueiros das Profundezas Devastadas
    .accept 24458 >>Aceite Alô às Armas
    .target Hobart Grapplehammer
step
    .goto 76,52.21,74.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Smooks|r
    .turnin 14258 >>Entregue Morteiro Certeiro
    .target Bombardier Captain Smooks
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Torg|r
    .accept 14262 >>Aceite Como Peixes Fora d'Água
    .accept 14267 >>Aceite Investigação do Altar
    .target Torg Twocrush
    .maxlevel 15
step
    #xprate <1.2
    #completewith KeystoneShard
    .goto 1447/1,-6378.30029,2577.10010
    .subzone 4826 >>Voe para Tempestade Cliffs
    .isOnQuest 14262
step
    #xprate <1.2
    #completewith KeystoneShard
    >>Mate |cRXP_ENEMY_Furiante Iralisca|r e |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,58.98,71.85
    >>Clique em |cRXP_PICK_Naga Poder Pedra|r
    .turnin 14267 >>Entregue Investigação do Altar
    .accept 14270 >>Aceite O Fragmento do Monolito
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,57.51,70.96
    >>Saque o |cRXP_LOOT_Keystone Shard|r no chão
    .complete 14270,1 --Keystone Shard (1)
    .isOnQuest 14262
step
    #xprate <1.2
    #label KeystoneShard
    .goto 76,58.98,71.85
    >>Clique em |cRXP_PICK_Naga Poder Pedra|r
    .turnin 14270 >>Entregue O Fragmento do Monolito
    .accept 14271 >>Aceite Apresente-se a Smagadois
    .isOnQuest 14262
step
    #xprate <1.2
    #loop
    .goto 76,61.858,77.871,0
    .waypoint 76,58.019,76.688,50,0
    .waypoint 76,59.851,77.431,50,0
    .waypoint 76,61.858,77.871,50,0
    .waypoint 76,63.084,82.431,50,0
    >>Mate as |cRXP_ENEMY_Iralisca Fúria da Tempestade|r e os |cRXP_ENEMY_Iralisca Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torg Smagadois|r
    .turnin 14262 >>Entregue Como Peixes Fora d'Água
    .turnin 14271 >>Entregue Apresente-se a Smagadois
    .accept 14295 >>Aceite Irmãs do Mar
    .target Torg Twocrush
    .isQuestComplete 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Torg Smagadois|r
    .turnin 14271 >>Entregue Apresente-se a Smagadois
    .accept 14295 >>Aceite Irmãs do Mar
    .target Torg Twocrush
    .isQuestComplete 14271
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torg Smagadois|r
    .turnin 14271 >>Entregue Apresente-se a Smagadois
    .accept 14295 >>Aceite Irmãs do Mar
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.15,75.87
    >>Mate a |cRXP_ENEMY_Lady Silisthra|r
    >>|cRXP_WARN_Clique|r |cRXP_FRIENDLY_Silisthra's Poder Pedra|r |cRXP_WARN_no topo da plataforma para enfraquecê-la|r
    .complete 14295,1 --Lady Silisthra (1)
    .mob Lady Silisthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.63,79.42
    >>Mate a |cRXP_ENEMY_Lady Vesthra|r
    >>|cRXP_WARN_Clique|r |cRXP_FRIENDLY_Vesthra's Poder Pedra|r |cRXP_WARN_no topo da plataforma para enfraquecê-la|r
    .complete 14295,2 --Lady Vesthra (1)
    .mob Lady Vesthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,50.67,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torg Smagadois|r
    .turnin 14295 >>Entregue Irmãs do mar
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    .goto 76,51.492,74.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Friz Girachão|r
    .gossipoption 111876 >>Aprenda a rota de voo para Bilgewater Harbor
    .timer 59,Alô às armas RP
    .target Friz Groundspin
    .isOnQuest 24458
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Max Avalanche|r
    .trainer >>Treine suas magias de classe
    .target Maxx Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luís Queiro|r
    .trainer >>Treine suas magias de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Policarpo|r
    .trainer >>Treine suas magias de classe
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Madeira|r
    .trainer >>Treine suas magias de classe
    .target Sister Goldskimmer
step
    .goto 76,56.978,50.093
    >>Clique em |cRXP_PICK_Wrenchmen Recrutamento Poster|r dentro do prédio
    .accept 14478 >>Aceite Operação Estripa-Peixe
step
    .goto 1447/1,-6519.00000,3529.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kascão Melamão|r
    .home >>Defina sua Pedra de Retorno em Bilgewater Harbor
    .target Grimy Greasefingers
    .subzoneskip 4821,1
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stinky Shapshiv|r
    .trainer >>Treine suas magias de classe
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bam Megabomba|r
    .trainer >>Treine suas magias de classe
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guerreiromático X-9|r no andar de cima
    .trainer >>Treine suas magias de classe
    .target Warrior-Matic NX-01

    --VV Confirm if there are no Druid/Pala trainers in Bilgewater

step
    .goto 76,59.33,50.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teema|r
    .accept 14407 >>Aceite Blues de Azshara
    .target Teemo
step
    .goto 76,60.56,51.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pepe Teleco|r
    .turnin 24458 >>Entregue Alô às armas
    .target Bleenik Fizzlefuse
step
    .goto 76,60.64,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Molotov|r
    .turnin 14478 >>Entregue Operação Estripa-Peixe
    .accept 24455 >>Aceite Implantação Rápida
    .target Commander Molotov
step
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Souto|r
    .turnin 24455 >>Entregue Implantação Rápida
    .accept 14479 >>Aceite Há Muitos Como Ele
    .target Captain Desoto
step
    .goto 76,57.891,52.246
    .vehicle >>Monte no |cRXP_FRIENDLY_Foguete|r
    .timer 38,Há Muitos Como Ele RP
    .target Surface to Other Surface Transport
    .isOnQuest 14479
step
    .goto 76,39.14,51.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canfusan|r
    .accept 24437 >>Aceite Quem Chega Primeiro, Come Primeiro
    .target Ruckus
step
    .goto 76,41.50,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Drex|r
    .turnin 14479 >>Entregue Há Muitos Como Ele
    .accept 24435 >>Aceite Nagabagarai
    .target Lieutenant Drex
step
    .goto 76,41.37,53.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro-sargento Sargento Rorte|r
    .accept 24436 >>Aceite Re$$urreição
    .target Sergeant Hort
step
    #completewith NorthernVista
    >>Mate |cRXP_ENEMY_Spitelash Naga|r e |cRXP_ENEMY_Sirena Iralisca|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #completewith KillNagas
    .use 49679 >>|cRXP_WARN_Use seu|r |T135619:0|t[Santificado Flaregun] |cRXP_WARN_em|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,43.86,59.95
    .use 49685 >>|cRXP_WARN_Use a|r |T132485:0|t[Bandeira of Territorial Claim] |cRXP_WARN_na Southern Pagoda|r
    .complete 24437,1 --Southern Pagoda claimed (1)
step
    .goto 76,43.60,43.43
    .use 49685 >>|cRXP_WARN_Use a|r |T132485:0|t[Bandeira of Territorial Claim] |cRXP_WARN_na Big ol' Torre|r
    .complete 24437,2 --Big ol' Tower claimed (1)
step
    #label NorthernVista
    .goto 76,45.46,38.52
    .use 49685 >>|cRXP_WARN_Use a|r |T1324855:0|t[Bandeira of Territorial Claim] |cRXP_WARN_na Northern Vista|r
    .complete 24437,3 --Northern Vista claimed (1)
step
    #label KillNagas
    #loop
    .goto 76,40.901,51.711,0
    .waypoint 76,42.234,43.478,60,0
    .waypoint 76,40.500,47.338,60,0
    .waypoint 76,40.901,51.711,60,0
    .waypoint 76,42.469,56.429,60,0
    .waypoint 76,42.583,60.598,60,0
    >>Mate as |cRXP_ENEMY_Spitelash Naga|r e as |cRXP_ENEMY_Sirena Iralisca|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #loop
    .goto 76,41.538,47.075,0
    .waypoint 76,42.063,42.177,30,0
    .waypoint 76,41.636,43.947,30,0
    .waypoint 76,41.538,47.075,30,0
    .waypoint 76,40.529,49.245,30,0
    .waypoint 76,39.905,51.764,30,0
    .waypoint 76,39.729,53.869,30,0
    .waypoint 76,42.040,50.686,30,0
    .waypoint 76,43.193,52.463,30,0
    .waypoint 76,42.736,60.005,30,0
    .use 49679 >>|cRXP_WARN_Use seu|r |T135619:0|t[Santificado Flaregun] |cRXP_WARN_em|r |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,41.387,53.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Rorte|r
    .turnin 24436 >>Entregue Re$$urreição
    .target Sergeant Hort
step
    .goto 76,41.499,53.650
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Drex|r
    .turnin 24435 >>Entregue Nagabagarai
    .accept 24448 >>Aceite Promoção em Campo
    .target Lieutenant Drex
step
    .goto 76,39.133,51.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canfusan|r
    .turnin 24437 >>Entregue Foi Guerrear, Perdeu o Lugar
    .target Ruckus
step
    .goto 76,34.317,44.910
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Torque|r
    .turnin 24448 >>Entregue Promoção em Campo
    .accept 14487 >>Aceite Quanto Vale um Coração
    .target Captain Tork
step
    .goto 76,34.450,44.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Zelks|r
    .accept 14480 >>Aceite Extermínio
    .accept 14484 >>Aceite Cabeça da Cobra
    .accept 14485 >>Aceite Tique Nervoso
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tora Alotriz|r
    .accept 14486 >>Aceite Uns Merréis
    .target Tora Halotrix
step
    #sticky
    #completewith SpitelashNagas
    .cast 69310 >>|cRXP_WARN_Usar|r |T134286:0|t[Sinalizador do G.O.P.E.] |cRXP_WARN_para convocar|r |cRXP_FRIENDLY_Goblins|r |cRXP_WARN_que vão ajudá-lo com as próximas missões|r
    .use 49629
step
    #completewith LordKassarus
    >>Destrua |cRXP_PICK_Spitelash Runestones|r
    >>|cRXP_FRIENDLY_Manipular|r |cRXP_WARN_colocará explosivos nos Runestones. Defenda-o dos|r |cRXP_ENEMY_Spitelash Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
step
    #completewith Runestones
    >>Saque os |cRXP_LOOT_Highborne Tablets|r no chão
    .complete 14486,1 --Highborne Tablet (12)
step
    #completewith HighborneTablets
    >>Mate os |cRXP_ENEMY_Spitelash Battlemasters|r e os |cRXP_ENEMY_Spitelash Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    .goto 76,31.877,50.086
    >>Saque o |cRXP_LOOT_Coração de Arkkoroc|r no chão
    .complete 14487,1 --|1/1 Heart of Arkkoroc
    .use 49629
step
    #label LordKassarus
    .goto 76,35.993,49.836
    >>Mate o |cRXP_ENEMY_Lorde Kassarus|r
    .complete 14484,1 --Lord Kassarus (1)
    .mob Lord Kassarus
    .use 49629
step
    #label Runestones
    #loop
    .goto 76,34.045,51.533,0
    .goto 76,36.039,47.628,0
    .waypoint 76,30.477,48.782,20,0
    .waypoint 76,32.307,52.460,20,0
    .waypoint 76,34.045,51.533,20,0
    .waypoint 76,34.335,48.192,20,0
    .waypoint 76,36.039,47.628,20,0
    >>Destrua os |cRXP_PICK_Spitelash Runestones|r
    >>|cRXP_FRIENDLY_Manipular|r |cRXP_WARN_colocará explosivos nas Runestones. Defenda-o dos inimigos que se aproximam|r |cRXP_ENEMY_Spitelash Naga|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
    .use 49629
step
    #label HighborneTablets
    #loop
    .goto 76,30.114,49.084,0
    .waypoint 76,33.666,47.151,20,0
    .waypoint 76,32.448,48.661,20,0
    .waypoint 76,31.121,48.792,20,0
    .waypoint 76,30.274,48.555,20,0
    .waypoint 76,30.114,49.084,20,0
    .waypoint 76,30.293,50.517,20,0
    .waypoint 76,30.179,51.323,20,0
    .waypoint 76,31.410,52.117,20,0
    .waypoint 76,31.982,51.393,20,0
    .waypoint 76,32.188,53.156,20,0
    .waypoint 76,33.390,51.737,20,0
    .waypoint 76,34.262,49.631,20,0
    .waypoint 76,34.745,47.102,20,0
    >>Saque |cRXP_LOOT_Highborne Tablets|r no chão
    .complete 14486,1 --Highborne Tablet (12)
    .use 49629
step
    #label SpitelashNagas
    #loop
    .goto 76,30.159,49.817,0
    .waypoint 76,32.789,46.635,60,0
    .waypoint 76,30.596,47.761,60,0
    .waypoint 76,30.159,49.817,60,0
    .waypoint 76,32.387,53.496,60,0
    .waypoint 76,34.325,51.617,60,0
    .waypoint 76,33.899,46.811,60,0
    >>Abata os |cRXP_ENEMY_Spitelash Battlemasters|r e as |cRXP_ENEMY_Spitelash Enchantresses|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
    .use 49629
step
    .goto 76,34.464,44.727
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Zelks|r
    .turnin 14480 >>Entregue Extermínio
    .turnin 14484 >>Entregue Cabeça da Cobra
    .turnin 14485 >>Entregue Tique Nervoso
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tora Alotriz|r
    .turnin 14486 >>Entregue Uns Merréis
    .target Tora Halotrix
step
    .goto 76,34.307,44.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Torque|r
    .turnin 14487 >>Entregue Quanto Vale um Coração
    .accept 24449 >>Aceite Corações ao Alto
    .target Captain Tork
step
    .goto 76,34.513,44.512
    .vehicle >>Monte o |cRXP_FRIENDLY_Girocóptero Militar|r
    .timer 32,Corações ao Alto RP
    .target Military Gyrocopter
    .isOnQuest 24449
step
    .goto 76,60.61,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Tio Patusco|r
    .turnin 24449 >>Entregue Corações ao Alto
    .target Uncle Bedlam
step
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kalec|r
    .turnin 14407 >>Entregue Blues de Azshara
    .target Kalec
step
    .maxlevel 18,NorthAzsharaSkip
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kalec|r
    .accept 14130 >>Aceite Amigos de Todas as Cores
    .target Kalec
step
    #completewith next
    .goto 76,70.36,36.25,60 >>Vá para |cRXP_FRIENDLY_Ergll|r
    >>|cRXP_WARN_Você pode caminhar na água pelos próximos 5 minutos|r
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ergll|r
    .turnin 14130 >>Entregue Amigos de Todas as Cores
    .accept 14131 >>Aceite Um Pequeno Incentivo
    .accept 14132 >>Aceite Bruta Falta de Sacanagem!
    .accept 14323 >>Aceite Mil e Uma Utilidades
    .target Ergll
step
    #completewith VileSplashers
    >>Saque |cRXP_PICK_Kawphi Plants|r no chão para obter os |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #completewith VileSplashers
    >>Abata os |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label VileSplashers
    #loop
    .goto 76,75.914,35.559,0
    .goto 76,82.174,40.080,0
    .waypoint 76,75.914,35.559,50,0
    .waypoint 76,77.838,36.335,50,0
    .waypoint 76,80.072,37.683,50,0
    .waypoint 76,82.174,40.080,50,0
    .waypoint 76,79.225,40.686,50,0
    .waypoint 76,76.552,39.047,50,0
    .waypoint 76,75.496,36.880,50,0
    >>Mate os |cRXP_ENEMY_Vile Borrifos|r. Saqueie-os para obter os |cRXP_LOOT_Simmering Água Droplets|r
    >>|cRXP_ENEMY_Vile Borrifos|r |cRXP_WARN_morrem instantaneamente quando estão próximos|r
    .complete 14323,1 --Simmering Water Droplet (20)
    .mob Vile Splash
step
    #label ObsorbentTurnin
    .turnin 14323 >>Entregue Mil e Uma Utilidades
    --.accept 14324 >>Accept Full of Hot Water
step
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Use a|r |T135231:0|t[Inchado Azshari Sea Sponge] |cRXP_WARN_na|r |cRXP_PICK_Stone of the Água Escaldante lords|r
    >>Mate o |cRXP_ENEMY_Scalding Água Lord|r que aparece. Saqueie-o para obter o |cRXP_LOOT_Globe of Água Fervente|r
    .complete 14324,1 --Globe of Boiling Water (1)
    .isOnQuest 14324
step
    #completewith next
    >>Abata os |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label KawphiBeans
    #loop
    .goto 76,70.927,35.021,0
    .goto 76,71.424,29.350,0
    .waypoint 76,70.927,35.021,25,0
    .waypoint 76,71.801,34.789,25,0
    .waypoint 76,70.604,32.345,25,0
    .waypoint 76,70.559,28.732,25,0
    .waypoint 76,71.424,29.350,25,0
    .waypoint 76,72.477,29.047,25,0
    >>Saque |cRXP_PICK_Kawphi Plants|r no chão para |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #loop
    .goto 76,72.885,36.368,0
    .goto 76,70.218,30.672,0
    .waypoint 76,74.209,32.190,60,0
    .waypoint 76,72.885,36.368,60,0
    .waypoint 76,70.218,30.672,60,0
    >>Mate os |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Entregue Um Pequeno Incentivo
    .turnin 14132 >>Entregue Bruta Falta de Sacanagem!
    .turnin 14324 >>Entregue O Tal do Elemental
    .accept 14345 >>Aceite Quando a Esmola é Muita
    .target Ergll
    .isQuestComplete 14324
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Entregue Um Pequeno Incentivo
    .turnin 14132 >>Entregue Bruta Falta de Sacanagem!
    .accept 14324 >>Aceite O Tal do Elemental
    .target Ergll
step
    #optional
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Use the|r |T135231:0|t[Inchado Azshari Sea Sponge] |cRXP_WARN_at the|r |cRXP_PICK_Stone of the Água Escaldante lords|r
    >>Mate o |cRXP_ENEMY_Scalding Água Lord|r que aparece. Saqueie-o para obter seu |cRXP_LOOT_Globe of Água Fervente|r
    .complete 14324,1 --Globe of Boiling Water (1)
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ergll|r
    .turnin 14324 >>Entregue O Tal do Elemental
    .accept 14345 >>Aceite Quando a Esmola É Muita
    .timer 198,Monte na Tartaruga
    .target Ergll
step << skip
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ergll|r
    .vehicle >>Pegue a Tartaruga Montar até Northern Rocketway Exchange
    .timer 198,Monte a Tartaruga
    .target Ergll
    .skipgossip
    .isOnQuest 14345
step
    #completewith next
    .goto 76,42.71,25.15,80 >>Espere até chegar em Northern Rocketway Exchange
    >>|cRXP_WARN_Converse com|r |cRXP_FRIENDLY_Ergll|r |cRXP_WARN_novamente para montar a Tartaruga se isso não acontecer automaticamente|r
    .skipgossip
step
    .goto 76,42.71,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sorathos Fiachama|r
    .turnin 14345 >>Entregue Quando a Esmola é Muita
    .accept 14340 >>Aceite Que Bonita Sua Roupa
    .target Sorata Firespinner
step
    #xprate <1.2
    .goto 76,42.61,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andorel Jurassolar|r
    .accept 14428 >>Aceite O Diário de Ventâmbar
    .target Andorel Sunsworn
step
    #xprate <1.2
    .goto 76,42.41,23.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haggrum Punho de Sangue|r
    .accept 14431 >>Aceite Problemas no Horizonte
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #loop
    .goto 76,37.967,28.403,0
    .waypoint 76,38.478,26.428,40,0
    .waypoint 76,37.967,28.403,40,0
    .waypoint 76,37.935,31.246,40,0
    .waypoint 76,37.212,34.089,40,0
    >>Mate os |cRXP_ENEMY_Biólogos Talrendis|r. Saque-os para obter a |cRXP_LOOT_Inteligência Blackmaw|r
    .complete 14431,2 --Blackmaw Intelligence (1)
    .complete 14431,1 --Talrendis Biologist (8)
    .mob Talrendis Biologist
step
    #xprate <1.2
    .goto 76,42.408,23.605
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haggrum Punho de Sangue|r
    .turnin 14431 >>Entregue Problemas no Horizonte
    .accept 14432 >>Aceite O Barato do Vapor
    .accept 14433 >>Aceite Diplomacia por Outros Meios
    .target Haggrum Bloodfist
step
    #xprate <1.2
    .goto 76,49.75,28.44
    >>Mate a |cRXP_ENEMY_Erudita Ventâmbar|r. Saqueie-a para obter o |cRXP_LOOT_O diário de Ventâmbar|r
    .complete 14428,1 --Amberwind's Journal (1)
    .mob Lorekeeper Amberwind
step
    #xprate <1.2
    .goto 76,49.53,28.78
    >>Clique em |cRXP_PICK_Pedra Divinatória Superior|r
    .turnin 14428 >>Entregue O Diário de Ventâmbar
    .accept 14429 >>Aceite Desconstrução Arcana
step
    #xprate <1.2
    #loop
    .goto 76,52.303,27.112,0
    .goto 76,49.663,28.456,0
    .waypoint 76,50.329,27.556,40,0
    .waypoint 76,52.303,27.112,40,0
    .waypoint 76,51.685,25.068,40,0
    .waypoint 76,49.041,25.544,40,0
    .waypoint 76,49.291,27.335,40,0
    .waypoint 76,49.663,28.456,40,0
    >>Mate os |cRXP_ENEMY_Aprendizes Investigadores|r e os |cRXP_ENEMY_Aprendizes Iluminadores|r. Saque-os para obter as |cRXP_LOOT_Runas Em Harmonia|r
    .complete 14429,1 --Attuned Runestone (10)
    .mob Apprentice Investigator
    .mob Apprentice Illuminator
step
    #xprate <1.2
    .goto 76,53.02,29.01
    >>Clique em |cRXP_PICK_Pedra Divinatória Inferior|r
    .turnin 14429 >>Entregue Desconstrução Arcana
    .accept 14430 >>Aceite Hackeando o Construto
step
    #xprate <1.2
    .goto 76,52.998,29.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Arcano Constructo|r
    .complete 14430,1 --Arcane Construct Hacked (1)
    .target Arcane Construct
    .skipgossip
step
    .goto 76,47.241,20.861
    >>Vá para a |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .use 49201 >>|cRXP_WARN_Use seu|r |T133131:0|t[Chapéu de Teurgo Encardido]
    .complete 14340,1 --Approach Archmage Xylem while wearing your Wizard Hat (1)
    .target Image of Archmage Xylem
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .turnin 14340 >>Entregue Que Bonita Sua Roupa
    .target Image of Archmage Xylem
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Tharkul Craniférreo|r
    .accept 14250 >>Aceite Tirando uma Casquinha
    .target Tharkul Ironskull
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Will Robotrônico|r
    .accept 14249 >>Aceite Tosa pra Mim, Tosa!
    .target Will Robotronic
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Nerilys Assobico|r
    .accept 14263 >>Aceite Vai Catar no Mato
    .target Quarla Whistlebreak
step
    #completewith BalboaBlow
    >>Pegue o |cRXP_LOOT_Living Cólera Thyme|r no chão
    >>|cRXP_WARN_Saqueando-os fornecerá o|r |T135791:0|t[Cólera Viva] |cRXP_WARN_buff por 60 segundos (+20% dano causado e recebido, acumula até 5 vezes)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #completewith IreThymes
    >>Mate os |cRXP_ENEMY_Hipogrifos Cabeça-de-trovão|r. Saque-os para obter as |cRXP_LOOT_Penas Pristinas de Cabeça-de-trovão|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    #label BalboaBlow
    #loop
    .goto 76,53.267,20.867,0
    .goto 76,49.613,19.691,0
    .goto 76,46.529,15.659,0
    .waypoint 76,48.135,17.807,30,0
    .waypoint 76,49.613,19.691,30,0
    .waypoint 76,51.276,20.168,30,0
    .waypoint 76,53.267,20.867,30,0
    .waypoint 76,46.529,15.659,30,0
    .use 49038 >>|cRXP_WARN_Coloque a|r |T135735:0|t[Carga Arcana] |cRXP_WARN_na frente de|r |cRXP_ENEMY_Balboa|r |cRXP_WARN_e faça-o correr para dentro dela|r
    >>Pegue o |cRXP_LOOT_Animate Basalt|r no chão depois que explodir
    .complete 14250,1 --Animate Basalt (5)
    .unitscan Balboa
step
    #label IreThymes
    #loop
    .goto 76,52.188,19.077,0
    .goto 76,43.846,16.439,0
    .waypoint 76,50.142,16.603,25,0
    .waypoint 76,52.188,19.077,25,0
    .waypoint 76,52.920,22.025,25,0
    .waypoint 76,51.062,23.085,25,0
    .waypoint 76,50.191,23.321,25,0
    .waypoint 76,49.742,22.168,25,0
    .waypoint 76,49.866,18.267,25,0
    .waypoint 76,45.346,16.768,25,0
    .waypoint 76,43.846,16.439,25,0
    .waypoint 76,44.866,15.379,25,0
    .waypoint 76,45.688,13.923,25,0
    .waypoint 76,47.154,13.987,25,0
    >>Saque |cRXP_LOOT_Cólera Viva Thyme|r no chão
    >>|cRXP_WARN_Saqueando-os te dará o|r |T135791:0|t[Cólera Viva] |cRXP_WARN_bônus por 60 segundos (+20% de dano causado e recebido, acumula até 5 vezes)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #loop
    .goto 76,47.293,15.109,0
    .waypoint 76,49.885,15.595,70,0
    .waypoint 76,51.383,18.945,70,0
    .waypoint 76,49.879,21.922,70,0
    .waypoint 76,47.293,15.109,70,0
    .waypoint 76,42.318,18.466,70,0
    >>Mate os |cRXP_ENEMY_Hipogrifos Cabeça-de-trovão|r. Saqueie-os pelo |cRXP_LOOT_Pristine Cabeça-de-trovão Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nerilys Assobico|r
    .turnin 14263 >>Entregue Vai Catar no Mato
    .target Quarla Whistlebreak
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Will Robotrônico|r
    .turnin 14249 >>Entregue Tosa pra Mim, Tosa!
    .target Will Robotronic
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharkul Craniférreo|r
    .turnin 14250 >>Entregue Tirando uma Casquinha
    .target Tharkul Ironskull
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teresa Frondespira|r
    .accept 14230 >>Aceite Trabalho Manual
    .target Teresa Spireleaf
step
    .goto 76,47.24,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .accept 14226 >>Aceite Vingança Barata
    .target Image of Archmage Xylem
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Baratas Polimorfadas|r
    >>|cRXP_WARN_Faça seu|r |cRXP_FRIENDLY_Personal Arcano Assistant|r |cRXP_WARN_lançar|r |T294474:0|t[Polimorfia Entômica] |cRXP_WARN_em|r |cRXP_ENEMY_Sátiro Legashi|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_e|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #loop
    .goto 76,54.474,24.603,0
    .waypoint 76,55.608,23.916,20,0
    .waypoint 76,55.295,25.216,20,0
    .waypoint 76,54.929,24.217,20,0
    .waypoint 76,54.474,24.603,20,0
    >>Saque o |cRXP_PICK_Stolen Manual|r no chão para o |cRXP_LOOT_Abjurer's Manual|r
    >>|cRXP_WARN_Há vários|r |cRXP_PICK_Stolen Manuals|r |cRXP_WARN_na área. O|r |cRXP_FRIENDLY_VERDE|r |cRXP_WARN_contém o|r |cRXP_LOOT_Abjurer's Manual|r
    .complete 14230,1 --Abjurer's Manual (1)
step
    #loop
    .goto 76,54.524,24.092,0
    .waypoint 76,54.524,24.092,40,0
    .waypoint 76,56.003,24.962,40,0
    .waypoint 76,52.415,22.519,40,0
    >>Mate os |cRXP_ENEMY_Baratas Polimorfadas|r
    >>|cRXP_WARN_Faça com que seu|r |cRXP_FRIENDLY_Assistente Arcano Pessoal|r |cRXP_WARN_lance|r |T294474:0|t[Polimorfia Entômica] |cRXP_WARN_em|r os |cRXP_ENEMY_Sátiros Legashi|r|cRXP_WARN_,|r os |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_e|r os |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #completewith next
    .goto 76,47.098,20.551,30 >>Entregue para o acampamento do |cRXP_FRIENDLY_Arquimago Tauriel|r
    >>|cRXP_WARN_Faça seu|r |cRXP_FRIENDLY_Personal Arcano Assistant|r |cRXP_WARN_lançar|r |T135750:0|t[Retornar ao Acampamento]
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teresa Frondespira|r
    .turnin 14230 >>Entregue Trabalho Manual
    .target Teresa Spireleaf
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .turnin 14226 >>Entregue Vingança Barata
    .accept 14413 >>Aceite O Pináculo do Aprendizado
    .timer 30,O Pináculo do Aprendizado RP
    .target Image of Archmage Xylem
step
    .goto 76,55.71,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .turnin 14413 >>Entregue O Pináculo do Aprendizado
    .accept 14296 >>Aceite Olhe por Onde Pisa
    .target Image of Archmage Xylem
step
    #sticky
    #completewith WatchYourStepComplete
    .goto 76,55.375,14.957,0
    +|cRXP_WARN_Continue se movendo para evitar ser lançado da montanha! Se você cair, nade em direção a|r |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r |cRXP_WARN_para tentar novamente|r
    .target Image of Archmage Xylem
    .isOnQuest 14296
    --VV Need video for this quest
step
    .goto 76,55.740,14.745
    .aura 68613 >>Clique no primeiro |cRXP_PICK_Conduíte de Energia|r
    .isOnQuest 14296
step
    .goto 76,56.211,14.735,5,0
    .goto 76,56.887,14.333
    .aura 68613,2+ >>Clique no segundo |cRXP_PICK_Conduíte de Energia|r
    >>|cRXP_WARN_Mova para os círculos brancos para subir|r
    .isOnQuest 14296
step
    .goto 76,56.999,14.143,5,0
    .goto 76,57.570,12.867,5,0
    .goto 76,57.569,11.662
    .aura 68613,3+ >>Clique no terceiro |cRXP_PICK_Conduíte de Energia|r
    >>|cRXP_WARN_Mova para os círculos brancos para subir|r
    .isOnQuest 14296
step
    .goto 76,57.386,11.252,5,0
    .goto 76,56.332,10.492,5,0
    .goto 76,55.486,10.606
    .aura 68613,4+ >>Clique no quarto |cRXP_PICK_Conduíte de Energia|r
    >>|cRXP_WARN_Mova-se para os círculos brancos para se mover para cima|r
    .isOnQuest 14296
step
    .goto 76,55.306,10.833,5,0
    .goto 76,55.038,12.596,5,0
    .goto 76,55.548,13.104,5,0
    .goto 76,56.295,13.520
    .aura 68613,5+ >>Clique no quinto |cRXP_PICK_Conduíte de Energia|r
    >>|cRXP_WARN_Mova para os círculos brancos para subir|r
    .isOnQuest 14296
step
    .goto 76,56.450,13.291,5,0
    .goto 76,56.859,11.766,5,0
    .goto 76,56.173,11.077
    .aura 68613,6+>>Clique no sexto |cRXP_PICK_Conduíte de Energia|r
    >>|cRXP_WARN_Mova para os círculos brancos para subir|r
    .isOnQuest 14296
step
    .goto 76,55.992,11.256,5,0
    .goto 76,55.873,11.860
    >>|cRXP_WARN_Mova-se para o círculo branco para se mover para cima|r
    .complete 14296,1 --Arcane Trial Completed (1)
    .isOnQuest 14296
step
    #label WatchYourStepComplete
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .turnin 14296 >>Entregue Olhe por Onde Pisa
    .accept 24478 >>Aceite A Prova de Gelo
    .accept 14300 >>Aceite A Prova de Fogo
    .accept 24479 >>Aceite A Prova das Sombras
    .target Image of Archmage Xylem
step
    #completewith next
    .goto 76,56.049,11.926
    .goto 76,62.104,21.217,20 >>Clique no |cRXP_PICK_Frost Portal Zone|r no chão, depois clique no portal
step
    #label FrostTrial
    #loop
    .goto 76,62.041,20.249,8,0
    .goto 76,62.168,19.956,8,0
    .goto 76,62.025,19.774,8,0
    .goto 76,61.633,20.002,8,0
    .goto 76,61.487,20.195,8,0
    .goto 76,61.228,20.548,8,0
    .goto 76,61.446,20.978,8,0
    .goto 76,61.665,20.874,8,0
    .goto 76,61.879,20.912,8,0
    .goto 76,62.116,20.756,8,0
    >>Colete 20 stacks de |T252270:0|t[Essência de Gelo] passando correndo pelas pequenas nuvens de gelo flutuante
    >>|cRXP_WARN_Evite as rajadas de gelo giratórias e os círculos azuis no chão. Você perde um stack de|r |T252270:0|t[Essência de Gelo] |cRXP_WARN_quando atingido a cada vez|r
    .complete 24478,1 --Frost Trial Completed (1)
step
    #completewith FireTrial
    .goto 76,62.082,21.121
    .goto 76,56.173,12.079,20 >>Entre no portal
step
    #completewith next
    .goto 76,56.082,11.942
    .goto 76,32.886,23.395,20 >>Clique no |cRXP_PICK_Fire Portal Zone|r no chão, depois clique no portal
step
    #label FireTrial
    .goto 76,33.339,23.524
    >>Colete 10 stacks de |T252268:0|t[Dança do Fogo] movendo-se de círculo a círculo enquanto evita as chamas
    >>A maneira mais fácil de fazer isso é imitando os movimentos de |cRXP_FRIENDLY_Darwin|r
    .complete 14300,1 --Fire Trial Completed (1)
    .target Darwin
step
    #completewith ShadowTrial
    .goto 76,32.896,23.392
    .goto 76,56.173,12.079,20 >>Entre no portal
step
    #completewith ShadowTrial
    .goto 76,56.119,11.959
    .goto 76,31.183,26.715,20 >>Clique no |cRXP_PICK_Shadow Portal Zone|r no chão, depois clique no portal
step
    #completewith next
    .goto 76,30.792,27.281
    .aura 69863 >>Clique no |cRXP_PICK_Purple Pedra|r para começar a prova
step
    #label ShadowTrial
    .goto 76,30.930,27.875
    >>Colete 20 stacks de |T252272:0|t[Isca Sombria] levando os |cRXP_ENEMY_Weeping Almas|r para os círculos roxos no chão
    >>|cRXP_WARN_Evasão de ser atingido pelo|r |cRXP_ENEMY_Weeping Almas|r|cRXP_WARN_. Você perde stacks quando eles o atacam|r
    .complete 24479,1 --Shadow Trial Completed (1)
    .mob Weeping Soul
step
    #completewith next
    .goto 76,31.172,26.719
    .goto 76,56.173,12.079,20 >>Clique no portal
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .turnin 24478 >>Entregue A Prova de Gelo
    .turnin 14300 >>Entregue A Prova de Fogo
    .turnin 24479 >>Entregue A Prova das Sombras
    .accept 14299 >>Aceite O Asilo de Xylem
    .target Image of Archmage Xylem
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Imagem do Arquimago Tauriel|r
    .gossipoption 111896 >>Peça-lhe para abrir o portal para sua torre
    .target Image of Archmage Xylem
    .isOnQuest 14299
step
    #completewith next
    .goto 76,56.162,12.079
    .goto 76,22.462,43.582,20 >>Clique no portal
step
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joana|r
    .turnin 14299 >>Entregue O Asilo de Xylem
    .accept 14389 >>Aceite Não Era Óbvio?
    .target Joanna
step
    #completewith next
    .goto 76,25.720,37.969
    .goto 76,27.773,40.970,20 >>Clique no portal
step
    .goto 76,27.798,40.448
    >>Encontre |cRXP_FRIENDLY_Anara|r e |cRXP_FRIENDLY_Azuregos|r
    .complete 14389,1 --Find Anara, and hopefully, Azuregos
    .target Anara
    .target Spirit of Azuregos
step
    .turnin 14389 >>Entregue Não Era Óbvio?
    .accept 14390 >>Aceite Se Fosse Fácil não Teria Graça
step
    .goto 76,27.79,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Azuregos|r
    .complete 14390,1 --Convince Azuregos to meet with Kalecgos
    .target Spirit of Azuregos
    .skipgossip 36436,1
step
    .turnin 14390 >>Entregue Se Fosse Fácil não Teria Graça
    .accept 14391 >>Aceite Virando a Mesa
step
    .goto 76,27.617,39.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anara|r
    .gossipoption 111889 >>Volte à Vida
    .target Anara
    .isOnQuest 14391
step
    #xprate <1.2
    #completewith MeetingAgenda
    >>Abate |cRXP_ENEMY_Talrendis Ambassadors|r. Saque-os para |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #completewith AmbRobes
    >>Pegue |cRXP_LOOT_Briaroot Preparar|r no chão
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_também pode soltar|r |cRXP_LOOT_Briaroot Preparar|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #label MeetingAgenda
    .goto 76,29.813,38.566
    >>Saque o |cRXP_PICK_Important Documents|r no chão para o |cRXP_LOOT_Blackmaw Meeting Agenda|r
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
step
    #xprate <1.2
    #label AmbRobes
    #loop
    .goto 76,30.564,37.729,0
    .waypoint 76,29.965,38.504,40,0
    .waypoint 76,30.564,37.729,40,0
    .waypoint 76,31.261,34.060,40,0
    .waypoint 76,32.123,32.756,40,0
    >>Mate os |cRXP_ENEMY_Talrendis Ambassadors|r. Saque-os para obter |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #loop
    .goto 76,30.365,37.578,0
    .waypoint 76,29.926,38.784,30,0
    .waypoint 76,30.365,37.578,30,0
    .waypoint 76,31.393,36.065,30,0
    .waypoint 76,31.073,34.994,30,0
    .waypoint 76,31.171,33.729,30,0
    >>Pegue o |cRXP_LOOT_Briaroot Preparar|r no chão
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_também podem soltar|r |cRXP_LOOT_Briaroot Preparar|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #completewith Diplomatic
    .subzone 4825 >>Viaje para o Northern Rocketway Exchange
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haggrum Punho de Sangue|r
    .turnin 14432 >>Entregue O barato do vapor
    .turnin 14433 >>Entregue Diplomacia por Outros Meios
    .accept 14435 >>Aceite A Traição dos Bocanera
    .target Haggrum Bloodfist
    .maxlevel 20
step
    #xprate <1.2
    #label Diplomatic
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haggrum Punho de Sangue|r
    .turnin 14432 >>Entregue Uma Cerveja Pálida
    .turnin 14433 >>Entregue Diplomacia por outros meios
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andorel Jurassolar|r
    .turnin 14430 >>Entregue Hackeando o Construto
    .target Andorel Sunsworn
step
    #xprate <1.2
    #optional
    .goto 76,42.435,23.696
    .aura 69054 >>|cRXP_WARN_Use seu|r |T132671:0|t[Disfarce de Embaixadora] |cRXP_WARN_em|r |cRXP_PICK_Haggrum's Smokepit|r
    .use 49368
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andorel Jurassolar|r
    .gossipoption 111853 >>Teleporte-se para Blackmaw Segurar
    .target Andorel Sunsworn
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,30.986,29.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andorel Jurassolar|r
    .complete 14435,1 --Negotiations Sabotaged (1)
    .target Ungarl
    .skipgossip 36618,2,1,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,31.046,29.258,12,0
    .goto 76,31.889,30.192,12,0
    .goto 76,32.188,31.228,12,0
    .goto 76,32.755,32.247
    >>Mate os |cRXP_ENEMY_Blackmaw Warriors|r e os |cRXP_ENEMY_Blackmaw Shamans|r enquanto sai de Blackmaw Segurar
    .complete 14435,2 --Blackmaw Warrior (4)
    .complete 14435,3 --Blackmaw Shaman (4)
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    #completewith next
    .goto 76,32.755,32.247,12 >>Saia de Blackmaw Segurar
    .subzoneskip 1216,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haggrum Punho de Sangue|r
    .turnin 14435 >>Entregue A Traição dos Bocanera
    .target Haggrum Bloodfist
    .isOnQuest 14435
step
    #xprate <1.2
    #completewith next
    .goto 1447/1,-5711.20020,4488.30029,5,0
    .goto 1447/1,-5718.10010,4477.89990,3 >>Pegue o elevador até a plataforma
step
    #xprate <1.2
    .goto 76,42.526,24.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cavalga-foguete de Borraquilha|r
    .gossipoption 112443 >>Pegue o passeio de foguete até o Northern Rocketway Terminus
    .timer 51,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    #xprate >1.19
    #completewith next
    .goto 76,25.93,49.64,7 >>Vá para o topo da plataforma Rocketway
step
    #xprate >1.19
    .goto 76,25.93,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cavalga-foguete de Borraquilha|r
    .gossipoption 112442 >>Pegue o voo de foguete para Northern Rocketway Terminus
    .timer 83,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    .goto Azshara,66.50,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Blitz Catamamona|r
    .fp >>Aprenda a rota de voo para Bitter Reaches
    .target Blitz Blastospazz
    .isQuestAvailable 14261
step
    .goto 76,66.551,20.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kalec|r
    .turnin 14391 >>Entregue Virando a Mesa
    .accept 24467 >>Aceite O Fim dos Dias Negros
    .target Kalec
step
    .goto 76,66.338,20.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gélix Fusaceso|r
    .accept 14297 >>Aceite Alforria!
    .target Jellix Fuselighter
step
    .goto 76,66.540,19.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Juca Tremecuca|r
    .accept 14261 >>Aceite Dando um Gelo
    .target Feno Blastnoggin
step
    #completewith FadeToBlack
    >>Mate os |cRXP_ENEMY_Twilight Dragão Hunters|r, os |cRXP_ENEMY_Twilight Desecrators|r e os |cRXP_ENEMY_Sable Drakonids|r. Saqueie-os para obter seus |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Usar o |T134245:0|t[Chaves de Ferro Forjado] para abrir |cRXP_PICK_Gaiolas Crepúsculo|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #completewith LaborerRescue
    .use 49596 >>Usar seu |T133146:0|t[Cryomatic 16] no |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_Isso os matará quase instantaneamente|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,71.627,16.433
    >>Abate a |cRXP_ENEMY_Senhora do Crepúsculo Katrana|r
    >>|cRXP_WARN_Ignorar|r |cRXP_ENEMY_Malicion|r|cRXP_WARN_. Será morto por|r |cRXP_FRIENDLY_Kalecgos|r |cRXP_WARN_depois|r
    .complete 24467,1 --|1/1 Twilight Lord Katrana slain
    .complete 24467,2 --|1/1 Malicion slain
    .mob Twilight Lord Katrana
step
    #label FadeToBlack
    .goto 76,71.81,16.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kalecgos|r
    .turnin 24467 >>Entregue O Fim dos Dias Negros
    .target Kalecgos
step
    #label LaborerRescue
    #loop
    .goto 76,66.305,13.159,0
    .waypoint 76,69.095,16.926,40,0
    .waypoint 76,67.738,15.850,40,0
    .waypoint 76,66.305,13.159,40,0
    .waypoint 76,64.272,14.953,40,0
    .waypoint 76,64.953,16.437,40,0
    .waypoint 76,65.883,17.840,40,0
    >>Mate os |cRXP_ENEMY_Twilight Dragão Hunters|r, os |cRXP_ENEMY_Twilight Desecrators|r e os |cRXP_ENEMY_Sable Drakonids|r. Saqueie-os pelas |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Usar as |T134245:0|t[Ironwrought Keys] para abrir |cRXP_PICK_Twilight Cages|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #loop
    .goto 76,69.901,16.655,0
    .waypoint 76,69.901,16.655,40,0
    .waypoint 76,67.157,14.734,40,0
    .waypoint 76,65.900,16.034,40,0
    .waypoint 76,69.595,19.144,40,0
    .use 49596 >>Usar seu |T133146:0|t[Cryomatic 16] nos |cRXP_ENEMY_Dragões Zibelina|r
    >>|cRXP_WARN_Isso vai matá-los quase instantaneamente|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,66.541,19.604
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Juca Tremecuca|r
    .turnin 14261 >>Entregue Dando um Gelo
    .target Feno Blastnoggin
step
    .goto 76,66.338,20.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gélix Fusaceso|r
    .turnin 14297 >>Entregue Alforria!
    .target Jellix Fuselighter
step
    .goto 76,67.042,20.595
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Azuregos|r
    .accept 14392 >>Aceite Adeus, Pequena Criatura
    .target Azuregos
step << Druid Cata
    #completewith DruidTraining1
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid Cata
    #label DruidTraining1
    .goto 1450/1,-2593.69995,7867.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step
    #completewith next
    .hs >>Vá para Bilgewater Harbor
    .use 6948
    .subzoneskip 4821
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Max Avalanche|r
    .trainer >>Treine suas magias de classe
    .target Max Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luís Queiro|r
    .trainer >>Treine suas magias de classe
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Policarpo|r
    .trainer >>Treine suas magias de classe
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Madeira|r
    .trainer >>Treine suas magias de classe
    .target Sister Goldskimmer
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stinky Shapshiv|r
    .trainer >>Treine suas magias de classe
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bam Megabomba|r
    .trainer >>Treine suas magias de classe
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guerreiromático X-9|r no andar de cima
    .trainer >>Treine suas magias de classe
    .target Warrior-Matic NX-01
step
    .goto 76,53.264,49.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sorathos Fiachama|r
    .turnin 14392 >>Entregue Adeus, Pequena Criatura
    .target Sorata Firespinner
step
    .goto 76,52.977,49.761
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gurlorn|r
    .accept 24497 >>Aceite Mais Milhas de Voo
    .target Gurlorn
step
    .goto 76,60.479,52.205
    .vehicle >>Montar as |cRXP_FRIENDLY_Asas de Aço|r
    .timer 130,Mais Milhas de Voo RP
    .target Wings of Steel
    .isOnQuest 24497
    --VV No need for this if flight path is available automatically
step
    #completewith next
    +|cRXP_WARN_Remover|r o |T135992:0|t[Paraquedas]|cRXP_WARN_ buff ao chegar para evitar voar para o rio|r
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Manou|r
    .turnin 24497 >>Entregue Mais Milhas de Voo
    .accept 14462 >>Aceite Cabeça a Prêmio
    .accept 24433 >>Aceite Que se Banqueteiem com o Medo
    .target Chawg
    .isOnQuest 24497
step
    #optional
    #label NorthAzsharaSkip
step
    #completewith next
    .goto Azshara,52.92,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kroum|r
    .fly Southern Rocketway >>Voe para Southern Rocketway Terminus
    .target Kroum
    .subzoneskip 1237
step
    #completewith next
    .goto Azshara,50.78,74.52,5,0
    .goto Azshara,50.70,74.22,3 >>Pegue o elevador até a plataforma
step
    .goto Azshara,50.70,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cavalga-foguete de Borraquilha|r
    .gossipoption 112434 >>Pegue o rocketride para Southern Rocketway Terminus
    .timer 35,Southern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .subzoneskip 1237
    .isQuestAvailable 14392
step
    #completewith next
    .subzone 1237 >>Vá para Valormok
    .isQuestAvailable 14392
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Manou|r
    .accept 14462 >>Aceite Cabeça a Prêmio
    .accept 24433 >>Aceite Que se Banqueteiem com o Medo
    .target Chawg
step
    .goto 76,13.854,64.479
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andorel Jurassolar|r
    .accept 24434 >>Aceite Tropa de Elite, Osso Duro de Roer
    .target Andorel Sunsworn
step
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kroum|r
    .accept 14475 >>Aceite Repouso Forçado
    .target Kroum
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Sentinelas Talrendis|r, os |cRXP_ENEMY_Defensores Talrendis|r e os |cRXP_ENEMY_Lorekeepers Talrendis|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,14.453,75.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Bombardeira Capitão Bombardeiro Fumaço|r
    .target Bombardier Captain Smooks
    .turnin 14475 >>Entregue Repouso Forçado
    .accept 14476 >>Aceite Show de Fogos
step
    .goto 76,15.02,74.28
    >>Clique em |cRXP_PICK_Detonador Carga 1|r no chão
    .complete 14476,1 --Detonator Charge 1 Armed (1)
step
    .goto 76,15.47,73.72
    >>Clique em |cRXP_PICK_Detonador Carga 2|r no chão
    .complete 14476,2 --Detonator Charge 2 Armed (1)
step
    .goto 76,15.57,74.47
    >>Clique em |cRXP_PICK_Detonador Carga 3|r no chão
    .complete 14476,3 --Detonator Charge 3 Armed (1)
step
    .goto 76,14.459,75.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Bombardeiro Fumaço|r
    .turnin 14476 >>Entregue Show de Fogos
    .accept 14477 >>Aceite Aperta Aí!
    .target Bombardier Captain Smooks
step
    .goto 76,14.408,75.734
    >>Clique em |cRXP_PICK_Goblin Detonador|r
    .complete 14477,1 --Detonate the Explosives
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Talrendis Sentinelas|r, os |cRXP_ENEMY_Talrendis Defensores|r e os |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,12.517,67.451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Slinky|r
    .turnin 14462 >>Entregue Cabeça a Prêmio
    .accept 14464 >>Aceite Atentado-Relâmpago
    .target Slinky Sharpshiv
step
    #completewith next
    .goto 76,12.517,67.451
    +|cRXP_WARN_Subir a torre com Slinky|r
    .target Slinky Sharpshiv
step
    .goto 76,12.01,68.06
    >>Abate o |cRXP_ENEMY_Capitão Mataverde|r. Saque a |cRXP_LOOT_Cabeça|r
    .complete 14464,1 --Grunwald's Head (1)
    .mob Captain Grunwald
step
    #loop
    .goto 76,10.899,70.438,0
    .goto 76,11.481,71.991,0
    .waypoint 76,10.899,70.438,50,0
    .waypoint 76,11.481,71.991,50,0
    .waypoint 76,10.320,73.798,50,0
    .waypoint 76,9.448,71.859,50,0
    >>Abate os |cRXP_ENEMY_Sentinelas Talrendis|r, os |cRXP_ENEMY_Defensores Talrendis|r e os |cRXP_ENEMY_Lorekeepers Talrendis|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,10.56,69.85
    >>Clique em |cRXP_PICK_Pedra de Evocação do Lorekeeper|r
    .turnin 24434 >>Entregue Tropa de Elite, Osso Duro de Roer
    .target Lorekeeper's Summoning Stone
step
    #completewith next
    .goto 76,10.56,69.85
    >>Clique na |cRXP_PICK_Pedra Evocadora de Lorekeeper|r
    .gossipoption 111875 >>Teletransporte para Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,14.350,65.023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kroum|r
    .turnin 14477 >>Entregue Aperta Aí!
    .target Kroum
step
    .goto 76,14.471,65.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Bombardeiro Júnior Hackel|r
    .accept 24430 >>Aceite Enegrecendo os Céus
    .target Jr. Bombardier Hackel
step
    .goto 76,14.455,65.770
    .vehicle >>Montar a |cRXP_FRIENDLY_Mantícora Aterrada|r
    .target Grounded Wind Rider
    .isOnQuest 24430
step
    #completewith next
    >>|cRXP_WARN_Use|r |T133709:0|t[Lançamento de Bomba] |cRXP_WARN_para destruir|r |cRXP_ENEMY_Talrendis Glaive Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    .goto 76,9.239,72.539
    >>|cRXP_WARN_Use|r |T133709:0|t[Lançamento de Bomba] |cRXP_WARN_para destruir o|r |cRXP_ENEMY_Centro de Comando|r
    .complete 24430,2 --Command Center Bombed (1)
step
    #loop
    .goto 76,12.374,72.832,0
    .goto 76,12.825,70.135,0
    .goto 76,11.672,67.149,0
    .goto 76,9.737,69.693,0
    .waypoint 76,12.374,72.832,40,0
    .waypoint 76,12.825,70.135,40,0
    .waypoint 76,11.672,67.149,40,0
    .waypoint 76,9.737,69.693,40,0
    >>|cRXP_WARN_Usar|r |T133709:0|t[Lançamento de Bomba] |cRXP_WARN_para destruir|r |cRXP_ENEMY_Talrendis Glaive Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    #completewith next
    .goto 76,14.471,65.721,50 >>Voe de volta em direção ao |cRXP_FRIENDLY_Bombardeiro Júnior Hackel|r
step
    .goto 76,14.471,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Bombardeiro Júnior Hackel|r
    .turnin 24430 >>Entregue Enegrecendo os Céus
    .target Jr. Bombardier Hackel
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Manou|r
    .turnin 24433 >>Entregue Que Se Banqueteiem com o Medo
    .turnin 14464 >>Entregue Atentado-Relâmpago
    .accept 24439 >>Aceite A Conquista de Azshara
    .target Chawg
step
    .goto 76,9.15,72.82
    >>Mate |cRXP_ENEMY_Comandante Jarrodenes|r no segundo andar do edifício
    .complete 24439,1 --The Head of Jarrodenus (1)
    .mob Commander Jarrodenus
step
    #completewith next
    .goto 76,10.56,69.85
    >>Clique na |cRXP_PICK_Pedra Evocadora de Lorekeeper|r
    .gossipoption 111875 >>Teleporte de volta para Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Manou|r
    .turnin 24439 >>Entregue A Conquista de Azshara
    .target Chawg
step
    .goto 76,14.345,65.025
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kroum|r
    .accept 24463 >>Aceite Explorando o Vale Gris
    .target Kroum
step
    #completewith next << !Warlock !Paladin
    #completewith FelsteedTraining << Warlock
    #completewith WarhorseTraining << Paladin
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kroum|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Kroum
    .zoneskip Orgrimmar
step
    .goto 1454/1,-4356.80029,1799.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maztha|r
    .train 33388 >>Treinamento de Aprendiz de Montaria
    .target Maztha
    .xp <20,1
    .train 33391,1 --Journeyman Riding
    .train 34090,1 --Expert Riding
    .train 34091,1 --Artisan Riding
    .train 90265,1 --Master Riding
step << Orc !Warlock
    .goto 1454/1,-4569.50000,2095.10010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ogunaro Correlobos|r
	.vendor >>|cRXP_BUY_Compre um|r |T132224:0|t[Lobo] |cRXP_BUY_dele se você não tiver uma montaria na sua coleção ainda|r
	.target Ogunaro Wolfrunner
	.mountcount 75-150,<1
    .xp <20,1
step << Goblin !Warlock
    .goto 1454/1,-4132.89990,1483.09998
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kall Valemil|r
	.vendor >>|cRXP_BUY_Compre um|r |T134237:0|t[Triciclo] |cRXP_BUY_dele se você não tiver uma montaria na sua coleção ainda|r
	.target Kall Worthaton
	.mountcount 75-150,<1
    .xp <20,1
step << !Orc !Goblin !Warlock !Paladin
    .goto 1454/1,-4439.39990,1573.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gryshka|r
    .home >>Defina sua Pedra de Retorno em Orgrimmar
    .target Gryshka
	.mountcount 75-150,<1
step << Troll !Warlock
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Sen'Jin Village >>Voe para Sen'Jin Village
    .target Doras
    .subzoneskip 367
step << Troll !Warlock
    .goto 1411/1,-4882.50000,-857.90002
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zjolnir|r
	.vendor >>|cRXP_BUY_Compre um|r |T132253:0|t[Raptor] |cRXP_BUY_dele se você não tiver uma montaria na sua coleção ainda|r
	.target Zjolnir
	.mountcount 75-150,<1
    .xp <20,1
step << Undead/BloodElf !Warlock
    .goto 1454/1,-4390.80029,1840.09998
    #completewith next << Undead
    #completewith SilvermoonPort << BloodElf
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Undercity
step << Undead !Warlock
    .goto 1420/0,235.70000,2277.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zacarias Pústulo|r
	.vendor >>|cRXP_BUY_Compre um|r |T132264:0|t[Cavalo Descarnado] |cRXP_BUY_dele se você não tiver uma montaria na sua coleção ainda|r
	.target Zachariah Post
	.mountcount 75-150,<1
    .xp <20,1
step << BloodElf !Warlock
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Vá para Undercity
step << BloodElf !Warlock
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Clique no |cRXP_PICK_Orbe de Deslocamento|r para Luaprata
    .mountcount 75,<1
step << BloodElf !Warlock
    #completewith next
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059,15,0
    .zone Eversong Woods >>Saia de Luaprata
step << BloodElf !Warlock
    .goto 1941/0,-5096.30029,6844.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vinestra|r
	.vendor >>|cRXP_BUY_Compre um|r |T132227:0|t[Falcostruz] |cRXP_BUY_dela se você não tiver uma montaria na sua coleção ainda|r
	.target Winaestra
	.mountcount 75-150,<1
    .xp <20,1
step << Tauren !Paladin
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Thunder Bluff >>Voe para o Penhasco do Trovão
    .target Doras
    .zoneskip Thunder Bluff
    .zoneskip Mulgore
step << Tauren !Paladin
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Pegue o elevador para sair de Penhasco do Trovão
    .zoneskip Mulgore
step << Tauren !Paladin
    .goto 1412/1,-392.20001,-2280.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harb Casco Afiado|r
	.vendor >>|cRXP_BUY_Compre um|r |T132243:0|t[Kodo] |cRXP_BUY_dela se você não tiver uma montaria na sua coleção ainda|r
	.target Harb Clawhoof
	.mountcount 75-150,<1
    .xp <20,1
step << Warlock Cata
    #label FelsteedTraining
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 5784 >>Treine |T136103:0|t[Corcel Vil]
    .target Mirket
    .mountcount 75-150,<1
step << Paladin Cata
    #label WarhorseTraining
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atohmo|r
    .train 34769 >>Treine |T136103:0|t[Evocar Cavalo de Guerra] << BloodElf
    .train 69820 >>Treine |T132245:0|t[Evocar Kodo Andarilho do Sol] << Tauren
    .target Sunwalker Atohmo
    .mountcount 75-150,<1
step << !Orc !Goblin !Warlock !Paladin
    #optional
    #completewith FlyValormok
    .hs >>Use sua Pedra de Retorno para ir a Orgrimmar
    .use 6948
    .zoneskip Azshara
    .zoneskip Orgrimmar
    .zoneskip Ashenvale
step << Warrior/Paladin
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,24463,1 --Battle Axe (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compre um|r |T132941:0|t[Direita-Handed Garra] |cRXP_BUY_e|r |T132941:0|t[Garra de Canhoto] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Pule este passo se você não escolheu Aperfeiçoamento!|r
    .collect 15903,1,24463,1 --Collect Right-Handed Claw (1)
    .collect 15907,1,24463,1 --Collect Left-Handed Claw (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
    .target Shoma
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compre uma|r |T135419:0|t[Espada Longa] |cRXP_BUY_dela. Equipe-a quando alcançar o nível 21|r
    >>|cRXP_WARN_Compre um|r |T135342:0|t[Cris] |cRXP_WARN_em vez disso se você tiver Assassinato ou Subterfúgio|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >21,1
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compre uma|r |T135419:0|t[Espada Longa] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Compre um|r |T135342:0|t[Cris] |cRXP_WARN_em vez disso se você tiver as especializações Assassinato ou Subterfúgio|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
    .zoneskip Orgrimmar,1
step << Warrior/Paladin
    #optional
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Equipe a |T132941:0|t[Direita-Handed Garra]
    .use 15903
    .itemcount 15903,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Equipe a |T132938:0|t[Garra de Canhoto]
    .use 15907
    .itemcount 15907,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equipe a|r |T135419:0|t[Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equipe a|r |T135342:0|t[Cris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step
    #label FlyValormok
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Valormok >>Voe para Valormok
    .target Doras
    .zoneskip Azshara
    .zoneskip Ashenvale
step
    #completewith next
    .zone Ashenvale >>Atravesse a ponte para Vale Gris
step
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kolg Manchassangue|r
    .turnin 24463 >>Entregue Explorando o Vale Gris
    .accept 13866 >>Aceite Rumo à Paliçada!
    .target Kulg Gorespatter
step
    #label AzsharaEnd
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kolg Manchassangue|r
    .gossipoption 111683 >>Voe para The Mor'Shan Ramparts
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .isOnQuest 13866
step
    #optional
    .abandon 14407 >>Abandone Blues de Azshara
    ]])
