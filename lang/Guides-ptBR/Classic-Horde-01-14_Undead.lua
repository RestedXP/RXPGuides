if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-6 Clareiras de Tirisfal
#next 6-11 Tirisfal Glades

step << !Undead
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado para Morto-vivo. É recomendado que você escolha a mesma zona inicial em que começou|r
step << !Undead Mage
    #season 2
    #completewith next
    +Na Temporada de Descoberta, você não deveria começar fora da zona de início de sua raça como um Mago, pois você será incapaz de obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
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
    +|cRXP_WARN_Mate os |cRXP_ENEMY_Young Scavengers|r e os |cRXP_ENEMY_Duskbats|r. Saqueie-os até ter 60 cobre em valor de itens de vendedor (incluindo sua armadura)|r << Mage
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
    .vendor >>Lixo de Comerciante
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Venya|r e |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r << Mage
    .accept 1470 >>Aceite Perfurando o véu << Warlock
    .goto Tirisfal Glades,30.98,66.41 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >>Entregue Despertar bruto
    .accept 364 >>Aceite Os desmiolados
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,30.84,66.20
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Queila Ferraz|r
    .vendor >>Lixo de Comerciante
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
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Lixo de Comerciante
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    .cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
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
    .vendor >>Lixo de Comerciante
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
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue The Mentecapto Ones
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
    .accept 77672 >>Aceite A Runa Perdida << Warlock
    .target +Maximillion << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .accept 77671 >>Aceite Pesquisa de Feitiços << Mage
    .target +Isabella << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue The Mentecapto Ones
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
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Entregue Meditação da Morte-Viva
    .target Dark Cleric Duesten
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
    .goto Tirisfal Glades,34.32,56.79,0
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
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Mate |cRXP_ENEMY_Esqueletos Range-ossos|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som--xpgate
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+480 >>Farme até 480+/1400xp << Warrior/Rogue
    .xp 3+560 >>Farme até 560+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+940 >>Mate inimigos até atingir 940+/1400 de xp << Warrior/Rogue
    .xp 3+980 >>Mate inimigos até atingir 980+/1400 de xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    >>|cRXP_WARN_NÃO fique com menos de 1 de Prata|r << Mage/Warlock/Priest
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >>Entregue Agitando os Rattlecages
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r e |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >>Aceite Vasculhando Plangemortis
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >>Aceite Vale Teia da Noite
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .accept 380 >>Aceite Vale Teia da Noite
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Lixo de Comerciante
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .accept 77668 >>Aceite A Runa Perdida
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .accept 77668 >>Aceite A Runa Perdida
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .accept 77669 >>Aceite A Runa Escarlate
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .money <0.04
    .target David Trias
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .accept 77669 >>Aceite A Runa Escarlate
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >>Abandone Catando Deathknell
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
    #label NightWebStart
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
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
    >>Mate |cRXP_ENEMY_Trevateias Jovens|r perto da entrada da caverna
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Vá para dentro da caverna
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>Mate |cRXP_ENEMY_Trevateias|r dentro da caverna
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>Mate |cRXP_ENEMY_Trevateias|r dentro da caverna
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #loop
    .goto Tirisfal Glades,24.68,59.54,0
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
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_Faça um Atalho por Logout dentro da caverna pulando em cima de um triturador, poço ou prancha de madeira presa na parede, depois saia e entre novamente no jogo|r
    >>|cRXP_WARN_Alternativamente, corra de volta para Plangemortis|r
step
    #xprate <1.5
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r
    .turnin 3902 >>Entregue Vasculhando Plangemortis
    .target Deathguard Saltain
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Entregue A Runa Perdida
    .target Maximillion
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
    .vendor >>Lixo de Comerciante
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Entregue A Runa Perdida
    .target Dannal Stern
step
    #requires NightWebH
    #loop
	.goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
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
    .goto Tirisfal Glades,31.17,65.08
	>>Clique no |cRXP_PICK_Túmulo de Marla|r no chão
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
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
step << Mage
    #season 2
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Entregue Pesquisa de Feitiços
    .target Isabella
    .isQuestComplete 77671
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 381 >>Entregue A Cruzada Escarlate
    .accept 382 >>Aceite O mensageiro escarlate
    .target Executor Arren
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Entregue A Runa Escarlate
    .target David Trias
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Lixo de Comerciante
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
    #loop
    .goto Tirisfal Glades,34.08,59.51,50,0
    .goto Tirisfal Glades,35.34,56.55,50,0
    .goto Tirisfal Glades,36.83,56.85,50,0
    .goto Tirisfal Glades,37.76,59.38,50,0
    .goto Tirisfal Glades,37.51,62.99,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
	.goto Tirisfal Glades,36.46,69.49,50,0
	.goto Tirisfal Glades,36.85,70.02,50,0
	.goto Tirisfal Glades,37.42,69.58,50,0
	.goto Tirisfal Glades,38.05,69.79,50,0
	.goto Tirisfal Glades,37.91,69.22,50,0
	.goto Tirisfal Glades,38.03,68.77,50,0
	.goto Tirisfal Glades,38.49,68.28,50,0
	.goto Tirisfal Glades,38.72,67.07,50,0
	.goto Tirisfal Glades,38.59,66.25,50,0
	.goto Tirisfal Glades,38.65,65.07,50,0
	.goto Tirisfal Glades,37.62,65.36,50,0
	.goto Tirisfal Glades,36.93,65.38,50,0
	.goto Tirisfal Glades,36.51,65.42,50,0
	.goto Tirisfal Glades,36.85,66.59,50,0
	.goto Tirisfal Glades,37.45,67.95,50,0
	.goto Tirisfal Glades,36.93,68.16,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
    .xp 5+2350 >>Farme até 2350+/2800 xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calvino|r
    .accept 8 >>Aceite Palavra de ladino
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-11 Tirisfal Glades
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 12-14 Floresta de Pinhaprata; 12-17 Sertões

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .accept 365 >>Aceite Campos de mágoa
    .target Deathguard Simmer
step
    #loop
    .goto Tirisfal Glades,56.13,52.48,0
    .goto Tirisfal Glades,40.77,54.42,0
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_Ele é uma abominação que patrulha a estrada até Montalvo|r
    .accept 5481 >>Aceite Beijo do Gordo
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bowen Brisboise|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]. Guarde |T132889:0|t[Linho]. Isto permitirá que você crie uma varinha mais tarde
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r ou corra para Montalvo
    .target Anjo da Cura
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r e |cRXP_FRIENDLY_Zygand|r
    .accept 404 >>Aceite Uma tarefa podre
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>Entregue Informações cruciais
    .accept 427 >>Aceite Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.59,51.77
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r a |cRXP_FRIENDLY_Sra. Hibérnias|r|cRXP_BUY_. Compre um|r |T135421:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
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
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,404,1 --Collect Gladius (1)
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
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    .turnin 8 >>Entregue Palavra de ladino
    .home >>Defina sua Pedra de Regresso em Montalvo
    .target Innkeeper Renee
    .bindlocation 2119
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar da estalagem|r
    .accept 375 >>Aceite O frio da morte
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
    .turnin 5651 >>Entregue Em favor da escuridão
    .accept 5650 >>Aceite Vestes da escuridão
	.train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Dark Cleric Beryl
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Treine |T132269:0|t[Aparar]
    .target Austil de Mon
    .money <0.01
step << Rogue
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Marion Call
    .money >0.02
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gina Lang|r no segundo andar
    >>|cRXP_BUY_Compre |r |T133738:0|t[Grimório de Pacto de Sangue] |cRXP_BUY_dela|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Lixo de Comerciante
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .target Rupert Boch
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vance Merencório|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]
    >>|cRXP_WARN_Isso junto com|r |T136249:0|t[Alfaiataria] |cRXP_WARN_permitirá que você crie uma varinha depois|r
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Lance |T135929:0|t[Cura Inferior] e |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Necroguarda Querêncio|r
    >>|cRXP_WARN_Você precisa de Cura Inferior Grau 2 para esta missão|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>Pegue o |cRXP_LOOT_Gloom Weed|r no chão
    .complete 5481,1 --Gloom Weed (3)
step
    #xprate <1.5
    #completewith Pumkpins
    >>Mate qualquer |cRXP_ENEMY_Cão das Trevas Decrépito|r que ver. Saque-os por seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #xprate >1.49
    #completewith GloomWeed
    >>Mate qualquer |cRXP_ENEMY_Cão das Trevas Decrépito|r que ver. Saque-os por seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Mate |cRXP_ENEMY_Mortos Podres|r e |cRXP_ENEMY_Cadáveres Assolados|r. Saqueie-os para pegar |cRXP_LOOT_Garras|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #label GloomWeed
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Termine de coletar |cRXP_LOOT_Gloom Weed|r no chão
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .goto Tirisfal Glades,48.03,53.43,80,0
    .goto Tirisfal Glades,43.97,57.27,80,0
    .goto Tirisfal Glades,41.01,55.94,60,0
    .goto Tirisfal Glades,40.57,47.23,60,0
    .goto Tirisfal Glades,40.89,42.77,60,0
    .goto Tirisfal Glades,39.12,39.85,60,0
    >>Termine de matar os |cRXP_ENEMY_Darkhounds|r. Saque-os para obter seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Início coletando 3 pilhas de|r |T132889:0|t[Linho]|cRXP_WARN_. Isto será usado para fazer|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Se você não quer fazer isso ou prefere comprar da Casa de Leilões depois, pule este passo|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Início coletando 3 pilhas de|r |T132889:0|t[Linho]|cRXP_WARN_. Isto será usado para fazer|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_WARN_depois|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Tirisfal Farmers|r e os |cRXP_ENEMY_Tirisfal Farmhands|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Esquerdo|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #label Pumkpins
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Colete as |cRXP_LOOT_Abóboras|r encontradas no campo
    .complete 365,1 --Tirisfal Pumpkin (10)
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Tirisfal Farmers|r e os |cRXP_ENEMY_Tirisfal Farmhands|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Esquerdo|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Direito|r] << Rogue
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] << Mage
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] << Priest
    >>|cRXP_WARN_Qualquer um dos humanoides escarlates em Tirisfal pode soltar a peça do mapa|r << Rogue
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Nota de Feitiço|r << Mage
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Profecia|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Mate |cRXP_ENEMY_Guerreiros Escarlates|r
    >>|cRXP_WARN_Tenha cuidado: eles ganham 50% a mais de aparo por 8 segundos após executarem a animação de postura defensiva|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step << Rogue/Mage/Priest
    #season 2
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Direito|r] << Rogue
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] << Mage
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] << Priest
    >>|cRXP_WARN_Qualquer um dos humanoides escarlates em Tirisfal pode soltar a peça do mapa|r << Rogue
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Nota de Feitiço|r << Mage
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Profecia|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Usar|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>Mate |cRXP_ENEMY_Guelgar|r. Saque |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] dele << Mage
    >>Mate o |cRXP_ENEMY_Guelgar|r. Saqueie-o pela |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] << Priest
    >>|cRXP_WARN_Este é um élite nível 7 e não é fácil de matar. Pule-o por agora se for muito difícil|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos Glaciais]
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith BrillTurnin1
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .bindlocation 1497,1
    .cooldown item,6948,>0,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_ Anjo da Cura|r
step
    #softcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holland|r, ele patrulha ao redor do cemitério.
    .turnin 5481 >>Entregue Beijo do Gordo
    .accept 5482 >>Aceite Erva-do-demo
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r e |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entregue Uma tarefa podre
    .accept 426 >>Aceite Os Moinhos Invadidos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>Entregue Uma Nova Peste
    .turnin 365 >>Entregue Campos de mágoa
    .accept 368 >>Aceite Uma Nova Peste
    .accept 407 >>Aceite Campos de mágoa
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 370 >>Aceite Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r e |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entregue Uma tarefa podre
    .accept 426 >>Aceite Os Moinhos Invadidos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>Entregue Campos de mágoa
    .accept 407 >>Aceite Campos de mágoa
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 370 >>Aceite Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Zelote Escarlate Capturado|r no andar de baixo na parte traseira da estalagem
    .turnin 407 >>Entregue Campos de mágoa
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
    .turnin 5650 >>Entregue Vestes da Escuridão
    .train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar da estalagem|r
    .accept 375 >>Aceite O frio da morte
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 980 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Tente fazê-los enquanto aguarda Zepelins|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith NewPlague1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith NewPlague1
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #hardcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holland|r, ele patrulha ao redor do cemitério.
    .turnin 5481 >>Entregue Beijo do Gordo
    .accept 5482 >>Aceite Erva-do-demo
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Abate os |cRXP_ENEMY_Darkhounds|r. Saque-os por seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .xp 7+3260 >>Mate inimigos até atingir 3260+/4500 de xp
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .xp 7+2640 >>Farme até 2640+/4500 XP
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #label NewPlague1
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entregue Uma Nova Peste
    .accept 368 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Cartaz Procurado|r e |cRXP_FRIENDLY_Sevren|r dentro do prédio
    .accept 374 >>Aceite Prova da morte
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Aceite Procura-se: Olho de Verme
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Aceite Roubacovas
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 980 >>Treine suas magias de classe
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Rot Esconder-se Gnolls|r. Saqueie-os para |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>Abate qualquer tipo de |cRXP_ENEMY_Rote Esconder-se Gnoll|r. Saqueie-os para obter um |cRXP_LOOT_Cabeça de Gnoll Decepada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step
    #completewith next
    >>Pegue a |cRXP_LOOT_Erva-do-demo|r no chão
    >>|cRXP_WARN_Eles são encontrados perto de árvores na área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Roubacovas|r. Saqueie-os pelo |cRXP_LOOT_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Mongrels|r. Saqueie-os para pegar o |cRXP_LOOT_Ichor|r deles
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label Doomweed
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>Pegue a |cRXP_LOOT_Erva-do-demo|r no chão
    >>|cRXP_WARN_Eles são encontrados perto de árvores na área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Use |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Mongrels|r. Saqueie-os para pegar o |cRXP_LOOT_Ichor|r deles
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Mate o |cRXP_ENEMY_Olho de Verme|r. Saqueie-o para pegar a |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Mongrels|r. Saqueie-os para pegar o |cRXP_LOOT_Ichor|r deles
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Gnolls|r. Saqueie-os para obter o |cRXP_LOOT_Ichor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Rot Esconder-se Gnolls|r. Saqueie-os para |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Abate qualquer tipo de |cRXP_ENEMY_Rote Esconder-se Gnoll|r. Saqueie-os para obter um |cRXP_LOOT_Cabeça de Gnoll Decepada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Abata |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |cRXP_LOOT_Escamoso|r e uma |cRXP_LOOT_Cabeça de Murloc Decepada|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r para |T134241:0|t[|cRXP_LOOT_Shipwreck Cache Chave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Abata |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |cRXP_LOOT_Escamoso|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r para |T134241:0|t[|cRXP_LOOT_Shipwreck Cache Chave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Saqueie o |cRXP_PICK_Shipwreck Cache|r para |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_Use the|r |T134327:0|t[|cRXP_LOOT_Map Pieces|r] |cRXP_WARN_to create|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith Brill3
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #softcore
    #completewith Brill3
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Morra em (ou a oeste de) a seta|r
step
    #label DoomedWeed
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holland|r, ele patrulha ao redor do cemitério.
    .turnin 5482 >>Entregue Erva-do-demo
    .target Junior Apothecary Holland
    .isQuestComplete 5482
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Tirisfal|r] |cRXP_WARN_abaixo da ponte|r
    >>Saque o baú |cRXP_PICK_Enterrado Tesouro|r para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r e |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entregue Uma Nova Peste
    .accept 369 >>Aceite Uma Nova Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entregue Wanted: Olho de Verme
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entregue Roubacovas
    .accept 405 >>Aceite O Lich pródigo
    .accept 359 >>Aceite Deveres Renegados
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r e |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entregue Uma Nova Peste
    .accept 369 >>Aceite Uma Nova Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entregue Wanted: Olho de Verme
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entregue Roubacovas
    .accept 405 >>Aceite O Lich pródigo << Mage/Warlock
    .accept 359 >>Aceite Deveres Renegados
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .accept 354 >>Aceite Mortes na família
    .accept 362 >>Aceite Os moinhos assombrados
    .target Coleman Farthing
step << !Mage !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >>Abandone The Prodigal Lich
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 980 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Tente fazê-los enquanto aguarda Zepelins|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    #label Brill3
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elisa Callen|r
    .vendor >>Conserte sua arma
    .target Eliza Callen
step << Warrior
    #season 2
    #completewith AgamandStart
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >>Vá para o norte/oeste em direção a Moinhos dos Agamand
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Carta|r] |cRXP_WARN_Pode cair desses inimigos. Aceite a missão se cair.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
step
    #completewith ThurmanGregor
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mate |cRXP_ENEMY_Devlin|r. Saque-o pelos seus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto Tirisfal Glades,49.34,36.02
    >>Mate |cRXP_ENEMY_Nissa|r. Saque-a pelos seus |cRXP_LOOT_Restos|r. Ela pode estar dentro do prédio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Thurman|r e |cRXP_ENEMY_Gregor|r. Saque-os por seus |cRXP_LOOT_Remains|r. Eles podem patrulhar por aí
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #label MillsOverun
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Abate |cRXP_ENEMY_Soldiers|r e |cRXP_ENEMY_Bonecasters|r. Saqueie-os para |T134939:0|t[|cRXP_LOOT_Thurman's Carta|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3620,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Abate |cRXP_ENEMY_Soldiers|r e |cRXP_ENEMY_Bonecasters|r. Saqueie-os para |T134939:0|t[|cRXP_LOOT_Thurman's Carta|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Abate |cRXP_ENEMY_Soldiers|r e |cRXP_ENEMY_Bonecasters|r. Saqueie-os para |T134939:0|t[|cRXP_LOOT_Thurman's Carta|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    >>Abate |cRXP_ENEMY_Soldiers|r e |cRXP_ENEMY_Bonecasters|r. Saqueie-os para |T134939:0|t[|cRXP_LOOT_Thurman's Carta|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3620 >>Triture até 3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+4320 >>Mate inimigos até atingir 4320+/6500 de xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3840 >>Triture até 3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3140 >>Triture até 3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+2180 >>Triture até 2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+3230 >>Triture até 3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+2510 >>Triture até 2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .xp 9+1460 >>Farme até 1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #season 2
    >>Mate |cRXP_ENEMY_Guelgar|r. Saque |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] dele << Mage
    >>Mate o |cRXP_ENEMY_Guelgar|r. Saqueie-o pela |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] << Priest
    >>|cRXP_WARN_Este é um élite nível 7 e não é fácil de matar. Pule-o por agora se for muito difícil|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item
    .train 401765 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos Glaciais.]
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Volte para Brill
step
    #softcore
    #completewith FoodandWater2
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Vá para Os Moinhos Invadidos
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ivete Palhares|r e |cRXP_FRIENDLY_Eurico Palhares|r
    .turnin 361 >>Entregue A Carta Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.trainer >>Treine suas magias de classe
    .target Dark Cleric Beryl
