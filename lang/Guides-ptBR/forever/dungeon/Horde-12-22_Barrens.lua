if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 12-16 Terras Devastadas
#displayname 14-16 Terras Devastadas << !Shaman !Hunter !Tauren
#displayname 15-16 Terras Devastadas << Paladin
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#next 16-17 Cavernas Ígneas


step << Tauren Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-4834.14,418.07,30,0
    .goto 1411/1,-4754.3,796.66,20 >> Entre na Caverna Sopravento
step << Tauren Shaman
    #loop
    .goto 1411/1,-4706.71,902.41,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Mate |cRXP_ENEMY_Sectários|r. Para pegar um |cRXP_LOOT_Bornal de Reagentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento na Encruzilhada
    .target Kargal Battlescar
step << Tauren Warrior
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Vá ao topo da montanha
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1502 >>Entregue Thun'grim Olhafogo
    .accept 1503 >>Aceite Aço forjado
    .target Thun'grim Firegaze
step << Tauren Warrior
    .goto 1413/1,-2955.48,-188.04
    >>Pegue as |cRXP_PICK_Barras de Aço Forjado|r no |cRXP_LOOT_Baú de Ferro Roubado|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Tauren Warrior
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Vá ao topo da montanha
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1503 >>Entregue Aço forjado
    .target Thun'grim Firegaze
step << !Tauren
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .xp >15,1
step << !Tauren
    #softcore
    #completewith ThievesPickup
    .subzone 380 >> Vá para A Encruzilhada
    .xp <15,1
step << !Tauren
    #hardcore
    #completewith ThievesPickup
    .subzone 380 >> Vá para A Encruzilhada
step << !Tauren
    #softcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue Recrutamento na Encruzilhada << !Druid
    .accept 844 >>Aceite A ameaça pinote
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 844 >>Aceite A ameaça pinote
    .target Sergra Darkthorn
step << !Tauren
    #hardcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << !Tauren
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 98024 >>Entregue Jornada para a Encruzilhada << Skyborne
    .accept 871 >>Aceite Cortando o ataque pela raiz
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
    .target Thork
    .maxlevel 15
step << Skyborne
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 98024 >>Entregue Jornada para a Encruzilhada 
    .target Thork
    .maxlevel 15
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para Orgrimmar!|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Undead/Skyborne
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fp >> Aprenda a rota de voo da Encruzilhada
    .target Devrak
    .isQuestAvailable 1492
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .accept 848 >>Aceite Esporos de Fungos
    .turnin 1358 >>Entregue Uma amostra para Hermógenes
    .target Apothecary Helbrim
    .isOnQuest 1358
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .accept 848 >>Aceite Esporos de Fungos
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
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
step << !Tauren
    #label ThievesPickup
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Raptores ladrões
    .target Gazrog
step << !Tauren
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >> Defina sua Pedra de Regresso em A Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc/Troll
    #softcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step
    #optional
    #completewith DisruptTheAttacks
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #optional
    #completewith DisruptTheAttacks
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Bicos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead !Skyborne
    #completewith DemonSeed
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> Vá ao topo da montanha
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> Entre no Covil de Brumedo
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>Clique com o botão direito no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Certifique-se de ter uma|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_(duração de 30 minutos) com você|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #sticky
    #label FireTar2
    .goto 1413/1,-2947.38,-92.1,50,0
    .goto 1413/1,-2869.35,-49.54,50,0
    .goto 1413/1,-2805.51,-111.02
    >>Mate um |cRXP_ENEMY_Rabdomante Crinavalha|r ou |cRXP_ENEMY_Tecespinho Crinavalha|r. Pegue um |cRXP_LOOT_Piche Ígneo|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Rabdomantes|r, |cRXP_ENEMY_Tecespinhos|r e |cRXP_ENEMY_Caçadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> Pegue o |cRXP_PICK_Barril Vazio do Chen|r no chão e inicie a missão
    >>|cRXP_WARN_Se não estiver lá, você pode pegá-lo depois|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
    .isOnQuest 871
step
    #requires FireTar2 << Shaman
    #label DisruptTheAttacks
    #loop
	.goto 1413/1,-2811.59,-42.780,0
	.goto 1413/1,-2811.59,-42.780,50,0
	.goto 1413/1,-2875.43,-52.24,50,0
	.goto 1413/1,-2931.16,-89.40,50,0
	.goto 1413/1,-3001.08,-117.78,50,0
	.goto 1413/1,-3037.56,-164.390,50,0
	.goto 1413/1,-3034.52,-221.82,50,0
	.goto 1413/1,-2991.96,-239.39,50,0
	.goto 1413/1,-2899.75,-209.66,50,0
	.goto 1413/1,-2854.15,-151.56,50,0
	.goto 1413/1,-2799.43,-92.78,50,0
    >>Mate |cRXP_ENEMY_Rabdomantes|r, |cRXP_ENEMY_Tecespinhos|r e |cRXP_ENEMY_Caçadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2819.70,-359.65,0
    .goto 1413/1,-2784.23,-163.04,80,0
    .goto 1413/1,-2771.06,-306.95,80,0
    .goto 1413/1,-2805.51,-386.00,80,0
    .goto 1413/1,-2738.63,-610.310,80,0
    .goto 1413/1,-2576.50,-610.98,80,0
    .goto 1413/1,-2494.42,-485.32,80,0
    .goto 1413/1,-2448.82,-398.84,80,0
    .goto 1413/1,-2537.99,-260.33,80,0
    .goto 1413/1,-2730.52,-273.17,80,0
    .goto 1413/1,-2819.70,-359.65,80,0
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Bicos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue Recrutamento na Encruzilhada << Tauren Shaman
    .turnin 844 >>Entregue A ameaça pinote
    .accept 845 >>Aceite As zevras
    .target Sergra Darkthorn
    .isOnQuest 842 << Tauren Shaman
step << Tauren Shaman
    #optional
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 844 >>Entregue A ameaça pinote
    .accept 845 >>Aceite As zevras
    .target Sergra Darkthorn
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entregue Cortando o ataque pela raiz
    .accept 872 >>Aceite Adeus aos ataques
    .target Thork
    .isQuestComplete 871
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Aceite Adeus aos ataques
    .target Thork
    .isQuestTurnedIn 871
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step << Orc/Troll
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para Orgrimmar!|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Tauren Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_dele|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Orc Warrior/Troll Warrior/Tauren Warrior/Skyborne Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_Veja se|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_está na Encruzilhada. Ele vende poções e|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_com estoque limitado|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .vendor >>Abasteça-se de comida e água << !Rogue !Warrior
    .vendor >>Abasteça-se de comida << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isOnQuest 872,5041,845
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Pegue o |cRXP_PICK_Barril Vazio do Chen|r no chão e inicie a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
    .isOnQuest 872
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #optional
    #completewith next
    >>Pegue os |cRXP_PICK_Caixotes de Suprimentos da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>Mate |cRXP_ENEMY_Kreenig Rosnento|r. Pegue sua |cRXP_LOOT_Presa|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
step
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,0
    .goto 1413/1,-3382.10,-54.27,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #loop
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19,30,0
    .goto 1413/1,-3292.92,-212.36,0
    .goto 1413/1,-3402.36,-48.19,0
    >>Pegue os |cRXP_PICK_Caixotes de Suprimentos da Encruzilhada|r
    >>|cRXP_WARN_Pode aparecer em vários locais|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Mate |cRXP_ENEMY_Geomantes Crinavalha|r e |cRXP_ENEMY_Defensores Crinavalha|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step << !Tauren !Undead !Skyborne
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestComplete 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> Vá em direção a Durotar
    .isOnQuest 1525
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #requires ShamanDurotar
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Clamor do Fogo
    .accept 1526 >>Aceite Clamor do Fogo
    .target Telf Joolam
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo]
    .use 6636
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Pegue uma |cRXP_LOOT_Brasa Faiscante|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Clique no |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Clamor do Fogo
    .accept 1527 >>Aceite Clamor do Fogo
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith FireEnd
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r que encontrar. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entregue Clamor do Fogo
    .target Kranal Fiss
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Pegue o |cRXP_PICK_Barril Vazio do Chen|r no chão e inicie a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Aceite Barril Vazio do Chen
step 
    #completewith RatchetEnter
    >>Mate |cRXP_ENEMY_Raptores|r. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
step
    #optional
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>Mate |cRXP_ENEMY_Zevra Corredora|r. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isOnQuest 872
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Zevra Corredora|r. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isNotOnQuest 872
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> Vá para Vila Catraca
    .isOnQuest 845
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .accept 97253 >>Aceite Parts and Pieces
    .target Wrenix the Wretched
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
    .target Gazlowe
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Aprenda a rota de voo de Vila Catraca
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Pôster de Procura-se|r
    .accept 894 >>Aceite A rebimboca
    .goto 1413/1,-3759.06,-902.18
    .accept 895 >>Aceite PROCURA-SE: Barão Longacosta
    .goto 1413/1,-3719.54,-919.07
    .target Sputtervalve
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135353:0|t[Tarasca] |cRXP_BUY_dele|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você estiver no nível 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 819 >>Entregue Barril Vazio do Chen
    .accept 821 >>Aceite Barril Vazio do Chen
    .target Brewmaster Drohn
    .isOnQuest 819
step
    #optional
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .accept 821 >>Aceite Barril Vazio do Chen
    .target Brewmaster Drohn
    .isQuestTurnedIn 819
step << Mage/Priest/Warlock/Shaman/Druid
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Suco de Melão] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Venda os lixos
    --.collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
    .xp <15,1
step
    #optional
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
    >>|cRXP_WARN_Ele desova no primeiro acampamento e patrulha montanha acima|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto 1413/1,-3883.70,-1572.40,0
    .goto 1413/1,-3818.84,-1707.52,0
    .goto 1413/1,-3724.60,-1746.71,0
    .goto 1413/1,-3883.70,-1572.40,50,0
    .goto 1413/1,-3818.84,-1707.52,50,0
    .goto 1413/1,-3724.60,-1746.71,50,0
    >>Mate |cRXP_ENEMY_Barão Longacosta|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode estar em um dos acampamentos|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #loop
    .goto 1413/1,-3885.72,-1569.690,0
    .goto 1413/1,-3902.95,-1366.33,50,0
    .goto 1413/1,-3823.91,-1512.94,50,0
    .goto 1413/1,-3885.72,-1569.690,50,0
    >>Mate |cRXP_ENEMY_Bucaneiros dos Mares do Sul|r e |cRXP_ENEMY_Canhoneiros dos Mares do Sul|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    #label SouthSea
    #loop
    .goto 1413/1,-3657.700,-1435.500,0
    .goto 1413/1,-3675.100,-1364.100,40,0
    .goto 1413/1,-3598.900,-1378.800,40,0
    .goto 1413/1,-3657.700,-1435.500,40,0
    .goto 1413/1,-3654.900,-1482.400,40,0
    .goto 1413/1,-3680.100,-1593.000,40,0
    .goto 1413/1,-3614.800,-1632.800,40,0
    .goto 1413/1,-3611.500,-1692.500,40,0
    >>Saque o |cRXP_PICK_Handful of Complicated Parts|r no chão
    .complete 97253,1 --|5/5 Handful of Complicated Parts
    .isOnQuest 97253
