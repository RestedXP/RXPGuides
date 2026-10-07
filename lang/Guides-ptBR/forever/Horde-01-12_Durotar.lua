if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 1-6 Durotar
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado a Orcs e Trolls. Escolha o guia correspondente à zona inicial do seu personagem|r
step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Aceite O seu lugar no mundo
    .target Kaltunk
step << Warrior/Shaman/Warlock/Mage/Priest
    #completewith next
    +|cRXP_WARN_Mate |cRXP_ENEMY_Mosquetuscos|r. Saqueie-os até ter itens que somem 35 moedas de cobre ao vendê-los a um vendedor (incluindo sua armadura)|r << Warlock
    +|cRXP_WARN_Mate |cRXP_ENEMY_Mosquetuscos|r. Saqueie-os até ter itens que somem 60 moedas de cobre ao vendê-los a um vendedor (incluindo sua armadura)|r << Maget
    +|cRXP_WARN_Mate |cRXP_ENEMY_Mosquetuscos|r. Saqueie-os até ter itens que somem 50 moedas de cobre ao vendê-los a um vendedor (incluindo sua armadura)|r << Priest
    +|cRXP_WARN_Mate |cRXP_ENEMY_Mosquetuscos|r. Saqueie-os até ter itens que somem 10 moedas de cobre ao vendê-los a um vendedor (incluindo sua armadura)|r << Warrior/Shaman
    .goto 1411/1,-4281.07,-720.15,30,0 << Warlock/Mage/Priest
    .goto 1411/1,-4299.05,-494.9,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto 1411/1,-4214.45,-623.92.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Aceite Familiares Vis
    .target Ruzan
step << Warrior/Shaman
    .goto 1411/1,-4214.45,-565.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Venda os lixos
    .target Duokna
    .money >0.01
step
    .goto 1411/1,-4198.05,-605.59,12,0 << !Warrior !Shaman
    .goto 1411/1,-4198.58,-602.41,12,0 << Warrior/Shaman
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Entregue O seu lugar no mundo
    .accept 788 >>Aceite Dentes cortantes
    --.accept 97279 >>Accept Wayward Weapons
    .target Gornek
    --97279 not worth doing, bad xp loot quest, no followup
step << Warrior/Shaman
    .goto 1411/1,-4198.05,-605.59,10,0
    .goto 1411/1,-4230.31,-639.43 << Warrior
    .goto 1411/1,-4203.87,-623.92 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Aprenda |T132333:0|t[Brado de Batalha] << Warrior
    .train 8017 >>Aprenda |T136086:0|t[Arma Trinca-pedra] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Vá até |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Venda os lixos
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Venda os lixos
    .target Hraug
step << Warlock
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Aprenda |T135817:0|t[Imolação]
    .target Nartok
step << Hunter/Mage/Priest
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Hunter
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,10,6394,1 << !Hunter --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << skip
    #completewith Boars
    >>Pegue as |cRXP_PICK_Armas de Treino Abandonada|r que estão no chão
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith next
    .goto 1411/1,-4266.26,-563.29,25,0
    >>Mate |cRXP_ENEMY_Mosquetuscos|r a caminho do Covil da Lâmina Ardente
    >>|cRXP_WARN_Tente atingir o nível 2 antes de chegar lá|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto 1411/1,-4357.74,-180.47,100 >>Vá para o Covil da Lâmina Ardente
    .isOnQuest 1485
step << Warlock
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Mate |cRXP_ENEMY_Familiares Torpes|r. Saqueie-os para pegar |cRXP_LOOT_Cabeças de Demônio Familiar Vil|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto 1411/1,-4266.26,-563.29,35,0 << !Warlock
    .goto 1411/1,-4283.18,-512.53,45,0 << !Warlock
    >>Mate |cRXP_ENEMY_Mosquetuscos|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Aceite Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto 1411/1,-4109.22,-546.370
    >>Mate |cRXP_ENEMY_Sarkoth|r. Saqueie-o para pegar |cRXP_LOOT_Garra Mutilada de Sarkoth|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Entregue Sarkoth
    .accept 804 >>Aceite Sarkoth
    .target Hana'zua
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    >>Mate |cRXP_ENEMY_Mosquetuscos|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #loop
	.goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 3+685 >>Mate inimigos até atingir 685+/1400 de xp
    .mob Mottled Boar
step
    #optional
    #label Boars
step << skip
    .goto 1411/1,-4260.000,-404.200
    >>Pegue as |cRXP_PICK_Armas de Treino Abandonada|r que estão no chão
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Mate |cRXP_ENEMY_Mosquetuscos|r. Saqueie-os até ter itens que somem 1 moeda de prata ao vendê-los a um vendedor|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    #label Duokna2
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Venda os lixos
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto 1411/1,-4214.400,-624.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Entregue Familiares Vis
    .accept 1499 >>Aceite Familiares torpes
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t [Invocar Diabrete]
step << Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 1499 >>Entregue Familiares torpes
    .accept 794 >>Aceite Medalhão da Lâmina Ardente
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto 1411/1,-4198.05,-605.59,12,0 << Warlock
    .goto 1411/1,-4198.58,-602.41,12,0 << !Warlock
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Entregue Dentes cortantes << Shaman
    .turnin 788 >>Entregue Dentes cortantes << !Shaman
    .accept 789 >>Aceite A ferroada do escorpídeo
    .accept 2383 >>Aceite Pergaminho simples << Orc Warrior
    .accept 3065 >>Aceite Tabuleta Simples << Troll Warrior
    .accept 3082 >>Aceite Tabuleta cinzelada << Troll Hunter
    .accept 3083 >>Aceite Tabuleta cifrada << Troll Rogue
    .accept 3084 >>Aceite Tabuleta Inscrita em Runas << Troll Shaman
    .accept 3085 >>Aceite Tabuleta consagrada << Troll Priest
    .accept 3086 >>Aceite Tabuleta glífica << Troll Mage
    .accept 3087 >>Aceite Pergaminho cinzelado << Orc Hunter
    .accept 3088 >>Aceite Pergaminho cifrado << Orc Rogue
    .accept 3089 >>Aceite Pergaminho inscrito em runas << Orc Shaman
    .accept 3090 >>Aceite Pergaminho maculado << Orc Warlock
    .turnin 804,1 >>Entregue Sarkoth << Shaman
    .turnin 804 >>Entregue Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Vá até |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entregue Tabuleta cifrada << Troll Rogue
    .turnin 3088 >>Entregue Pergaminho cifrado << Orc Rogue
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entregue Tabuleta cifrada << Troll Rogue
    .turnin 3088 >>Entregue Pergaminho cifrado << Orc Rogue
    .target Rwag
step << skip
    .goto 1411/1,-4102.400,-588.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kzan Cortarrasga|r no fundo da caverna
    .turnin 97279 >>Entregue Armas extraviadas
    .target Kzan Thornslash
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kzan|r
    .vendor >>Venda os itens sem utilidade. Venda sua arma se isso lhe der dinheiro suficiente para comprar um |T135139:0|t[Cajado Curto] (97 moedas de cobre)
    .target Kzan Thornslash
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step << Shaman
    .goto 1411/1,-4102.600,-588.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kzan|r
    >>|cRXP_BUY_Compre um|r |T135139:0|t[Cajado Curto] |cRXP_BUY_dele|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0097
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step << Rogue/Warrior
    .goto 1411/1,-4106.000,-593.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norzsh|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Norzsh
step << Warlock
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Venda os lixos
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entregue Pergaminho maculado
    .train 172 >>Aprenda |T136118:0|t[Corrupção]
    .target Nartok
step
    #label Galgar
    .goto 1411/1,-4221.85,-561.52,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Aceite A surpresa de sabra do Galgar
    .target Galgar
step << !Rogue !Shaman
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Venda os lixos
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entregue Tabuleta inscrita em runas << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entregue Tabuleta glífica << Troll
    .train 1459 >>Aprenda |T135932:0|t[Intelecto Arcano]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .accept 792 >>Aceite Familiares torpes
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Encarregado Thazz'ril|r
    .accept 5441 >>Aceite Peões preguiçosos
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Pegue as |cRXP_LOOT_Sabras|r perto dos Cactos
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto 1411/1,-4340.82,-628.50,20,0
    .goto 1411/1,-4375.71,-507.590,45,0
    .goto 1411/1,-4467.19,-506.53,45,0
    >>|cRXP_WARN_Use o|r |T133486:0|t[Cassetete do Encarregado] |cRXP_WARN_nos |r|cRXP_FRIENDLY_Peões Preguiçosos|r adormecidos
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Mate |cRXP_ENEMY_Escorpídeos Operários|r. Saqueie-os para pegar as |cRXP_LOOT_Caudas de Escorpídeo Operário|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Mate |cRXP_ENEMY_Familiares Torpes|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto 1411/1,-4177.96,-248.5,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto 1411/1,-4146.24,-583.03,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto 1411/1,-4177.96,-315.13,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4442.34,-347.2,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    >>Mate |cRXP_ENEMY_Escorpídeos Operários|r. Saqueie-os para pegar as |cRXP_LOOT_Caudas de Escorpídeo Operário|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto 1411/1,-4340.82,-628.50,0
	.goto 1411/1,-4340.82,-628.50,25,0
	.goto 1411/1,-4375.71,-507.590,25,0
	.goto 1411/1,-4467.19,-506.53,25,0
	.goto 1411/1,-4433.88,-329.93,25,0
	.goto 1411/1,-4452.38,-232.640,25,0
	.goto 1411/1,-4283.71,-228.76,25,0
	.goto 1411/1,-4220.26,-209.73,25,0
	.goto 1411/1,-4144.65,-269.65,25,0
	.goto 1411/1,-4125.62,-321.12,25,0
	.goto 1411/1,-4015.64,-371.53,25,0
    >>|cRXP_WARN_Use o|r |T133486:0|t[Cassetete do Encarregado] |cRXP_WARN_nos |r|cRXP_FRIENDLY_Peões Preguiçosos|r adormecidos
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 4 >>Mate inimigos até atingir o nível 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entregue A surpresa de sabra do Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Venda os lixos
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto 1411/1,-4198.58,-602.41,12,0
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Entregue A ferroada do escorpídeo << Shaman
    .turnin 789 >>Entregue A ferroada do escorpídeo << !Shaman
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Ranago Arauto da Terra|r
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Aceite Clamor da Terra
    .goto 1411/1,-4204.4,-629.91
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >>Aprenda |T135846:0|t[Seta de Gelo]
    .target Mai'ah
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.01
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Treine suas magias de classe
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.021
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 792 >>Entregue Familiares torpes
    .accept 794 >>Aceite Medalhão da Lâmina Ardente
    .target Zureetha Fargaze
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Aprenda |T132337:0|t[Investida]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Aprenda |T132337:0|t[Investida]
    .target Frang
    .money <0.01
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Encarregado Thazz'ril|r
    .turnin 5441 >>Entregue Peões preguiçosos
    .accept 6394 >>Aceite A picareta de Thazz'ril
    .target Foreman Thazz'ril