step << Warrior
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandone Caminho da Defesa
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .trainer >>Treine suas magias de classe
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron|r dentro da estalagem
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 707 >>Treine suas magias de classe
    .target Rupert Boch
step << Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r dentro da estalagem
    .trainer >>Treine suas magias de classe
    .accept 1885 >>Aceite Júnio Aquino
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r dentro da estalagem
    .accept 1881 >>Aceite Falar com Anastasia
    .target Cain Firesong
step
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Clique no crânio no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Abate o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >>Entre em Cidade Baixa
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carendin|r no Bairro da Magia
    .turnin 1478 >>Entregue Convocação de Hidalgo
    .accept 1473 >>Aceite Criatura do Vazio
step << Warlock
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Captain Perrine|r para conseguir um |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Saque |cRXP_PICK_Baú de Perrine|r para |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Mate o |cRXP_ENEMY_Capitão Perrine|r, os |cRXP_ENEMY_Fanáticos Escarlates|r e os |cRXP_ENEMY_Missionários Escarlates|r. Saqueie-os para obter os |cRXP_LOOT_Anéis de Insígnia Escarlate|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Captain Perrine|r para conseguir um |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Saqueie |cRXP_PICK_Baú do Perrine|r no chão para pegar |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>Vá para Undercity através dos esgotos
    .zoneskip Undercity
step
    #xprate >1.49
    #ah << Priest
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>Vá para Undercity através dos esgotos
    .zoneskip Undercity
--XX Priest skips on 1.5x unless they go for a Wand. No reason to go Undercity if skipping Lich quest and not setting hearth
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arquibaldo|r no Distrito da Guerra
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brom|r
    .train 2575 >>Treine |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isso vai permitir que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos para criar|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Basílio Frias|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre uma|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_BUY_da Casa de Leilão|r << Priest
    >>|cRXP_BUY_Compre uma|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_BUY_da Casa de Leilões se desejar|r << Mage/Warlock
    >>|cRXP_WARN_Se você fez isso e estava coletando|r |T132889:0|t[Linho] |cRXP_WARN_anteriormente, você pode vender seu|r |T132889:0|t[Linho] |cRXP_WARN_na Casa de Leilões|r << Priest
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << !Priest
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carendin|r no Bairro da Magia
    .turnin 1473 >>Entregue Criatura do caos
    .accept 1471 >>Aceite A Vinculação
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Use as|r |T134416:0|t[Runas de Evocação] |cRXP_WARN_no Círculo de Evocação|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carinda|r
    .turnin 1471 >>Entregue A Vinculação
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Natanael Hermógenes|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre|r |T135425:0|t[Facas de Arremesso Afiadas] |cRXP_BUY_dele|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Lembre-se de equipar as|r |T135425:0|t[Facas de Arremesso Afiadas] |cRXP_WARN_quando estiver no nível 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Keen Arremessando Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1885 >>Entregue Júnio Aquino
    .accept 1886 >>Aceite Os Sicários
    .target Mennet Carkad
step << Mage
    #optional
    .abandon 1883 >>Abandone Falar com Un'thuwa, caso contrário você não conseguirá aceitar a próxima missão
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro da Magia
    .turnin 1881 >>Entregue Falar com Anastasia
    .accept 1882 >>Aceite A Fazenda Balnir
    .target Anastasia Hartwell
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bethor|r no Bairro da Magia
    .turnin 405 >>Entregue O Lich Pródigo
    .accept 357 >>Aceite A Identidade do Lich
    .target Bethor Iceshard
step << Mage/Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bethor|r no Bairro da Magia
    .turnin 405 >>Entregue O Lich Pródigo
    .target Bethor Iceshard
step
    #xprate <1.5
    #label UCHome
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norman|r
    .home >>Defina sua Pedra de Regresso em Cidade Baixa
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label LogoutSkip1
step << skip
    #xprate <1.5 << !Mage !Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_realize um Logout Pular posicionando seu personagem na parte mais alta da escada mais baixa até parecer que está flutuando, depois saia e entre novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_Clique aqui para ver um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
step << skip -- !Mage !Warlock
    #xprate >1.49
    #ah << Priest
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realize um Logout Pular pulando em cima da pilha de barris, depois faça logout e entre novamente|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Faça um Atalho por Logout pulando sobre o triturador da Carroça Carniceira, depois, saia e entre novamente|r << Rogue
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
step
    #xprate <1.5 << Priest
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>Saia de Undercity
    .zoneskip Tirisfal Glades