step << Orc Rogue/Troll Rogue
    #loop
    .goto 1413/1,-3895.600,-1365.000,0
    .goto 1413/1,-3677.99,-1392.00,50,0
    .goto 1413/1,-3895.600,-1365.000,50,0
    .goto 1413/1,-3826.300,-1487.300,50,0
	>>Mate |cRXP_ENEMY_Tazan|r. Pegue sua |cRXP_LOOT_Algibeira|r
    >>|cRXP_WARN_Ele desova no primeiro acampamento e patrulha montanha acima|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 887 >>Entregue Os Flibusteiros dos Mares do Sul
    .turnin 895 >>Entregue PROCURA-SE: Barão Longacosta
    .accept 890 >>Aceite Carregamento perdido
    .target Gazlowe
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 97253 >>Entregue Parts and Pieces
    .target Wrenix the Wretched
    .isQuestComplete 97253
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .turnin 890 >>Entregue Carregamento perdido
    .accept 892 >>Aceite Carregamento perdido
    .accept 896 >>Aceite A fortuna do mineiro
    .target Wharfmaster Dizzywig
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue Carregamento perdido
    .accept 888 >>Aceite Butim Roubado
    .target Gazlowe
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135353:0|t[Tarasca] |cRXP_BUY_dele|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você estiver no nível 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
step << !Tauren
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #optional
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2977.78,-942.71,0
    .goto 1413/1,-2274.52,-870.42,0
    .goto 1413/1,-2977.78,-942.71,80,0
    .goto 1413/1,-2832.87,-990.01,80,0
    .goto 1413/1,-2710.26,-959.6,80,0
    .goto 1413/1,-2392.07,-900.83,80,0
    .goto 1413/1,-2274.52,-870.42,80,0
    >>Acabe de matar |cRXP_ENEMY_Zevras|r. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren Druid
    #completewith DruidTraining1
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Tauren Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 782 >> Treine suas magias de classe
    .target Loganaar
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <14,1
    .xp >16,1
step << Tauren Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Treine suas magias de classe
    .target Loganaar
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <16,1
step << Tauren
    #completewith FlyXroads2
    .hs >> Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Tauren
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entregue Voo para o Penhasco do Trovão
    .accept 6363 >>Aceite Tal, o Mestre de Mantícoras
    .target Ahanu
step << Tauren Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tigor Persegue-céus|r
    .train 2645 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <14,1
    .xp >16,1
step << Tauren Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tigor Persegue-céus|r
    .train 8498 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <16,1
step << Tauren Hunter/Tauren Warrior
    #completewith HunterTraining1 << Tauren Hunter
    #completewith WarriorTraining1 << Tauren Warrior
    .goto 1456/1,-123.26,-1394.49,60 >> Vá ao Platô dos Caçadores
step << Tauren Hunter
    #label HunterTraining1
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urek Chifre Troante|r
    .train 13795 >> Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <16,1
step << Tauren Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa Chifre Troante|r
    .train 24556 >> Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Tauren Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm Totem da Fúria|r
    .train 1160 >>Treine suas magias de classe
    .target Torm Ragetotem
    .xp <14,1
    .xp >16,1
step << Tauren Warrior
    #label WarriorTraining1
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm Totem da Fúria|r
    .train 285 >>Treine suas magias de classe
    .target Torm Ragetotem
    .xp <16,1
step << Tauren
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entregue Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale novamente com Jahan
    .target Tal
step << Tauren
    #label FlyXroads2
    #completewith HidesTurnIn
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .zoneskip The Barrens
step << Tauren
    .goto 1413/1,-2645.40,-406.94--c:The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >>Defina sua Pedra de Regresso em A Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 903,850,867,901
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue Adeus aos ataques
    .target Thork
    .isQuestTurnedIn 871
step
    #label XroadsTurnins3
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 845 >>Entregue As zevras
    .accept 903 >>Aceite Predadores dos Sertões
    .target Sergra Darkthorn
step << Tauren
    #label HidesTurnIn
    .goto 1413/1,-2566.36,-350.19--c:The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jahan Asa de Falcão|r
    .turnin 6364 >>Entregue Volte para Jahan
    .target Jahan Hawkwing
    .isOnQuest 6364
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Munição Pesada] |cRXP_BUY_dele|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/Skyborne Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Compre um|r |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] |cRXP_BUY_dele se disponível e reabasteça suas flechas|r
    >>|cRXP_WARN_Se não estiver disponível, compre um|r |T135490:0|t[Arco Reforçado] |cRXP_WARN_no lugar|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
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
    .isQuestTurnedIn 819
step
    #optional
    #completewith next
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de centauro
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .target Regthar Deathgate
step
    #optional
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
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #completewith HarpyTalons
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Mate |cRXP_ENEMY_Predadores da Savana|r. Pegue suas |cRXP_LOOT_Garras|r e |cRXP_LOOT_Presas|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Prowler
    .isQuestTurnedIn 819
step
    #optional
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Mate os |cRXP_ENEMY_Savannah Prowlers|r. Saque seus |cRXP_LOOT_Claws|r
    .complete 903,1 --Prowler Claws (7)
    .mob Savannah Prowler
    .isQuestAvailable 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1616.87,611.90,0
    .goto 1413/1,-1583.43,322.73,60,0
    .goto 1413/1,-1513.51,380.84,60,0
    .goto 1413/1,-1526.68,477.450,60,0
    .goto 1413/1,-1555.06,545.69,60,0
    .goto 1413/1,-1553.03,615.95,60,0
    .goto 1413/1,-1616.87,611.90,60,0
    >>Mate |cRXP_ENEMY_Harpias Asabruxa|r e |cRXP_ENEMY_Asabruxas Plumerrante|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #optional
    #label HarpyTalons
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith Samophlange
    +|cRXP_WARN_Cuidado com os|r |cRXP_ENEMY_Garrafoices Helióscamo|r |cRXP_WARN_na área. Eles chegam ao nível 18 e podem usar|r |T132152:0|t[Surra]
    .xp >17,1
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #completewith Samophlange
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1812.500,790.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrang Sanguebravo|r
    .accept 95494 >>Aceite Orgulho Contuso e Peles de Leão
    .accept 95507 >>Aceite Vrang's Game
    .target Vrang Wildgore
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrang Sanguebravo|r
    >>|cRXP_FRIENDLY_Vrang Sanguebravo|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_com estoque limitado|r << Tauren Warrior/Tauren Shaman/Druid
	.vendor	>> Venda os lixos e repare seu equipamento
    .target Vrang Wildgore
    .isQuestAvailable 95494,95507
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    >>Saque os |cRXP_PICK_Sprung Traps|r no chão
    .complete 95507,1 --|8/8 Trapped Game
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Mate os |cRXP_ENEMY_Savannah Patriarchs|r. Saque seus |cRXP_LOOT_Hides|r e |cRXP_LOOT_Tusks|r
    >>|cRXP_WARN_Se há muita competição e você não conseguir completar esta missão rapidamente, pule este passo|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Patriarch
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Mate os |cRXP_ENEMY_Savannah Patriarchs|r. Saque seus |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_Se há muita competição e você não conseguir completar esta missão rapidamente, pule este passo|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .mob Savannah Patriarch
    .isQuestAvailable 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1960.600,653.700,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Saque os |cRXP_PICK_Sprung Traps|r no chão
    .complete 95507,1 --|8/8 Trapped Game
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1812.600,789.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrang Sanguebravo|r
    .turnin 95494 >>Entregue Orgulho Contuso e Peles de Leão
    .turnin 95507 >>Entregue Vrang's Game
    .accept 95495 >>Aceite O Eremita Curtumeiro
    .target Vrang Wildgore
    .isQuestComplete 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    .goto 1413/1,-1778.100,684.200,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Suba a montanha
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.400,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Walton|r
    .turnin 95495 >>Entregue O Eremita Curtumeiro
    .accept 95621 >>Aceite Trouble in the Valley
    .target Walton
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1611.500,549.000
    >>Mate o |cRXP_ENEMY_Corporal Adamore|r
    >>|cRXP_WARN_Cuidado! Você pode puxar o aggro de 2-3 inimigos ao mesmo tempo|r
    .complete 95621,1 --|1/1 Learn why the Kul Tirans are here
    .mob Corporal Adamore
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    .goto 1413/1,-1736.900,650.300,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Suba a montanha
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.500,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Walton|r
    .turnin 95621 >>Entregue Trouble in the Valley
    .accept 95508 >>Aceite Convidados indesejáveis
    .timer 67,Convidados indesejáveis RP
    .target Walton
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1629.200,835.600
    >>Mova-se para atrás da casa enquanto espera a encenação terminar para evitar ser atacado por todos os inimigos de uma vez
    >>|cRXP_WARN_Você não precisa realmente ajudar |cRXP_FRIENDLY_Walton|r, ele sobreviverá com a ajuda de|r |cRXP_FRIENDLY_Vrang Sanguebravo|r
    .complete 95508,1 --|1/1 Assist Walton
    .mob Terry Longdrink
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.400,838.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Walton|r
    .turnin 95508 >>Entregue Convidados indesejáveis
    .target Walton
    .isQuestTurnedIn 95494
step
    #completewith EcheyakeePickup
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 901,881
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Raptores ladrões
    .accept 3281 >>Aceite Prata roubada
    .target Gazrog
    .isQuestComplete 869
step
    #optional
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 3281 >>Aceite Prata roubada
    .target Gazrog
    .isQuestTurnedIn 869
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
    --.accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Aceite Consumido pelo ódio
    .accept 4921 >>Aceite Perdida em combate
    .target Mankrik
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >>Entregue Os Charcos Esquecidos
    .accept 877 >>Aceite O Oásis Estagnado
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Predadores dos Sertões
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith SamophlangeComplete
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3031.48,461.91
    >>Use o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparecer após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantir o primeiro ataque quando ele aparecer, pule esta etapa|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não apareceu após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantiu o primeiro ataque, abandone Echeyaki, volte à cidade e aceite a missão novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3031.48,461.91
    >>Use o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << Tauren/Hunter/Orc Shaman/Troll Shaman
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 894 >>Entregue A rebimboca
    .accept 900 >>Aceite A rebimboca
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2686.95,842.290
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Cuidado! Dois inimigos aparecerão após você fechar a válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2675.80,842.290
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Um inimigo aparecerá após você fechar a válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2679.86,830.80
    >>Clique na |cRXP_PICK_Válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2686.95,825.40
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 900 >>Entregue A rebimboca
    .accept 901 >>Aceite A rebimboca
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2731.54,909.850
    >>Mate |cRXP_ENEMY_Engenhoqueiro Faísca|r no edifício. Pegue a |cRXP_LOOT_Chave do Painel|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label SamophlangeComplete
    .goto 1413/1,-2686.95,825.40
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 901 >>Entregue A rebimboca
    .accept 902 >>Aceite A rebimboca
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-2666.500,719.600,90,0
    .goto 1413/1,-2965.400,1009.100,90,0
    >>Mate |cRXP_ENEMY_Raptores|r. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-3102.42,1105.78
    >>Chegue ao nível 16 matando inimigos aqui, pois as próximas 3 missões são bem difíceis
	.xp 16
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r no Charco de Lodo
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    .accept 858 >>Aceite Ignição
    .target Wizzlecrank's Shredder
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    +|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Feitor Grelha|r |cRXP_WARN_ou|r |cRXP_ENEMY_Fera Lodosa|r |cRXP_WARN_estiver por perto. São inimigos raros fortes de nível 19|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Mate |cRXP_ENEMY_Supervisor Rancatraca|r. Pegue sua |cRXP_LOOT_Chave|r
    >>|cRXP_WARN_Ele patrulha de um lado a outro da plataforma|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
    .turnin 858 >>Entregue Ignição
    .accept 863,1 >>Aceite A fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
    .accept 863,1 >>Aceite A fuga
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_Dois|r |cRXP_ENEMY_Mercenários da Empreendimentos S.A.|r |cRXP_WARN_aparecerão quando o retalhador subir ao terreno elevado. Mate-os e aguarde a cena final|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label CatsEye
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Mate |cRXP_ENEMY_Segurança da Empreendimentos S.A.|r e |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue a |cRXP_LOOT_Esmeralda Olho-de-gato|r
    >>|cRXP_WARN_Se não cair após matar 25+ inimigos, pode pular esta missão|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #ssf
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Mate |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue seus |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #ah
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Mate |cRXP_ENEMY_Feitor da Empreendimentos S.A.|r. Pegue seus |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
    >>|cRXP_WARN_Você também pode comprá-los na Casa de Leilões|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Pule na viga de madeira. Faça um Logout Skip saindo e entrando no jogo. Volte a Orgrimmar se não conseguir|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .zoneskip Orgrimmar

]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 16-17 Cavernas Ígneas
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#next 17-18 Ruins of Lordaeron

