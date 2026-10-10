if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#group Guia RestedXP TBC (A)
<< Horde
#name 1-6 Clareiras de Tirisfal
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor Scourge
#next 6-10 Bosque do Canto Eterno


step << !Undead
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado para Morto-vivo. É recomendado que você escolha a mesma zona inicial em que começou|r
step
    #completewith Zombies
	.destroy 6948 >>Destrua a |T134414:0|t[Pedra de Regresso] da sua bolsa, pois não é mais necessária
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >>Vá para fora da cripta em direção a |cRXP_FRIENDLY_Coveiro Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coveiro Mordo|r
    .accept 363 >>Aceite Despertar bruto
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_Abate os |cRXP_ENEMY_Young Scavengers|r e os |cRXP_ENEMY_Duskbats|r. Saque-os até você ter 60 moedas de cobre em itens de vendedor (incluindo sua armadura)|r << Mage
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 50 de cobre em valor de itens para vender (incluindo sua armadura)|r << Priest
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 10 de cobre em valor de itens para vender (incluindo sua armadura)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >>Entre no prédio
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Venya|r e |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r << Mage
    .accept 1470 >>Aceite Perfurando o véu << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 >>Entregue Despertar bruto
    .accept 364 >>Aceite Os desmiolados
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Queila Ferraz|r
    .vendor >>Comerciante Lixo
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r
    .turnin 363 >>Entregue Despertar bruto
    .accept 364 >>Aceite Os desmiolados
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Comerciante Lixo
    .target Archibald Kava
    .money >0.1
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Dannal Stern
step
    #optional
    #label Training1
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>Mate |cRXP_ENEMY_Esqueletos Range-ossos|r. Saqueie-os para obter os |cRXP_LOOT_Crânios de Range-ossos|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Mate |cRXP_ENEMY_Zumbis Desmiolados|r e |cRXP_ENEMY_Zumbis Atormentados|r. Saqueie-os até ter 25 cobre em valor de itens para vender (incluindo sua armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vênia Martingil|r
    .turnin 1470 >>Entregue Perfurando o véu
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t[Evocar Diabrete]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    #loop
    .goto Tirisfal Glades,31.72,63.98,0
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,63.02,40,0
	.goto Tirisfal Glades,32.90,63.54,40,0
	.goto Tirisfal Glades,33.41,63.06,40,0
	.goto Tirisfal Glades,33.75,62.86,40,0
	.goto Tirisfal Glades,33.51,63.82,40,0
	.goto Tirisfal Glades,33.55,64.57,40,0
	.goto Tirisfal Glades,33.29,64.96,40,0
    >>Mate |cRXP_ENEMY_Zumbis Desmiolados|r e |cRXP_ENEMY_Zumbis Atormentados|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Mate |cRXP_ENEMY_Zumbis Desmiolados|r e |cRXP_ENEMY_Zumbis Atormentados|r. Saqueie-os até ter 33 cobre em valor de itens para vender (incluindo sua armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>Comerciante Lixo
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>Comerciante Lixo
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue Os Mentecaptos
    .accept 3095 >>Aceite Pergaminho simples << Warrior
    .accept 3096 >>Aceite Pergaminho cifrado << Rogue
    .accept 3097 >>Aceite Pergaminho consagrado << Priest
    .accept 3098 >>Aceite Pergaminho glífico << Mage
    .accept 3099 >>Aceite Pergaminho conspurcado << Warlock
    .accept 3901 >>Aceite Desossando alguns Range-ossos
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >>Aceite Os malditos
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>Entregue Pergaminho conspurcado << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .target +Isabella << Mage
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,29.21,66.68,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    >>Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Carniceiros Rotos|r. Saqueie-os para pegar |cRXP_LOOT_Patas de Carniceiro|r
    >>Mate |cRXP_ENEMY_Quiropúsculos|r e |cRXP_ENEMY_Quiropúsculos Sarnentos|r. Saqueie-os para pegar |cRXP_LOOT_Asas de Quiropúsculo|r
    >>|cRXP_WARN_Tente evitar os |cRXP_ENEMY_Quiropúsculos Sarnentos|r se puder, pois são muito mais difíceis de matar do que os |cRXP_ENEMY_Quiropúsculos|r|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>Mate |cRXP_ENEMY_Esqueletos Range-ossos|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .xp 3+940 >>Mate inimigos até atingir 940+/1400 de xp << Warrior/Rogue
    .xp 3+980 >>Mate inimigos até atingir 980+/1400 de xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Ghoul
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .xp 3+710 >>Farme até 710+/1400xp << Warrior/Rogue
    .xp 3+770 >>Farme até 770+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Ghoul
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    >>|cRXP_WARN_NÃO fique com menos de 1 de Prata|r << Mage/Warlock/Priest
    .vendor >>Comerciante Lixo
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >>Entregue Entrechocar as Caveiras de Chocalho
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>Entregue Os malditos
    .accept 6395 >>Aceite O último desejo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .train 589 >>Treine suas magias de classe
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Isabella
step
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Necroguarda Saulo|r e o |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >>Aceite Vasculhando Plangemortis
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >>Aceite Vale Teia da Noite
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,32.15,66.01
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Executor Arren|r
    .accept 380 >>Aceite Vale Teia da Noite
    .target +Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Comerciante Lixo
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .target David Trias
step
    #xprate <1.5
    #loop
	.goto Tirisfal Glades,32.37,64.37,0
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
    >>Abra as |cRXP_PICK_Caixas de Equipamento|r no chão. Pegue os |cRXP_LOOT_Materiais Reaproveitados|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #loop
	.goto Tirisfal Glades,29.94,57.33,0
	.goto Tirisfal Glades,29.94,57.33,40,0
	.goto Tirisfal Glades,29.82,56.03,40,0
	.goto Tirisfal Glades,29.25,55.77,40,0
	.goto Tirisfal Glades,28.40,56.51,40,0
	.goto Tirisfal Glades,27.68,57.10,40,0
	.goto Tirisfal Glades,28.29,58.31,40,0
	.goto Tirisfal Glades,28.25,59.41,40,0
	.goto Tirisfal Glades,28.80,59.53,40,0
	.goto Tirisfal Glades,29.29,59.40,40,0
	.goto Tirisfal Glades,29.67,58.53,40,0
    >>Mate |cRXP_ENEMY_Trevateias Jovens|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #loop
	.goto Tirisfal Glades,28.25,58.27,0
    .goto Tirisfal Glades,27.86,58.98,40,0
	.goto Tirisfal Glades,28.25,58.27,40,0
	.goto Tirisfal Glades,28.42,59.07,40,0
	.goto Tirisfal Glades,27.86,60.57,40,0
	.goto Tirisfal Glades,27.17,59.18,40,0
	.goto Tirisfal Glades,27.30,57.97,40,0
	.goto Tirisfal Glades,26.94,56.42,40,0
	.goto Tirisfal Glades,27.51,56.00,40,0
    >>Mate |cRXP_ENEMY_Trevateias Jovens|r perto da entrada da caverna
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Vá para dentro da caverna
step
    #loop
    .goto Tirisfal Glades,26.31,59.60,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    >>Mate |cRXP_ENEMY_Trevateias|r dentro da caverna
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #softcore
    #completewith NightWebH
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Spirit Healer|ror run back to Deathknell
    .target Anjo da Cura
step
    #hardcore
    #completewith NightWebH
    .goto Tirisfal Glades,31.61,65.62,80 >>Retorne para Deathknell
step
    #xprate <1.5
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r
    .turnin 3902 >>Entregue Vasculhando Plangemortis
    .target Deathguard Saltain
step
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 380 >>Entregue Vale Teia da Noite
    .accept 381 >>Aceite A Cruzada Escarlate
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Comerciante Lixo
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >>Comerciante Lixo
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
    .goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
    >>Mate |cRXP_ENEMY_Iniciados Escarlates|r e |cRXP_ENEMY_Neófitos Escarlates|r. Saqueie-os pelas |cRXP_LOOT_Braçadeiras Escarlates|r
    >>|cRXP_WARN_Não mate|cRXP_ENEMY_ Meven Korgal|r ainda|r
    >>|cRXP_WARN_Tente evitar |cRXP_ENEMY_Iniciados Escarlates|r se você conseguir, pois eles têm|r |T135843:0|t[Armadura Gélida] |cRXP_WARN_(reduz sua velocidade de ataque)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>Mate |cRXP_ENEMY_Samuel|r. Saqueie-o para pegar |cRXP_LOOT_Restos Mortais de Samuel|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #hardcore
    #completewith next
    .goto Tirisfal Glades,31.17,65.08,80 >>Retorne para Deathknell
step
    .goto Tirisfal Glades,31.17,65.08
	>>Clique no |cRXP_PICK_Túmulo de Marla|r no chão
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 6395 >>Entregue O último desejo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >>Aceite Em favor da escuridão << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 381 >>Entregue A Cruzada Escarlate
    .accept 382 >>Aceite O mensageiro escarlate
    .target Executor Arren
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Comerciante Lixo
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>Mate |cRXP_ENEMY_Meven|r. Saqueie-o para pegar |cRXP_LOOT_Documentos da Cruzada Escarlate|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 382 >>Entregue O mensageiro escarlate
    .accept 383 >>Aceite Informações cruciais
    .target Executor Arren
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,37.51,62.99,0
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    .xp 5+2350 >>Farme para 2350+/2800xp
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,37.51,62.99,0
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    .xp 5+2125 >>Farme até 2125+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calvino|r
    .accept 8 >>Aceite Palavra de ladino
    .target Calvin Montague
step
    #softcore
    #completewith next
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r ou corra para Montalvo
    .target Anjo da Cura
step
    #hardcore
    #completewith next
    .subzone 159 >>Viaje para Brill
step
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 383 >>Entregue Informações cruciais
    .target Executor Zygand
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r a |cRXP_FRIENDLY_Sra. Hibérnias|r|cRXP_BUY_. Compre |r |T132414:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 29007,1,8475,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Olivier Ewor|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,8475,1 --Collect Stiletto (1)
    .target Oliver Dwor
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante lixo. Venda sua arma se der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Você voltará depois se ainda não tiver dinheiro suficiente.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,8475,1 --Collect Gladius (1)
    .target Oliver Dwor
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gina Lang|r no segundo andar
    >>|cRXP_BUY_Compre |r |T133738:0|t[Grimório de Pacto de Sangue] |cRXP_BUY_dela|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Comerciante Lixo
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .target Rupert Boch
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Geni|r
    .turnin 8 >>Entregue Palavra de ladino
    .home >>Defina sua Pedra de Regresso em Montalvo << Priest/Warrior
    .target Innkeeper Renee
    .bindlocation 2119 << Priest/Warrior
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no andar de cima
    .turnin 5651 >>Entregue Em favor da escuridão
    .accept 5650 >>Aceite Vestes da escuridão
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .target Dark Cleric Beryl
    .train 2052,1
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no andar de cima
    .turnin 5651 >>Entregue Em favor da escuridão
    .accept 5650 >>Aceite Vestes da escuridão
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .target Dark Cleric Beryl
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no andar de cima
    .turnin 5651 >>Entregue Em favor da escuridão
    .accept 5650 >>Aceite Vestes da escuridão
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Dark Cleric Beryl
    .train 2052,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no andar de cima
    .turnin 5651 >>Entregue Em favor da escuridão
    .accept 5650 >>Aceite Vestes da escuridão
    .target Dark Cleric Beryl
step << Priest
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Saia da Estalagem
step << Priest
    .goto Tirisfal Glades,59.18,46.49,50 >>Vá em direção à |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest
    #sticky
    #label Kel1
    .goto Tirisfal Glades,59.18,46.49
    .cast 2052 >>|cRXP_WARN_lançou|r |T135929:0|t[Lesser Heal Rank 2] |cRXP_WARN_on|r |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest
    #sticky
    #requires Kel1
    #completewith next
    .goto Tirisfal Glades,59.18,46.49
    .cast 1243 >>|cRXP_WARN_lançou|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Kel|r
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Heal e then Fortify |cRXP_FRIENDLY_Kel|r
    .complete 5650,1 --Heal and fortify Deathguard Kel
    .target Deathguard Kel
step << Priest
    #completewith next
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .bindlocation 2119,1
    .subzoneskip 159
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no andar de cima
    .turnin 5650 >>Entregue Vestes da escuridão
    .target Dark Cleric Beryl
step << Warlock
    #completewith UCHome << Warlock
    #completewith PorttoSilvermoon << !Warlock
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Eversong Woods
step << Warlock
    #completewith UCHome
    .goto Undercity,66.11,26.81,20,0
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,67.74,37.96,20 >>Pegue o elevador para descer em Undercity
step << Warlock
    #label UCHome
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Ronan|r
    .home >>Defina sua Pedra de Regresso em Cidade Baixa
    .target Innkeeper Norman
    .bindlocation 1497
step << Warlock
    #completewith PorttoSilvermoon
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,66.11,26.81,20 >>Pegue o elevador de volta para cima
step
    #label PorttoSilvermoon
    .goto Undercity,65.87,1.48,15,0 << !Warlock
    .goto Undercity,65.82,5.44,15,0 << !Warlock
    .goto Undercity,62.76,11.02,12,0 << !Warlock
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>Use o Orbe da Translocação para Luaprata
    .zoneskip Eversong Woods
step
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Saia de Luaprata
step
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >>Aprenda a rota de voo para Luaprata
    .target Skymistress Gloaming
    .isQuestAvailable 8463
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >>Aceite A Trilha da Morte
    .target Ranger Jaela
step
    .goto Eversong Woods,46.68,49.10,40 >>Vá para Falconwing Square
    .isQuestAvailable 8463

]])