step << Undead Rogue
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Se você ver|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrulha a estrada entre Brill e The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>Abandone A Identidade do Lich
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entregue Proof of Óbito
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 371 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_Use o|r |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r] |cRXP_WARN_para criar|r |T134328:0|t[|cRXP_LOOT_Memorando Escarlate Forjado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jamie Noré|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_com|r |cRXP_FRIENDLY_ela|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 1820 >>Entregue Falar com Coleman
    .target Coleman Farthing
step << Warrior
    #season 2
    #completewith UnluckyRogue
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 359 >>Entregue Deveres Renegados
    .accept 360 >>Aceite Retornar ao Magistrado
    .accept 356 >>Aceite Patrulha da Retaguarda
    .target Deathguard Linnea
step << Warrior
    #season 2
    #completewith ArriveBalnir
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ArriveBalnir
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>Vá para Balnir Farmstead
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>Use |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #completewith next
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Saque qualquer planta no chão para obter uma |cRXP_PICK_Balnir Snapdragon|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Use |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>|cRXP_WARN_Use as|r |T134332:0|t|cRXP_LOOT_[Anotações de Boticário]|r |cRXP_WARN_para criar|r |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Use o|r |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mate os |cRXP_ENEMY_Scarlet Friars|r e os |cRXP_ENEMY_Scarlet Zealots|r. Saqueie-os pelos |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Abate os |cRXP_ENEMY_Scarlet Friars|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    .goto Tirisfal Glades,78.82,56.14
    >>Abate o |cRXP_ENEMY_Capitão Vidálio|r dentro da torre
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate >1.49
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mate os |cRXP_ENEMY_Scarlet Friars|r e os |cRXP_ENEMY_Scarlet Zealots|r. Saqueie-os pelos |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Colete 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_para sua Varinha Mágica Inferior. Esta é a última chance de conseguir o suficiente antes da Floresta de Pinhaprata|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #season 2
    #completewith ViciousVenom
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #completewith ViciousVenom
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label ViciousVenom
    #requires Friars2
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Mate os |cRXP_ENEMY_Vicious Noite Teia Aranhas|r. Saqueie-os pelo |cRXP_LOOT_Venenom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step << Warrior
    #season 2
    #xprate >1.49
    #optional
    #completewith next
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #season 2
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate >1.49
    .xp 11+2950 >>Triture até 2950+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625 (374 OPT)+700 (375 OPT) = 3900 -> 5850
--XX +625 (374 OPT) = 3200 -> 4800
--XX +700 (375 OPT) = 3275 -> 4910
step
    #xprate >1.49
    #optional
    .xp 11+3890 >>Triture até 3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate >1.49
    #optional
    .xp 11+4000 >>Triture até 4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #optional
    .xp 11+4940 >>Triture até 4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0,1
step
    #xprate >1.49
    #completewith ANewPlagueFinal
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>Saque |cRXP_PICK_Gunther's Books|r para obter |cRXP_LOOT_The Lich's Spellbook|r na ilha em Brightwater Lake
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >>Morra |cRXP_WARN_na ilha menor|r e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 372 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step
    #xprate >1.49
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entregue Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Entregue Retornar ao Magistrado
    .turnin 355 >>Entregue Falar com Sevren
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >>Abandone Em Guerra com The Scarlet Cruzada
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entregue Proof of Óbito
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate >1.49
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entregue Proof of Óbito
    .target Deathguard Burgess
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_com|r |cRXP_FRIENDLY_ela|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seu lixo, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Fale com |cRXP_FRIENDLY_Magali|r
    .target Penny Hawkins
    .train 425447,1
step
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Zelote Escarlate Capturado|r e o |cRXP_FRIENDLY_Montanhista Capturado|r no andar de baixo, no fundo da estalagem
    .turnin 407 >>Entregue Campos de mágoa
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >>Entregue Uma Nova Peste
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Severaldo|r (andar de baixo) dentro da estalagem
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Abate |cRXP_ENEMY_Severaldo|r, depois fale com |cRXP_FRIENDLY_Magali|r no andar de cima
    .gossipoption 110751 >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1

--XX Start of <1.5x section (undercity hs)


step
    #xprate <1.5
    #completewith UndercityLS2
    .hs >>Use sua Pedra de Retorno em Undercity
    .cooldown item,6948,>0,1
    .bindlocation 1497,1
    .zoneskip Undercity
step
    #xprate <1.5
    #completewith UndercityLS2
    .zone Undercity >>Viaje para Undercity
    .cooldown item,6948,<0
step
    #xprate <1.5
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
step << Mage
    #xprate <1.5
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro da Magia
    .turnin 1882 >>Entregue The Balnir Farmstead
    .target Anastasia Hartwell
step
    #optional << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Bethor|r
    .turnin 357 >>Entregue A Identidade do Lich
    .accept 366 >>Aceite Devolver o Livro
    .target Bethor Iceshard
    .isQuestComplete 1886 << Rogue
step << Rogue
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,372,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #xprate <1.5
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    #xprate <1.5
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 1198,1,372,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #xprate <1.5
    #optional
    #completewith CaptainMelrache
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1886 >>Entregue The Deathstalkers - Missão - Missão
    .target Mennet Carkad
    .isQuestComplete 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1899 >>Aceite Os Sicários
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,55.43,76.87
    >>Pegue |cRXP_PICK_Estante de Livros de Andron|r atrás de |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1899 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1978 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .turnin 1978 >>Entregue The Deathstalkers - Missão - Missão
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Pular by posicionando seu personagem na borda do círculo até parecer que está flutuando, depois logging out e back in|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >>https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_clique aqui para um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .isQuestTurnedIn 1886
step << Rogue
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Bethor|r
    .turnin 357 >>Entregue A Identidade do Lich
    .accept 366 >>Aceite Devolver o Livro
    .target Bethor Iceshard
    .isOnQuest 1886
step << skip
    #xprate <1.5
    #label UndercityLS2
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_realize um Logout Pular posicionando seu personagem na parte mais alta da escada mais baixa até parecer que está flutuando, depois saia e entre novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_Clique aqui para ver um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
    .isOnQuest 1886 << Rogue
step
    #xprate <1.5
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>Saia de Undercity
    .zoneskip Tirisfal Glades
step
    #xprate <1.5
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 356 >>Entregue Patrulha da retaguarda
    .target Deathguard Linnea
step
    #xprate <1.5
    #label CaptainMelrache
    .goto Tirisfal Glades,79.52,25.14
    >>Mate o |cRXP_ENEMY_Capitão Metrache|r e seus |cRXP_ENEMY_Scarlet Bodyguards|r na torre. Saqueie-os pelos seus |cRXP_LOOT_Anéis de Insígnia Escarlate|r
    >>|cRXP_WARN_Grind mobs en route|r << Warrior/Mage
    .complete 372,1 --Captain Melrache (1)
    .mob +Captain Melrache
    .complete 372,2 --Scarlet Bodyguard (2)
    .mob +Scarlet Bodyguard
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step
    #xprate <1.5
    #label FinishRings
    #loop
    .goto Tirisfal Glades,79.04,28.54,0
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    >>Termine de coletar |cRXP_LOOT_Anéis de Insígnia Escarlate|r
    .complete 374,1 --Scarlet Insignia Ring (10)
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,79.04,28.54,0
    .goto Tirisfal Glades,79.36,26.21,40,0
    .goto Tirisfal Glades,79.04,28.54,40,0
    .goto Tirisfal Glades,78.92,31.42,40,0
    .goto Tirisfal Glades,77.89,35.49,40,0
    .goto Tirisfal Glades,78.65,36.09,40,0
    >>|cRXP_WARN_Colete 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_para sua Varinha Mágica Inferior. Esta é a última chance de conseguir o suficiente antes da Floresta de Pinhaprata|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Warrior
    #xprate <1.5
    #season 2
    #completewith next
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,72.15,33.17,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    >>Conclua de matar os |cRXP_ENEMY_Duskbats|r. Saqueie-os para obter as |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Warrior
    #xprate <1.5
    #season 2
    #loop
    .goto Tirisfal Glades,72.15,33.17,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    .goto Tirisfal Glades,72.15,33.17,50,0
    .goto Tirisfal Glades,70.13,34.46,50,0
    .goto Tirisfal Glades,67.29,34.92,50,0
    .goto Tirisfal Glades,66.71,37.87,50,0
    .goto Tirisfal Glades,73.78,32.71,50,0
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    .goto Tirisfal Glades,68.19,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gunther|r
    .turnin 366 >>Entregue Devolver o Livro
    .accept 409 >>Aceite Provando Lealdade
    .target Gunther Arcanus
step
    #xprate <1.5
    #optional
    #label CandleBeckoning
    #completewith Nefara
    .goto Tirisfal Glades,68.16,42.01
    >>Abra o |cRXP_PICK_Caixote de Velas|r no chão. Saqueie-o para a |cRXP_LOOT_Vela de Chamamento|r
    .collect 3080,1,409,1 --Collect Candle of Beckoning (1)
    .isOnQuest 409
step
    #xprate <1.5
    #optional
    #requires CandleBeckoning
    #completewith next
    .goto Tirisfal Glades,66.64,44.89
    +Clique em |cRXP_PICK_Lillith's Janta Table|r para invocar |cRXP_ENEMY_Nefara|r
    .isOnQuest 409
step
    #xprate <1.5
    #label Nefara
    .goto Tirisfal Glades,66.70,45.05
    >>Mate |cRXP_ENEMY_Nefara|r
    .complete 409,1 --Lillith Nefara (1)
    .target Lillith Nefara
step
    #xprate <1.5
    .goto Tirisfal Glades,68.20,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gunther|r
    .turnin 409 >>Entregue Provando Lealdade
    .accept 411 >>Aceite O Lich Pródigo Retorna
    .target Gunther Arcanus
step
    #xprate <1.5
    .xp 11+4900 >>Triture até 4900+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575
--XX +625 (374 OPT)+700 (375 OPT) = 3900
--XX +625 (374 OPT) = 3200
--XX +700 (375 OPT) = 3275
--XX moved xpgate to after turnin so people don't turn in whilst grinding
step
    #xprate <1.5
    #optional
    .xp 11+5525 >>Triture até 5525+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step
    #xprate <1.5
    #optional
    .xp 11+5600 >>Triture até 5600+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #optional
    .xp 11+6225 >>Triture até 6225+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <1.5
    #hardcore
    #completewith CrusadewarWon
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith CrusadewarWon
    .goto Tirisfal Glades,64.40,42.65
    .deathskip >>Nade para o oeste, morra para os mobs e renasça no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <1.5
    #label CrusadewarWon
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 372 >>Entregue Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step
    #xprate <1.5
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entregue Proof of Óbito
    .target Deathguard Burgess
step
    #xprate <1.5
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .isQuestAvailable 375
step
    #xprate <1.5
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar

    --XX End of <1.5x section



step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 588 >>Treine |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145 >>Treine |T135812:0|t[Bola de Fogo Rank 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Treine |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #completewith Entersilverpine
    >>|cRXP_WARN_Se você ver|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrulha a estrada entre Brill e The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate >1.49
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 356 >>Entregue Patrulha da retaguarda
    .target Deathguard Linnea

--XX Optional Undercity Section Start: If Priest needs wand, Rogue/Warrior needs vendor wep



step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Tirisfal Glades,61.80,65.06,20 >>Entre em Cidade Baixa
    .zoneskip Undercity
step << Priest/Rogue/Warrior
    #optional
    #completewith LesserMagicWand << Priest
    #completewith RogueCutlass << Rogue
    #completewith WarriorClaymore << Warrior
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step << Priest
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre uma|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_BUY_da Casa de Leilão|r
    >>|cRXP_WARN_Se você fez isso e estava coletando|r |T132889:0|t[Linho] |cRXP_WARN_anteriormente, você pode vender seu|r |T132889:0|t[Linho] |cRXP_WARN_na Casa de Leilões|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << Rogue
    #ssf
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #ah
    #optional
    #label RogueCutlass
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
    #ssf
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #ah
    #optional
    #label WarriorClaymore
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 1198,1,435,1 --Collect Claymore (1)
    .money <0.2950
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
step << Warrior
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << skip --Warrior/Rogue
    #xprate >1.49
    #season 0,1 << Warrior
    #optional
    #label LogoutSkip3
    .goto Undercity,61.10,54.11
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realize um Logout Pular pulando em cima da pilha de barris, depois faça logout e entre novamente|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
step << Warrior
    #season 2
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.03,70.30,12 >>Vá até |cRXP_FRIENDLY_Dorac|r no Apothecarium
    .train 403475,1
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorac Covas <Cirurgião Tático>|r em Undercity
    >>Entregue as |cRXP_LOOT_Cabeças|r que coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_Use the|r |T134455:0|t[Runa Fragmentos] |cRXP_WARN_to create|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
    .zoneskip Undercity,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .use 204703
    .itemcount 204703,1
    .zoneskip Undercity,1
step << skip --Warrior
    #xprate >1.49
    #season 2
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Pular by jumping on top of the abomination's abdomen, then logging out and back in|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
step << Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
    .train 2652,1 --Touch of Weakness not trained
step << Rogue/Warrior/Priest
    #xprate <1.5
    #optional
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Entregue O Lich Pródigo Retorna
    .target Bethor Iceshard
    .zoneskip Undercity,1
step << skip --Rogue/Warrior
    #xprate <1.5
    #optional
    #label UndercityLS3
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_realize um Logout Pular posicionando seu personagem na parte mais alta da escada mais baixa até parecer que está flutuando, depois saia e entre novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_Clique aqui para ver um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
    .itemcount 7231,<1 << Rogue --Astor's Letter of Introduction (0)
--XX Priests only go Undercity if they need to make/buy a Lesser Magic Wand (still midway through the steps of doing so)
--XX If rogues haven't killed Astor yet, they logout skip early before doing Rogue quest turnins
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Victor|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Transforme todo seu|r |T132889:0|t[Linho] |cRXP_WARN_em|r |T132890:0|t[Rebite of Linho]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Victor|r
    .train 7623 >>Treine |T132662:0|t[Veste de Linho Marrom]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Compre |r |T132891:0|t[Fio Grosso] |cRXP_BUY_dela|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    >>|cRXP_WARN_Crie o máximo de|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que conseguir|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Tadeu Uchoa|r|cRXP_BUY_. Compre um|r |T133942:0|t[Bastão de Cobre] |cRXP_BUY_e|r |T135435:0|t[Madeira Simples] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Desencante todas as|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que você fez e crie um|r |T135225:0|t[Bastão Rúnico de Cobre]
    >>|cRXP_WARN_Se você não obteve um|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_então compre um de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_se houver um disponível. Caso contrário, termine este passo depois|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Augusto Incantum|r
    .train 14293 >>Aprenda |T135139:0|t[Varinha Mágica Inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #label LesserMagicWand
    >>|cRXP_WARN_Criar uma|r |T135139:0|t[Varinha Mágica Inferior]
    >>|cRXP_WARN_Se você não obteve um|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_então compre um de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_se houver um disponível. Caso contrário, termine este passo depois|r
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
step << skip --Priest
    #optional
    #label UndercityLS3
    .goto 1458,61.990,62.272
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realize um Logout Pular pulando em cima da pilha de barris, depois faça logout e entre novamente|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1886 >>Entregue The Deathstalkers - Missão - Missão
    .target Mennet Carkad
    .isQuestComplete 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1899 >>Aceite Os Sicários
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,55.43,76.87
    >>Pegue |cRXP_PICK_Estante de Livros de Andron|r atrás de |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1899 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1978 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Rogue
    #optional
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .turnin 1978 >>Entregue The Deathstalkers - Missão - Missão
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Rogue
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Position your character on the edge of the circle until it looks like they're floating. Perform a Logout Pular by logging out and back in|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >>https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_clique aqui para um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .isQuestTurnedIn 1886
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>Saia de Undercity
    .zoneskip Tirisfal Glades
    .isQuestTurnedIn 1886
step << Rogue/Warrior/Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
    .isQuestAvailable 1978

--XX Optional Undercity Section End: If Priest needs wand, Rogue/Warrior needs vendor wep

step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .zoneskip Silverpine Forest
]])

RXPGuides.RegisterGuide([[
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#xprate <1.99
<< Horde
#version 11
#defaultfor Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#classic
#tbc
#era/som--h
#name 12-14 Floresta de Pinhaprata
#next 12-17 Sertões


step << Undead Warrior
    #season 2
    #sticky
    #optional
    #completewith RuneOfDevastateUndead
    +Não apague suas |cRXP_LOOT_Cabeça Decepada|r. Elas serão entregues depois por |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .itemcount 204477,1
    .train 403475,1
step << Undead Rogue
    #sticky
    #completewith Rot HideCluesTurnIn
    >>|cRXP_WARN_Se você ver|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrulha a estrada entre Brill e The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>Mate os |cRXP_ENEMY_Worgs|r enquanto viaja em direção a |cRXP_FRIENDLY_Erland|r. Saque-os pelos |cRXP_LOOT_Corações|r.
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Orlando|r para começar a escolta
    >>|cRXP_WARN_Certifique-se de estar com a vida e a mana cheias antes de começar esta missão|r
    .accept 435,1 >>Aceite Uma escolta para Orlando
    .target Deathstalker Erland
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Worgs|r. Saqueie-os pelos |cRXP_LOOT_Corações|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>Acompanhe |cRXP_FRIENDLY_Erland|r com segurança até |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_ENEMY_Worgs|r |cRXP_WARN_Podem aparecer um em cima do outro, coma e beba sempre que conseguir|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Entregue Uma escolta para Orlando
    .accept 429 >>Aceite Corações selvagens
    .accept 449 >>Aceite O Relatório dos Furtivos
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>Mate os |cRXP_ENEMY_Worgs|r. Saqueie-os pelos |cRXP_LOOT_Corações|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #softcore
    #completewith ProveyourWorth
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >>Viaje para The Sepulcher
    .subzoneskip 228
step
    #label ProveyourWorth
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Aceite Prove Your Worth
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guida Farrow|r
    .vendor >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Cogumelo] |cRXP_BUY_dele|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_dele, se estiverem disponíveis|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r e |cRXP_FRIENDLY_Podrig|r
    .accept 477 >>Aceite Border Crossings
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>Aceite Supplying the Sepulcher
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r
    .accept 477 >>Aceite Border Crossings
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>Entre na cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r na cripta
    .turnin 449 >>Entregue O Relatório das Aranhas da Morte
    .accept 3221 >>Aceite Fale com Renferrel
    .accept 437 >>Aceite Os Campos Mortos
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Entregue Corações selvagens
    .turnin 445 >>Entregue Entrega na Floresta de Pinheiros Prateados
    .turnin 3221 >>Entregue para Renferrel
    .accept 1359 >>Aceite Entrega de Zinge
    .accept 447 >>Aceite Uma Receita para a Morte
    .accept 430 >>Aceite Reencontrando Quintino
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>Mate os |cRXP_ENEMY_Moonrage Whitescalps|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Entregue Prove Your Worth
    .accept 422 >>Aceite A loucura de Arugal
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >>Vá para Valgan's Field
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>Entre na casa e vá para o segundo andar. Pegue os |cRXP_PICK_Livros de Feitiço Empoeirados|r no chão
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80,0
    .subzone 239 >>Vá para A Horta do Ivar
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quintino Yorick|r no segundo andar da casa
    .turnin 430 >>Entregue Devolver to Quinn
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r do lado de fora
    .accept 425 >>Aceite Ivar, o Imundo
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>Mate |cRXP_ENEMY_Ivar, o Imundo|r. Saqueie-o para pegar sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ivar está protegido por dois|r |cRXP_ENEMY_Ravenclaw Slaves|r |cRXP_WARN_dentro do celeiro. Você pode puxar um deles isoladamente enquanto ele patrulha|r
    >>|cRXP_WARN_Eles são imunes a Medo!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Entregue Ivar, o Imundo
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Cuidado! Pode haver um|r |cRXP_ENEMY_Filho de Arugal|r |cRXP_WARN_na área! Ele é um elite de nível 25, mantenha distância dele!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Mate os |cRXP_ENEMY_Ursos|r. Saque-os para obter seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Gnolls|r ao redor de Os Campos Mortos até que |cRXP_ENEMY_Vergasta|r apareça. Mate e saqueie-a para obter sua |cRXP_LOOT_Essência|r
    >>|cRXP_WARN_Eles são imunes a Medo!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Mate os |cRXP_ENEMY_Ursos|r. Saque-os para obter seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Mate as |cRXP_ENEMY_Aranhas|r. Saque-as para obter seu |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_pois é impossível matá-la!|r << !Mage !Warlock
    >>|cRXP_WARN_Cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_é difícil mas possível. Possui um escudo de 130 de dano com recarga de 15s e uma habilidade de choque instantâneo de 110 de dano|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quim Sanatha|r
    .vendor >>Lixo de Vendedor
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>Mate as |cRXP_ENEMY_Aranhas|r. Saque-as para obter seu |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_pois é impossível matá-la!|r << !Mage !Warlock
    >>|cRXP_WARN_Cuidado com|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_é difícil mas possível. Possui um escudo de 130 de dano com recarga de 15s e uma habilidade de choque instantâneo de 110 de dano|r << Mage/Warlock
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspi
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>Mate os |cRXP_ENEMY_Ursos|r. Saque-os para obter seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #softcore
    #completewith ArugalTurnin
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100,0
    .subzone 228 >>Volte para o Sepulcro
step
    #xprate <1.5
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >>Entregue A loucura de Arugal
    .accept 423 >>Aceite A loucura de Arugal
    .target Dalar Dawnweaver
step
    #xprate >1.49
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >>Entregue A loucura de Arugal
    .target Dalar Dawnweaver
step
    #optional
    #label ArugalTurnin
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>Entre na cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r na cripta
    .turnin 437 >>Entregue Os Campos Mortos
    .accept 438 >>Aceite Os Campos Apodrecidos
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guida Farrow|r
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r
    .vendor >>Lixo de Vendedor
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_dele, se estiverem disponíveis|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andrea|r
    .vendor >>Compre |T132491:0|t[|cRXP_FRIENDLY_Cinto do Homem Sábio|r] com ela se estiver disponível
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >>Compre |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r] dela se estiver disponível
    .target Alexandre Lefevre
    .money <0.2633
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe o|r |T132491:0|t[|cRXP_FRIENDLY_Cinto do Homem Sábio|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe as|r |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>Clique no |cRXP_PICK_Barco|r ao lado do cais
    .turnin 438 >>Entregue Os Campos Apodrecidos
    .accept 439 >>Aceite Pistas dos Putricouro
step
    #xprate <1.5
    #loop
    .goto Silverpine Forest,56.06,45.75,0
    .goto Silverpine Forest,56.06,45.75,40,0
    .goto Silverpine Forest,55.45,49.18,40,0
    .goto Silverpine Forest,56.80,45.86,40,0
    >>Mate |cRXP_ENEMY_Glutão Lunafúria|r e |cRXP_ENEMY_Almanegra Lunafúria|r. Saque-os para pegar seus |cRXP_LOOT_Grilhões|r
    >>|cRXP_WARN_Cuidado!|r |cRXP_ENEMY_Moonrage Darksouls|r |cRXP_WARN_entram em fúria quando estão abaixo de 25% de vida. Abate-os rapidamente!|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
step << Mage
    #season 2
    #completewith BorderCrossings
    >>Mate os |cRXP_ENEMY_Dalaran Apprentices|r. Saqueie-os para obter |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Feitiço Notes: TENGI RONEERA|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step
    #hardcore
    .goto Silverpine Forest,49.89,60.33
    >>Clique no |cRXP_PICK_Caixote|r no acampamento
    >>|cRXP_WARN_Cuidado! Esses inimigos lançam|r |T135846:0|t[Seta de Gelo] |cRXP_WARN_e fogem com pouca vida. Puxe-os para trás e mate-os um de cada vez até que você consiga clicar com segurança no caixote|r
    .turnin 477 >>Entregue Cruzando fronteiras
    .accept 478 >>Aceite Mapas e runas
    .mob Dalaran Apprentice
step
    #label BorderCrossings
    #softcore
    .goto Silverpine Forest,49.89,60.33
    >>Clique no |cRXP_PICK_Caixote|r no acampamento
    >>|cRXP_WARN_Cuidado, esses inimigos lançam|r |T135846:0|t[Seta de Gelo]|r
    .turnin 477 >>Entregue Cruzando fronteiras
    .accept 478 >>Aceite Mapas e runas
    .mob Dalaran Apprentice
step << Mage
    #season 2
    #loop
    .goto Silverpine Forest,49.89,60.33,0
    .goto Silverpine Forest,52.6,56.6,20,0
    .goto Silverpine Forest,56.6,62.8,20,0
    .goto Silverpine Forest,55.6,72.8,20,0
    .goto Silverpine Forest,51.6,71.0,20,0
    .goto Silverpine Forest,50.8,61.6,20,0
    >>Mate os |cRXP_ENEMY_Dalaran Apprentices|r. Saqueie-os para obter |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Feitiço Notes: TENGI RONEERA|r]|r
    .train 401767,1
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401767 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notes: TENGI RONEERA|r] |cRXP_WARN_para aprender|r |T132871:0|t[Regeneração.]
    .use 208754
    .itemcount 211779,1