step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Agora você deve procurar um grupo para Cavernas Ígneas
step
    #optional
    #completewith EnterRFC
    >>|cRXP_WARN_Se possível, peça aos membros do grupo para compartilharem a seguinte missão|r
    >>|cRXP_WARN_Se necessário, peça a alguém em Undercity para compartilhar a missão|r
    .accept 5725 >> Aceite O poder de destruir...
step
    #optional
    #completewith EnterRFC
    >>|cRXP_WARN_Se possível, peça aos membros do grupo que compartilhem as seguintes missões|r
    >>|cRXP_WARN_Se necessário, peça a alguém em Penhasco do Trovão para compartilhar a missão|r
    .accept 5722 >> Aceite Em busca da algibeira perdida
    .accept 5723 >> Aceite Testando a força do inimigo
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith EnterRFC
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada oeste
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith EnterRFC
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Crie|r |T133685:0|t[Bandagens de Linho] |cRXP_WARN_até atingir nível de profissão 40 ou mais|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
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
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Pule esta etapa se não tiver|r |T132889:0|t[Linho] |cRXP_WARN_suficiente para atingir nível 50 de profissão|r
    .train 3274 >> Aprenda Socorrista Profissional
    .target Arnok
    .skill firstaid,<40,1
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith EnterRFC
    +|cRXP_WARN_Não venda seus|r |T132794:0|t[|cRXP_LOOT_Frascos de Óleo|r]
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Treine suas magias de classe
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Treine suas magias de classe
    .target Pephredo
    .xp <18,1
step << Orc/Troll
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Estalajadeira Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o mestre de mantícoras
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >> Entregue Doraso, o mestre de mantícoras
    .accept 6386 >> Aceite Retorno à Encruzilhada
    .target Doras
    .isOnQuest 6385
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .accept 6386 >> Aceite Retorno à Encruzilhada
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para lugar nenhum!|r
    .fp Orgrimmar >> Aprenda a rota de voo de Orgrimmar
    .target Doras
    .isQuestAvailable 4921
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Treine as magias do seu mascote
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Treine Cajados
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Treine Arcos
    .target Hanashi
step << Warrior !Skyborne
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprenda a usar Machados de Duas Mãos
    .train 227 >>Treine Cajados
    .target Hanashi
    .money <0.020
step << Warrior/Paladin/Shaman !Skyborne
    #optional
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprenda a usar Machados de Duas Mãos
    .target Hanashi
    .money <0.010
step << Hunter
    .goto 1454/1,-4819.1,2099.05
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
    .goto 1454/1,-4819.1,2099.05
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
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Inimigos ocultos
    .target Thrall
step
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Durotar >>Saia de Orgrimmar
step
    .goto Durotar,53.08,9.19,0
    >>Mate inimigos da |cRXP_ENEMY_Lâmina Ardente|r na Rocha da Caveira até cair a |cRXP_LOOT_Insígnia do Tenente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
step
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Entre em Orgrimmar
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Entregue Inimigos ocultos
    .accept 5727 >> Aceite Inimigos ocultos
    .target Thrall
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Treine [Abrir Fechadura]
    .train 921 >> Treine |T133644:0|t [Bater Carteira]
    .accept 2379 >> Aceite Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Entregue A Mão Despedaçada
    .accept 1858 >> Aceite A Mão Despedaçada
    .target Therzok
step << Rogue
    .goto 1454/1,-4279.79,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entregue Zando'zan
    .accept 2382 >>Aceite Wrenix da Vila Catraca
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #optional
    #completewith next
    .goto 1454/1,-4271.1,1810.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre |r |T134065:0|t[Ferramentas de Ladrões] |cRXP_BUY_dele|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1773.24
    >>|cRXP_WARN_Use|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_para abrir a |r |T133626:0|t[Algibeira de Tazan]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entregue A Mão Despedaçada
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4437.87,1637.33
    >>|cRXP_WARN_Use|r |T133644:0|t[Bater Carteira] |cRXP_WARN_em|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_na estalagem. Use a chave dele para abrir|r |T133626:0|t[Algibeira de Tazan]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entregue A Mão Despedaçada
    .target Therzok
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Treine suas magias de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Treine suas magias de classe
    .target Mirket
    .xp <18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Sacrificar]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Seta de Fogo (Grau 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 5761 >>Aceite Mate a besta
    .target Neeru Fireblade
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
step
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Entregue Inimigos ocultos
    .accept 5728 >> Aceite Inimigos ocultos
    .target Thrall
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Insígnia do Tenente] |cRXP_WARN_pois você não precisa mais dela|r
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entre no portal da instância das Cavernas Ígneas e atravesse-o
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mauren Temível Totem|r
    .turnin 5722 >> Entregue Em busca da algibeira perdida
    .accept 5724 >> Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isOnQuest 5722
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mauren Temível Totem|r
    .accept 5724 >> Aceite Devolvendo a algibeira perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
step
    #label TroggsShamans
    >>Mate |cRXP_ENEMY_Troggs Iraflama|r e |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
step
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
step
    >>Mate |cRXP_ENEMY_Taragaman, o Famélico|r. Saqueie-o para pegar seu |cRXP_LOOT_Coração|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
step
    #label BazzalanandJergosh
    >>Mate |cRXP_ENEMY_Bazzalan|r e |cRXP_ENEMY_Jergosh, o Invocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
step
    >>Mate |cRXP_ENEMY_Sectário da Lâmina Calcinante|r e |cRXP_ENEMY_Bruxo da Lâmina Calcinante|r. Saqueie-os para pegar os |cRXP_LOOT_Feitiços da Sombra|r e as |cRXP_LOOT_Encantamentos do Éter|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5761 >>Entregue Mate a besta
    .target Neeru Fireblade
    .isQuestComplete 5761
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Entregue Inimigos ocultos
    .accept 5729 >> Aceite Inimigos ocultos
    .target Thrall
    .isQuestComplete 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Aceite Inimigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5729 >> Entregue Inimigos ocultos
    .accept 5730 >> Aceite Inimigos ocultos
    .target Neeru Fireblade
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Entregue Inimigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 17-18 Ruins of Lordaeron
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#next 18-21 Savanas

step
    #sticky
    #completewith EnterRoL
    .subzone 16611 >> Agora você deve estar procurando por um grupo para Ruins of Lordaeron
step
    #completewith next
    .zone Durotar >> Saia de Orgrimmar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step
    .goto 1411/1,-4648.55,1321.88,40 >>Suba a Torre do Zepelim
    .zone Tirisfal Glades >>Pegue o Zepelim para Clareiras de Tirisfal
    >>|cRXP_WARN_Conjure água enquanto espera|r << Mage
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step
    .goto 1420/0,84.900,2023.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deathguard Kristof::251001|r
    .accept 92422 >>Aceite A Ira de Rath'mael
    .target Deathguard Kristof::251001
step
    #completewith UCPickups
    >>|cRXP_WARN_Se possível, peça a alguém do seu grupo para compartilhar a seguinte missão|r
    .accept 92401 >>Aceite Um Pedido Amedrontado
step
    #completewith UCPickups
    .goto 1420/0,240.75,1877.57
    .zone Undercity >>Vá à Cidade Baixa
step
    #completewith UCPickups
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15,0
    .goto 1458/0,266.300,1567.200,20 >>Pegue o elevador até Cidade Baixa
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fp Undercity >>Aprenda a rota de voo de Cidade Baixa
    .target Michael Garrett::4551
step
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,428.400,1417.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Theodore Griffs::11835|r
    .accept 95216 >>Aceite A Nova Peste
    .target Theodore Griffs::11835
step
    .goto 1458/0,415.400,1389.900,50,0
    .goto 1458/0,373.500,1362.200,50,0
    .goto 1458/0,341.400,1434.800,50,0
    .goto 1458/0,369.400,1467.800,50,0
    .goto 1458/0,427.900,1413.700,50,0
    .goto 1458/0,438.100,1352.900,50,0
    .goto 1458/0,396.100,1308.800,50,0
    .goto 1458/0,316.000,1304.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morbin Lightbane::266484|r
    .accept 92421 >>Aceite Justiça da Luz
    .target Morbin Lightbane::266484
step
    #label UCPickups
    .isQuestComplete 5725
    .goto 1458/0,334.02,1262.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimathras::2425|r
    .turnin 5725 >>Entregue O poder de destruir...
    .target Varimathras::2425
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .zoneskip Undercity,1
    .zoneskip Silverpine Forest
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .zoneskip Silverpine Forest
    .goto 1420/0,629.36,1553.42,50,0
    .goto 1421/0,1204.68,1290.07
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith AFrightenedRequest
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .subzoneskip 228
    .goto 1421/0,1204.68,1290.07,50,0
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39
    .subzone 228 >>Vá para o Sepulcro
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith AFrightenedRequest
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .subzoneskip 228
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fly Sepulcher >>Voe para Sepulcher
    .target Michael Garrett::4551
step
    #label AFrightenedRequest
    .goto 1421/0,1579.600,461.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabitha Heartweaver::250686|r
    .accept 92401 >>Aceite Um Pedido Amedrontado
    .target Tabitha Heartweaver::250686
step
    #completewith next
    .zoneskip Silverpine Forest,1
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karos Razok::2226|r
    .fly Undercity >>Voe para Undercity
    .target Karos Razok::2226
step
    #label EnterRoL
    .goto 1458/0,188.400,1804.500
    .subzone 16611 >>Entre nas Ruins of Lordaeron
step
    #completewith RuinsRathma
    .isOnQuest 92421
    >>Mate o |cRXP_ENEMY_Morto-vivo|r. Saque seus |T458717:0|t[|cRXP_LOOT_Intact Limbs|r]
    .complete 92421,1 --Intact Limbs (25)
    .mob Skeleton::250618
    --.mob Cadaver::250621
    --.mob Ragged Ghoul::250622
    --.mob Mangled Cadaver::250623
    --.mob Skeletal Mage::250624
    --.mob Skeletal Soldier::250626
    --.mob Ghoul::250627
    --.mob Plague Ghoul::250630
    .mob Fallen Berserker::250656
    --.mob Living Monstrosity::250689
    .mob Flesh Golem::255109
    .mob Fallen Necromancer::255964
step
    #completewith RuinsLimbs
    .isQuestAvailable 95204
    .isNotOnQuest 95204
    >>Saque e use o |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] para iniciar a missão
    >>|cRXP_WARN_Tem 5 locais de aparecimento possíveis|r
    .collect 275521,1,95204 --Crest of Lordaeron (1)
    .accept 95204 >>Aceite Crest of Lordaeron
    .use 275521