step
    #completewith next
    .xp 4+1720 >>Mate inimigos até atingir 1720+/2100 de xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto 1411/1,-4324.43,-480.10,0
	.goto 1411/1,-4259.92,-411.01,25,0
	.goto 1411/1,-4279.48,-402.55,25,0
	.goto 1411/1,-4333.94,-360.95,25,0
	.goto 1411/1,-4335.53,-294.68,25,0
	.goto 1411/1,-4321.25,-243.220,25,0
	.goto 1411/1,-4366.20,-253.44,25,0
	.goto 1411/1,-4391.05,-328.52,25,0
	.goto 1411/1,-4440.75,-319.36,25,0
	.goto 1411/1,-4462.43,-405.370,25,0
	.goto 1411/1,-4398.98,-411.71,25,0
	.goto 1411/1,-4324.43,-480.10,25,0
    >>Pegue as |cRXP_LOOT_Sabras|r perto dos Cactos
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 4+1720 >>Mate inimigos até atingir 1720+/2100 de xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 5 >>Mate inimigos até atingir o nível 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto 1411/1,-4360.38,-175.18,30 >>Entre na caverna
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto 1411/1,-4361.44,-144.16,15,0
    .goto 1411/1,-4311.74,-113.14,15,0
    .goto 1411/1,-4274.19,-87.76,10 >>Siga em direção a |cRXP_LOOT_Picareta de Thazz'ril|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Mate |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para pegar |cRXP_LOOT_Casco de Espreitador Vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto 1411/1,-4274.19,-87.76
    >>Pegue a |cRXP_LOOT_Picareta de Thazz'ril|r junto a parede
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto 1411/1,-4220.26,-59.56
    >>Mate |cRXP_ENEMY_Yarrog Ruinassombra|r. Saqueie dele o |cRXP_LOOT_Medalhão da Lâmina Ardente|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto 1411/1,-4220.26,-59.56,0
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    >>Mate |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para pegar |cRXP_LOOT_Casco de Espreitador Vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1680 >>Mate inimigos até atingir 1680+/2800 de xp << !Shaman
    .xp 5+690 >>Mate inimigos até atingir 690+/2800 de xp << Shaman
    .isQuestTurnedIn 4402
step
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1300 >>Mate inimigos até atingir 1300+/2800 de xp << !Shaman
    .xp 5+310 >>Mate inimigos até atingir 310+/2800 de xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto 1411/1,-4326.01,-41.23
    .goto 1411/1,-4793.96,233.36,30 >>|cRXP_WARN_Faça um Atalho por Logout posicionando seu personagem na borda da pedra até parecer que está flutuando, depois desconecte-se e entre novamente|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLIQUE AQUI para um exemplo
step
    #softcore
    #completewith next
    .goto 1411/1,-4326.01,-41.23
    .deathskip >>|cRXP_WARN_Morra e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r perto da seta|r
    .target Anjo da Cura
step
    #softcore
    #label Betrayers
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    .accept 784 >>Aceite Aniquile os invasores
    .target Gar'thok
step
    .goto 1411/1,-4665.400,311.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Torka|r
    .accept 96825 >>Aceite A fruta que fura
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Siga em direção à torre
step
    #softcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Viaje para cima da torre em direção a Férrano Escarnecenho
step
    #softcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Férrano Escarnecenho|r
    .accept 791 >>Aceite Carregue suas tralhas
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Aprenda |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step -- (Barracks)
    .goto 1411/1,-4815.200,306.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Aceite Pela honra
    .target Turroc
step
    #completewith next
    .hs >>Use a Pedra do Regresso para voltar ao Vale das Provações
    .use 6948
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Encarregado Thazz'ril|r
    .turnin 6394 >>Entregue A picareta de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entregue A surpresa de sabra do Galgar
    .target Galgar
step
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Venda os lixos
    .target Duokna
    .isOnQuest 794
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Ranago Arauto da Terra|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target +Shikrik
    .goto 1411/1,-4203.87,-623.92
    .turnin 1516 >>Entregue Clamor da Terra
    .accept 1517 >>Aceite Clamor da Terra
    .target +Canaga Earthcaller
    .goto 1411/1,-4204.4,-629.91
    .xp <6,1
step << Shaman
    .goto 1411/1,-4204.4,-629.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ranago Arauto da Terra|r
    .turnin 1516 >>Entregue Clamor da Terra
    .accept 1517 >>Aceite Clamor da Terra
    .target Canaga Earthcaller
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 794 >>Entregue Medalhão da Lâmina Ardente
    .accept 805 >>Aceite Apresente-se na Aldeia Sen'jin
    .target Zureetha Fargaze
step
    .goto 1411/1,-4223.800,-631.000
    >>Clique no |cRXP_PICK_Diário Perdido|r em cima do barril
    .accept 96652 >>Aceite O aventureiro
    .isQuestTurnedIn 794
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >>Aceite Em favor da espiritualidade
	.train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Ken'jai
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Mai'ah
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .target Frang
    .money <0.02
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Vá até |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .train 1776 >>Aprenda |T132155:0|t[Esfaquear]
    .target Rwag
    .money <0.02
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Compre |r |T133738:0|t[Grimório de Pacto de Sangue] |cRXP_BUY_dele|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Venda os lixos
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Nartok
    .money <0.02
step << Warlock
    #optional
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto 1411/1,-4255.16,-645.07,25,0
    .goto 1411/1,-4245.64,-691.95,25,0
    .goto 1411/1,-4146.77,-787.12,12,0
    .goto 1411/1,-4120.86,-813.21,8,0
    .goto 1411/1,-4220.79,-841.76,10,0
    .goto 1411/1,-4266.26,-853.39,15,0
    .goto 1411/1,-4295.87,-883.36,25 >>Siga em direção ao |cRXP_PICK_Santuário Xamânico|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Use a|r |T134743:0|t[Sapta da Terra]
    .use 6635
step << Shaman
    #label CallOE1
    .goto 1411/1,-4290.59,-878.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação|r
    .turnin 1517 >>Entregue Clamor da Terra
    .accept 1518 >>Aceite Clamor da Terra
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ranago Arauto da Terra|r
    .goto 1411/1,-4204.4,-629.91
    .turnin 1518 >>Entregue Clamor da Terra
    .target Canaga Earthcaller
step << Shaman
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
step
    #label Leave
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto 1411/1,-4600.96,-603.82,25 >>Saia do Vale das Provações
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 6-10 Durotar
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto 1411/1,-4715.17,-599.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Aceite O fardo de um peão
    .target Ukor
step
    #completewith next
    .subzone 367 >>Vá para Aldeia Sen'jin
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larri Presador|r
    >>|cRXP_WARN_Ele faz uma pequena ronda|r
    .accept 786 >>Aceite Frustrando o ataque dos Kolkar
    .target Lar Prowltusk
step
    .goto 1411/1,-4885.200,-852.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xar'Ti|r
    .accept 97223 >>Aceite Matriarca Garrassangre
    .target Xar'Ti
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vel'rin Presa|r, |cRXP_FRIENDLY_Mestre Vornal|r e |cRXP_FRIENDLY_Mestre Gadrin|r
    .accept 817 >>Aceite Presa prática
    .accept 96821 >>Aceite Dando no pé
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
    .accept 818 >>Aceite Um espírito solvente
    .accept 97225 >>Aceite Imagens de loas esquecidos
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.270
    .turnin 805 >>Entregue Apresente-se na Aldeia Sen'jin
    .accept 808 >>Aceite O crânio de Minshina
    .accept 826 >>Aceite Zalazane
    .accept 823 >>Aceite Apresente-se a Orgnil
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    #completewith next
    .goto 1411/1,-4931.96,-815.32,8,0
    .goto 1411/1,-4939.89,-793.12,8 >>Entre na cabana grande
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pa'zula|r 
    >>|cRXP_WARN_Isso desbloqueará uma missão. Pule esta etapa se você já tiver 2 profissões|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]
    .target Pa'zula
step << !Rogue !Warrior
    .goto 1411/1,-4960.000,-791.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pa'zula|r 
    .accept 96873 >>Aceite Uma Dor no Pescoço
    .target Pa'zula
    .skill enchanting,<1,1