step << Rogue
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Saque o |cRXP_PICK_Baú Ferrugem|r ao lado da entrada da Bastilha da Presa Negra para |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    >>|cRXP_WARN_Usar|r |T132307:0|t[Disparada] |cRXP_WARN_e depois pule da ponte até o baú|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step << Rogue
    #season 2
    .train 424984 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] |cRXP_WARN_para treinar|r |T132375:0|t[Talho de Sabre]
    .use 208772
    .itemcount 208772,1
step
    #completewith next
    #hardcore
    .goto Silverpine Forest,45.51,41.26,100 >>Volte para o Sepulcro
    .subzoneskip 228
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r e |cRXP_FRIENDLY_Dalar Tessalba|r
    .turnin 478 >>Entregue Mapas e runas
    .accept 481 >>Aceite Análise de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Entregue A loucura de Arugal
    .turnin 481 >>Entregue Análise de Dalar
    .accept 482 >>Aceite Dalaran's Intentions
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r e |cRXP_FRIENDLY_Dalar Tessalba|r
    .turnin 478 >>Entregue Mapas e runas
    .accept 481 >>Aceite Análise de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 481 >>Entregue Análise de Dalar
    .accept 482 >>Aceite Dalaran's Intentions
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Entregue As intenções de Dalaran
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>Entre na cripta
step
    #label Rot HideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r na cripta
    .turnin 439 >>Entregue Pistas dos Putricouro
    .target High Executor Hadrec
step
    #xprate <1.5 << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Entregue Supplying the Sepulcher << Undead
    .accept 6323 >>Aceite Carona para a Cidade Baixa << Undead
    .fp Sepulcher >>Pegue o ponto de voo do Sepulcro << !Undead
    .fly Undercity >>Voe para Undercity << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    #xprate >1.49
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Entregue Supplying the Sepulcher
    .accept 6323 >>Aceite Carona para a Cidade Baixa
    .fly Undercity >>Voe para Undercity
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    #xprate <1.5
    .hs >>Use sua Pedra de Regresso para ir a Cidade Baixa
    .use 6948
    .zoneskip Undercity
    .bindlocation 1497,1





    --XX Start of Undercity clown fiesta section





step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >>Entregue Carona para a Cidade Baixa
    .accept 6322 >>Aceite Miguel Garreta
    .target Gordon Wendham
step << Rogue
    #ssf
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #ah
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 2027,1,809,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .turnin 6322 >>Entregue Miguel Garreta
    .target Michael Garrett
step << Undead Warrior
    #xprate <1.5
    #optional
    .goto Undercity,47.41,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalto Flores|r
    .train 285 >>Treine suas magias de classe
    .target Baltus Fowler
    .dungeon RFC
    .xp <16,1
--XX 16+ Only for Heroic Strike, Undead only as other races train elsewhere more effectively. RFC So warriors have 16 spells for RFC
step << Undead Rogue/Undead Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Entregue O Lich Pródigo Retorna
    .target Bethor Iceshard
    .isQuestComplete 411
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Mary Edras
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >>Crie |T133685:0|t[Linen Bandages] até perícia 40 ou superior
    .itemcount 2589,1 --Linen Cloth (1+)
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3276 >>Treine |T133688:0|t[Bandagem Grossa de Linho]
    .target Mary Edras
    .skill firstaid,<40,1
step << Rogue/Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >>Crie |T133688:0|t[Heavy Linen Bandages] até perícia 50 ou superior
    .itemcount 2589,2 --Linen Cloth (2+)
step << Rogue/Warrior
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3274 >>Treine Socorrista Profissional
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1886 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .isOnQuest 1898 << Undead
--XX Only train if you were directed here for class quest as an Undead
step << Undead Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <16,1
    .isOnQuest 1898 << Undead
step << Undead Rogue
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Optional left out on purpose
--XX This whole section of training across 3 different areas, 2 different xp rates and RFC is solidly in the top 10 worst experiences of my life and im still not 100% happy with it xd
step << Undead Rogue
    #optional
    #xprate <1.5
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1899 >>Aceite Os Sicários
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>Pegue |cRXP_PICK_Estante de Livros de Andron|r atrás de |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step
    #completewith next
    #optional
    .goto 1458,54.383,73.014,50,0 << !Undead/!Rogue
    .goto 1458,52.837,77.725,20,0
    .goto 1458,52.275,79.254,15,0
    .goto 1458,51.279,79.923,15,0
    .goto 1458,49.693,78.903,15,0
    .goto 1458,47.951,76.171,15,0
    .goto Undercity,48.84,69.25,12 >>Vá em direção a |cRXP_FRIENDLY_Mestre-boticário Faranello|r no Boticarium
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre-boticário Faranello|r e |cRXP_FRIENDLY_Boticária Zilda|r no Boticarium
    .turnin 447 >>Entregue Receita mortal
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Entregue Entrega para Zilda
    .accept 1358 >>Aceite Uma amostra para Hermógenes
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
step << Undead Warrior
    #season 2
    #label RuneOfDevastateUndead
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorac|r em Undercity
    >>Entregue as |cRXP_LOOT_Cabeças|r que coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Undead Warrior
    #season 2
    .use 204688 >>|cRXP_WARN_Use the|r |T134455:0|t[Runa Fragmentos] |cRXP_WARN_to create|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Undead Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .use 204703
    .itemcount 204703,1
step << skip --Undead Rogue/Undead Warrior
    #xprate <1.5
    #optional
    .goto 1458,48.906,70.156
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Pular by jumping on top of the abomination's abdomen, then logging out and back in|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886 << Rogue
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1899 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1978 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
    .dungeon RFC
--XX Force train if hs not in Brill as an undead ONLY + you want to do RFC. Duplicate if you ding from prev optional quests
step << Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .turnin 1978 >>Entregue The Deathstalkers - Missão - Missão
    .target Varimathras
    .isQuestTurnedIn 1886
step << skip --Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,55.22,90.88
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Position your character on the edge of the circle until it looks like they're floating. Perform a Logout Pular by logging out and back in|r
	.link https://www.youtube.com/watch?v=jj85AXyF1XE >>https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_clique aqui para um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
    .isQuestTurnedIn 1886
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Mary Edras
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,40 >>Crie |T133685:0|t[Linen Bandages] até perícia 40 ou superior
    .itemcount 2589,1 --Linen Cloth (1+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3276 >>Treine |T133688:0|t[Bandagem Grossa de Linho]
    .target Mary Edras
    .skill firstaid,<40,1
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    .skill firstaid,50 >>Crie |T133688:0|t[Heavy Linen Bandages] até perícia 50 ou superior
    .itemcount 2589,2 --Linen Cloth (2+)
step << !Rogue !Warrior
    #optional
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Maria do Socorro|r no Distrito dos Ladinos
    .train 3274 >>Treine Socorrista Profissional
    .target Mary Edras
    .skill firstaid,<50,1
step << Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,84.06,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Bethor|r
    .turnin 411 >>Entregue O Lich Pródigo Retorna
    .target Bethor Iceshard
    .isQuestComplete 411
step << Undead Mage
    #xprate >1.49
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro da Magia
    .turnin 1882 >>Entregue The Balnir Farmstead
    .train 2137 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Undead Mage
    #xprate >1.49
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r
    .turnin 1882 >>Entregue The Balnir Farmstead
    .train 2120 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Mage
    #xprate <1.5 << Undead
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Mage
    #xprate <1.5 << Undead
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Undead Warlock
    #xprate <1.5
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Richard|r
    .train 6222 >>Treine suas magias de classe
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
--XX no dungeon RFC due to close proximity
step << Undead Warlock
    #xprate <1.5
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Richard|r
    .train 1455 >>Treine suas magias de classe
    .target Richard Kerwin
    .xp <16,1
step << Priest/Mage/Warlock
    #ssf
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zeno Valforte|r no Distrito da Magia
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #ah
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zeno Valforte|r no Distrito da Magia
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 5208,1 --Smoldering Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_quando estiver no nível 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Priest/Mage/Warlock
    #optional
    #completewith Conscript
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
step << !Undead Priest
    #xprate <1.5
    #sticky
    #label TouchOW
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
    .dungeon RFC
    .isOnQuest 5660
--XX Not going out of the way for this outside of this edge case to train for RFC, waste of a gcd
step << Undead Priest
    #xprate <1.5
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lazarus|r
	.train 6074 >>Treine suas magias de classe
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .dungeon RFC
step << Undead Priest
    #xprate <1.5
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lazarus|r
	.train 8102 >>Treine suas magias de classe
    .target Father Lazarus
    .xp <16,1
    .dungeon RFC
step << Undead Rogue
    #optional
    #completewith Conscript
    >>Abandone Os Sicários, não haverá outra oportunidade de fazer
    .abandon 1886 >>Abandone Os Sicários
    .isOnQuest 1886
step << skip --Undead !Rogue !Warrior
    #xprate <1.5
    #requires TouchOW << Undead Priest
    .goto Undercity,56.89,16.77 << Priest
    .goto Undercity,69.46,25.85 << Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Faça um Atalho por Logout pulando sobre o triturador da Carroça Carniceira, depois, saia e entre novamente|r << Priest
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realize um Logout Pular pulando em cima da pilha de barris, depois faça logout e entre novamente|r << Mage/Warlock
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
    .dungeon RFC
step << skip --Undead !Rogue !Warrior
    #xprate <1.5
    .goto Undercity,69.46,25.85 << Priest/Mage/Warlock
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realize um Logout Pular pulando em cima da pilha de barris, depois faça logout e entre novamente|r << Priest/Mage/Warlock
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_Clique aqui para ver um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
    .dungeon !RFC



--XX End of Undercity clown fiesta section





--XX Start of 1.5x Brill Train section





step << Undead
    #xprate >1.49
    #completewith ZeptoDurotar
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .zoneskip Undercity,1
    .bindlocation 2119,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r dentro da estalagem
    .train 1758 >>Treine suas magias de classe
    .target Marion Call
    .xp <14,1
    .xp >16,1
step << Undead Rogue
    #xprate >1.49
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r dentro da estalagem
    .train 6761 >>Treine suas magias de classe
    .target Marion Call
    .xp <16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 8122 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <14,1
    .xp >16,1
step << Undead Priest
    #xprate >1.49
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 8102 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 1460 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <14,1
    .xp >16,1
step << skip --Undead Mage
    #xprate >1.49
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 2120 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <16,1
step << Undead Warrior
    #xprate >1.49
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 285 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 6222 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <14,1
    .xp >16,1
step << Undead Warlock
    #xprate >1.49
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 1455 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <16,1





--XX End of 1.5x Brill Train section





step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step << Undead
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >>Saia de Undercity
    .zoneskip Tirisfal Glades
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>Pegue o zepelim para Durotar
    >>Crie Pedras de Amolação/Ataduras enquanto você espera << Warrior/Rogue
    >>Conjure Comida/Água enquanto você espera << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Viaje para Orgrimmar
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para nenhum lugar!|r
    .fp Orgrimmar >>Aprenda a rota de voo para Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>Mate os |cRXP_ENEMY_Burning Blade|r inimigos na Pedra do Crânio até cair a |cRXP_LOOT_Lieutenant's Insignia|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 5761 >>Aceite Morte da Fera
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entregue Escondido Enemies
    .accept 5728 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_pois você não precisa mais dela|r
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>Entre no portal da instância RFC. Adentre a instância.
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_Se possível, peça aos membros do grupo para compartilharem as seguintes missões|r
    .accept 5722 >>Aceite Procurando a Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>Mate os |cRXP_ENEMY_Ragefire Troggs|r e os |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>Entregue Procurando a Bolsa Perdida
    .accept 5724 >>Aceite Retorno da Bolsa Perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>Aceite Retorno da Bolsa Perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>Mate os |cRXP_ENEMY_Ragefire Troggs|r e os |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mate os |cRXP_ENEMY_Searing Blade Cultists|r e os |cRXP_ENEMY_Searing Blade Warlocks|r. Saqueie-os para obter os |cRXP_LOOT_Spells of Sombra|r e as |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>Mate |cRXP_ENEMY_Taragaman, o Famélico|r. Saqueie-o para obter seu |cRXP_LOOT_Coração|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>Mate o |cRXP_ENEMY_Bazzalan|r e o |cRXP_ENEMY_Jergosh, o Invocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>Mate os |cRXP_ENEMY_Searing Blade Cultists|r e os |cRXP_ENEMY_Searing Blade Warlocks|r. Saqueie-os para obter os |cRXP_LOOT_Spells of Sombra|r e as |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5761 >>Entregue Morte da Fera
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Entregue Escondido Enemies
    .accept 5729 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5729 >>Entregue Escondido Enemies
    .accept 5730 >>Aceite Escondido Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Entregue Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >>Vá para Razor Hill
step << !Undead
    .hs >>Use a Pedra Lunar para voltar a Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >>Treine suas magias de classe
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >>Treine suas magias de classe
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Treine suas magias de classe
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Treine suas magias de classe
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <16,1
step << !Undead
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Entregar em Tempestades Sombrias
    .goto Durotar,52.24,43.15
    .turnin 837 >>Entregue Encroachment
    .goto Durotar,51.95,43.50
    .target Orgnil Soulscar
    .target Gar'Thok
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >>Vá para Far Vigiar Post
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Conscrição da Encruzilhada
    .target Kargal Battlescar
step << !Undead
    #xprate <1.5
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << !Undead
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Saqueie a|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_ao lado de|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este item tem um temporizador de 30 minutos, portanto certifique-se de ser rápido|r
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
    .isOnQuest 924
step << Mage
    +Se você está planejando subir de nível via AdE, escolha o Guia AdE das Savanas manualmente. Caso contrário, complete este passo
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#name 1-7 Tirisfal Glades
#next 7-13 Tirisfal Glades

step << !Undead
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado para Morto-vivo. É recomendado que você escolha a mesma zona inicial em que começou|r
step << !Undead Mage
    #season 2
    #completewith next
    +Na Temporada de Descoberta, você não deveria começar fora da zona de início de sua raça como um Mago, pois você será incapaz de obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
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
    #xprate <2.1
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_Mate os |cRXP_ENEMY_Young Scavengers|r e os |cRXP_ENEMY_Duskbats|r. Saqueie-os até ter 60 cobre em valor de itens de vendedor (incluindo sua armadura)|r << Mage
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 50 de cobre em valor de itens para vender (incluindo sua armadura)|r << Priest
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 10 de cobre em valor de itens para vender (incluindo sua armadura)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Warlock/Priest/Mage
    #season 0
    #xprate >2.09
    #completewith Vendor
    +|cRXP_WARN_Mate os |cRXP_ENEMY_Young Scavengers|r e os |cRXP_ENEMY_Duskbats|r. Saqueie-os até ter 60 cobre em valor de itens de vendedor (incluindo sua armadura)|r << Mage
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 50 de cobre em valor de itens para vender (incluindo sua armadura)|r << Priest
    +|cRXP_WARN_Mate |cRXP_ENEMY_Carniceiros Jovens|r e |cRXP_ENEMY_Quiropúsculos|r. Saqueie-os até ter 10 de cobre em valor de itens para vender (incluindo sua armadura)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #season 2
    #xprate >2.09
    #completewith Vendor
    +|cRXP_WARN_Mate os |cRXP_ENEMY_Young Scavengers|r e os |cRXP_ENEMY_Duskbats|r. Saqueie-os até ter 28 cobre em itens de vendedor (incluindo sua armadura)|r << Rogue/Priest/Warlock
    +|cRXP_WARN_Mate os |cRXP_ENEMY_Young Scavengers|r e os |cRXP_ENEMY_Duskbats|r. Saqueie-os até ter 15 cobre em itens de vendedor (incluindo sua armadura)|r << Warrior/Mage
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #xprate >2.09
    #loop
    .goto Tirisfal Glades,29.18,68.94,40,0,0
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,30.19,65.32,40,0
    .xp 2 >>Farme até o nível 2
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step
    #season 2
    .goto Tirisfal Glades,31.36,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    >>|cRXP_BUY_Venda o lixo e compre o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r] |cRXP_BUY_e|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] << Warrior
    >>|cRXP_BUY_Venda o lixo e compre todas as runas principais de AdE|r << Mage
    >>|cRXP_BUY_Venda o lixo e compre todas as runas a seguir:|r << Hunter/Warlock/Rogue/Priest
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >>Lança de Gelo é apenas útil para que você possa entregar uma missão mais tarde << Mage
    >>|cRXP_WARN_Você obterá as outras runas mais tarde|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] para treinar |T132342:0|t[Ímpeto da Vitória]<< Warrior
    .train 415936 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Bomba Viva|r] para treinar |T236220:0|t[Bomba Viva] << Mage
    .train 401759 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Combustão|r] para treinar |T236207:0|t[Combustão] << Mage
    .train 440858 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notas: Orbe Congelado|r] para treinar |T135851:0|t[Orbe Congelado] << Mage
    .train 401760 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notas: Lança de Gelo|r] para treinar |T135844:0|t[Lança de Gelo] << Mage
    .train 401768 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Chama Viva|r] para treinar |T135820:0|t[Chama Viva] << Mage
    .train 416009 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Táticas|r] para treinar |T136150:0|t[Táticas Demoníacas] << Warlock
    .train 425476 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] para treinar |T237562:0|t[Pacto Demoníaco] << Warlock
    .train 416015 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r] para treinar |T135789:0|t[Incinerar] << Warlock
    .train 403919 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r] para treinar |T236298:0|t[Assombrar] << Warlock
    .train 403619 >>Usar o |T133733:0|t[Grimório de Armadura Vil] para treinar |T136156:0|t[Armadura Vil] |cRXP_WARN_use-o como seu feitiço de armadura principal|r << Warlock
    .train 402852 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] para treinar |T237570:0|t[Homúnculos] << Priest
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] para treinar |T236317:0|t[Ataque Frenético] << Warrior
    .train 400101 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Passo Furtivo|r] para treinar |T132303:0|t[Passo Furtivo] << Rogue
    .train 432301 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Jogo Sujo|r] para treinar |T236285:0|t[Vantagem Desleal] << Rogue
    .train 400105 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r] para treinar |T132323:0|t[Golpe Sombrio] << Rogue
    .train 424984 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] para treinar |T132375:0|t[Talho de Sabre] << Rogue
    .train 415922 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa do Espadachim|r] para treinar |T134538:0|t[Bacamarte] << Rogue
    .train 431663 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epifania|r] para treinar |T136181:0|t[Aparições Corrompidas] << Priest
    .train 425216 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r] para treinar |T237514:0|t[Peste do Caos] << Priest
    .train 402862 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Acólito Perturbado|r] para treinar |T237545:0|t[Penitência] << Priest
    .train 402849 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia da Morte de um Rei|r] para treinar |T136149:0|t[Palavra Sombria: Morte] << Priest
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >>|cRXP_WARN_Certifique-se de que você se lembra de ativar seu|r |T136156:0|t[Armadura Vil]
step << Warrior
    #season 0
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >>Entre no prédio
step << Priest/Mage
    #season 0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .accept 77670 >>Aceite Meditação da Morte-Viva
    .turnin 77670 >>Entregue Meditação da Morte-Viva
    .target Dark Cleric Duesten