step
    .isOnQuest 95216
    >>Mate o |cRXP_ENEMY_Witherfang::250483|r. Saqueie-o para um |T132108:0|t[|cRXP_LOOT_Highly Tóxico Tensão|r]
    .complete 95216,1 --Highly Toxic Strain (1)
    .mob Witherfang::250483
step
    .isQuestAvailable 97288
    .isNotOnQuest 97288
    >>Mate o |cRXP_ENEMY_The Barão::250660|r. Saqueie e use seu |T2492254:0|t[|cRXP_LOOT_Abominable Cabeça|r] para iniciar a missão
    .collect 280438,1,97288 --Abominable Head (1)
    .accept 97288 >>Aceite Tormento Infinito
    .use 280438
    .mob The Baron::250660
step
    #label RuinsRathma
    .isOnQuest 92422
    >>Mate o |cRXP_ENEMY_Rath'mael::250657|r
    .complete 92422,1 --Rath'mael Slain (1)
    .mob Rath'mael::250657
    .target Edward Heartweaver::250842
step
    .isOnQuest 92401
    >>Vá ao corpo de |cRXP_FRIENDLY_Edward Heartweaver::250842|r perto de |cRXP_ENEMY_Rath'mael::250657|r
    .complete 92401,1
    .target Edward Heartweaver::250842
step
    #label RuinsLimbs
    .isOnQuest 92421
    >>Mate o |cRXP_ENEMY_Morto-vivo|r. Saque seus |T458717:0|t[|cRXP_LOOT_Intact Limbs|r]
    .complete 92421,1 --Intact Limbs (25)
    .mob Skeleton::250618
    --.mob Cadaver::250621
    --.mob Ragged Ghoul::250622
    --.mob Mangled Cadaver::250623
    --.mob Skeletal Mage::250624
    --.mob Skeletal Soldier::250626
    --.mob Ghoul::250627
    --.mob Plague Ghoul::250630
    .mob Fallen Berserker::250656
    --.mob Living Monstrosity::250689
    .mob Flesh Golem::255109
    .mob Fallen Necromancer::255964
step
    .isQuestAvailable 95204
    .isNotOnQuest 95204
    >>Saque e use o |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] para iniciar a missão
    >>|cRXP_WARN_Tem 5 locais de aparecimento possíveis|r
    .collect 275521,1,95204 --Crest of Lordaeron (1)
    .accept 95204 >>Aceite Crest of Lordaeron
    .use 275521
step
    .goto 1458/0,188.400,1804.500
    .zone Undercity >>Saia de Ruins of Lordaeron
step
    .isQuestComplete 92422
    .goto 1420/0,84.900,2023.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Deathguard Kristof::251001|r
    .turnin 92422 >>Entregue A Ira de Rath'mael
    .target Deathguard Kristof::251001
step
    .goto 1420/0,240.75,1877.57
    .zone Undercity >>Volte para Undercity
step
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15,0
    .goto 1458/0,266.300,1567.200,20 >>Pegue o elevador até Cidade Baixa
step
    .isQuestComplete 95216
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,428.400,1417.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Theodore Griffs::11835|r
    .turnin 95216 >>Entregue A Nova Peste
    .target Theodore Griffs::11835
step
    .isOnQuest 97288
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97288 >>Entregue Tormento Infinito
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97288
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .accept 97289 >>Aceite Tormento Infinito
    .target Master Apothecary Faranell::2055
step
    .isOnQuest 97289
    .goto 1458/0,433.300,1482.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Unfinished Abominação::271613|r
    .turnin 97289 >>Entregue Tormento Infinito
    .target Unfinished Abomination::271613
step
    .isQuestTurnedIn 97289
    .goto 1458/0,433.300,1482.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Unfinished Abominação::271613|r
    .accept 97290 >>Aceite Tormento Infinito
    .target Unfinished Abomination::271613
step
    .isOnQuest 97290
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97290 >>Entregue Tormento Infinito
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97290
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .accept 97291 >>Aceite Tormento Infinito
    .target Master Apothecary Faranell::2055
step
    .isQuestComplete 92421
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,371.600,1465.600,50,0
    .goto 1458/0,437.100,1399.300,50,0
    .goto 1458/0,430.600,1342.100,50,0
    .goto 1458/0,397.500,1311.400,50,0
    .goto 1458/0,315.800,1304.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morbin Lightbane::266484|r
    .turnin 92421 >>Entregue Justiça da Luz
    *Escolha |T133483:0|t[|cRXP_LOOT_The Stitcher|r] para uma melhoria na mão principal. Treine Maças se necessário << Rogue
    .target Morbin Lightbane::266484
step
    .isOnQuest 97291
    .goto 1458/0,356.700,1563.500
    >>|cRXP_WARN_Saque a|r |T134181:0|t[|cRXP_LOOT_Erva Ardente|r] |cRXP_WARN_do vaso atrás|r |cRXP_FRIENDLY_Katrina Alliestar::4615|r
    .complete 97291,2 --Blisterweed (1)
step
    .isOnQuest 97291
    .goto 1458/0,151.500,1550.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ezekiel Tumbas::4585|r
    >>|cRXP_BUY_Compre uma|r |T134799:0|t[|cRXP_LOOT_Essence of Agonia|r]
    .complete 97291,3 --Essence of Agony (1)
    .target Ezekiel Graves::4585
step
    .isOnQuest 95204
    .goto 1458/0,172.100,1667.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oran Snakewrithe::7825|r
    .turnin 95204 >>Entregue Crest of Lordaeron
    .target Oran Snakewrithe::7825
step
    .isOnQuest 97291
    .goto 1458/0,241.700,1633.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tawny Grisette::4554|r
    >>|cRXP_BUY_Compre um|r |T134522:0|t[|cRXP_LOOT_Toxic Morrião|r]
    .complete 97291,1 --Toxic Skullcap (1)
    .target Tawny Grisette::4554
step
    .isOnQuest 97291
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97291 >>Entregue Tormento Infinito
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97291
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .accept 97292 >>Aceite Tormento Infinito
    .target Master Apothecary Faranell::2055
step
    .isOnQuest 97292
    .goto 1458/0,442.700,1419.600,50,0
    .goto 1458/0,458.900,1438.600,50,0
    .goto 1458/0,438.800,1468.700
    .use 281327 >>|cRXP_WARN_Usar|r |T134837:0|t[|cRXP_LOOT_Soro Sibilante|r] |cRXP_WARN_perto do verme no andar de cima|r
    .complete 97292,1
step
    .isQuestComplete 97292
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97292 >>Entregue Tormento Infinito
    .target Master Apothecary Faranell::2055
step << Rogue
    #completewith RuinsRogueTurnin
    #optional
    .isQuestComplete 92401
    .zoneskip Undercity,1
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fly Sepulcher >>Voe para Sepulcher se você tem a rota de voo
    .target Michael Garrett::4551
step << Rogue
    #label RuinsRogueTurnin
    #optional
    .isQuestComplete 92401
    .goto 1421/0,1579.600,461.700
    >>|cRXP_WARN_Entregue apenas agora para uma melhoria de mão-esquerda|r
    >>Entre nos esgotos e siga a estrada para Sepulcher se você não conseguir voar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabitha Heartweaver::250686|r
    .turnin 92401 >>Entregue Amedrontado Request
    .target Tabitha Heartweaver::250686

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 18-21 Savanas
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1
#next 21-22 Caverna Ululante

step
    #completewith FoodandWater2
    .hs >> Use sua Pedra de Regresso para ir à Encruzilhada
    .use 6948
    .bindlocation 380,1
    .zoneskip The Barrens
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281,865,905
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith Ignition
    >>Mate todos os |cRXP_ENEMY_Raptores|r que encontrar. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3031.48,461.91
    >>Use o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparecer após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantir o primeiro ataque quando ele aparecer, pule esta etapa|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << !Tauren !Hunter !Shaman/Skyborne
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não apareceu após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não garantiu o primeiro ataque, abandone Echeyaki, volte à cidade e aceite a missão novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3031.48,461.91
    >>Use o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Pegue o |cRXP_LOOT_Pelego de Echeyaki|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << !Tauren !Hunter !Shaman/Skyborne
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 894 >>Entregue A rebimboca
    .accept 900 >>Aceite A rebimboca
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2686.95,842.290
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Cuidado! Dois inimigos aparecerão após você fechar a válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2675.80,842.290
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Um inimigo aparecerá após você fechar a válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2679.86,830.80
    >>Clique na |cRXP_PICK_Válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2686.95,825.40
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 900 >>Entregue A rebimboca
    .accept 901 >>Aceite A rebimboca
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2731.54,909.850
    >>Mate |cRXP_ENEMY_Engenhoqueiro Faísca|r no edifício. Pegue a |cRXP_LOOT_Chave do Painel|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step << !Tauren !Hunter !Shaman/Skyborne
    #label SamophlangeComplete
    .goto 1413/1,-2686.95,825.40
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 901 >>Entregue A rebimboca
    .accept 902 >>Aceite A rebimboca
step << !Tauren !Hunter !Shaman/Skyborne
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r no Charco de Lodo
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    .accept 858 >>Aceite Ignição
    .target Wizzlecrank's Shredder
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith next
    +|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Feitor Grelha|r |cRXP_WARN_ou|r |cRXP_ENEMY_Fera Lodosa|r |cRXP_WARN_estiverem presentes. São inimigos raros e fortes de nível 19|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Mate |cRXP_ENEMY_Supervisor Rancatraca|r. Pegue sua |cRXP_LOOT_Chave|r
    >>|cRXP_WARN_Ele patrulha de um lado a outro da plataforma|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
    .turnin 858 >>Entregue Ignição
    .accept 863,1 >>Aceite A fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step << !Tauren !Hunter !Shaman/Skyborne
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isso inicia uma escolta. Garanta que sua vida esteja cheia|r
    .accept 863,1 >>Aceite A fuga
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step << !Tauren !Hunter !Shaman/Skyborne
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_Dois|r |cRXP_ENEMY_Mercenários da Empreendimentos S.A.|r |cRXP_WARN_aparecerão quando o retalhador subir ao terreno elevado. Mate-os e aguarde a cena final|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step << !Tauren !Hunter !Shaman/Skyborne
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-2666.500,719.600,90,0
    .goto 1413/1,-2965.400,1009.100,90,0
    >>Mate |cRXP_ENEMY_Raptores|r. Pegue suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith
    .subzone 380 >>Vá para A Encruzilhada
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Raptores ladrões
    .accept 3281 >>Aceite Prata roubada
    .target Gazrog
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Garrafoices furiosos
    .target Sergra Darkthorn
step
    #optional
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destrua o|r |T134227:0|t[Berrante de Echeyaki] |cRXP_WARN_você não precisa mais disso|r
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Voe para Vila Catraca
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 2382 >>Entregue Wrenix da Vila Catraca
    .accept 2381 >>Aceite Saqueando os saqueadores
    .target Wrenix the Wretched
step << Rogue
    .goto 1413/1,-3773.24,-841.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aparato Mercadotrônico do Wrenix|r
    >>|cRXP_WARN_Obtenha um|r |T134059:0|t[B.E.C.A.] |cRXP_WARN_e |r |T134065:0|t[Ferramentas de Ladrões]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 902 >>Entregue A rebimboca
    .turnin 863 >> Entregue A fuga
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Entregue A fortuna do mineiro
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 902 >>Entregue A rebimboca
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Entregue A fortuna do mineiro
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .turnin 863 >> Entregue A fuga
    .target Sputtervalve
    .isQuestComplete 863