step << Rogue
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compre um|r |T132414:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 3131,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os itens sem utilidade. Venda sua arma se isso lhe der dinheiro suficiente para comprar uma|T135145:0|t[Bengala] (4p 79c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135641:0|t[Estilete] (3p 81c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4p 60c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135421:0|t[Machadinha] (5p 13c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2p 71c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto 1411/1,-4939.36,-838.941
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Un'Thuwa
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto 1411/1,-4722.57,-1117.42,40,0
    >>Percorra pela praia. Mate |cRXP_ENEMY_Rastejantes|r e |cRXP_ENEMY_Makruras|r. Saqueie-os para pegar |cRXP_LOOT_Muco|r e |cRXP_LOOT_Olhos|r. Você não precisa concluir esta etapa aqui.
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto 1411/1,-4722.57,-1117.42,75 >>Vá até o fim da praia
    .isOnQuest 818
step
    #completewith Bonfire
    >>Mate |cRXP_ENEMY_Mourejantes Kolkar|r e os |cRXP_ENEMY_Vanguardeiros Kolkar|r. Saqueie-os para pegar os |cRXP_LOOT_Retalhos de Lona|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    .goto 1411/1,-4653.84,-983.47,30 >>Entre na base dos Kolkar
    .isOnQuest 786
step << Priest
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Comece a juntar 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_enquanto faz missões em Durotar. Elas serão usadas para fabricar sua varinha mais adiante|r
    >>|cRXP_WARN_Pule esta etapa se você já comprou uma varinha ou puder conseguir uma barata na Casa de Leilões.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Comece a juntar 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_enquanto faz missões em Durotar. Elas serão usadas para fabricar sua varinha mais adiante|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Tome cuidado se|r |cRXP_ENEMY_Senhor da Guerra Kolkanis|r |cRXP_WARN_estiver por perto, ele é um inimigo raro de nível 9. Talvez você precise usar uma |r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Warlord Kolkanis
step
    .goto 1411/1,-4596.20,-1057.14
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão dentro da tenda
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão
    .goto 1411/1,-4482.52,-917.90
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão
    .goto 1411/1,-4406.91,-974.30
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #softcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Isso inicia uma missão de escolta|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Pal'juh|r não estiver lá, fique à vontade para pular esta etapa e morrer na fogueira para voltar à Aldeia Sen'jin|r
    .accept 99123,1 >>Aceite Perdida nas sombras
    .target Pal'juh
step
    #hardcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_Isso inicia uma missão de escolta|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Pal'juh|r não estiver lá, fique à vontade para pular esta etapa|r
    .accept 99123,1 >>Aceite Perdida nas sombras
    .target Pal'juh
step
    #softcore
    .goto 1411/1,-4681.300,-986.800
    >>Escolte |cRXP_FRIENDLY_Pal'juh|r para fora do Penedo de Kolkar
    .complete 99123,1 --
    .target Pal'juh
    .isOnQuest 99123
step << skip
    #softcore
    .goto 1411/1,-4417.49,-985.23,-1
    .goto 1411/1,-5002.81,-774.08,-1
    .deathskip >>Morra na fogueira e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 786
step << skip
    #hardcore
    #completewith next
    .goto 1411/1,-4656.48,-981.35,30 >>Saia da base dos Kolkar
    .isQuestComplete 786
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larri Presador|r
    >>|cRXP_WARN_Ele faz uma pequena ronda|r
    .turnin 786,1 >>Entregue Frustrando o ataque dos Kolkar << Shaman
    .turnin 786 >>Entregue Frustrando o ataque dos Kolkar << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step
    .goto 1411/1,-4920.900,-814.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Vornal|r
    .turnin 99123 >>Entregue Perdida nas sombras
    .target Master Vornal
    .isQuestComplete 99123
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os itens sem utilidade. Venda sua arma se isso lhe der dinheiro suficiente para comprar uma|T135145:0|t[Bengala] (4p 79c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135641:0|t[Estilete] (3p 81c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4p 60c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135421:0|t[Machadinha] (5p 13c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2p 71c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T135641:0|t [Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #optional
    .goto 1411/1,-4920.86,-813.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Vornal|r
    .turnin 818 >>Entregue Um espírito solvente
    .target Master Vornal
    .isQuestComplete 818
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .vendor >>Venda os lixos
    .collect 159,20,784,1
    .target K'waii
step << !Warlock !Mage !Priest
    .goto 1411/1,-4903.41,-786.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele se tiver dinheiro suficiente|r << Warrior/Rogue
    .vendor >>Venda os lixos
    .target Hai'zan
step
    #softcore
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larri Presador|r
    >>|cRXP_WARN_Ele faz uma pequena ronda|r
    .turnin 786,1 >>Entregue Frustrando o ataque dos Kolkar << Shaman
    .turnin 786 >>Entregue Frustrando o ataque dos Kolkar << !Shaman
    .target Lar Prowltusk
step
    #completewith next
    >>Mate |cRXP_ENEMY_Tocaieiros Crista-sombra|r e |cRXP_ENEMY_Rastejantes Crista-sombra|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step
    .goto 1411/1,-4565.700,-192.300
    >>Mate |cRXP_ENEMY_Ukorsbane|r (elite). Pegue dele |T133628:0|t[|cRXP_LOOT_Mochila Perdida de Ukor|r]
    >>|cRXP_WARN_Isso é difícil! Forme um grupo se possível. Pule esta etapa se não conseguir matá-la|r
    .collect 275722,1,96876 --Ukor's Lost Pack (x1)
    .accept 96876 >>Aceite Ukor's Perdida Pack
    .mob Ukorsbane
step
    .goto 1411/1,-4710.400,-209.400
    >>Mate |cRXP_ENEMY_Tocaieiros Crista-sombra|r e |cRXP_ENEMY_Rastejantes Crista-sombra|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step --camp quest
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Entregue O aventureiro
    .accept 96604 >>Aceite Vida ao ar livre
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #hardcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Aceite Vida ao ar livre
    .target Brakk
step
    #hardcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Digite /sit perto da fogueira e espere um minuto até você receber o bônus "Benefícios de Acampamento" |r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sente-se (/sit)
    .timer 59,Aguarde o RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #hardcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Entregue Vida ao ar livre
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Aceite Introdução ao Acampamento: Cozinha
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #hardcore
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #hardcore
    #label Betrayers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Orgnil Chaganalma|r, |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Cozinheiro Torka|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .accept 806 >>Aceite Tempestades sombrias
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .accept 784 >>Aceite Aniquile os invasores
    .accept 837 >>Aceite Invasão
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Aceite Quebrar alguns ovos
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Cozinheiro Torka|r
    .train 2550 >>Aprenda Culinária
    .turnin 96655 >>Entregue Introdução ao Acampamento: Cozinha
    .target Cook Torka
step
    #hardcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Siga em direção à torre
step
    #hardcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Viaje para cima da torre em direção a Férrano Escarnecenho
step
    #hardcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Férrano Escarnecenho|r
    .accept 791 >>Aceite Carregue suas tralhas
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Aprenda |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >>Vá para Bastilha Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >>Vá para Bastilha Tiragarde
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #completewith AgedEnvelope
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step --south/west of keep
    .goto 1411/1,-4992.700,-234.400
    >>Pegue o |cRXP_PICK_Arco do Saqueador|r que está no chão
    .complete 96822,1 --|1/1 Raider's Bow
step --center in keep
    .goto 1411/1,-4994.900,-182.300
    >>Pegue o |cRXP_PICK_Machado de Batalha do Saqueador|r que está no chão
    .complete 96822,2 --|1/1 Raider's Battleaxe
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Tome cuidado se|r |cRXP_ENEMY_Comandante da Vigia Zalaphil|r |cRXP_WARN_estiver por perto, ele é um inimigo raro de nível 9. Talvez você precise usar uma |r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto 1411/1,-5124.95,-243.92,8,0
    .goto 1411/1,-5115.96,-251.68,8,0
    .goto 1411/1,-5111.21,-232.29,8,0
    .goto 1411/1,-5097.46,-232.29,8 >>Siga em direção ao segundo andar da fortaleza
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Mate o |cRXP_ENEMY_Tenente Bento|r. Saqueie-o para pegar a |cRXP_LOOT_Chave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    .goto 1411/1,-5128.13,-231.58,5,0
    .goto 1411/1,-5126.01,-221.36,5,0
    .goto 1411/1,-5124.42,-229.82,5,0
    .goto 1411/1,-5131.83,-229.82,5,0
    .goto 1411/1,-5131.83,-222.42,5,0
    .goto 1411/1,-5096.40,-223.83
    >>|cRXP_WARN_Suba as escadas da fortaleza|r
    >>Abra o |cRXP_PICK_Baú do Bento|r. Saqueie-o para pegar o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r]
    >>Use o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r] para iniciar a missão
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Aceite As ordens do almirante
    .use 4881
step  --northern tower
    #label AgedEnvelope
    .goto 1411/1,-4951.500,-59.600
    >>Pegue o |cRXP_PICK_Escudo do Saqueador|r que está no chão
    .complete 96822,3 --|1/1 Raider's Shield
step
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2520 >>Mate inimigos até atingir 2520+/4500 de xp
    .isNotOnQuest 823
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2200 >>Mate inimigos até atingir 2200+/4500 de xp
    .isOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2070 >>Mate inimigos até atingir 2070+/4500 de xp
    .isNotOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+1750 >>Mate inimigos até atingir 1750+/4500 de xp
    .isOnQuest 823
step << skip
    #softcore
    #completewith RazorTurnins1
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >>Morra na torre ao norte, fora de Bastilha Tiragarde, e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r
step --camp quest
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Entregue O aventureiro
    .accept 96604 >>Aceite Vida ao ar livre
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #softcore
    #optional
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Aceite Vida ao ar livre
    .target Brakk
step
    #softcore
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Digite /sit perto da fogueira e espere um minuto até você receber o bônus "Benefícios de Acampamento" |r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sente-se (/sit)
    .timer 59, RP
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    #softcore
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Entregue Vida ao ar livre
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    .accept 96655 >>Aceite Introdução ao Acampamento: Cozinha
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Orgnil Chaganalma|r, |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Cozinheiro Torka|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .accept 806 >>Aceite Tempestades sombrias
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 784 >>Entregue Aniquile os invasores
    .turnin 830 >>Entregue As ordens do almirante
    .turnin 96821 >>Entregue Dando no pé
    .accept 825 >>Aceite Dos destroços...
    .accept 831 >>Aceite As ordens do almirante
    .accept 837 >>Aceite Invasão
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Aceite Quebrar alguns ovos
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    #label RazorTurnins1
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entregue Aniquile os invasores
    .turnin 830 >>Entregue As ordens do almirante
    .accept 825 >>Aceite Dos destroços...
    .accept 831 >>Aceite As ordens do almirante
    .target +Gar'Thok
step
    #softcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Cozinheiro Torka|r
    .train 2550 >>Aprenda Culinária
    .turnin 96655 >>Entregue Introdução ao Acampamento: Cozinha
    .target Cook Torka
step
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto 1411/1,-4616.82,317.26,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Siga em direção à torre
step
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto 1411/1,-4585.1,396.92,8 >>Viaje para cima da torre em direção a Férrano Escarnecenho
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Férrano Escarnecenho|r
    .turnin 791 >>Entregue Carregue suas tralhas
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Aprenda |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Venda os itens sem utilidade. Venda sua arma se isso lhe der dinheiro suficiente para comprar uma|T135145:0|t[Bengala] (4p 79c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135641:0|t[Estilete] (3p 81c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4p 60c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135421:0|t[Machadinha] (5p 13c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T135641:0|t [Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ghrawt|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2p 83c). Você voltará mais tarde se não tiver o suficiente ainda
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dele|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<800 << Hunter
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .home >>Defina sua Pedra de Regresso em Monte Navalha
    .bindlocation 362
    .target Innkeeper Grosk
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    >>|cRXP_WARN_Reserve 4 moedas de prata para os feitiços da sua classe!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Reserve 2 moedas de prata para os feitiços da sua classe!|r << Priest
    .vendor >>Venda os lixos
    .turnin 2161 >>Entregue O fardo de um peão
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
step << !Mage !Hunter !Druid
    #optional
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .vendor >>Venda os lixos
    .turnin 2161 >>Entregue O fardo de um peão
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
step
    .goto 1411/1,-4815.400,306.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turroc|r
    .turnin 96822 >>Entregue Pela honra
    .target Turroc
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw Zigatriz|r
    .train 284 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8044 >>Treine suas magias de classe
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru Gostassangue|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e aprenda |T133738:0|t[Seta de Fogo Grau 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .train 5116 >>Treine suas magias de classe
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >>Treine suas magias de classe
    .target Kaplak
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >>Entregue Em favor da espiritualidade
    .accept 5648 >>Aceite Vestes da espiritualidade
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Tai'jin
step << Priest
    .goto 1411/1,-4770.16,170.62
    >>Lance |T135929:0|t[Cura Inferior] e |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Bruta Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Entregue Vestes da espiritualidade
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto 1411/1,-4826.74,330.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Rawrk
step
    .goto 1411/1,-4838.37,321.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_de|r |cRXP_BUY_dela|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Mate |cRXP_ENEMY_Surfatiscos Pigmeus|r e |cRXP_ENEMY_Surfatiscos|r. Saqueie-os para pegar |cRXP_LOOT_Muco|r
    >>Mate |cRXP_ENEMY_Conchacouros Makrura|r e |cRXP_ENEMY_Estaladores Makrura|r. Saque-os para pegar |cRXP_LOOT_Olhos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto 1411/1,-5238.63,-146.63,0
    .goto 1411/1,-5238.63,-146.63,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    .goto 1411/1,-5263.49,-301.03,20,0
    .goto 1411/1,-5245.51,-330.64,20,0
    .goto 1411/1,-5267.72,-326.41,20,0
    .goto 1411/1,-5306.31,-239.690,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    >>Saqueie as |cRXP_PICK_Caixas de Ferramentas Gnômicas|r dentro dos barcos e ao redor deles
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith MartEgg
    .goto 1411/1,-5510.41,-634.14,100 >>Nade até a ilha
step
    #completewith TigerFur
    >>Pegue os |cRXP_PICK_Ovos de Açoitacauda|r que estão no chão
    >>|cRXP_WARN_Eles geralmente são guardados por um|r |cRXP_ENEMY_Açoitacauda Garrassangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    >>Mate |cRXP_ENEMY_Tigre de Durotar|r. Saqueie-os para pegar sua |cRXP_LOOT_Pele de Tigre de Durotar|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #optional
    #completewith MainIsland
    >>Mate |cRXP_ENEMY_Surfatiscos Pigmeus|r e |cRXP_ENEMY_Surfatiscos|r. Saqueie-os para pegar |cRXP_LOOT_Muco|r
    >>Mate |cRXP_ENEMY_Conchacouros Makrura|r e |cRXP_ENEMY_Estaladores Makrura|r. Saque-os para pegar |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step --center of first small island
    #label MartEgg
    .goto 1411/1,-5599.500,-716.700
    >>Mate a |cRXP_ENEMY_Bloodtalon Matriarch|r. Saqueie-a para obter os |cRXP_LOOT_Bloodtalon Matriarch Eggs|r
    .complete 97223,1 --|1/1 Bloodtalon Matriarch Eggs
    .mob Bloodtalon Matriarch
step
    #label MainIsland
    .goto 1411/1,-5501.95,-1167.12,150 >>Nade até a ilha principal
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>Mate |cRXP_ENEMY_Trolls Bagateados|r e |cRXP_ENEMY_Trolls Vodus|r. Saqueie-os para pegar |cRXP_LOOT_Pingentes Bagateados|r
    >>|cRXP_WARN_Use|r |T135952:0|t[Desencantar] |cRXP_WARN_nos|r |cRXP_LOOT_Pingentes Bagateados|r |cRXP_WARN_para conseguir|r |T1500915:0|t[|cRXP_LOOT_Resíduo Luminoso|r]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #completewith ZalazaneKill
    >>Mate |cRXP_ENEMY_Trolls Bagateado|r e os |cRXP_ENEMY_Trolls Vodu|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #completewith VooHexTrolls
    >>Pegue as |cRXP_PICK_Imagens de loa|r que estão no chão
    >>|cRXP_WARN_Eles são encontrados principalmente perto dos muros de pedra na área|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Zalazane|r. Saqueie-o para pegar sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto 1411/1,-5526.27,-1286.62
    >>Saque um dos |cRXP_LOOT_Crânios|r que estão no chão
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto 1411/1,-5526.27,-1286.62
    >>Mate |cRXP_ENEMY_Zalazane|r. Saqueie-o para pegar sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith VooHexTrolls
    >>Mate |cRXP_ENEMY_Tigre de Durotar|r. Saqueie-os para pegar sua |cRXP_LOOT_Pele de Tigre de Durotar|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Mate |cRXP_ENEMY_Trolls Bagateados|r e |cRXP_ENEMY_Trolls Vodus|r. Saqueie-os para pegar |cRXP_LOOT_Pingentes Bagateados|r
    >>|cRXP_WARN_Use|r |T135952:0|t[Desencantar] |cRXP_WARN_nos|r |cRXP_LOOT_Pingentes Bagateados|r |cRXP_WARN_para conseguir|r |T1500915:0|t[|cRXP_LOOT_Resíduo Luminoso|r]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 96873,1 --Luminous Residue (x3)
    .collect 275724,3,96873,7,3 --Hexed Pendant (x3)
    .mob +Hexed Troll
    .mob +Voodoo Troll
    .isOnQuest 96873
    .skill enchanting,<1,1
step
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Mate |cRXP_ENEMY_Trolls Bagateado|r e os |cRXP_ENEMY_Trolls Vodu|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .isNotOnQuest 96873
step
    #label VooHexTrolls
    #loop
    .goto 1411/1,-5393.900,-1215.300,0
    .goto 1411/1,-5393.900,-1215.300,30,0
    .goto 1411/1,-5373.300,-1153.000,30,0
    .goto 1411/1,-5427.400,-1114.900,30,0
    .goto 1411/1,-5501.500,-1123.600,30,0
    .goto 1411/1,-5587.600,-1212.000,30,0
    .goto 1411/1,-5479.000,-1212.000,30,0
    >>Pegue as |cRXP_PICK_Imagens de loa|r que estão no chão
    >>|cRXP_WARN_Eles são encontrados principalmente perto dos muros de pedra na área|r
    .complete 97225,1 --Forgotten Loa Idols (x8)
step
    #completewith TaillasherEggs
    >>Mate |cRXP_ENEMY_Surfatiscos Pigmeus|r e |cRXP_ENEMY_Surfatiscos|r. Saqueie-os para pegar |cRXP_LOOT_Muco|r
    >>Mate |cRXP_ENEMY_Conchacouros Makrura|r e |cRXP_ENEMY_Estaladores Makrura|r. Saqueie-os para pegar |cRXP_LOOT_Olhos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TigerFur
    #loop
    .goto 1411/1,-5123.90,-1132.93,0
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Mate |cRXP_ENEMY_Tigre de Durotar|r. Saqueie-os para pegar sua |cRXP_LOOT_Pele de Tigre de Durotar|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label TaillasherEggs
    #loop
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Pegue os |cRXP_PICK_Ovos de Açoitacauda|r que estão no chão
    >>|cRXP_WARN_Eles geralmente são guardados por um|r |cRXP_ENEMY_Açoitacauda Garrassangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #loop
    .goto 1411/1,-5115.96,-794.53,0
    .goto 1411/1,-5115.96,-794.53,60,0
    .goto 1411/1,-5035.07,-916.490,60,0
    .goto 1411/1,-4990.65,-989.81,60,0
    .goto 1411/1,-4905.52,-1028.23,60,0
    .goto 1411/1,-4807.17,-1122.35,60,0
    >>Mate |cRXP_ENEMY_Surfatiscos Pigmeus|r e |cRXP_ENEMY_Surfatiscos|r. Saqueie-os para pegar |cRXP_LOOT_Muco|r
    >>Mate |cRXP_ENEMY_Conchacouros Makrura|r e |cRXP_ENEMY_Estaladores Makrura|r. Saqueie-os para pegar |cRXP_LOOT_Olhos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith next
    .goto 1411/1,-5002.81,-774.08,50,0
    .deathskip >>Morra e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r ou volte correndo
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Vá para Aldeia Sen'jin
step
    .goto 1411/1,-4948.88,-768.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Pule para dentro da cabana|r
    .vendor >>Venda os lixos e repare seu equipamento
    .target Trayexir
    .isOnQuest 808
step
    .goto 1411/1,-4960.100,-791.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pa'zula|r
    .turnin 96873 >>Entregue A Dor no Pescoço
    .target Pa'zula
    .isQuestComplete 96873
    .skill enchanting,<1,1
step << Mage
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >>Treine suas magias de classe
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tfale com |cRXP_FRIENDLY_Mestre Gadrin|r, |cRXP_FRIENDLY_Mestre Vornal|r e |cRXP_FRIENDLY_Vel'rin Presa|r
    .turnin 808 >>Entregue O crânio de Minshina
    .turnin 826,2 >>Entregue Zalazane << Shaman
    .turnin 826 >>Entregue Zalazane << !Shaman
    .turnin 97225 >>Entregue Imagens de loas esquecidos
    .target +Master Gadrin
    .goto 1411/1,-4920.86,-825.90
    .turnin 818 >>Entregue Um espírito solvente
    .target +Master Vornal
    .goto 1411/1,-4920.86,-813.91
    .turnin 817 >>Entregue Presa prática
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
step
    .goto 1411/1,-4885.400,-852.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xar'Ti|r
    .turnin 97223 >>Entregue Matriarca Garrassangre
    .target Xar'Ti
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Coloque seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_e|r |T134712:0|t[Cola Grudenta à Beça] nas barras de ações|cRXP_WARN_. Guarde-os para situações de emergência|r
step
    .goto 1411/1,-4715.100,-599.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .turnin 96876 >>Entregue O Pacote Perdido de Ukor
    .target Ukor
    .isOnQuest 96876
step --at low lvl razormanes
    #completewith QuilboarsScouts
    >>Pegue a |cRXP_PICK_Pera Espinhosa|r que está no chão
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #label QuilboarsScouts
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4615.77,72.98,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4570.29,109.99,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4526.41,70.86,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4450.80,62.40,30,0
    .goto 1411/1,-4442.34,112.46,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Mate |cRXP_ENEMY_Javatuscos Crinavalha|r e |cRXP_ENEMY_Batedores Crinavalha|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step --at low lvl razormanes
    #loop
    .goto 1411/1,-4543.300,82.500,0
    .goto 1411/1,-4543.300,82.500,40,0
    .goto 1411/1,-4459.000,66.300,40,0
    >>Pegue a |cRXP_PICK_Pera Espinhosa|r que está no chão
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.8,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto 1411/1,-4251.99,384.23,50,0
    >>Mate |cRXP_ENEMY_Levanta-poeira Crinavalha|r e |cRXP_ENEMY_Guardas de Batalha Crinavalha|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #loop
	.goto 1411/1,-4475.12,92.72,0
	.goto 1411/1,-4475.12,92.72,50,0
	.goto 1411/1,-4401.09,205.52,50,0
	.goto 1411/1,-4270.49,260.51,50,0
	.goto 1411/1,-4166.33,233.01,50,0
	.goto 1411/1,-4130.37,182.25,50,0
	.goto 1411/1,-4208.1,98.71,50,0
	.goto 1411/1,-4300.1,57.11,50,0
	.goto 1411/1,-4456.61,65.57,50,0
    .xp 9+4470 >>Mate inimigos até atingir 4470+/6500 de xp
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Cozinheiro Torka|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebrar alguns ovos
    .turnin 96825 >>Entregue A fruta que fura
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 825 >>Entregue Dos destroços...
    .turnin 837 >>Entregue Invasão
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6062 >>Aceite Domando a fera
    .trainer >>Treine suas magias de classe
    .target Thotar
step << Hunter
    .goto 1411/1,-4724.900,287.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil Chaganalma|r
    .accept 99048 >>Aceite A mão desaparecida
    .target Orgnil Soulscar
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_e uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto 1411/1,-4693.49,-183.64,0
    .goto 1411/1,-4699.31,101.88,40,0
    .goto 1411/1,-4696.14,37.73,40,0
    .goto 1411/1,-4693.49,-1.4,40,0
    .goto 1411/1,-4701.42,-66.26,40,0
    .goto 1411/1,-4649.61,-82.83,40,0
    .use 15917 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Mosquetusco Hediondo|r |cRXP_WARN_na distância máxima|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6062 >>Entregue Domando a fera
    .accept 6083 >>Aceite Domando a fera
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6083 >>Aceite Domando a fera
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Mosquetusco Hediondo|r clicando com o botão direito no quadro de unidade dele e selecionando dispensar, caso contrário você não conseguirá domar um|r |cRXP_ENEMY_Surfatisco|r
step << Hunter
    #loop
    .goto 1411/1,-5115.44,984.19,0
    .goto 1411/1,-5091.64,809.0,40,0
    .goto 1411/1,-5129.18,877.03,40,0
    .goto 1411/1,-5137.11,934.49,40,0
    >>|cRXP_WARN_Não mate os|r |cRXP_ENEMY_Escorpídeos Encouraçados|r |cRXP_WARN_que encontrar. Você precisará deles mais adiante|r
    .use 15919 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Surfatisco|r |cRXP_WARN_na distância máxima|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-5061.700,201.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Heglan Sombrolho|r
    .turnin 99048 >>Entregue A mão desaparecida
    .accept 99049 >>Aceite Ameaça vinda de baixo
    .target Heglan Shadeeye
step << Hunter
    .goto 1411/1,-5073.900,244.700
    >>Pegue a |cRXP_PICK_Adaga Abandonada|r que está no chão
    .complete 99049,1 --|1/1 Orcish Dagger
step << Hunter
    .goto 1411/1,-5140.800,229.100
    >>Pegue a |cRXP_PICK_Parte de Arma|r que está no chão
    .complete 99049,3 --|1/1 Broken Bone Trident
step << Hunter
    .goto 1411/1,-5138.000,314.100
    >>Pegue os |cRXP_PICK_Destroços Estranhos|r que estão no chão
    .complete 99049,2 --|1/1 Banner Scrap
step << Hunter
    .goto 1411/1,-4725.000,287.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil Chaganalma|r
    .turnin 99049 >>Entregue Ameaça vinda de baixo
    --.accept 99051 >>Accept Threat from Below
    .target Orgnil Soulscar
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6083 >>Entregue Domando a fera
    .accept 6082 >>Aceite Domando a fera
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Surfatisco|r clicando com o botão direito no quadro de unidade dele e selecionando dispensar, caso contrário você não conseguirá domar um|r |cRXP_ENEMY_Escorpídeo Encouraçado|r
step << Hunter
    #loop
    .goto 1411/1,-4862.16,506.2,0
    .goto 1411/1,-4862.16,506.2,40,0
    .goto 1411/1,-4818.28,616.53,40,0
    .goto 1411/1,-4829.38,733.21,40,0
    .goto 1411/1,-4908.17,727.57,40,0
    .goto 1411/1,-4933.55,776.21,40,0
    .goto 1411/1,-4973.73,846.71,40,0
    .goto 1411/1,-4984.31,906.29,40,0
    .use 15920 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Escorpídeo Encouraçado|r |cRXP_WARN_na distância máxima|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6082 >>Entregue Domando a fera
    .accept 6081 >>Aceite Treinando a fera
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith Rezlak1
    +|cRXP_WARN_Coloque|r |T132164:0|t[Domar Fera]|cRXP_WARN_,|r |T136095:0|t[Dispensar Ajudante]|cRXP_WARN_, e|r |T132161:0|t[Chamar Ajudante] |cRXP_WARN_nas suas barras de ações|r
step << Hunter
    .goto 1411/1,-4666.0,305.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Compre|r |T133972:0|t[Carne-seca Dura] |cRXP_BUY_dele|r. |cRXP_BUY_Você usará isso para alimentar seu ajudante mais adiante|r
    .vendor >>Venda os lixos
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step << Hunter
    #optional
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
    .xp <10,1
step << Hunter/Shaman
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Aceite Em memória
    .target Misha Tor'kren
step
    #completewith next
    .goto 1411/1,-4414.31,999.70,50 >>Vá até Rezlak
step
    #label Rezlak1
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step
    #loop
    .goto 1411/1,-4590.39,1036.36,0
    .goto 1411/1,-4590.39,1036.36,40,0
    .goto 1411/1,-4590.39,950.7,40,0
    .goto 1411/1,-4613.12,902.410,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4693.49,832.97,40,0
    .goto 1411/1,-4598.32,854.12,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto 1411/1,-4505.79,597.14,40,0
    .goto 1411/1,-4466.13,630.980,40,0
    .goto 1411/1,-4526.41,679.98,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Pegue os |cRXP_PICK_Sacos de Suprimentos Roubados|r que estão no chão
    .complete 834,1 --Sack of Supplies (5)
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do deserto
    .accept 835 >>Aceite Faça o que eu digo...
    .target Rezlak
step
    #completewith next
    .goto 1411/1,-4327.07,932.02,40,0
    .goto 1411/1,-4198.05,911.22,30,0
    .goto 1411/1,-4165.27,903.11,20 >>Pule para dentro do Desfiladeiro do Trovão << !Hunter !Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Dispense seu|r |T136218:0|t[Diabrete] |cRXP_WARN_clicando com o botão direito no quadro de unidade dele e selecionando dispensar|r << Warlock
    .cast 2641 >>|cRXP_WARN_Lance|r |T136095:0|t[Dispensar Ajudante] |cRXP_WARN_e então pule para Trovão Serra|r << Hunter
step
    #softcore
    .goto 1411/1,-4190.12,868.22
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
    >>|cRXP_WARN_Não tenha medo de morrer para pegar a |cRXP_LOOT_Garra|r, pois você ressuscitará com o |cRXP_FRIENDLY_Anjo da Cura|r depois|r
    >>|cRXP_WARN_Mate o diabrete primeiro. Use|r |T132155:0|t[Esfaquear] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Rogue
    >>|cRXP_WARN_mate o diabrete primeiro. Use|r |T136026:0|t[Choque Terreno] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Shaman
    >>|cRXP_WARN_Você pode lançar|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Bulho Tempesnigra|r |cRXP_WARN_e matar o|r |cRXP_ENEMY_Diabrete|r |cRXP_WARN_primeiro|r << Mage
    >>|cRXP_WARN_Mate o diabrete primeiro|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << !Warlock
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura], |T133728:0|t[Pedra de Vida Menor] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #hardcore
    .goto 1411/1,-4190.12,868.22
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
    >>|cRXP_WARN_Mate o diabrete primeiro. Use|r |T132155:0|t[Esfaquear] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Rogue
    >>|cRXP_WARN_mate o diabrete primeiro. Use|r |T136026:0|t[Choque Terreno] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Shaman
    >>|cRXP_WARN_Você pode lançar|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Bulho Tempesnigra|r |cRXP_WARN_e matar o|r |cRXP_ENEMY_Diabrete|r |cRXP_WARN_primeiro|r << Mage
    >>|cRXP_WARN_Mate o diabrete primeiro|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << !Warlock
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura], |T133728:0|t[Pedra de Vida Menor] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4449.74,1188.64
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 806
    .xp >10,1
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4035.2,679.63,60 >>Abra caminho lutando para sair do Desfiladeiro do Trovão
    .isQuestComplete 806
    .xp <10,1
step << Hunter/Shaman
    #hardcore
    .goto 1411/1,-4035.2,679.63,60 >>Abra caminho lutando para sair do Desfiladeiro do Trovão
    .isQuestComplete 806
step << Hunter/Shaman
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Isso iniciará um limite de 45 minutos para a missão. NÃO fique ausente nem desconecte-se nos próximos 5 minutos|r
    .accept 812 >>Aceite Busca da cura
    .target Rhinag
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    .xp 9+2520 >>Mate inimigos até 2520+/6500 de xp no nível 9
step << Shaman
    #optional
    #loop
    .goto 1411/1,-4265.73,1276.76,0--c:Durotar,43.56,15.08
    .goto 1411/1,-4297.46,1131.89,60,0--c:Durotar,44.16,19.19
    .goto 1411/1,-4295.87,1208.38,60,0--c:Durotar,44.13,17.02
    .goto 1411/1,-4265.73,1276.76,60,0--c:Durotar,43.56,15.08
    +Mate inimigos até faltarem menos de 5 minutos para sua Pedra de Regresso ficar disponível
    .cooldown item,6948,<0
step << Hunter/Shaman
    #label EnterOrg
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step << Hunter/Shaman
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Ele está no andar de cima do prédio|r
    .accept 97246 >>Aceite A marmita do Migi
    .target Thatog
step << Hunter/Shaman
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borsgan|r
    .turnin 97246 >>Entregue A marmita do Migi
    .accept 97249 >>Aceite Comida preferida
    .target Borstan
step << Hunter/Shaman
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Entregue Casco de Halikor
    .target Kamari
    .isOnQuest 96877
step << Hunter/Shaman
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'geld|r 
    .accept 97242 >>Aceite A mistura de Yelmak
    .target Kor'geld
step << Hunter/Shaman
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Vá para o Vale da Honra
step << Hunter/Shaman
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Pegue |cRXP_PICK_Punhado de Taboa|r e |cRXP_PICK_Folhas de Gramalança|r que estão na água
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Entregue Treinando a fera
    .target Ormak Grimshot
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Treine as magias do seu mascote
    .target Xao'tsu
step << Hunter
    #completewith FindAntidote
    +|cRXP_WARN_Coloque|r |T132162:0|t[Treinamento de Feras]|cRXP_WARN_(na aba Geral),|r |T132163:0|t[Reviver Ajudante]|cRXP_WARN_, e|r |T132165:0|t[Alimentar Ajudante] |cRXP_WARN_nas suas barras de ações|r
    >>|cRXP_WARN_Lembre-se de treinar seu ajudante sempre que ele ganhar Pontos de Treinamento para|r |T132162:0|t[Treinamento de Feras]
step << Hunter
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_WARN_quando você tiver nível 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Hunter/Shaman
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Entregue A mistura de Yelmak
    .target Kor'geld
step << Hunter/Shaman
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Talvez você precise esperar cerca de 10 segundos para aceitar esta missão|r
    .accept 97275 >>Aceite Por Uqueê a pressa?
    .target Yelmak
step << Hunter/Shaman
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uqueê|r
    .turnin 97275 >>Entregue Por Uqueê a pressa?
    .target Whuut
step << Hunter/Shaman
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Entregue Comida preferida
    .target Migi
step << Hunter/Shaman
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thra|r 
    .accept 97326 >>Aceite Pedra pra sentar
    .target Thra
step << Hunter/Shaman
    .goto 1454/1,-4293.600,1949.900
    >>Pegue as |cRXP_PICK_Pedras|r laranjas que estão no chão
    >>|cRXP_WARN_Pule esta missão se houver muita concorrência! Não há muitas |cRXP_PICK_Pedras|r e elas demoram para reaparecer|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step << Hunter/Shaman
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Entregue Pedra pra sentar
    .target Thra
    .isQuestComplete 97326
step << Hunter/Shaman
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As ordens do almirante
    .target Nazgrel
step << Hunter/Shaman
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Inimigos ocultos
    .target Thrall
step << Hunter/Shaman
    #label FindAntidote
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'ghan|r no Antro das Sombras
    .accept 813 >>Aceite Em busca do antídoto
    .target Kor'ghan
    .isOnQuest 812
step << Hunter/Shaman
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Abandone Busca da cura. Isso removerá o limite de tempo da missão, mas você ainda poderá realizá-la|r
    .abandon 812 >>Abandone Busca da cura
    .isOnQuest 812
step << Priest
    #optional
    #loop
    .goto 1411/1,-4162.63,943.30,40,0--c:Durotar,41.61,24.54
    .goto 1411/1,-4073.80,953.87,40,0--c:Durotar,39.93,24.24
    .goto 1411/1,-4026.21,866.10,40,0--c:Durotar,39.03,26.73
    .goto 1411/1,-4035.20,687.38--c:Durotar,39.20,31.80
    .xp 9+3150 >>Mate inimigos até 3150+/6500 de xp no nível 9
step
    #completewith RazorTurnins2
    .hs >>Use sua Pedra de Regresso para ir a Monte Navalha
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0,1
step
    #completewith RazorTurnins2
    .subzone 362 >>Vá para Monte Navalha
    .isQuestComplete 806
    .cooldown item,6948,<0
step
    #requires NeedACure
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>Venda os lixos
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .collect 1179,15,828,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,828,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Hunter
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Orgnil Chaganalma|r
    .turnin 806 >>Entregue Tempestades sombrias
    .accept 828 >>Aceite Margoz
    .target Orgnil Soulscar
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Cozinheiro Torka|r, |cRXP_FRIENDLY_Orgnil Chaganalma|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebrar alguns ovos
    .turnin 96825 >>Entregue A fruta que fura
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 806 >>Entregue Tempestades sombrias
    .accept 828 >>Aceite Margoz
    .accept 99048 >>Aceite A mão desaparecida << Shaman
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 825 >>Entregue Dos destroços...
    .turnin 837 >>Entregue Invasão
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw Zigatriz|r
    .train 6546 >>Treine suas magias de classe
    --.accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .accept 2983 >>Aceite Clamor do Fogo
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru Gostassangue|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e aprenda |T133738:0|t[Seta de Fogo Grau 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >>Aceite Bagata da Fraqueza << Troll
    .accept 5660 >>Aceite Toque de Fraqueza << Undead
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .train 13549 >>Treine suas magias de classe
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 674 >>Treine suas magias de classe
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Durotar
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Clareiras de Tirisfal (Orc/Trolls) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 Sertões << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step << Shaman/Hunter
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step << Shaman
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >>Vá para o Posto Remoto
    .zoneskip The Barrens
    .isOnQuest 840,2983,1522,2984,1523
step << Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento na Encruzilhada
    .target Kargal Battlescar
step << Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entregue Clamor do Fogo
    .accept 1524 >>Aceite Clamor do Fogo
    .target Kranal Fiss
step << Shaman
    #completewith next
    >>Mate |cRXP_ENEMY_Crocolisco Bocarrão|r no caminho. Saqueie-os para pegar |cRXP_LOOT_Amuleto de Kron|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
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
    .goto 1411/1,-4033.08,-255.91,10 >>Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #label CallofFire3
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Clamor do Fogo
    .accept 1525 >>Aceite Clamor do Fogo
    .target Telf Joolam
step << skip --Shaman
    #completewith MargozTurnIn
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    --TODO: Re-add deathskip after ress timer fix
step << Shaman
    .goto 1411/1,-5061.700,201.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Heglan Sombrolho|r
    .turnin 99048 >>Entregue A mão desaparecida
    .accept 99049 >>Aceite Ameaça vinda de baixo
    .target Heglan Shadeeye
step << Shaman
    .goto 1411/1,-5073.900,244.700
    >>Pegue a |cRXP_PICK_Adaga Abandonada|r que está no chão
    .complete 99049,1 --|1/1 Orcish Dagger
step << Shaman
    .goto 1411/1,-5140.800,229.100
    >>Pegue a |cRXP_PICK_Parte de Arma|r que está no chão
    .complete 99049,3 --|1/1 Broken Bone Trident
step << Shaman
    .goto 1411/1,-5138.000,314.100
    >>Pegue os |cRXP_PICK_Destroços Estranhos|r que estão no chão
    .complete 99049,2 --|1/1 Banner Scrap
step << Shaman
    .goto 1411/1,-4725.000,287.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil Chaganalma|r
    .turnin 99049 >>Entregue Ameaça vinda de baixo
    --.accept 99051 >>Accept Threat from Below
    .target Orgnil Soulscar
step << Hunter
    #completewith MargozTurnIn
    +Dome um |cRXP_ENEMY_Escorpídeo Caudaçonha|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #completewith next
    .subzone 371 >>Vá para a Caverna Sopravento
step << Shaman
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Mate |cRXP_ENEMY_Sectários da Lâmina Ardente|r. Saqueie-os para pegar um |cRXP_LOOT_Bornal de Reagentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4939.36,824.51,80,0
    .goto 1411/1,-4945.18,1101.92,50 >>Vá até |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entregue Margoz
    .accept 827 >>Aceite A Rocha da Caveira
    .target Margoz
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4949.41,925.67,50,0
    .goto 1411/1,-4929.32,823.45,50,0
    .goto 1411/1,-4774.39,780.80,50 >>Vá para a Caverna Sopravento
    .isQuestTurnedIn 828
step << !Shaman !Hunter
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4749.01,822.39,12,0
    >>Mate |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para pegar os |cRXP_LOOT_Colares|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step
    #label Ravine
    #completewith next
    .subzone 370 >>Desça para o Barranco da Ravina Seca
step
    #loop
    .goto 1411/1,-4816.69,972.910,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    .goto 1411/1,-4816.69,972.910,40,0
    >>Mate |cRXP_ENEMY_Selvagem Sopravento|r e |cRXP_ENEMY_Bruxa da Tempestade Sopravento|r
    .use 277661 >>Saqueie as |cRXP_ENEMY_Bruxas da Tempestade Sopravento|r para pegar |T134336:0|t[|cRXP_LOOT_Orbe da Tempestade Opaco|r]. Use-o para aceitar a missão
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .collect 277661,1,97281 --Dull Storm Orb (x1)
    .accept 97281 >>Aceite Uma tempestade se formando
step << skip
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    --#hardcore
    #completewith next
    .goto 1411/1,-4804.53,830.5,60,0
    .goto 1411/1,-4698.78,842.48,60,0
    .goto 1411/1,-4414.31,999.70,60 >>Atravesse a caverna em direção a |cRXP_FRIENDLY_Rezlak|r
step
    #label SecuringLinesTurnIn
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entregue Faça o que eu digo...
    .turnin 97281 >>Entregue Uma tempestade se formando
    .accept 97282 >>Aceite Potencial trovejante
    .target Rezlak
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4010.35,1031.42,0
    .goto 1411/1,-4217.09,1087.47,60,0
    .goto 1411/1,-4100.24,1113.2,60,0
    .goto 1411/1,-4108.7,1229.88,60,0
    .goto 1411/1,-4013.52,1209.08,60,0
    .goto 1411/1,-4010.35,1031.42,60,0
    >>Termine de matar os |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #completewith next
    >>Mate |cRXP_ENEMY_Lagarto Trovejante|r e |cRXP_ENEMY_Pelego de Relâmpago|r. Saqueie-os para pegar os |cRXP_LOOT_Órgãos do Lagarto Trovejante Carregado|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step
    #loop
    .goto 1411/1,-4248.400,972.300,0
    .goto 1411/1,-4117.500,747.200,0
    .goto 1411/1,-4248.400,972.300,40,0
    .goto 1411/1,-4117.500,747.200,40,0
    >>Mate |cRXP_ENEMY_Halikor|r (elite). Pegue dele |T134061:0|t[|cRXP_LOOT_Casco de Halikor|r]
    >>|cRXP_WARN_Este é difícil! Forme um grupo, se possível. Ele tem 800 de vida, mas o dano é suportável. Pule esta etapa se não conseguir derrotá-lo|r
    >>|cRXP_WARN_Ele tem pelo menos dois pontos de surgimento diferentes no Desfiladeiro do Trovão|r
    .collect 275723,1,96877 --Halikor's Hoof (x1)
    .accept 96877 >>Aceite Casco de Halikor
    .mob Halikor
step
    .goto 1411/1,-4047.300,918.400
    >>Mate |cRXP_ENEMY_Lagarto Trovejante|r e |cRXP_ENEMY_Pelego de Relâmpago|r. Saqueie-os para pegar os |cRXP_LOOT_Órgãos do Lagarto Trovejante Carregado|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step << skip
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto 1411/1,-4414.500,999.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 97282 >>Entregue Potencial trovejante
    .target Rezlak
step << Shaman/Hunter
    #completewith next
    .goto 1411/1,-4945.18,1101.92,50 >>Vá até |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entregue Margoz
    .accept 827 >>Aceite A Rocha da Caveira
    .target Margoz
    .isQuestTurnedIn 806
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4876.97,1452.310,60 >>Siga em direção à Rocha da Caveira
step << Shaman/Hunter
    #completewith Gazzuz
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    >>Mate |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para pegar os |cRXP_LOOT_Colares|r e uma |cRXP_LOOT_Insígnia do Tenente|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #label Gazzuz
    .goto 1411/1,-4701.42,1455.83
    >>Mate o |cRXP_ENEMY_Gazz'uz|r. Saqueie-o para pegar |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r]
    >>|cRXP_WARN_Use o |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r] para iniciar a missão|r
    >>|cRXP_WARN_Use a sua|r |T134712:0|t[Cola Grudenta à Beça] |cRXP_WARN_no|r |cRXP_ENEMY_Emissário do Caos|r |cRXP_WARN_para evitar ser atingido, e|r |T134829:0|t[Poções de Cura] |cRXP_WARN_para recuperar vida. Quebre a linha de visão (LoS) de|r |cRXP_ENEMY_Gazz'uz|r |cRXP_WARN_para evitar as Setas Sombrias dele|r
    >>|cRXP_WARN_Você pode correr até as poças de água dentro da caverna para despistar o|r |cRXP_ENEMY_Emissário do Caos|r |cRXP_WARN_depois de matar|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Tome cuidado, pois ele é MUITO difícil. Você pode pular esta missão se precisar|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Aceite Sombras incandescentes
    .use 4903
	.unitscan Gazz'uz
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Mate |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para pegar os |cRXP_LOOT_Colares|r e uma |cRXP_LOOT_Insígnia do Tenente|r
    >>|cRXP_WARN_Esqueça a|r |cRXP_LOOT_Insígnia do Tenente|r |cRXP_WARN_se não tiver sorte para obtê-la|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Shaman/Hunter
    #completewith Ravine
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entregue A Rocha da Caveira
    .accept 829 >>Aceite Neeru Cortafogo
    .target Margoz
    .isQuestTurnedIn 806
step
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
step << !Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trak'gen|r
    .vendor >>Venda os lixos
    .target Trak'gen
    .isQuestAvailable 97246
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compre |r |T135419:0|t[Machado de Arremesso Afiado] |cRXP_BUY_dele|r
    .collect 3135,1,354,1 --Sharp Throwing Axe (200)
    .vendor >>Venda os lixos
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Afiado] |cRXP_WARN_quando estiver no nível 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Entregue Bagata da Fraqueza
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Entregue Bagata da Fraqueza
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
step
    .goto 1454/1,-4460.000,1598.600
    .goto 1454/1,-4460.600,1584.300,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thatog|r
    >>|cRXP_WARN_Ele está no andar de cima do prédio|r
    .accept 97246 >>Aceite A marmita do Migi
    .target Thatog
step << Shaman
    .goto 1454/1,-4347.54,1634.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
    .collect 854,1,924,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Breno Pugna
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith NeeruFireblade
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borsgan|r
    .turnin 97246 >>Entregue A marmita do Migi
    .accept 97249 >>Aceite Comida preferida
    .target Borstan
step
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Entregue Casco de Halikor
    .target Kamari
    .isOnQuest 96877
step
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'geld|r 
    .accept 97242 >>Aceite A mistura de Yelmak
    .target Kor'geld
step
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Vá para o Vale da Honra
step
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Pegue |cRXP_PICK_Punhado de Taboa|r e |cRXP_PICK_Folhas de Gramalança|r que estão na água
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14281 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >>Treine as magias do seu mascote
    .target Xao'tsu
    .xp <12,1
step
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'geld|r
    .turnin 97242 >>Entregue A mistura de Yelmak
    .target Kor'geld
step
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yelmak|r
    >>|cRXP_WARN_Talvez você precise esperar cerca de 10 segundos para aceitar esta missão|r
    .accept 97275 >>Aceite Por Uqueê a pressa?
    .target Yelmak
step
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uqueê|r
    .turnin 97275 >>Entregue Por Uqueê a pressa?
    .target Whuut
step
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Migi|r
    .turnin 97249 >>Entregue Comida preferida
    .target Migi
step
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thra|r 
    .accept 97326 >>Aceite Pedra pra sentar
    .target Thra
step
    .goto 1454/1,-4293.600,1949.900
    >>Pegue as |cRXP_PICK_Pedras|r laranjas que estão no chão
    >>|cRXP_WARN_Pule esta missão se houver muita concorrência! Não há muitas |cRXP_PICK_Pedras|r e elas demoram para reaparecer|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326
step
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thra|r
    .turnin 97326 >>Entregue Pedra pra sentar
    .target Thra
    .isQuestComplete 97326
step << !Shaman !Hunter
    #label Admiralorders1
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As ordens do almirante
    .target Nazgrel
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Inimigos ocultos
    .accept 5727 >>Aceite Inimigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Inimigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8050 >>Treine suas magias de classe
    .target Kardris Dreamseeker
step
    .goto 1454/1,-4320.700,1750.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kareth|r
    .vendor >>Conserte seu equipamento
    .target Kareth
    .isOnQuest 829
step << Rogue
    .goto 1454/1,-4280.21,1773.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >>Aceite A Mão Despedaçada << Orc Rogue/Troll Rogue
    .target Therzok
step << Shaman/Hunter
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entregue Em busca do antídoto
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto 1454/1,-4362.13,1834.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1120 >>Treine suas magias de classe
    .target Mirket
step << Shaman/Hunter
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .turnin 832 >>Entregue Sombras incandescentes
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >>Entre nas Cavernas Ígneas
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1411/1,-4450.27,1188.64
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Shaman !Hunter
    --#hardcore
    #completewith ZeptoUC1
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >>Entre nas Cavernas Ígneas
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1411/1,-4450.27,1188.64
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r
step << Shaman/Hunter
    --#hardcore
    #completewith FoundtheCure
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    #label FoundtheCure
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Aceite Busca da cura
    .turnin 812 >>Entregue Busca da cura
    .target Rhinag
step << Shaman/Hunter
    .goto 1411/1,-3802.55,650.72,50,0
    .goto 1411/1,-3803.08,503.38,50,0
    .goto 1411/1,-3783.51,238.65,50,0
    .goto 1411/1,-3774.53,150.88,50,0
    .goto 1411/1,-3797.79,317.260
    >>Siga para o sul pela margem do rio em direção ao Posto Remoto
    >>Mate |cRXP_ENEMY_Crocolisco Bocarrão|r no caminho. Saqueie-os para pegar |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Pule e abandone esta missão se o item não cair|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entregue Em memória
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >>Vá para o Posto Remoto
    .zoneskip The Barrens
step << Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento na Encruzilhada
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Shaman/Hunter
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_Saqueie a|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_ao lado de|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este item tem um temporizador de 30 minutos, portanto certifique-se de ser rápido|r
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
    .isOnQuest 924
step << Rogue/Mage/Priest/Warlock/Warrior
    #label ZeptoUC1
    .goto 1411/1,-4648.55,1321.88,40 >>Suba a Torre do Zepelim
    .zone Tirisfal Glades >>Pegue o Zepelim para Clareiras de Tirisfal
    >>|cRXP_WARN_Conjure água enquanto espera|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Abandone Em Memória
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Clareiras de Tirisfal (Orc/Trolls)
#version 11
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne !Undead
#next 12-14 Floresta de Pinhaprata << !Hunter !Shaman !Tauren !Skyborne !Undead

step
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >>Vá para Montalvo
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Terêncio|r
    .accept 96895 >>Aceite Emissário Argênteo
    .target Deathguard Terrence
step << Warrior
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandone Caminho da Defesa
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron Karhal|r dentro da estalagem
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto 1420/0,243.01,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r dentro da estalagem
    .accept 1885 >>Aceite Júnio Aquino
    .target Marion Call
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Clique no|r |cRXP_WARN_Gatilho do Mausoléu|r |cRXP_WARN_no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mate-o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .accept 445 >>Aceite Entrega na Floresta de Pinhaprata
    .target Apothecary Johaan
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 1820 >>Entregue Encontrando Eurico
    .target Coleman Farthing
step << Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.train 588 >>Aprenda |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r no segundo andar
    .train 145 >>Aprenda |T135812:0|t[Bola de Fogo Grau 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil de Mon|r
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Aprenda |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warlock/Hunter
    .vendor >>Venda os lixos
    .collect 1179,20,96897,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,96897,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,96897,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,96897,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .accept 356 >>Aceite Patrulha da retaguarda
    .target Deathguard Linnea
    .maxlevel 11
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Entregue O emissário Argênteo
    .accept 96897 >>Aceite The Cult of the Maldição
    .accept 96898 >>Aceite Remnants of Guerra
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Mate |cRXP_ENEMY_Impositores Sombrios|r e |cRXP_ENEMY_Neófitos Sombrios|r. Saqueie-os para pegar |cRXP_LOOT_Fragmento de Cristal Necrótico|r
    >>|cRXP_LOOT_Fragmento de Cristal Necrótico|r |cRXP_WARN_também pode ser pego no chão|r
    >>|cRXP_WARN_Tome cuidado! Esses inimigos causam muito dano. Os |cRXP_ENEMY_Impositores Sombrios|r também têm uma habilidade instantânea que causa 50-70 de dano|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
    #label HorrorsandSpirits
    #loop
	.goto 1420/0,-324.55,2000.48,0
	.goto 1420/0,-324.55,2000.48,50,0
	.goto 1420/0,-330.88,2040.84,50,0
	.goto 1420/0,-359.34,2073.38,50,0
	.goto 1420/0,-421.25,2070.07,50,0
	.goto 1420/0,-464.63,2070.37,50,0
	.goto 1420/0,-516.14,2017.05,50,0
	.goto 1420/0,-466.44,1986.02,50,0
	.goto 1420/0,-436.61,1951.670,50,0
	.goto 1420/0,-355.28,1970.35,50,0
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Entregue The Cult of the Maldição
    .turnin 96898 >>Entregue Remnants of Guerra
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson
step
    #label LinneaTurnin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 356 >>Entregue Patrulha da retaguarda
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #completewith UCflightpath1
    .goto 1420/0,240.75,1877.57,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >>Pegue o elevador até Cidade Baixa
step << !Undead
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fp Undercity >>Aprenda a rota de voo de Cidade Baixa
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto 1458/0,71.92,1435.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1885 >>Entregue Júnio Aquino
    .accept 1886 >>Aceite Os Sicários
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Arquibaldo|r no Distrito Bélico
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto 1458/0,308.89,1667.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Breno Pugna|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Breno Pugna
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Cain|r
    >>|cRXP_BUY_Compre Três|r |T133884:0|t[Olhos de Murloc] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain
    .zoneskip Undercity,1
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvério Hidalgo|r no Distrito da Magia
    .turnin 1478 >>Entregue Convocação de Hidalgo
    .accept 1473 >>Aceite Criatura do caos
    .isQuestAvailable 1504
step << Warlock
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
    .zoneskip Tirisfal Glades
step << Warlock
    #optional
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Saqueie |cRXP_PICK_Baú do Perrine|r para pegar |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    .goto 1420/0,726.06,1801.95
    >>Saqueie |cRXP_PICK_Baú do Perrine|r no chão para pegar |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >>Volte para a Cidade Baixa pelos esgotos
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvério Hidalgo|r no Distrito da Magia
    .turnin 1473 >>Entregue Criatura do caos
    .accept 1471 >>Aceite A vinculação
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,41.99,1704.480
    .cast 9221 >>|cRXP_WARN_Use as|r |T134416:0|t[Runas de Evocação] |cRXP_WARN_no Círculo de Evocação|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Mate o |cRXP_ENEMY_Emissário do Caos Evocado|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carinda|r
    .turnin 1471 >>Entregue A Vinculação
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Priest
    .goto 1458/0,273.87,1482.360
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lavínia Queiroz|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.24,1681.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josefo Gregório|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Virar todo o seu|r |T132889:0|t[Linho] |cRXP_WARN_em|r |T132890:0|t[Peça de Linho]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josefo Gregório|r
    .train 7623 >>Aprenda |T132662:0|t[Veste de Linho Marrom]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,196.16,1684.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Berta Gregório|r
    >>|cRXP_BUY_Compre |r |T132891:0|t[Fio Grosso] |cRXP_BUY_dela|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Crie o máximo de|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que conseguir|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Tadeu Uchoa|r|cRXP_BUY_. Compre um|r |T133942:0|t[Bastão de Cobre] |cRXP_BUY_e|r |T135435:0|t[Madeira Simples] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Desencante todas as|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que você fez e crie um|r |T135225:0|t[Bastão Rúnico de Cobre]
    >>|cRXP_WARN_Se você não conseguiu uma|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_compre uma de|r |cRXP_FRIENDLY_Tadeu Uchoa|r |cRXP_WARN_se houver alguma disponível. Caso contrário, conclua esta etapa mais tarde|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,273.2,1491.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Augusto Incantum|r
    .train 14293 >>Aprenda |T135139:0|t[Varinha Mágica Inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Crie uma|r |T135139:0|t[Varinha Mágica Inferior]
    >>|cRXP_WARN_Se você não conseguiu uma|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_compre uma de|r |cRXP_FRIENDLY_Tadeu Uchoa|r |cRXP_WARN_se houver alguma disponível. Caso contrário, conclua esta etapa mais tarde|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe a|r |T135139:0|t[Varinha Mágica Inferior]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    .goto 1458/0,68.66,1416.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitolina Casmurro|r
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .target Carolyn Ward
    .xp <12,1
    .money <0.08
step << Mage
    .goto 1458/0,56.38,1813.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastácia Cordato|r
    .train 145 >>Aprenda |T135812:0|t[Bola de Fogo Grau 3]
    .target Anastasia Hartwell
    .xp <12,1
    .money <0.08
step << Warlock
    .goto 1458/0,20.02,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Curi|r
    .train 755 >>Aprenda |T136168:0|t[Funil de Vida]
    .target Richard Kerwin
    .xp <12,1
    .money <0.08
step << Priest
    .goto 1458/0,416.91,1757.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Padre Lázaro|r
	.train 588 >>Aprenda |T135926:0|t[Fogo Interior]
    .target Father Lazarus
    .xp <12,1
    .money <0.08
step << Warrior
    .goto 1458/0,418.35,1767.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalto Flores|r
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .target Baltus Fowler
    .xp <12,1
    .money <0.08
step
    #optional
    .abandon 806 >>Abandone Tempestades sombrias
step
    #optional
    .abandon 408 >>Abandone A cripta da família
step << Warrior
    #optional
    .abandon 1821 >>Abandone A herança dos Agamand
step
    #optional
    .abandon 375 >>Abandone O frio da morte 
step
    #label LeaveUndercity3
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
    .zoneskip Silverpine Forest
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .zoneskip Silverpine Forest
]])