step
    #optional
    #label Vendor
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Venya|r e |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r << Mage
    .accept 1470 >>Aceite Perfurando o véu << Warlock
    .goto Tirisfal Glades,30.98,66.41 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >>Entregue Despertar bruto
    .accept 364 >>Aceite Os desmiolados
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,30.84,66.20
step << Warlock/Mage
    #xprate <2.1
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << Warlock/Mage
    #xprate >2.09
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
step << Warlock
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Aceite A Runa Perdida
    .turnin 77672 >>Entregue A Runa Perdida
    .target Maximillion
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .accept 77671 >>Aceite Pesquisa de Feitiços
    .turnin 77671 >>Entregue Pesquisa de Feitiços
    .target Isabella
step << Mage
    #season 2
    #optional
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .engrave 10 >>|cRXP_WARN_Grave sua|r luvas com|r |T236220:0|t[Bomba Viva]
    .engrave 7 >>|cRXP_WARN_Grave suas calças com|r |T135820:0|t[Chama Viva]
    .engrave 5 >>|cRXP_WARN_Grave seu peitoral com|r |T236207:0|t[Combustão]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >>Fique atento a quedas de capa. Uma vez que conseguir uma, grave |T135851:0|t[Orbe Congelado] nela
    >>|cRXP_WARN_Este feitiço é absurdamente poderoso|r
step << Warlock
    #season 0
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Queila Ferraz|r
    .vendor >>Lixo de Comerciante
    .target Kayla Smithe
    .money >0.1
step << Warlock
    #season 0
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
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
    .xp <2,1
step << !Warlock !Mage
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 376 >>Aceite Os malditos
    .goto Tirisfal Glades,30.86,66.05
    .target Novice Elreth
step << Rogue/Priest/Warlock
    #season 2
    .goto Tirisfal Glades,32.41,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    >>|cRXP_BUY_Compre um|r |T132513:0|t[Cinto de Tecido Esfarrapado] |cRXP_BUY_dele para gravar uma runa em|r << Rogue/Priest
    >>|cRXP_BUY_Compre|r |T132606:0|t[Braçadeiras de Tecido Esfarrapado] |cRXP_BUY_dela para gravar uma runa em|r << Warlock
    .collect 3596,1 << Warlock --Tattered Cloth Bracers
    .collect 3595,1 << Rogue/Priest --Tattered Cloth Belt
    .target Archibald Kava
step << Warlock
    #season 2
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .equip 9,3596 >>|cRXP_ENEMY_Equipe|r |T132606:0|t[Braçadeiras de Tecido Esfarrapado]
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Grave suas luvas com|r |T236298:0|t[Assombrar]
    .engrave 9 >>|cRXP_WARN_Grave suas braçadeiras com|r |T135789:0|t[Incinerar]
    .engrave 7 >>|cRXP_WARN_Grave suas calças com|r |T237562:0|t[Pacto Demoníaco]
    .engrave 5 >>|cRXP_WARN_Grave seu peito com|r |T136150:0|t[Táticas Demoníacas]
step << Priest
    #season 2
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .equip 6,3595 >>|cRXP_WARN_Equipe|r |T132513:0|t[Cinto de Tecido Esfarrapado]
    .use 711
    .use 3595
    .engrave 6 >>Grave as |T136181:0|t[Aparições Corrompidas] no seu cinto
    .engrave 10 >>Grave |T136149:0|t[Palavra Sombria: Morte] nas luvas
    .engrave 7 >>Grave |T237570:0|t[Homúnculos] em suas calças
step << Priest
    #season 2
    #optional
    #sticky
    >>|cRXP_WARN_Fique atento a qualquer queda de|r |cRXP_WARN_Botas. Equipe-as e grave|r |T237514:0|t[Peste do Caos] |cRXP_WARN_nelas|r
    .engrave 8 >>Grave suas |T132539:0|t[Botas] com |T237514:0|t[Peste do Caos]
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .accept 77669 >>Aceite A Runa Escarlate
    .turnin 77669 >>Entregue A Runa Escarlate
    .target David Trias
step << Rogue
    #season 2
    #optional
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Rachado]
    .equip 6,3595 >>|cRXP_WARN_Equipe|r |T132513:0|t[Cinto de Tecido Esfarrapado]
    .engrave 10 >>Grave |T132375:0|t[Talho de Sabre] em suas luvas
    .engrave 6 >>Grave o |T132303:0|t[Passo Furtivo] no seu cinto
    .use 2125 --Cracked Leather Gloves
    .use 3595 --Tattered Cloth Belt
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Fique atento a qualquer queda de|r |cRXP_WARN_Manto/Braçadeiras. Equipe-os e grave as respectivas runas|r
    .engrave 15 >>Grave |T134538:0|t[Bacamarte] no |T133771:0|t[Manto]
    .engrave 9 >>Grave |T236285:0|t[Vantagem Desleal] nas |T133830:0|t[Braçadeiras]
step << Warrior
    #season 0
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Lixo de Comerciante
    .target Archibald Kava
    .money >0.1
step << Warrior
    #season 0
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Dannal Stern
step << Warrior
    #season 2
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .accept 77668 >>Aceite A Runa Perdida
    .turnin 77668 >>Entregue A Runa Perdida
    .target Dannal Stern
step << Warrior
    #season 2
    .equip 10 >>Equipe as |T132938:0|t[Luvas Encadeadas Manchadas]
    .engrave 10 >>Grave |T132342:0|t[Ímpeto da Vitória] nas luvas
    .engrave 7 >>Grave |T236317:0|t[Ataque Frenético] nas calças
    >>|cRXP_WARN_Você receberá uma espada de duas mãos de uma missão em breve|r
    .use 2385 -- Tarnished Chain Gloves
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    .cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
step
    #xprate >2.09
    #completewith next
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
    #xprate <2.1
    #completewith Vendor2
    +|cRXP_WARN_Mate |cRXP_ENEMY_Zumbis Desmiolados|r e |cRXP_ENEMY_Zumbis Atormentados|r. Saqueie-os até ter 33 cobre em valor de itens para vender (incluindo sua armadura)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #xprate <2.1
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    #xprate <2.1
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue The Mentecapto Ones
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
    .target +Maximillion << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .target +Isabella << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #xprate <2.1
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue The Mentecapto Ones
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
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,34.32,56.79,0
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
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Mate |cRXP_ENEMY_Esqueletos Range-ossos|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step << Mage/Warlock/Priest
    #xprate <2.1
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    >>|cRXP_WARN_NÃO fique com menos de 1 de Prata|r << Mage/Warlock/Priest
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >>Entregue Agitando os Rattlecages
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>Entregue Os malditos
    .accept 6395 >>Aceite O último desejo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Mage/Warlock/Priest
    #xprate >2.09
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #xprate >2.09
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    #xprate >2.09
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue The Mentecapto Ones
    .accept 3095 >>Aceite Pergaminho simples << Warrior
    .accept 3096 >>Aceite Pergaminho cifrado << Rogue
    .accept 3097 >>Aceite Pergaminho consagrado << Priest
    .accept 3098 >>Aceite Pergaminho glífico << Mage
    .accept 3099 >>Aceite Pergaminho conspurcado << Warlock
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>Entregue Os malditos
    .accept 6395 >>Aceite O último desejo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>Entregue Pergaminho conspurcado << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target +Dark Cleric Duesten << Priest
step
    #xprate >2.09
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r e |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r e |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r, |cRXP_FRIENDLY_Noviça Elvira|r e |cRXP_FRIENDLY_Clérigo das Trevas Duesten|r << Priest
    .turnin 364 >>Entregue The Mentecapto Ones
    .accept 3095 >>Aceite Pergaminho simples << Warrior
    .accept 3096 >>Aceite Pergaminho cifrado << Rogue
    .accept 3097 >>Aceite Pergaminho consagrado << Priest
    .accept 3098 >>Aceite Pergaminho glífico << Mage
    .accept 3099 >>Aceite Pergaminho conspurcado << Warlock
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>Entregue Os malditos
    .accept 6395 >>Aceite O último desejo de Marla
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>Entregue Pergaminho conspurcado << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .turnin 3098 >>Entregue Pergaminho glífico << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
    .turnin 3097 >>Entregue Pergaminho consagrado << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target +Dark Cleric Duesten << Priest
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
    #season 0
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Maximillion
step << Mage
    #season 0
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Isabella
step
    #xprate <1.5
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r e |cRXP_FRIENDLY_Executor Arren|r
    .accept 3902 >>Aceite Vasculhando Plangemortis
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >>Aceite Vale Teia da Noite
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step
    #xprate >1.49
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .accept 380 >>Aceite Vale Teia da Noite
    .goto Tirisfal Glades,32.15,66.01
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquibaldo|r
    .vendor >>Lixo de Comerciante
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 2
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.01
step << Warrior
    #season 0
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Dannal Stern
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .target David Trias
step << Rogue
    #season 0
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .money <0.04
    .target David Trias
step << Rogue
    #season 0
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .target David Trias
step
    #xprate >1.49
    #optional
    #completewith NightWebStart
    .abandon 3902 >>Abandone Catando Deathknell