step
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 865 >>Aceite Chifres de raptor
    .target Mebok Mizzyrix
step << skip
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Suco de Melão] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Venda os itens de lixo
    --.collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_Pule no navio, desça ao segundo andar e aumente sua perícia em Arrombamento para pelo menos 70|r
step << Rogue
    .goto 1413/1,-3958.68,-1457.54
    >>Ao atingir 70 em Arrombamento, vá ao andar inferior do navio e abra |cRXP_PICK_A Joia dos Mares do Sul|r
    >>|cRXP_WARN_Use|r |T134059:0|t[B.E.C.A.] |cRXP_WARN_no|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto 1413/1,-3819.86,-1714.95
    >>Pegue o |cRXP_PICK_Caixote|r no chão
    .complete 888,2 --Telescopic Lens (1)
step
    .goto 1413/1,-3723.59,-1741.30
    >>Pegue o |cRXP_PICK_Caixote|r no chão
    .complete 888,1 --Shipment of Boots (1)
step
    #optional
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step
    #optional
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r e |cRXP_LOOT_Penas|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-3192.60,-1919.67,60,0
    .goto 1413/1,-3258.47,-2027.09
    >>Pegue a |cRXP_PICK_Prata Roubada|r no chão
    .complete 3281,1 --Stolen Silver (1)
step
    #optional
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #optional
    #completewith Verog
    >>Pegue |cRXP_LOOT_Cogumelos Carregados|r ao redor do Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>Clique na |cRXP_PICK_Rachadura Borbulhante|r debaixo d'água
    .complete 877,1 --Test the Dried Seeds (1)
step
    #optional
    #completewith next
    #loop
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Mate |cRXP_ENEMY_Kolkar|r ao redor do oásis. Pegue suas |cRXP_LOOT_Braçadeiras|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto 1413/1,-2742.68,-1208.23
    >>Mate |cRXP_ENEMY_Verog|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode aparecer sempre que um |cRXP_ENEMY_Kolkar|r é morto|r
    >>|cRXP_WARN_Em um servidor muito populoso ou recém-lançado, o melhor é esperar no ponto onde ele aparece|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto 1413/1,-3023.38,-1234.58,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    .goto 1413/1,-3000.07,-1208.23,30,0
    .goto 1413/1,-2959.54,-1196.75,30,0
    .goto 1413/1,-2953.46,-1241.34,30,0
    .goto 1413/1,-2977.78,-1304.17,30,0
    .goto 1413/1,-3029.46,-1324.44,30,0
    .goto 1413/1,-3066.95,-1311.61,30,0
    .goto 1413/1,-3059.86,-1264.31,30,0
    >>Pegue |cRXP_LOOT_Cogumelos Carregados|r ao redor do Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #completewith LakotaMani1
    >>Mate |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step
    .goto 1413/1,-2707.22,-1502.130
    >>Clique no |cRXP_PICK_Ninho de Raptor Azul|r. Mate mais |cRXP_ENEMY_Garrafoices Helióscamo|r se você não tiver uma |T132914:0|t[Pena de Helióscamo]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-2692.02,-1533.89
    >>Clique no |cRXP_PICK_Ninho de Raptor Vermelho|r. Mate mais |cRXP_ENEMY_Garrafoices Helióscamo|r se você não tiver uma |T132914:0|t[Pena de Helióscamo]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto 1413/1,-2648.44,-1527.13
    >>Clique no |cRXP_PICK_Ninho de Raptor Amarelo|r. Mate mais |cRXP_ENEMY_Garrafoices Helióscamo|r se você não tiver uma |T132914:0|t[Pena de Helióscamo]
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto 1413/1,-2375.86,-1787.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cadáver Arrebentado|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #optional
    #completewith CampTArrive
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Cifre de Lagarto Trovejante|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>Mate |cRXP_ENEMY_Lakota'mani|r. Pegue o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule este passo se você não conseguir encontrá-lo ou matá-lo. Pode voltar depois para matá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'mani
    .use 5099
    .unitscan Lakota'mani
    .xp <18,1
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >> Vá ao Acampamento Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto 1413/1,-1995.86,-2376.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Byula|r
    .home >>Defina sua Pedra de Regresso ao Acampamento Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 883 >>Entregue Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em guerra
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fp Camp Taurajo >> Aprenda a rota de voo de Acampamento Taurajo << !Tauren
    .fly Crossroads >>Voe para A Encruzilhada
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >> Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entregue Perdida em combate
    .accept 95774 >>Aceite Her Name Is Olgra
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>Entregue O Oásis Estagnado
    .accept 880 >>Aceite Seres alterados
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>Entregue Garrafoices furiosos
    .accept 3261 >>Aceite Jorn Vidente do Céu
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>Entregue Prata roubada
    .target +Gazrog
    .goto 1413/1,-2639.32,-436.00
step
    #optional
    #completewith Hezrul
    .destroy 5165 >>|cRXP_WARN_Destrua quaisquer|r |T132914:0|t[Penas de Helióscamo] |cRXP_WARN_que ainda tiver|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Treine suas magias de classe
    .target Loganaar
    .xp <18,1
    .xp >20,1
    .cooldown item,6948,>0
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Treine suas magias de classe
    .target Loganaar
    .xp <20,1
    .cooldown item,6948,>0
step
    #completewith JornSkyseerTurnin
    .hs >> Use a Pedra de Regresso para voltar ao Acampamento Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step
    #completewith JornSkyseerTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Voe para o Acampamento Taurajo
    .subzoneskip 378
    .target Devrak
    .cooldown item,6948,<0
step
    .goto 1413/1,-1995.86,-2375.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Byula|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 3261 >>Entregue Jorn Vidente do Céu
    .accept 882 >>Aceite Ishamuhale
    .target Jorn Skyseer
step
    #completewith LakotaMani2
    >>Mate os |cRXP_ENEMY_Razormane Raiders|r. Saqueie-os para |cRXP_LOOT_Olgra's Adornments|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
	#completewith Adornments
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #completewith Adornments
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
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>Mate |cRXP_ENEMY_Lakota'mani|r. Pegue o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule esta etapa se não conseguir encontrá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'mani
    .use 5099
    .unitscan Lakota'mani
step
    #label Adornments
    #loop
    .goto 1413/1,-2241.200,-1988.500,0
    .goto 1413/1,-2241.200,-1988.500,50,0
    .goto 1413/1,-2346.200,-1788.600,50,0
    .goto 1413/1,-2458.300,-1824.400,50,0
    .goto 1413/1,-2381.000,-2061.000,50,0
    >>Mate os |cRXP_ENEMY_Razormane Raiders|r. Saqueie-os para |cRXP_LOOT_Olgra's Adornments|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #loop
    .goto 1413/1,-2515.7,-2076.41,0
    .goto 1413/1,-2515.7,-2076.41,60,0
    .goto 1413/1,-2518.74,-2125.73,60,0
    .goto 1413/1,-2517.72,-2223.7,60,0
    .goto 1413/1,-2486.31,-2254.1,60,0
    .goto 1413/1,-2494.42,-2282.48,60,0
    .goto 1413/1,-2531.91,-2272.34,60,0
    .goto 1413/1,-2571.43,-2295.31,60,0
    .goto 1413/1,-2620.07,-2285.18,60,0
    .goto 1413/1,-2625.14,-2245.32,60,0
    .goto 1413/1,-2755.86,-2082.49,60,0
    .goto 1413/1,-2813.62,-2054.12,60,0
    .goto 1413/1,-2811.59,-2004.12,60,0
    .goto 1413/1,-2783.22,-1949.39,60,0
    .goto 1413/1,-2747.75,-1889.26,60,0
    .goto 1413/1,-2709.24,-1913.59,60,0
    .goto 1413/1,-2706.2,-1948.72,60,0
    .goto 1413/1,-2687.96,-1973.04,60,0
    .goto 1413/1,-2678.84,-2016.28,60,0
    .goto 1413/1,-2584.6,-2050.74,60,0
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
step << Warlock
    #loop
	.goto 1413/1,-2515.7,-2076.41,60,0
	.goto 1413/1,-2518.74,-2125.73,60,0
	.goto 1413/1,-2517.72,-2223.7,60,0
	.goto 1413/1,-2486.31,-2254.1,60,0
	.goto 1413/1,-2494.42,-2282.48,60,0
	.goto 1413/1,-2531.91,-2272.34,60,0
	.goto 1413/1,-2571.43,-2295.31,60,0
	.goto 1413/1,-2620.07,-2285.18,60,0
	.goto 1413/1,-2625.14,-2245.32,60,0
	.goto 1413/1,-2755.86,-2082.49,60,0
	.goto 1413/1,-2813.62,-2054.12,60,0
	.goto 1413/1,-2811.59,-2004.12,60,0
	.goto 1413/1,-2783.22,-1949.39,60,0
	.goto 1413/1,-2747.75,-1889.26,60,0
	.goto 1413/1,-2709.24,-1913.59,60,0
	.goto 1413/1,-2706.2,-1948.72,60,0
	.goto 1413/1,-2687.96,-1973.04,60,0
	.goto 1413/1,-2678.84,-2016.28,60,0
	.goto 1413/1,-2584.6,-2050.74,60,0
    .xp 19+9500 >> Farme até 9500+/21300 xp
step
    #loop
    .goto 1413/1,-2532.92,-1965.61,0
    .goto 1413/1,-2532.92,-1965.61,50,0
    .goto 1413/1,-2449.83,-1953.45,50,0
    .goto 1413/1,-2377.88,-2018.31,50,0
    .goto 1413/1,-2397.14,-2108.84,50,0
    .goto 1413/1,-2345.46,-2187.21,50,0
    .goto 1413/1,-2415.38,-2179.78,50,0
    >>Mate |cRXP_ENEMY_Eletrossauros|r. Pegue um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #completewith next
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r
    >>|cRXP_WARN_Cuidado, eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto 1413/1,-2847.06,-1879.13,0
    .goto 1413/1,-2847.06,-1879.13,50,0
    .goto 1413/1,-2859.22,-1804.81,50,0
    .goto 1413/1,-2833.88,-1749.41,50,0
    .goto 1413/1,-2881.51,-1723.74,50,0
    .goto 1413/1,-2932.18,-1698.06,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>Acabe de matar |cRXP_ENEMY_Pinotes|r. Pegue seus |cRXP_LOOT_Rins|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .isQuestTurnedIn 819
step
    #loop
    .goto 1413/1,-3183.48,-2015.61,0
    .goto 1413/1,-2646.42,-1529.16,0
    .goto 1413/1,-3183.48,-2015.61,90,0
    .goto 1413/1,-2646.42,-1529.16,90,0
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
    .goto 1413/1,-3010.20,-1319.04,0
    .goto 1413/1,-3010.20,-1319.04,40,0
    .goto 1413/1,-2959.54,-1292.69,40,0
    .goto 1413/1,-2953.46,-1239.31,40,0
    .goto 1413/1,-2998.04,-1192.02,40,0
    .goto 1413/1,-3050.74,-1225.13,40,0
    .goto 1413/1,-3066.95,-1260.93,40,0
    .goto 1413/1,-3052.76,-1319.710,40,0
    >>Mate |cRXP_ENEMY_Mordeliscas do Oásis|r no lago e ao redor dele. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zevra|r. Pegue a |cRXP_LOOT_Carcaça Fresca de Zevra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto 1413/1,-3427.70,-436.67
    .use 10338 >>Use a |T134368:0|t[|cRXP_LOOT_Carcaça Fresca de Zevra|r] na árvore morta para invocar |cRXP_ENEMY_Ishamuhale|r. Mate-o e pegue sua |cRXP_LOOT_Presa|r
    >>|cRXP_WARN_A Carcaça dura apenas 30 minutos!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .subzone 392 >> Vá para Vila Catraca
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 2381 >>Entregue Saqueando os saqueadores << Rogue
    .target Wrenix the Wretched
step << Rogue
    #optional
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix, o Ignóbil|r
    .turnin 2381 >>Entregue Saqueando os saqueadores
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 888 >>Entregue Butim Roubado
    .target Gazlowe
step
    .goto 1413/1,-3720.300,-920.000
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 92706 >>Aceite WANTED: Bruuz
    .group << Rogue/Warrior
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .turnin 865 >>Entregue Chifres de raptor
    .accept 1491 >>Aceite Bebidas inteligentes
    .target Mebok Mizzyrix
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 821 >>Entregue Barril Vazio do Chen
    .target Brewmaster Drohn
    .isQuestComplete 821
step << Warrior
    .goto 1413/1,-3680.02,-982.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xaveco|r
    .vendor >>Compre |T134583:0|t[|cRXP_FRIENDLY_Calças Encadeadas Potentes|r] dele se estiver disponível
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto 1413/1,-3675.96,-985.28
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
    #loop
    .goto 1413/1,-3911.900,-1049.200
    .goto 1413/1,-3951.600,-1093.500
    .goto 1413/1,-4012.800,-1081.800
    .goto 1413/1,-3973.000,-1028.700
    >>Mate |cRXP_PICK_Bruuz|r (nível 20 Élite) no mar perto de Ponto de Ancoragem
    >>|cRXP_WARN_Isto é difícil! Forme um grupo se possível|r << !Rogue !Warrior
    >>|cRXP_WARN_Tente levá-lo até Ratchet para os guardas que ajudarão, mas certifique-se de causar pelo menos 50% de dano!|r
    .complete 92706,1 --Kill Bruuz
    .mob Bruuz
    .isOnQuest 92706
    .group << Rogue/Warrior
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 92706 >>Entregue WANTED: Bruuz
    .target Gazlowe
    .group << Rogue/Warrior
    .isQuestComplete 92706
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Operador de Grua Mafuá|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step << Hunter
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Aceite Apresente-se a Kadrak
    .target Thork
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r e |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 899 >>Entregue Consumido pelo ódio
    .turnin 95774 >>Entregue Her Name Is Olgra
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>Entregue Seres alterados
    .accept 1489 >>Aceite Hamuul Runa Totem
    .accept 3301 >>Aceite Mura Runa Totem
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>|cRXP_WARN_Descarte as|r |T133721:0|t[Presas de Javatusco Costagulha] |cRXP_WARN_restantes|r
    .itemcount 5085,1
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >>Defina sua Pedra de Regresso em A Encruzilhada
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .dungeon DM
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Aceite Ovo tipo extra
    .target Korran
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .trainer >> Treine suas magias de classe
    .accept 1507 >>Aceite Devorador de Almas
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Tormento (Grau 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto 1454/1,-4340.53,1839.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Entregue Devorador de Almas
    .accept 1508 >>Aceite Cazul cego
    .target Cazul
step << Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto 1454/1,-4199.99,1717.49
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
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4610.95,2135.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Treine as magias do seu mascote
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Treine suas magias de classe
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Orgrimmar,47.98,45.93
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Treine suas magias de classe
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Orgrimmar,47.98,45.93
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Treine suas magias de classe
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Treine suas magias de classe
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Treine suas magias de classe
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto 1454/1,-4460.31,1685.31
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
    .goto 1411/1,-4648.55,1321.88,40 >>Suba a Torre do Zepelim
    .zone Stranglethorn Vale >>Pegue o zepelim para o Vale do Espinhaço
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto 1434/0,273.91,-12406.71,40,0
    .goto 1434/0,492.15,-12499.03,40,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,1004.57,-12317.37,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >> Nade de Grom'Gol diretamente para oeste até o Arrecife Torpe, depois para norte em direção a Cerro Oeste
    >>|cRXP_WARN_Mantenha distância da ilha. Siga o ponto indicado por segurança!|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Vá ao Farol de Cerro Oeste
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 103 >> Aceite A chama não pode apagar
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 103 >> Entregue A chama não pode apagar
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >> Aceite O mar não está para peixe
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mate |cRXP_ENEMY_Velho Olho-turvo|r. Pegue sua |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrulha ao longo da Praia Grande. Se não o encontrar por lá, espere que ele aparecerá no acampamento de |cRXP_ENEMY_Murlocs|r mais ao sul|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >> Entregue O mar não está para peixe
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandone A chama não pode apagar
    .dungeon DM
step
    #label EnterDM
    .goto 1415/0,1596.2,-11768.97,8,0
    .goto 1415/0,1596.2,-11780.71,8,0
    .goto 1415/0,1606.76,-11797.13,8,0
    .goto 1415/0,1582.12,-11799.48,8,0
    .goto 1415/0,1596.2,-11813.56,15,0
    .goto 1415/0,1631.4,-11846.41,15,0
    .goto 1415/0,1649.0,-11898.04,15,0
    .goto 1415/0,1659.56,-11919.16,15,0
    .goto 1415/0,1698.28,-11891.0,15,0
    .goto 1415/0,1744.04,-11881.61
    .zone 291 >> Atravesse o portal para entrar na instância das Minas Mortas
    .dungeon DM
step
    .hs >> Use a Pedra de Regresso para voltar aos Sertões após concluir as Minas Mortas
    .zone The Barrens >> Chegue aos Sertões
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
	.fly Crossroads >> Voe para A Encruzilhada
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Entregue Notícias de Dogran
    .accept 1510 >>Aceite Notícias de Dogran
    .target Gazrog
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Hermógenes|r
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
step
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Voe para o Acampamento Taurajo
    .target Devrak
step
    .goto 1413/1,-2515.7,-2076.41
    >>Mate |cRXP_ENEMY_Javatuscos Costagulha|r. Pegue |T134128:0|t[|cRXP_LOOT_Estilhaço de Sangue|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 878 >>Entregue Tribos em guerra
    .accept 5052 >>Aceite Estilhaços de Sangue de Agamaggan
    .turnin 5052 >>Entregue Estilhaços de Sangue de Agamaggan
    .target Mangletooth
step
    #completewith IshamuhaleTurnin
    .goto 1413/1,-1891.48,-2391.93,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    +|cRXP_WARN_Use seus|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_para receber benefícios. Guarde pelo menos 4 para depois|r << Tauren/Shaman/Orc Warrior/Troll Warrior
    +|cRXP_WARN_Use seus|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_para receber benefícios. Guarde pelo menos 4 para depois|r << !Tauren !Shaman !Warrior/Undead
    +|cRXP_WARN_Desative as funções de conclusão automática de addons como Questie ou Leatrix Plus para isso!|r
    .target Mangletooth
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .turnin 883 >>Entregue Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .target Jorn Skyseer
step
    #completewith SleepingBag1
    >>Mate |cRXP_ENEMY_Lagartos Trovejantes|r. Pegue seu |cRXP_LOOT_Sangue|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    #completewith LizardBlood
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    >>Mate |cRXP_ENEMY_Owatanka|r. Pegue a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r]
    >>|cRXP_WARN_Use a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
    .use 5102
    .unitscan Owatanka
step
    #label SleepingBag1
    .goto The Barrens,46.361,73.904
    >>Clique em |cRXP_PICK_Burned-Saída Remains|r no chão
    .accept 79007 >> Aceite ...e aquele bilhete que você encontrou
step
    #label LizardBlood
    #loop
    .goto 1413/1,-1868.18,-2498.00,0
    .goto 1413/1,-1868.18,-2498.00,60,0
    .goto 1413/1,-1861.08,-2561.51,60,0
    .goto 1413/1,-1842.84,-2618.94,60,0
    .goto 1413/1,-1888.44,-2650.690,60,0
    .goto 1413/1,-2004.98,-2683.80,60,0
    .goto 1413/1,-2133.67,-2590.56,60,0
    .goto 1413/1,-2182.31,-2479.76,60,0
    .goto 1413/1,-2232.98,-2478.41,60,0
    .goto 1413/1,-2273.51,-2456.79,60,0
    .goto 1413/1,-2356.60,-2513.54,60,0
    .goto 1413/1,-2428.55,-2517.60,60,0
    .goto 1413/1,-2406.26,-2424.36,60,0
    .goto 1413/1,-2363.70,-2395.98,60,0
    .goto 1413/1,-2253.24,-2345.99,60,0
    >>Mate |cRXP_ENEMY_Lagartos Trovejantes|r. Pegue seu |cRXP_LOOT_Sangue|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 884 >>Entregue Owatanka
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .target Jorn Skyseer
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Mate |cRXP_ENEMY_Owatanka|r. Pegue a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r]
    >>|cRXP_WARN_Use a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1919.86,-2652.04,0
    .goto 1413/1,-1919.86,-2652.04,60,0
    .goto 1413/1,-2096.18,-2531.11,60,0
    .goto 1413/1,-2341.4,-2352.74,60,0
    .goto 1413/1,-1982.68,-2217.62,60,0
    .goto 1413/1,-1775.96,-2235.86,60,0
    >>Mate |cRXP_ENEMY_Filhote de Falcotrom|r ou |cRXP_ENEMY_Falcotrom Raspa-nuvens|r. Pegue suas |cRXP_LOOT_Asas de Falcotrom|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 884 >>Entregue Owatanka
    .turnin 913 >>Entregue O grito do Falcotrom
    .accept 874 >>Aceite Mahren Vidente do Céu
    .accept 6382 >>Aceite A Caçada do Vale Gris << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 913 >>Entregue O grito do Falcotrom
    .accept 874 >>Aceite Mahren Vidente do Céu
    .accept 6382 >>Aceite A Caçada do Vale Gris << Hunter
    .target Jorn Skyseer
step
    #optional
    .xp 20 >>Suba até o nível 20
step << !Tauren !Skyborne
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .aura 16618 >>|cRXP_WARN_Se você tem 10|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r |cRXP_WARN_sobrando, use-os para obter|r |T136022:0|t[Espírito do vento] |cRXP_WARN_de|r |cRXP_FRIENDLY_Denterroto|r
    >>|cRXP_WARN_Pule esta etapa se tiver a rota de voo de Penhasco do Trovão|r
    .itemcount 5075,10
    .target Mangletooth
    .train 2645,1 << Shaman --skip if ghost wolf trained
    .train 5118,1 << Hunter --skip if cheetah trained
step << !Tauren !Skyborne
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Entre em Mulgore
step << !Tauren !Skyborne
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Pegue o elevador para Penhasco do Trovão
    >>|cRXP_WARN_Se tiver a rota de voo de Penhasco do Trovão, voe para lá|r
step << Tauren/Skyborne
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Undead Warrior/Orc Warrior/Troll Warrior/Troll Shaman/Orc Shaman
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Aprenda a usar Maças de Duas Mãos
    .train 227 >>Treine Cajados
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
step << Rogue !Skyborne
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Aprenda Maças de Uma Mão
    .target Ansekhwa
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Compre |r |T135423:0|t[Machado de Arremesso Mortal] |cRXP_BUY_dele|r
    .collect 3137,1,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step << Rogue
    #optional
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo] 
    .train 6761 >>Treine suas magias de classe
    .target Boarton Shadetotem
    .xp <16,1
    .xp >20,1