step
    #xprate <1.5
    #loop
	.goto Tirisfal Glades,32.37,64.37,
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
    #label NightWebStart
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
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
    >>Mate |cRXP_ENEMY_Trevateias Jovens|r perto da entrada da caverna
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Vá para dentro da caverna
step << Warlock
    #season 2
    #completewith RuneofHaunting
    >>Mate |cRXP_ENEMY_Trevateias|r dentro da caverna
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warrior
    #season 2
    #completewith RuneofVictoryRush
    >>Mate |cRXP_ENEMY_Trevateias|r dentro da caverna
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #loop
    .goto Tirisfal Glades,24.68,59.54,0
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
    #xprate <1.5
    #softcore
    #completewith Scavenging
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #xprate >1.49
    #softcore
    #completewith NightWebH
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
step << skip
    #hardcore
    #completewith next
    .goto 1420,26.027,60.607,-1
    .goto 1420,24.508,59.360,-1
    .goto 1420,23.572,59.239,-1
    .goto Tirisfal Glades,31.08,64.88,30 >>|cRXP_WARN_Faça um Atalho por Logout dentro da caverna pulando em cima de um triturador, poço ou prancha de madeira presa na parede, depois saia e entre novamente no jogo|r
    >>|cRXP_WARN_Alternativamente, corra de volta para Plangemortis|r
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
    .vendor >>Lixo de Comerciante
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >>Lixo de Comerciante
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
	.goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
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
    .goto Tirisfal Glades,31.17,65.08
	>>Clique no |cRXP_PICK_Túmulo de Marla|r no chão
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
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
    .vendor >>Lixo de Comerciante
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
    #season 2
    .goto Tirisfal Glades,31.36,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Venda o refugo para ele e compre todas as |T134419:0|t|cRXP_WARN_[Runas]|r que você precisar|r
    .target Rune Broker
    .skipgossip
step
    #loop
    .goto Tirisfal Glades,34.08,59.51,50,0
    .goto Tirisfal Glades,35.34,56.55,50,0
    .goto Tirisfal Glades,36.83,56.85,50,0
    .goto Tirisfal Glades,37.76,59.38,50,0
    .goto Tirisfal Glades,37.51,62.99,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
	.goto Tirisfal Glades,36.46,69.49,50,0
	.goto Tirisfal Glades,36.85,70.02,50,0
	.goto Tirisfal Glades,37.42,69.58,50,0
	.goto Tirisfal Glades,38.05,69.79,50,0
	.goto Tirisfal Glades,37.91,69.22,50,0
	.goto Tirisfal Glades,38.03,68.77,50,0
	.goto Tirisfal Glades,38.49,68.28,50,0
	.goto Tirisfal Glades,38.72,67.07,50,0
	.goto Tirisfal Glades,38.59,66.25,50,0
	.goto Tirisfal Glades,38.65,65.07,50,0
	.goto Tirisfal Glades,37.62,65.36,50,0
	.goto Tirisfal Glades,36.93,65.38,50,0
	.goto Tirisfal Glades,36.51,65.42,50,0
	.goto Tirisfal Glades,36.85,66.59,50,0
	.goto Tirisfal Glades,37.45,67.95,50,0
	.goto Tirisfal Glades,36.93,68.16,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
    .xp 5+1900 >>Farme até 1900+/2800 XP
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calvino|r
    .accept 8 >>Aceite Palavra de ladino
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Tirisfal Glades
#version 1
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Undead
#next 13-20 Savanas

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .accept 365 >>Aceite Campos de mágoa
    .target Deathguard Simmer
step << skip
    #loop
    .goto Tirisfal Glades,56.13,52.48,0
    .goto Tirisfal Glades,40.77,54.42,0
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gordo|r.
    >>|cRXP_WARN_Ele é uma abominação que patrulha a estrada até Montalvo|r
    .accept 5481 >>Aceite Beijo do Gordo
    .unitscan Gordo
step << Priest
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bowen Brisboise|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]. Guarde |T132889:0|t[Linho]. Isto permitirá que você crie uma varinha mais tarde
    .target Bowen Brisboise
step
    #softcore
    #completewith next
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r ou corra para Montalvo
    .target Anjo da Cura
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r e |cRXP_FRIENDLY_Zygand|r
    .accept 404 >>Aceite Uma tarefa podre
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>Entregue Informações cruciais
    .accept 427 >>Aceite Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.59,51.77
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r a |cRXP_FRIENDLY_Sra. Hibérnias|r|cRXP_BUY_. Compre um|r |T135421:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
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
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,404,1 --Collect Gladius (1)
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
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    .turnin 8 >>Entregue Palavra de ladino
    .home >>Defina sua Pedra de Regresso em Montalvo
    .target Innkeeper Renee
    .bindlocation 2119
step
    #xprate >1.49
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar da estalagem|r
    .accept 375 >>Aceite O frio da morte
    .target Gretchen Dedmar
    .xp <7,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
    .turnin 5651 >>Entregue Em favor da escuridão
    .accept 5650 >>Aceite Vestes da escuridão
	.train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Dark Cleric Beryl
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Treine |T132269:0|t[Aparar]
    .target Austil de Mon
    .money <0.01
step << Rogue
    #season 0
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Marion Call
    .money <0.01
step << Rogue
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Marion Call
    .money <0.02
step << Rogue
    #optional
    #season 2
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Marion Call
    .money >0.02
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gina Lang|r no segundo andar
    >>|cRXP_BUY_Compre |r |T133738:0|t[Grimório de Pacto de Sangue] |cRXP_BUY_dela|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Lixo de Comerciante
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .target Rupert Boch
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vance Merencório|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]. Isto junto com |T136249:0|t[Alfaiataria] permitirá que você crie uma varinha mais tarde
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Lance |T135929:0|t[Cura Inferior] e |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Necroguarda Querêncio|r
    >>|cRXP_WARN_Você precisa de Cura Inferior Grau 2 para esta missão|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step << skip
    #completewith Claws
    >>Pegue o |cRXP_LOOT_Gloom Weed|r no chão
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Cão das Trevas Decrépito|r que ver. Saque-os por seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Mate |cRXP_ENEMY_Mortos Podres|r e |cRXP_ENEMY_Cadáveres Assolados|r. Saqueie-os para pegar |cRXP_LOOT_Garras|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step << skip
    #label GloomWeed
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Termine de coletar |cRXP_LOOT_Gloom Weed|r no chão
    .complete 5481,1 --Gloom Weed (3)
step << Warrior
    #optional
    #season 2
    #xprate >1.49
    #completewith DBlood
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
    .isOnQuest 375
step
    #optional
    #xprate >1.49
    #completewith next
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saque-os para obter suas |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #xprate >1.49
    #label DBlood
    #loop
    .goto Tirisfal Glades,43.97,57.27,0
    .goto Tirisfal Glades,40.57,47.23,0
    .goto Tirisfal Glades,48.03,53.43,80,0
    .goto Tirisfal Glades,43.97,57.27,80,0
    .goto Tirisfal Glades,41.01,55.94,60,0
    .goto Tirisfal Glades,40.57,47.23,60,0
    .goto Tirisfal Glades,40.89,42.77,60,0
    .goto Tirisfal Glades,39.12,39.85,60,0
    >>Termine de matar os |cRXP_ENEMY_Darkhounds|r. Saque-os para obter seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step << Priest
    #ah
    #completewith FinishRings
    >>|cRXP_WARN_Início coletando 3 pilhas de|r |T132889:0|t[Linho]|cRXP_WARN_. Isto será usado para fazer|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Se você não quer fazer isso ou prefere comprar da Casa de Leilões depois, pule este passo|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #ssf
    #completewith FinishRings
    >>|cRXP_WARN_Início coletando 3 pilhas de|r |T132889:0|t[Linho]|cRXP_WARN_. Isto será usado para fazer|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_WARN_depois|r
    .collect 2589,60 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Rogue
    #season 2
    #completewith next
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Tirisfal Farmers|r e os |cRXP_ENEMY_Tirisfal Farmhands|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Esquerdo|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Saque o |cRXP_LOOT_Pumpkins|r encontrado no campo.
    .complete 365,1 --Tirisfal Pumpkin (10)
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Tirisfal Farmers|r e os |cRXP_ENEMY_Tirisfal Farmhands|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Esquerdo|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue/Mage/Priest
    #season 2
    #completewith next
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Direito|r] << Rogue
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] << Mage
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] << Priest
    >>|cRXP_WARN_Qualquer um dos humanoides escarlates em Tirisfal pode soltar a peça do mapa|r << Rogue
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Nota de Feitiço|r << Mage
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Profecia|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Mate |cRXP_ENEMY_Guerreiros Escarlates|r
    >>|cRXP_WARN_Tenha cuidado: eles ganham 50% a mais de aparo por 8 segundos após executarem a animação de postura defensiva|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step << Rogue/Mage/Priest
    #season 2
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Superior-Direito|r] << Rogue
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] << Mage
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] << Priest
    |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    >>|cRXP_WARN_Qualquer um dos humanoides escarlates em Tirisfal pode soltar a peça do mapa|r << Rogue
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Nota de Feitiço|r << Mage
    >>|cRXP_WARN_Qualquer um dos Humanóides Escarlates em Tirisfal pode soltar a Profecia|r << Priest
    .collect 208035,1 << Rogue --Top-Right Map Piece (1)
    .collect 203752,1 << Mage --Spell Notes: MILEGIN VALF (1)
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel (1)
    .mob Scarlet Warrior
    .train 400095,1 << Rogue
    .train 401768,1 << Mage
    .train 402852,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Usar|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
    .itemcount 203752,1
step << Mage/Priest
    #season 2
    .goto Tirisfal Glades,25.6,48.2
    >>Abate |cRXP_ENEMY_Guelgar|r. Saque-o para obter |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] << Mage
    >>Mate o |cRXP_ENEMY_Guelgar|r. Saqueie-o pela |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] << Priest
    >>|cRXP_WARN_Este é um élite nível 7 e não é fácil de matar. Pule-o por agora se for muito difícil|r
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos Glaciais]
    .use 203753
    .itemcount 203753,1
step
    #hardcore
    #completewith BrillTurnin1
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .cooldown item,6948,>0,1
    .bindlocation 2119,1
step
    #hardcore
    #completewith BrillTurnin1
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #softcore
    #completewith BrillTurnin1
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_ Anjo da Cura|r
step << skip
    #softcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holland|r, ele patrulha ao redor do cemitério.
    .turnin 5481 >>Entregue Beijo do Gordo
    .accept 5482 >>Aceite Erva-do-demo
    .target Junior Apothecary Holland
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r e |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entregue Uma tarefa podre
    .accept 426 >>Aceite Os Moinhos Invadidos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>Entregue Uma Nova Peste
    .turnin 365 >>Entregue Campos de mágoa
    .accept 368 >>Aceite Uma Nova Peste
    .accept 407 >>Aceite Campos de mágoa
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 370 >>Aceite Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .isQuestComplete 367
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r e |cRXP_FRIENDLY_Zygand|r
    .turnin 404 >>Entregue Uma tarefa podre
    .accept 426 >>Aceite Os Moinhos Invadidos
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
    .turnin 365 >>Entregue Campos de mágoa
    .accept 407 >>Aceite Campos de mágoa
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 370 >>Aceite Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Cartaz Procurado|r e |cRXP_FRIENDLY_Sevren|r dentro do prédio
    .accept 374 >>Aceite Prova da morte
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Aceite Procura-se: Olho de Verme
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Aceite Roubacovas
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
 step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >1.49
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Zelote Escarlate Capturado|r no andar de baixo na parte traseira da estalagem
    .turnin 407 >>Entregue Campos de mágoa
    .target Captured Scarlet Zealot
step
    #xprate >1.49
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
    .turnin 5650 >>Entregue Vestes da Escuridão
    .train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Dark Cleric Beryl
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar da estalagem|r
    .accept 375 >>Aceite O frio da morte
    .target Gretchen Dedmar
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 980 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <8,1
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Tente fazê-los enquanto aguarda Zepelins|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,367,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith NewPlague1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,367,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith NewPlague1
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << skip
    #hardcore
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holland|r, ele patrulha ao redor do cemitério.
    .turnin 5481 >>Entregue Beijo do Gordo
    .accept 5482 >>Aceite Erva-do-demo
    .target Junior Apothecary Holland
step << Warrior
    #season 2
    #xprate <1.5
    #completewith DuskbatTrophy1
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <1.5
    #completewith next
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saque-os para obter suas |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <1.5
    #loop
    .goto Tirisfal Glades,58.20,58.15,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Abate os |cRXP_ENEMY_Darkhounds|r. Saque-os por seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saque-os para obter suas |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3960,1
step << Rogue/Warrior
    #xprate <1.5
    #optional
    #label DuskbatTrophy1
    #loop
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .xp 7+3260 >>Mate inimigos até atingir 3260+/4500 de xp
--XX 700 (375)+540 (367)
step
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saque-os para obter suas |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >7+3690,1
step
    #xprate >1.49
    #optional
    #label DuskbatTrophy1
    .goto Tirisfal Glades,56.45,62.62,0
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .xp 7+2640 >>Farme até 2640+/4500 XP
--XX 700 (375)+540 (367)
step
    #xprate <1.5
    #hardcore
    #completewith NewPlague1
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith NewPlague1
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #label NewPlague1
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entregue Uma Nova Peste
    .accept 368 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Cartaz Procurado|r e |cRXP_FRIENDLY_Sevren|r dentro do prédio
    .accept 374 >>Aceite Prova da morte
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Aceite Procura-se: Olho de Verme
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Aceite Roubacovas
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <1.5
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
step << Mage
    #xprate <1.5
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
step << Warlock
    #xprate <1.5
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 980 >>Treine suas magias de classe
    .target Rupe
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,398,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,398,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #xprate <1.5
    #optional
    #completewith Doomweed
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Rogue
    #season 2
    #completewith MaggotEye
    >>Lance |T133644:0|t[Bater Carteira] e mate os |cRXP_ENEMY_Gnolos Podres Escondidos|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Fragmento de Mapa Inferior-Esquerdo|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 400095,1
step << Warrior
    #season 2
    #completewith MaggotEye
    >>Abate qualquer tipo de |cRXP_ENEMY_Rote Esconder-se Gnoll|r. Saqueie-os para obter um |cRXP_LOOT_Cabeça de Gnoll Decepada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << skip
    #completewith next
    >>Pegue a |cRXP_LOOT_Erva-do-demo|r no chão
    >>|cRXP_WARN_Eles são encontrados perto de árvores na área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Roubacovas|r. Saqueie-os pelo |cRXP_LOOT_Ichor|r
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Graverobber
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Mongrels|r. Saqueie-os para pegar o |cRXP_LOOT_Ichor|r deles
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step << skip
    #label Doomweed
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>Pegue a |cRXP_LOOT_Erva-do-demo|r no chão
    >>|cRXP_WARN_Eles são encontrados perto de árvores na área Gnoll|r
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #optional
    #label Doomweed
step << Mage
    #season 2
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Use |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #completewith MaggotEye
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Mongrels|r. Saqueie-os para pegar o |cRXP_LOOT_Ichor|r deles
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Mate o |cRXP_ENEMY_Olho de Verme|r. Saqueie-o para pegar a |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Mongrels|r. Saqueie-os para pegar o |cRXP_LOOT_Ichor|r deles
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .disablecheckbox
    .mob Rot Hide Mongrel
step
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Gnolls|r. Saqueie-os para obter o |cRXP_LOOT_Ichor|r
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Rot Esconder-se Gnolls|r. Saqueie-os para |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.77,32.37,0
    .goto Tirisfal Glades,58.71,35.47,50,0
    .goto Tirisfal Glades,59.77,32.37,50,0
    .goto Tirisfal Glades,58.25,31.28,50,0
    .goto Tirisfal Glades,60.08,37.88,50,0
    >>Abate qualquer tipo de |cRXP_ENEMY_Rote Esconder-se Gnoll|r. Saqueie-os para obter um |cRXP_LOOT_Cabeça de Gnoll Decepada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .train 403475,1