step << Rogue
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo] 
    .train 1943 >>Treine suas magias de classe
    .target Boarton Shadetotem
    .xp <20,1
step
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposite os |T134128:0|t[Estilhaços de Sangue]
    .bankdeposit 5059 >> Deposite a |T132938:0|t[Garra de Escavação]
    .target Chesmu
    .isOnQuest 868
step
    #optional
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposite os |T134128:0|t[Estilhaços de Sangue]
    .target Chesmu
    .isNotOnQuest 868
step
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon !WC
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Vá ao Platô dos Espíritos e entre nos Poços da Visão
step
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >> Aceite Até que a morte nos separe
    .target Clarice Foster
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 853 >> Entregue Boticária Zaqueia
    .accept 962 >> Aceite Ofídeas
    .target Apothecary Zamah
    .isOnQuest 853
step
    #label ZamahTurnin
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Zaqueu|r
    .accept 962 >> Aceite Ofídeas
    .target Apothecary Zamah
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milo Gálico|r
    .accept 5644 >> Aceite Peste Devoradora << Undead Priest
    .accept 5642 >> Aceite Guarda Sombria << Troll Priest
    .trainer >> Treine suas magias de classe
    .target Miles Welsh
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Shymm|r
    .train 12051 >> Treine suas magias de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Shymm|r
    .train 2138 >> Treine suas magias de classe
    .target Archmage Shymm
    .xp <22,1
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alodan|r
    .train 1866 >>Treine suas magias de classe
    .target Alodan the Hopeful 
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alodan|r
    .train 1026 >>Treine suas magias de classe
    .target Alodan the Hopeful 
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tigor|r |cRXP_WARN_fora|r
    .train 2645 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tigor|r |cRXP_WARN_fora|r
    .train 8498 >> Treine suas magias de classe
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Aceite Clamor da água
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Crie|r |T133688:0|t[Bandagem de Linho Grossa] |cRXP_WARN_até atingir nível 80 ou mais de profissão|r
    .skill firstaid,<1,1
step
    .goto 1456/1,206.88,-997.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Pand Junta Pedras|r
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
    #completewith NaraWild
    .goto 1456/1,-212.71,-1065.010,80 >> Vá ao Platô dos Anciãos
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entregue Devolvendo a algibeira perdida
    .target Rahauro
    .isOnQuest 5724
step
    #optional
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Entregue Testando a força do inimigo
    .target Rahauro
    .isQuestComplete 5723
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .turnin 1489 >> Entregue Hamuul Runa Totem
    .accept 1490 >> Aceite Nara Juba Agreste
    .target Arch Druid Hamuul Runetotem
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >> Entregue Nara Juba Agreste
    .accept 914 >> Aceite Líderes da Presa
    .target Nara Wildmane
step
    #label NaraWild
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >> Entregue Nara Juba Agreste
    .target Nara Wildmane
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .trainer >>Treine suas magias de classe
    .accept 27 >>Aceite Uma lição a aprender
    .accept 98340 >>Aceite O Espírito do Grande Felino
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 27 >>Entregar Uma Lição a Aprender
    .accept 28 >>Aceitar Prova do Lago
    .turnin 98340 >>Entregue O Espírito do Grande Felino
    .accept 98341 >>Aceite O Espírito do Grande Felino Etéreo << Skyborne
    .accept 98405 >>Aceite O Espírito do Grande Felino << !Skyborne
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto 1450/1,-2634.67,7634.43
    .collect 15877,1,28,1 >>Pegue o |cRXP_PICK_Recipiente de Adorno|r no fundo do lago para obter um |T134125:0|t[Adorno de Altar]
    >>|cRXP_WARN_Só mergulhe quando estiver diretamente acima do Adorno|r
step << Druid
    .goto 1450/1,-2221.48,7844.89
    .cast 19719 >> |cRXP_WARN_Use o|r |T134125:0|t[Adorno de Altar] |cRXP_WARN_no Santuário de Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto 1450/1,-2224.25,7874.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 28 >> Entregar Prova do Lago
    .accept 30 >> Aceitar Prova do Leão Marinho
    .target Tajarri
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espírito do Grande Felino|r
    .turnin 98405 >>Entregue O Espírito do Grande Felino
    .accept 98342 >>Aceite O Espírito do Grande Felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Entregue O Espírito do Grande Felino Etéreo
    .accept 98404 >>Aceite O Espírito do Grande Felino Etéreo
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Vá para Tempestofúria Barrow Dens
step << Druid
    >>Vá fundo na caverna, caminhe pela ponte, procure uma estátua de gato em um nicho e clique no pequeno orbe ao lado da estátua
    >>Saqueie |cRXP_LOOT_Relic of the Garra|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98342,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Clique no pequeno orbe ao lado da estátua de gato
    >>Saqueie |cRXP_LOOT_Relic of the Silent Sombra|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98342,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Clique no pequeno orbe ao lado da estátua de gato
    >>Saqueie |cRXP_LOOT_Relic of the Dentada|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98342,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Espírito do Grande Felino|r
    .turnin 98342 >>Entregue O Espírito do Grande Felino
    .accept 98739 >>Aceite Bênçãos do Espírito do Grande Felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Entregue O Espírito do Grande Felino Etéreo
    .accept 98738 >>Aceite Bênçãos do Espírito do Grande Felino Etéreo
step << Druid
    #completewith next
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .turnin 98738 >>Entregue Bênçãos do Espírito do Grande Felino Etéreo << Skyborne
    .turnin 98739 >>Entregue Bênçãos do Espírito do Grande Felino << !Skyborne
    .accept 98362 >>Aceite Penhasco do Trovão
    .target Dendrite Starblaze::11802
step << Druid
    .hs >> Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bonthen Vento do Prado|r
    .fly Thunder Bluff >> Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem|r
    .turnin 98362 >>Entregue Penhasco do Trovão
    .target Turak Runetotem
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >> Vá ao Platô dos Caçadores
step << Hunter
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urek Chifre Troante|r
    .train 5118 >> Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urek Chifre Troante|r
    .train 5118 >> Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa Chifre Troante|r
    .train 24494 >> Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >> Vá ao Platô dos Caçadores
step << Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm Totem da Fúria|r
    .train 845 >>Treine suas magias de classe
    .accept 1823 >>Aceite Fale com Ruga
    .target Torm Ragetotem
step << Rogue
    .goto 1456/1,-36.52,-1244.05
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
    +|cRXP_FRIENDLY_Se for mais barato, compre uma arma verde na Casa de Leilões|r
step << Warrior
    .goto 1456/1,-38.71,-1255.32
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
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Etu Totem da Fúria|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
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
    .xp <21,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
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
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kina Chifre Troante|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dela|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kina Chifre Troante
step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .zoneskip The Barrens
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Leaders
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
step << Warlock
    #label EnterSTM2
    #completewith DogranNews
    .zone Stonetalon Mountains >> Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step << Warlock
    #completewith DogranNews
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Suba pelo caminho à esquerda
step << Warlock
    #label DogranNews
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entregue Notícias de Dogran
    .accept 1511 >>Aceite Trago do Ken'zigla
    .target Ken'zigla

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 21-22 Caverna Ululante
#next RestedXP Horda 22-30\22-24 Eira dos montes
#version 11
#group RestedXP Forever — Guia de Masmorra Eterna (H)
#subgroup Masmorra Guia 1-22
--#groupid RXP-SRGCE-H1

step
    #sticky
    #completewith EnterWC
    .goto 1414/1,-2216.5,-742.43,30 >>Agora procure um grupo para a Caverna Ululante
step << Warlock
    #completewith EnterWC
    .zone The Barrens >>Corra de volta para as Savanas
step
    #completewith EnterWC
    .subzone 387 >> Vá ao Oásis das Águas Claras
    .isQuestTurnedIn 851
step
    #loop
    #label Hezrul
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    .goto 1413/1,-2001.94,-965.69,50,0
    >>Encontre e mate |cRXP_ENEMY_Hezrul Marca de Sangue|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulha ao redor do lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>Suba a montanha junto à pedra de encontro da Caverna Ululante
    >>|cRXP_WARN_Siga a seta com atenção para chegar à caverna escondida|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Eles ficam acima da entrada da Caverna Ululante|r
    .accept 1486 >> Aceite Pelegos anormais
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >> Aceite Erradicação de Anormais
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
step
    #completewith EnterWC
    +|cRXP_WARN_É recomendado dividir as missões "Serpentbloom" e "Deviate Hides" se você está fazendo apenas 1 execução|r
    >>|cRXP_WARN_Não haverá |cRXP_PICK_Serpentbloom|r e |cRXP_LOOT_Deviate Hides|r suficientes para todos|r
    .isOnQuest 962,1486
step
    #optional
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Mate todas as |cRXP_ENEMY_Feras Anormais|r que encontrar. Pegue seus |cRXP_LOOT_Pelegos|r
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Mate |cRXP_ENEMY_Ectoplasmas|r. Pegue sua |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #label MadMagg
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2124.50,-730.16,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    .goto 1414/1,-2124.50,-730.16,30,0
    >>Mate |cRXP_ENEMY_Maluc Insano|r. Saqueie-o para obter o |cRXP_LOOT_Xerez de 99 Anos|r
    >>|cRXP_WARN_Ele demora para reaparecer. Pule esta etapa se não conseguir encontrá-lo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >> Atravesse o portal para entrar na instância da Caverna Ululante
step
    #optional
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #optional
    #completewith GlowingShard
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #optional
    #completewith GlowingShard
    >>Mate |cRXP_ENEMY_Ectoplasmas|r. Pegue sua |cRXP_LOOT_Essência|r
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_LOOT_Pelegos|r |cRXP_WARN_suficientes para todos|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
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
step
    #label Gems
    >>Mate |cRXP_ENEMY_Lorde Cobrahn|r, |cRXP_ENEMY_Lady Sucurina|r, |cRXP_ENEMY_Lorde Pítias|r e |cRXP_ENEMY_Lorde Serpentis|r. Pegue suas |cRXP_LOOT_Gemas|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Discípulo de Naralex|r na entrada da Caverna Ululante. Escolte-o em segurança até |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
step
    #label GlowingShard
    >>Ao chegar a |cRXP_FRIENDLY_Naralex|r, você será atacado por duas ondas de inimigos e, por fim, por |cRXP_ENEMY_Mutanus, o Devorador|r
    >>Mate-o, pegue o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r] e use-o para iniciar a missão
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Aceite A lasca faiscante
    .use 10441
    .mob Mutanus the Devourer
step
    #optional
    #completewith DeviateRaptors
    >>Mate |cRXP_ENEMY_Ectoplasmas|r. Pegue sua |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #optional
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #optional
    #completewith Ectoplasms
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
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
step
    #label DeviateRaptors
    >>Mate |cRXP_ENEMY_Raptores Anormais|r. Pegue seus |cRXP_ENEMY_Pelegos|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
step
    #label Ectoplasms
    >>Mate |cRXP_ENEMY_Ectoplasmas|r. Pegue sua |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
step
    #optional
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    >>|cRXP_WARN_Lance|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-las no minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    >>Pegue as|cRXP_PICK_Ofídeas|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem concluir esta missão se fizerem apenas uma incursão. Não há|r |cRXP_PICK_Ofídeas|r |cRXP_WARN_suficientes para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith GShard
    .subzone 380 >>Saia do seu grupo enquanto estiver dentro de WC para ser teleportado para o cemitério de Encruzilhada (após 1 minuto)
    .subzoneskip 392