step << Mage
    #xprate >2.09
    #season 2
    #loop
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    .goto Tirisfal Glades,59.84,33.17,40,0
    .goto Tirisfal Glades,58.38,35.28,40,0
    .goto Tirisfal Glades,60.09,37.01,40,0
    >>Use |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate >2.09
    #season 2
    >>|cRXP_WARN_Use as|r |T134332:0|t|cRXP_LOOT_[Anotações de Boticário]|r |cRXP_WARN_para criar|r |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate >2.09
    #season 2
    .train 415942 >>|cRXP_WARN_Use o|r |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Abata |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |cRXP_LOOT_Escamoso|r e uma |cRXP_LOOT_Cabeça de Murloc Decepada|r
    .complete 368,1 --Vile Fin Scale (5)
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step << Rogue
    #season 2
    #completewith MurlocVins
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r para |T134241:0|t[|cRXP_LOOT_Shipwreck Cache Chave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .train 400081,1
step << Rogue
    #season 2
    #completewith RuneofPrecision
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #label MurlocVins
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Abata |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |cRXP_LOOT_Escamoso|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r para |T134241:0|t[|cRXP_LOOT_Shipwreck Cache Chave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Saqueie o |cRXP_PICK_Shipwreck Cache|r para |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    #label RuneofPrecision
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Use |T133644:0|t[Bater Carteira] e mate |cRXP_ENEMY_Vile Fin Murlocs|r. Saqueie-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>|cRXP_WARN_Use the|r |T134327:0|t[|cRXP_LOOT_Map Pieces|r] |cRXP_WARN_to create|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #hardcore
    #completewith DoomedWeed
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #softcore
    #completewith DoomedWeed
    .goto Tirisfal Glades,64.50,29.41
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Morra na seta (ou a oeste dela)|r
step << skip
    #label DoomedWeed
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Holland|r, ele patrulha ao redor do cemitério.
    .turnin 5482 >>Entregue Erva-do-demo
    .target Junior Apothecary Holland
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Tirisfal|r] |cRXP_WARN_abaixo da ponte|r
    >>Saque o baú |cRXP_PICK_Enterrado Tesouro|r para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r e |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entregue Uma Nova Peste
    .accept 369 >>Aceite Uma Nova Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entregue Wanted: Olho de Verme
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entregue Roubacovas
    .accept 405 >>Aceite O Lich pródigo << Warlock
    .accept 359 >>Aceite Deveres Renegados
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r e |cRXP_FRIENDLY_Sevren|r
    .turnin 368 >>Entregue Uma Nova Peste
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Entregue Wanted: Olho de Verme
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Entregue Roubacovas
    .accept 405 >>Aceite O Lich pródigo << Warlock
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .accept 354 >>Aceite Mortes na família
    .accept 362 >>Aceite Os moinhos assombrados
    .target Coleman Farthing
step << !Warlock
    #xprate >1.49
    #optional
    #completewith AgamandStart
    .abandon 405 >>Abandone The Prodigal Lich
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 139 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <8,1
    .xp >10,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 8092 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <10,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 205 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <8,1
    .xp >10,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r
    --.accept 1881 >> Accept Speak with Anastasia
    .train 122 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <10,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandone Caminho da Defesa
    .isOnQuest 1498
step << Warrior
    #optional
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .trainer >>Treine suas magias de classe
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon
    .xp <10,1
    .isQuestAvailable 1498
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 6760 >>Treine suas magias de classe
    .target Marion Call
    .xp <8,1
    .xp >10,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r
    .train 674 >>Treine suas magias de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupert|r no segundo andar
    .train 980 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <8,1
    .xp >10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 707 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <10,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron|r no segundo andar
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
    .xp <10,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron|r no segundo andar
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
step << Rogue/Warrior
    .goto Tirisfal Glades,61.81,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neela|r
    >>|cRXP_WARN_Tente fazê-los enquanto aguarda Zepelins|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Nurse Neela
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,354,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oliver|r
    .vendor >>Comerciante de lixo. Venda sua arma se isso lhe der dinheiro suficiente para um |T135321:0|t[Gládio] (5s 36c). Volte depois se ainda não tiver dinheiro suficiente
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_dele|r
    .collect 2488,1,354,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith MillsOverun
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,20,426,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,426,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,10,426,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,10,426,1 << Warlock --Red-speckled Mushroom (10)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
step << Rogue/Warrior
    #softcore
    .goto Tirisfal Glades,60.31,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elisa Callen|r
    .vendor >>Conserte sua arma
    .target Eliza Callen
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Clique no crânio no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Abate o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step
    #optional
    #label Brill3
    --150% route does Agamand Mills after UC

step << Warrior
    #xprate <2.1
    #season 2
    #completewith AgamandStart
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque-os para obter suas |cRXP_LOOT_Peles|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >>Vá para o norte/oeste em direção a Moinhos dos Agamand
    .isOnQuest 362
step
    #xprate <2.1
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Carta|r] |cRXP_WARN_Pode cair desses inimigos. Aceite a missão se cair.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
step
    #xprate <2.1
    #completewith ThurmanGregor
    #label MillsOverun
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate <2.1
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mate |cRXP_ENEMY_Devlin|r. Saque-o pelos seus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate <2.1
    .goto Tirisfal Glades,49.34,36.02
    >>Mate |cRXP_ENEMY_Nissa|r. Saque-a pelos seus |cRXP_LOOT_Restos|r. Ela pode estar dentro do prédio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate <2.1
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Thurman|r e |cRXP_ENEMY_Gregor|r. Saque-os por seus |cRXP_LOOT_Remains|r. Eles podem patrulhar por aí
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Abate |cRXP_ENEMY_Soldiers|r e |cRXP_ENEMY_Bonecasters|r. Saqueie-os para |T134939:0|t[|cRXP_LOOT_Thurman's Carta|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+4320,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate >1.49
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Abate |cRXP_ENEMY_Soldiers|r e |cRXP_ENEMY_Bonecasters|r. Saqueie-os para |T134939:0|t[|cRXP_LOOT_Thurman's Carta|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+2180,1
    .isOnQuest 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    >>Abate |cRXP_ENEMY_Soldiers|r e |cRXP_ENEMY_Bonecasters|r. Saqueie-os para |T134939:0|t[|cRXP_LOOT_Thurman's Carta|r]
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .xp >9+3230,1
    .isQuestTurnedIn 375
--XX 880(426)+480(361, OPT)+880(354)+420(362)+700(375, OPT)
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3620 >>Triture até 3620+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+4320 >>Mate inimigos até atingir 4320+/6500 de xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3840 >>Triture até 3840+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate <1.5
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3140 >>Triture até 3140+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+2180 >>Triture até 2180+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+3230 >>Triture até 3230+/6500xp
    .itemcount 2839,<1 --A Letter to Yvette (0)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+2510 >>Triture até 2510+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    #loop
    .goto Tirisfal Glades,46.03,30.25,0
    .goto Tirisfal Glades,48.15,34.64,60,0
    .goto Tirisfal Glades,47.65,31.65,60,0
    .goto Tirisfal Glades,46.03,30.25,60,0
    .goto Tirisfal Glades,44.44,30.84,60,0
    .goto Tirisfal Glades,44.10,34.67,60,0
    .goto Tirisfal Glades,46.80,35.10,60,0
    .xp 9+1460 >>Farme até 1460+/6500xp
    .itemcount 2839,1 --A Letter to Yvette (1)
    .isOnQuest 375
step << Mage/Priest
    #xprate <2.1
    #season 2
    >>Mate o |cRXP_ENEMY_Guelgar|r. Saqueie-o para obter o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] << Mage
    >>Mate o |cRXP_ENEMY_Guelgar|r. Saqueie-o pela |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate <2.1
    #season 2
    .collect 211779,1 >>Você precisa de |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item
    .train 401765 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos Glaciais.]
    .use 203753
    .itemcount 203753,1
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .cooldown item,6948,>0,1
    .bindlocation 2119,1
step << skip
    #xprate <1.5
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <2.1
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #xprate <2.1
    #softcore
    #completewith FoodandWater2
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <2.1
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Vá para Os Moinhos Invadidos
    .target Deathguard Dillinger
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ivete Palhares|r e |cRXP_FRIENDLY_Eurico Palhares|r
    .turnin 361 >>Entregue A Carta Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    #xprate <2.1
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .turnin 1820 >>Entregue Falar com Coleman << Warrior
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate <2.1
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.trainer >>Treine suas magias de classe
    .target Dark Cleric Beryl
step << Warrior
    #xprate <2.1
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #xprate <2.1
    #optional
    .abandon 1498 >>Abandone Caminho da Defesa
    .isOnQuest 1498
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 2687 >>Treine suas magias de classe
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon << Warrior
    .xp >12,1
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 707 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <12,1
step << Warlock
    #xprate <2.1
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron|r dentro da estalagem
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
step << Rogue
    #xprate <2.1
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r
    .train 674 >>Treine suas magias de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r
    .train 1766 >>Treine suas magias de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <12,1
step << Mage
    #xprate <2.1
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r dentro da estalagem
    .accept 1881 >>Aceite Falar com Anastasia
    .target Cain Firesong
step
    #xprate <2.1
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Clique no crânio no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Abate o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    #xprate <2.1
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >>Entre em Cidade Baixa
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carendin|r no Bairro da Magia
    .turnin 1478 >>Entregue Convocação de Hidalgo
    .accept 1473 >>Aceite Criatura do Vazio
step << Warlock
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
step << Warrior
    #season 2
    #loop
    .goto Tirisfal Glades,55.14,62.01,0
    .goto Tirisfal Glades,56.90,58.25,60,0
    .goto Tirisfal Glades,55.14,62.01,60,0
    .goto Tirisfal Glades,52.36,62.93,60,0
    .goto Tirisfal Glades,48.94,63.72,60,0
    .goto Tirisfal Glades,45.17,62.11,60,0
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step << Rogue
    #season 2
    #completewith ScarletCrusade1
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Captain Perrine|r para conseguir um |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Saque |cRXP_PICK_Baú de Perrine|r para |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Mate o |cRXP_ENEMY_Capitão Perrine|r, os |cRXP_ENEMY_Fanáticos Escarlates|r e os |cRXP_ENEMY_Missionários Escarlates|r. Saqueie-os para obter os |cRXP_LOOT_Anéis de Insígnia Escarlate|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Captain Perrine|r para conseguir um |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Saqueie |cRXP_PICK_Baú do Perrine|r no chão para pegar |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #xprate <1.5
    #completewith UCHome
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>Vá para Undercity através dos esgotos
    .zoneskip Undercity
step << !Mage
    #xprate >1.49
    #completewith LogoutSkip1
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>Vá para Undercity através dos esgotos
    .zoneskip Undercity
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .train 2652,1 --Touch of Weakness not trained
step << Rogue
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arquibaldo|r no Distrito da Guerra
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
step << Warrior/Rogue
    .goto Undercity,56.06,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brom|r
    .train 2575 >>Treine |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isso vai permitir que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos para criar|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Brom Killian
step << Warrior/Rogue
    .goto Undercity,56.72,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarah|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Sarah|r
    .collect 2901,1,371,1 --Mining Pick (1)
    .target Sarah Killian
    .train 2575,3 --Mining Trained
 step << Warrior/Rogue
    .goto Undercity,60.17,29.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Basílio Frias|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Basil Frye
    .train 2575,3 --Mining Trained
step << Warrior
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorac Covas <Cirurgião Tático>|r em Undercity
    >>Entregue as |cRXP_LOOT_Cabeças|r que coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step << Warrior
    #season 2
    #optional
    .use 204688 >>|cRXP_WARN_Use the|r |T134455:0|t[Runa Fragmentos] |cRXP_WARN_to create|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .use 204703
    .itemcount 204703,1
step << !Mage
    #xprate >1.49
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre uma|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_BUY_da Casa de Leilão|r << Priest
    >>|cRXP_BUY_Compre uma|r |T135139:0|t[Varinha Mágica Inferior] |cRXP_BUY_da Casa de Leilões se desejar|r << Mage/Warlock
    >>|cRXP_WARN_Se você fez isso e estava coletando|r |T132889:0|t[Linho] |cRXP_WARN_anteriormente, você pode vender seu|r |T132889:0|t[Linho] |cRXP_WARN_na Casa de Leilões|r << Priest
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11287,1,435,1 << Priest/Mage/Warlock --Lesser Magic Wand (1)
    .target Auctioneer Rhyker
    .itemStat 18,QUALITY,<7 << Priest/Mage/Warlock
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3 << Priest/Mage/Warlock
--XX Intentional for priests on 1.5x xp to only do this if they don't have a lesser magic wand
step << skip
    #xprate >1.49
    #ah
    #optional
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre 6|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_da Casa de Leilões|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 3164,6,429,1 --Discolored Worg Heart (6)
    .target Auctioneer Rhyker
step << !Warlock
    #xprate <1.5
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norman|r
    .home >>Defina sua Pedra de Regresso em Cidade Baixa
    .target Innkeeper Norman
    .bindlocation 1497
step
    #optional
    #label UCHome
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carendin|r no Bairro da Magia
    .turnin 1473 >>Entregue Criatura do caos
    .accept 1471 >>Aceite A Vinculação
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Use as|r |T134416:0|t[Runas de Evocação] |cRXP_WARN_no Círculo de Evocação|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carinda|r
    .turnin 1471 >>Entregue A Vinculação
    .target Carendin Halgar
step << Warrior
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .money <0.2676
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 1198,1,371,1 --Collect Claymore (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Charles Seaton
step << Warrior
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #season 0
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 0
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,371,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ssf
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    .vendor >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_ou uma|r |T135640:0|t[Jambiya] |cRXP_BUY_dele|r
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #season 2
    #ah
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Atanagildo Marinho|r no Bairro dos Ladinos
    .vendor >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_ou uma|r |T135640:0|t[Jambiya] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #season 2
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe o|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Natanael Hermógenes|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre|r |T135425:0|t[Facas de Arremesso Afiadas] |cRXP_BUY_dele|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    .goto Undercity,77.50,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Natanael Hermógenes|r no Bairro dos Ladinos
    >>|cRXP_BUY_Compre|r |T135425:0|t[Facas de Arremesso Afiadas] |cRXP_BUY_dele|r
    .collect 3107,200,371,1 --Keen Throwing Knife (200)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Lembre-se de equipar as|r |T135425:0|t[Facas de Arremesso Afiadas] |cRXP_WARN_quando estiver no nível 11|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp >11,1
step << Rogue
    #optional
    #completewith LogoutSkip1
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Keen Arremessando Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << skip
    --Rogue class q
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1885 >>Entregue Júnio Aquino
    .accept 1886 >>Aceite Os Sicários
    .target Mennet Carkad
step << skip
    #optional
    .abandon 1883 >>Abandone Falar com Un'thuwa, caso contrário você não conseguirá aceitar a próxima missão
    .isOnQuest 1883
step << skip
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro da Magia
    .turnin 1881 >>Entregue Falar com Anastasia
    .accept 1882 >>Aceite A Fazenda Balnir
    .target Anastasia Hartwell
step
    #xprate <1.5
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bethor|r no Bairro da Magia
    .turnin 405 >>Entregue O Lich Pródigo
    .accept 357 >>Aceite A Identidade do Lich
    .target Bethor Iceshard
step << Warlock
    #xprate >1.49
    .goto Undercity,84.06,17.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bethor|r no Bairro da Magia
    .turnin 405 >>Entregue O Lich Pródigo
    .target Bethor Iceshard
step << skip --Warlock
    #xprate <2.1
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_realize um Logout Pular posicionando seu personagem na parte mais alta da escada mais baixa até parecer que está flutuando, depois saia e entre novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_Clique aqui para ver um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
step << skip --!Mage !Warlock
    #xprate <2.1
    .goto Undercity,61.10,54.11 << Priest
    .goto Undercity,78.03,50.36 << Warrior
    .goto Undercity,82.75,65.23 << Rogue
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Realize um Logout Pular pulando em cima da pilha de barris, depois faça logout e entre novamente|r << Priest/Warrior
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Faça um Atalho por Logout pulando sobre o triturador da Carroça Carniceira, depois, saia e entre novamente|r << Rogue
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Undercity,1
step
    #optional
    #label LogoutSkip1
step
    #xprate <2.1
    #completewith AtWarS
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >>Saia de Undercity
    .zoneskip Tirisfal Glades
step << skip
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Se você ver|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrulha a estrada entre Brill e The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Mage/Warlock
    #xprate >1.49
    #completewith AtWarS
    #optional
    .abandon 357 >>Abandone A Identidade do Lich
step << Mage
    #xprate <2.1
    #label AtWarS
    #softcore
    #completewith AtWarS
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #completewith AgamandStart
    #xprate >2.09
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .bindlocation 2119,1
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entregue Proof of Óbito
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 371 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step
    #xprate >2.09
    #label AtWarS
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 370 >>Entregue Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>|cRXP_WARN_Use o|r |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r] |cRXP_WARN_para criar|r |T134328:0|t[|cRXP_LOOT_Memorando Escarlate Forjado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Jamie Noré|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] dela
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_com|r |cRXP_FRIENDLY_ela|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 1820 >>Entregue Falar com Coleman
    .target Coleman Farthing

    --150% route Agamand Mills here

step
    #xprate >2.09
    #label AgamandStart
    .goto Tirisfal Glades,47.60,44.03,100,0
    .goto Tirisfal Glades,47.37,43.71
    .subzone 157 >>Vá para o norte/oeste em direção a Moinhos dos Agamand
    .isOnQuest 362
step
    #xprate >2.09
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Carta|r] |cRXP_WARN_Pode cair desses inimigos. Aceite a missão se cair.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
step
    #xprate >2.09
    #completewith ThurmanGregor
    #label MillsOverun
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step
    #xprate >2.09
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mate |cRXP_ENEMY_Devlin|r. Saque-o pelos seus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    #xprate >2.09
    .goto Tirisfal Glades,49.34,36.02
    >>Mate |cRXP_ENEMY_Nissa|r. Saque-a pelos seus |cRXP_LOOT_Restos|r. Ela pode estar dentro do prédio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #xprate >2.09
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Thurman|r e |cRXP_ENEMY_Gregor|r. Saque-os por seus |cRXP_LOOT_Remains|r. Eles podem patrulhar por aí
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
step
    #xprate >2.09
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
step << Mage/Priest
    #xprate >2.09
    #season 2
    >>Mate |cRXP_ENEMY_Guelgar|r. Saque |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] dele << Mage
    >>Mate o |cRXP_ENEMY_Guelgar|r. Saqueie-o pela |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] << Priest
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 205940,1 << Priest --Memory of a Dark Purpose (1)
    .mob Gillgar
    .train 401765,1 << Mage
    .train 425216,1 << Priest