step
    #completewith Cholaruk
    >>|cRXP_WARN_Verifique com seu grupo se eles querem fazer "Chol'aruk the Ravener"|r (nível 20 Élite)
    .isQuestAvailable 97003
step
    .goto 1413/1,-2711.800,-350.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gur'ak|r
    .accept 97003 >>Aceite Chol'aruk the Ravener
    .target Gur'ak
step
    #completewith next
    .goto 1413/1,-3257.300,-113.100,15,0
    .goto 1413/1,-3217.100,-147.700,10,0
    .goto 1413/1,-3236.000,-178.100,10,0
    .goto 1413/1,-3259.700,-205.400,10,0
    .goto 1413/1,-3226.900,-237.900,10 >>Vá para |cRXP_ENEMY_Chol'aruk the Ravener|r no fundo da caverna
step
    #label Cholaruk
    .goto 1413/1,-3206.800,-220.200
    >>Mate |cRXP_ENEMY_Chol'aruk the Ravener|r. Saqueie-o pela sua |cRXP_LOOT_Cabeça|r
    .complete 97003,1 --Chol'aruk's Head (x1)
    .mob Chol'aruk the Ravener
    .isOnQuest 97003
step
    #completewith GShard
    .subzone 392 >>Vá para Vila Catraca
    .subzoneskip 1699,1 --Thorn Hill
step
    #completewith GShard
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Voe para Vila Catraca
    .target Devrak
    .subzoneskip 392
    .subzoneskip 1699 --Thorn Hill
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .turnin 1491 >>Entregue Bebidas inteligentes
    .accept 1221 >> Aceite Tubérculos de Folha-azul
    .target Mebok Mizzyrix
    .isQuestComplete 1491
step
    #optional
    .goto The Barrens,62.370,37.615
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 1221 >> Aceite Tubérculos de Folha-azul
    .target Mebok Mizzyrix
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Operador de Grua Mafuá|r
    .turnin 959 >> Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .turnin 1529 >>Entregue Clamor da água
    .accept 1530 >>Aceite Clamor da água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .turnin 1528 >>Entregue Clamor da água
    .accept 1530 >>Aceite Clamor da água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .accept 1530 >>Aceite Clamor da água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .accept 1530 >>Aceite Clamor da água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step
    #optional << Shaman
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .turnin 874 >>Entregue Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target Mahren Skyseer
    .isOnQuest 874
step
    #optional
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .accept 873 >>Aceite Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 874
step
    #loop
    .goto 1413/1,-4031.64,-1537.94,0
    .goto 1413/1,-3937.4,-1789.27,0
    .goto 1413/1,-3821.88,-2004.8,0
    .goto 1413/1,-4041.78,-1446.73,50,0
    .goto 1413/1,-4031.64,-1537.94,50,0
    .goto 1413/1,-3937.4,-1789.27,50,0
    .goto 1413/1,-3821.88,-2004.8,50,0
    >>Mate |cRXP_ENEMY_Isha Awak|r. Pegue o |cRXP_LOOT_Coração de Isha Awak|r
    >>|cRXP_WARN_Ele pode aparecer em quatro locais ao longo da costa|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
    .isQuestTurnedIn 874
step
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .turnin 873 >> Entregue Isha Awak
    .target Mahren Skyseer
    .isQuestComplete 873
step
    #completewith TopofWCturnins
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step
    .goto 1413/1,-2711.800,-350.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gur'ak|r
    .accept 97003 >>Aceite Chol'aruk the Ravener
    .target Gur'ak
    .isQuestComplete 97003
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #completewith CounterattackTurnin2
    +|cRXP_WARN_A próxima missão é muito difícil. Recomenda-se formar um grupo. Você pode atrair |cRXP_ENEMY_Senhor da Guerra Krom'zar|r ao redor do prédio onde está o responsável pela missão, mantendo distância|r
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto 1413/1,-1884.39,-289.38
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Ele pode levar até 3 minutos para aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #label CounterattackTurnin2
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #optional
    #completewith TopofWCturnins
    .abandon 855 >>Abandone Braçadeiras de centauro
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >> Suba a montanha
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .turnin 6981 >> Entregue A lasca faiscante
    .accept 3369 >> Aceite Em pesadelos
    .target Falla Sagewind
    .isOnQuest 6981
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .accept 3369 >> Aceite Em pesadelos
    .target Falla Sagewind
    .isQuestTurnedIn 6981
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Eles ficam acima da entrada da Caverna Ululante|r
    .turnin 1486 >> Entregue Pelegos anormais
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >> Entregue Erradicação de Anormais
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
step
    #optional
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Ele fica acima da entrada da Caverna Ululante|r
    .turnin 1487 >> Entregue Erradicação de Anormais
    .target Ebru
    .isQuestComplete 1487
step
    #optional
    #label TopofWCturnins
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Ele fica acima da entrada da Caverna Ululante|r
    .turnin 1486 >> Entregue Pelegos anormais
    .target Nalpak
    .isQuestComplete 1486
step
    #completewith WCEnd
    .hs >> Use a Pedra de Regresso para voltar ao Penhasco do Trovão
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 914 >>Entregue Líderes da Presa
    .target Nara Wildmane
    .isQuestComplete 914
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .turnin 3369 >> Entregue Em pesadelos
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> Vá ao Platô dos Espíritos e entre nos Poços da Visão
    .isQuestComplete 962
step
    #label WCEnd
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 962 >>Entregue Ofídeas
    .target Apothecary Zamah
    .isQuestComplete 962
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alodan|r
    .train 1866 >>Treine suas magias de classe
    .target Alodan the Hopeful 
    .xp <20,1
    .xp >22,1
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alodan|r
    .train 1026 >>Treine suas magias de classe
    .target Alodan the Hopeful 
    .xp <22,1
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
step << Warlock/Shaman
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para o Acampamento Taurajo
    .target Tal
    .zoneskip The Barrens
step << Warlock
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Logmar|r
    .turnin 1511 >>Entregue Trago do Ken'zigla
    .accept 1515 >>Aceite O cativeiro de Dogran
    .target Grunt Logmar
step << Warlock
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruto Dogran|r
    .turnin 1515 >>Entregue O cativeiro de Dogran
    .accept 1512 >>Aceite Presente do amor
    .target Grunt Dogran
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>> Vá ao sul em direção a |cRXP_FRIENDLY_Salma|r
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma|r
    .turnin 1530 >>Entregue Clamor da água
    .accept 1535 >>Aceite Clamor da água
    .target Brine
step << Warlock/Shaman
    #completewith next
    .subzone 378 >>Volte em direção ao Acampamento Taurajo
step << Warlock/Shaman
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa Chifre Troante|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .turnin 1512 >>Entregue Presente do amor
    .accept 1513 >>Aceite A vinculação
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Use o|r |T133290:0|t[Pingente de Dogran] |cRXP_WARN_no Círculo de Evocação|r
    .use 6626
step << Warlock
    .goto 1454/1,-4377.13,1804.77
    >>Mate |cRXP_ENEMY_Súcubo Evocado|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .turnin 1513 >>Entregue A vinculação
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Treine suas magias de classe
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Treine suas magias de classe
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Compre uma|r |T135640:0|t[Jambiya] |cRXP_BUY_dele se você não tiver uma adaga|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 8676 >>Aprenda |T132282:0|t[Emboscar]
    .train 1943 >>Aprenda |T132302:0|t[Ruptura]
    .train 1856 >>Aprenda |T132331:0|t[Sumir]
    .train 1725 >>Aprenda |T132289:0|t[Distração]
    .train 1785 >>Aprenda |T132320:0|t[Furtividade Grau 2]
    .accept 2460 >>Aceite A saudação dos Mão Despedaçada
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>Após |cRXP_FRIENDLY_Shenthul|r fazer a saudação, selecione-o e digite /salute
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entregue A saudação dos Mão Despedaçada
    .accept 2458 >>Aceite Missão secreta
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre|r |T134387:0|t[Pó de Clarão] |cRXP_BUY_dele|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Treine suas magias de classe
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Treine suas magias de classe
    .target Pephredo
    .xp <24,1
step << Mage
    .goto 1454/1,-4222.85,1474.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thuul|r no topo da cabana
    .train 3567 >> Aprenda |T135759:0|t[Teleporte: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Entregue Guarda Sombria
    .trainer >> Treine suas magias de classe
    .target Ur'kyo
step << Undead Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Treine suas magias de classe
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >> Entre nos Sertões pela saída oeste
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >> Vá em direção ao Charco de Lodo
step << Druid
    .goto 1413/1,-3119.64,1050.38
    >>Abra o |cRXP_PICK_Cofre Estranho|r na água para obter o |T133443:0|t[Meio-pingente da Agilidade Aquática]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto 1413/1,-3021.35,1214.56
	+Selecione |cRXP_FRIENDLY_Capataz Arruela|r, use seu |T134536:0|t[Sinalizador] DUAS VEZES e digite /salute
    >>|cRXP_WARN_Cuidado! NÃO se aproxime até ele ficar amigável ou ele atacará você!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto 1413/1,-2995.0,1236.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capataz Arruela|r
    .turnin 2458 >>Entregue Missão secreta
    .accept 2478 >>Aceite Missão: possível, mas não provável
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto 1413/1,-2930.15,1209.15
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
    .goto 1413/1,-2922.04,1224.69
    >>Entre na Torre dos Ladinos e mate |cRXP_ENEMY_Peões|r, |cRXP_ENEMY_Patrulheiros|r e |cRXP_ENEMY_Vigias|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>No topo da torre, você encontrará |cRXP_ENEMY_Capataz-chefe Puzik Gallywix|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Emboscar] |cRXP_WARN_para reduzir a vida dele à metade. Use|r |T132155:0|t[Esfaquear] |cRXP_WARN_para recuperar energia e use|r |T136205:0|t[Evasão]
	>>|cRXP_WARN_Lembre-se de usar uma Poção e|r |T132819:0|t[Chá de Cardo] |cRXP_WARN_se necessário|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Use Arrombamento para abrir o |cRXP_PICK_Cofre de Gallywix|r e pegue a |cRXP_LOOT_Mistura|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto 1413/1,-3591.86,1328.06,120 >>Vá em direção à Mina Veio do Pedregulho
step << skip --Rogue/Druid
    #hardcore
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Pule na viga de madeira. Faça um Logout Skip saindo e entrando no jogo. Volte a Orgrimmar se não conseguir|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Rogue/Druid
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue/Druid
    #hardcore
    #completewith flytoORG
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada oeste
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entregue Missão: possível, mas não provável
    .accept 2479 >>Aceite A ajuda de Hinoto
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre |r |T133849:0|t[Poeira da Decomposição] |cRXP_BUY_e|r |T132793:0|t[Ampolas Vazias] |cRXP_BUY_dele|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior/Undead Paladin
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprenda a usar Machados de Duas Mãos
    .target Hanashi
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Treine suas magias de classe
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Treine suas magias de classe
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Treine as magias do seu mascote
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compre |r |T135423:0|t[Machado de Arremesso Mortal] |cRXP_BUY_dele|r
    .collect 3137,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_Se tiver|r |T134437:0|t[Antipeçonha]|cRXP_WARN_, use uma para se curar do|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    #optional
    .destroy 8051 >> |cRXP_WARN_Descarte o|r |T134536:0|t[Sinalizador] |cRXP_WARN_da bolsa, pois não precisa mais dela|r
    .destroy 8066 >> |cRXP_WARN_Destrua o|r |T134374:0|t[Apito do Arruela] |cRXP_WARN_da bolsa, pois não precisa mais dele|r
step
    #optional
    #label flytoORG
]])