step << Mage
    #xprate >2.09
    #season 2
    .collect 211779,1 >>Você precisa de |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item
    .train 401765 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos Glaciais.]
    .use 203753
    .itemcount 211779,1
step
    #xprate >2.09
    #hardcore
    #completewith FoodandWater2
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #xprate >2.09
    #softcore
    #completewith FoodandWater2
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate >2.09
    .goto Tirisfal Glades,58.20,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Vá para Os Moinhos Invadidos
    .target Deathguard Dillinger
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ivete Palhares|r e |cRXP_FRIENDLY_Eurico Palhares|r
    .turnin 361 >>Entregue A Carta Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    #xprate >2.09
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .turnin 1820 >>Entregue Falar com Coleman << Warrior
    .target Coleman Farthing
    .isQuestTurnedIn 1819 << Warrior
step << Warrior
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .target Coleman Farthing
step
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    #xprate >2.09
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.trainer >>Treine suas magias de classe
    .target Dark Cleric Beryl
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 2687 >>Treine suas magias de classe
    .target Austil de Mon
    .xp >12,1
step << Warrior
    #xprate >2.09
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .target Austil de Mon
    .xp <12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 707 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <10,1
    .xp >12,1
step << Warlock
    #xprate >2.09
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <12,1
step << Rogue
    #xprate >2.09
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r
    .train 674 >>Treine suas magias de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >2.09
    #optional
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r
    .train 1766 >>Treine suas magias de classe
    --.accept 1885 >> Accept Mennet Carkad
    .target Marion Call
    .xp <12,1
step
    #xprate >2.09
    #label FoodandWater2
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,20,370,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,370,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,370,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,370,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    #xprate <2.1
    #completewith next
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 359 >>Entregue Deveres Renegados
    .accept 360 >>Aceite Retornar ao Magistrado
    .accept 356 >>Aceite Patrulha da Retaguarda
    .target Deathguard Linnea
step
    #xprate <2.1
    #completewith ArriveBalnir
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ArriveBalnir
    .goto Tirisfal Glades,76.51,61.77
    .subzone 165 >>Vá para Balnir Farmstead
    .isOnQuest 356
step << Mage
    #xprate <2.1
    #season 2
    #completewith HorrorsandSpirits
    >>Use |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << skip
    #completewith next
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << skip
    .goto Tirisfal Glades,77.48,62.00
    >>Saque qualquer planta no chão para obter uma |cRXP_PICK_Balnir Snapdragon|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #xprate <2.1
    #optional
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Use |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #xprate <2.1
    #season 2
    >>|cRXP_WARN_Use as|r |T134332:0|t|cRXP_LOOT_[Anotações de Boticário]|r |cRXP_WARN_para criar|r |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #xprate <2.1
    #season 2
    .train 415942 >>|cRXP_WARN_Use o|r |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step
    #xprate <2.1
    #sticky
    #label Friars
    #loop
    #optional
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mate os |cRXP_ENEMY_Scarlet Friars|r e os |cRXP_ENEMY_Scarlet Zealots|r. Saqueie-os pelos |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 371,2 --Scarlet Friar (5)
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step
    #xprate <2.1
    #loop
    #sticky
    #requires Friars
    #label Friars2
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Abate os |cRXP_ENEMY_Scarlet Friars|r
    .complete 371,2 --Scarlet Friar (5)
    .mob Scarlet Friar
    .isQuestTurnedIn 374
step
    #xprate <2.1
    .goto Tirisfal Glades,78.82,56.14
    >>Abate o |cRXP_ENEMY_Capitão Vidálio|r dentro da torre
    .complete 371,1 --Captain Vachon (1)
    .mob Captain Vachon
step
    #xprate <2.1
    #requires Friars2
    #loop
    #label FinishRings
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mate os |cRXP_ENEMY_Scarlet Friars|r e os |cRXP_ENEMY_Scarlet Zealots|r. Saqueie-os pelos |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << skip
    #xprate <2.1
    #optional
    #loop
    .goto Tirisfal Glades,80.95,57.21,0
    .goto Tirisfal Glades,77.14,54.92,0
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Colete 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_para sua Varinha Mágica Inferior. Esta é a última chance de conseguir o suficiente antes da Floresta de Pinhaprata|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <2.1
    #completewith ViciousVenom
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #xprate <2.1
    #label ViciousVenom
    #loop
    #requires Friars2
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Mate os |cRXP_ENEMY_Vicious Noite Teia Aranhas|r. Saqueie-os pelo |cRXP_LOOT_Venenom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step
    #xprate <2.1
    #loop
    .goto Tirisfal Glades,83.59,43.84,0
    .goto Tirisfal Glades,72.33,33.01,0
    .goto Tirisfal Glades,83.59,43.84,70,0
    .goto Tirisfal Glades,80.77,46.40,70,0
    .goto Tirisfal Glades,75.86,46.02,70,0
    .goto Tirisfal Glades,73.10,40.71,70,0
    .goto Tirisfal Glades,72.33,33.01,70,0
    .goto Tirisfal Glades,68.69,34.33,70,0
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque suas |cRXP_LOOT_Pelts|r deles
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << skip
    #xprate >1.49
    .xp 11+2950 >>Triture até 2950+/8800xp
    .isOnQuest 374
    .isOnQuest 375
--XX 220 (369)+840 (371)+390 (360)+90 (355)+160 (407)+875 (492) = 2575 -> 3860
--XX +625 (374 OPT)+700 (375 OPT) = 3900 -> 5850
--XX +625 (374 OPT) = 3200 -> 4800
--XX +700 (375 OPT) = 3275 -> 4910
step << skip
    #xprate >1.49
    #optional
    .xp 11+3890 >>Triture até 3890+/8800xp
    .isQuestTurnedIn 374
    .isOnQuest 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4000 >>Triture até 4000+/8800xp
    .isOnQuest 374
    .isQuestTurnedIn 375
step << skip
    #xprate >1.49
    #optional
    .xp 11+4940 >>Triture até 4940+/8800xp
    .isQuestTurnedIn 374
    .isQuestTurnedIn 375
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .hs >>Use sua Pedra de Regresso para ir a Montalvo
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0,1
step
    #xprate <2.1
    #completewith ANewPlagueFinal
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
    .cooldown item,6948,<0
step
    #xprate <1.5
    .goto Tirisfal Glades,67.97,42.09
    >>Saque |cRXP_PICK_Gunther's Books|r para obter |cRXP_LOOT_The Lich's Spellbook|r na ilha em Brightwater Lake
    .complete 357,1 --The Lich's Spellbook (1)
step
    #xprate <1.5
    #hardcore
    #completewith ANewPlagueFinal
    .subzone 159 >>Volte para Brill
    .subzoneskip 159
step
    #xprate <1.5
    #softcore
    #completewith ANewPlagueFinal
    .goto Tirisfal Glades,66.60,44.95
    .deathskip >>Morra |cRXP_WARN_na ilha menor|r e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <2.1
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step << skip
    #phase 3-6
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    --.accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #xprate <1.5
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 372 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step
    #optional
    #xprate <2.1
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entregue Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
step
    #xprate <2.1
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Entregue Retornar ao Magistrado
    .turnin 355 >>Entregue Falar com Sevren
    .target Magistrate Sevren
step
    #xprate >1.49
    #optional
    #completewith ANewPlagueFinal
    .abandon 372 >>Abandone Em Guerra com The Scarlet Cruzada
step
    #xprate <2.1
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entregue Proof of Óbito
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #xprate <2.1
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_com|r |cRXP_FRIENDLY_ela|r
    .collect 4496,1,356,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #xprate <1.5
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #xprate <2.1
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
step
    #xprate <2.1
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Venda seu lixo, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Renee
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Fale com |cRXP_FRIENDLY_Magali|r
    .target Penny Hawkins
    .train 425447,1
step
    #xprate <1.5
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Zelote Escarlate Capturado|r e o |cRXP_FRIENDLY_Montanhista Capturado|r no andar de baixo, no fundo da estalagem
    .turnin 407 >>Entregue Campos de mágoa
    .goto Tirisfal Glades,61.97,51.29
    .target +Captured Scarlet Zealot
    .turnin 492 >>Entregue Uma Nova Peste
    .goto Tirisfal Glades,61.94,51.40
    .target +Captured Mountaineer
step
    #xprate <2.1
    .goto Tirisfal Glades,61.94,51.40
    #label ANewPlagueFinal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Capturado|r no andar de baixo, nos fundos da estalagem
    .turnin 492 >>Entregue Uma Nova Peste
    .target +Captured Mountaineer
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Severaldo|r (andar de baixo) dentro da estalagem
    .target Blueheart
    .train 425447,1
step << Warrior
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Abate |cRXP_ENEMY_Severaldo|r, depois fale com |cRXP_FRIENDLY_Magali|r no andar de cima
    .gossipoption 110751 >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 588 >>Treine |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 6074 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145 >>Treine |T135812:0|t[Bola de Fogo Rank 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 1449 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1758 >>Treine suas magias de classe
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Treine |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 6222 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <14,1
step << skip
    #completewith Entersilverpine
    >>|cRXP_WARN_Se você ver|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrulha a estrada entre Brill e The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #xprate <2.1
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 356 >>Entregue Patrulha da retaguarda
    .target Deathguard Linnea
step << Undead
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step
    #optional
    #completewith ZeptoDurotar
    .abandon 374 >>Abandone Comprovação de Morte
step
    #optional
    #completewith ZeptoDurotar
    .abandon 375 >>Abandone O frio da morte
step << Undead
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    .zone Durotar >>Pegue o zepelim para Durotar
    >>Crie Pedras de Amolação/Ataduras enquanto você espera << Warrior/Rogue
    >>Conjure Comida/Água enquanto você espera << Mage
    .zoneskip Durotar
step << Undead
    #completewith HiddenEnemiesPickup
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Viaje para Orgrimmar
    .dungeon RFC
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para nenhum lugar!|r
    .fp Orgrimmar >>Aprenda a rota de voo para Orgrimmar
    .target Doras
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Durotar,53.08,9.19,0
    >>Mate os |cRXP_ENEMY_Burning Blade|r inimigos na Pedra do Crânio até cair a |cRXP_LOOT_Lieutenant's Insignia|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 5761 >>Aceite Morte da Fera
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step << Undead
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entregue Escondido Enemies
    .accept 5728 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step << Undead
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_pois você não precisa mais dela|r
    .dungeon RFC
step << Undead
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>Entre no portal da instância RFC. Adentre a instância.
    .dungeon RFC
step << Undead
    >>|cRXP_WARN_Se possível, peça aos membros do grupo para compartilharem as seguintes missões|r
    .accept 5722 >>Aceite Procurando a Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
    .disablecheckbox
    .dungeon RFC
step << Undead
    #completewith next
    >>Mate os |cRXP_ENEMY_Ragefire Troggs|r e os |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>Entregue Procurando a Bolsa Perdida
    .accept 5724 >>Aceite Retorno da Bolsa Perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step << Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>Aceite Retorno da Bolsa Perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step << Undead
    #label TroggsShamans
    >>Mate os |cRXP_ENEMY_Ragefire Troggs|r e os |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step << Undead
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mate os |cRXP_ENEMY_Searing Blade Cultists|r e os |cRXP_ENEMY_Searing Blade Warlocks|r. Saqueie-os para obter os |cRXP_LOOT_Spells of Sombra|r e as |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    >>Mate |cRXP_ENEMY_Taragaman, o Famélico|r. Saqueie-o para obter seu |cRXP_LOOT_Coração|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step << Undead
    #label BazzalanandJergosh
    >>Mate o |cRXP_ENEMY_Bazzalan|r e o |cRXP_ENEMY_Jergosh, o Invocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step << Undead
    >>Mate os |cRXP_ENEMY_Searing Blade Cultists|r e os |cRXP_ENEMY_Searing Blade Warlocks|r. Saqueie-os para obter os |cRXP_LOOT_Spells of Sombra|r e as |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5761 >>Entregue Morte da Fera
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Entregue Escondido Enemies
    .accept 5729 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5729 >>Entregue Escondido Enemies
    .accept 5730 >>Aceite Escondido Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step << Undead
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Entregue Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Undead
    #completewith Conscript
    .subzone 362 >>Vá para Razor Hill
step << !Undead
    .hs >>Use a Pedra Lunar para voltar a Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >>Treine suas magias de classe
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional << Undead
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >>Treine suas magias de classe
    .target Kaplak
    .xp <16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 8122 >>Treine suas magias de classe
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional << Undead
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Treine suas magias de classe
    .target Tai'jin
    .xp <16,1
step << Warrior
    #optional << Undead
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    #optional << Undead
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <16,1
step
    #label Conscript
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step
    #completewith next
    .subzone 379 >>Vá para Far Vigiar Post
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Conscrição da Encruzilhada
    .target Kargal Battlescar

]])
