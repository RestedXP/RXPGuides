if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Mulgore
#next 6-10 Mulgore
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Tauren
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado a Tauren. Não recomendamos fazer esta zona pois há missões bloqueadas apenas para Tauren. É recomendado que você escolha a mesma zona inicial|r
step
    .goto 7,45.15,75.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hawkwind|r
    .accept 14449 >>Aceite A Primeira Etapa
    .target Chief Hawkwind
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .turnin 14449 >>Entregue A Primeira Etapa
    .accept 14452 >>Aceite Rito de força
    .target Grull Hawkwind
step
    .goto 7,49.20,78.98,30,0
    .goto 7,49.56,78.24,30,0
    .goto 7,49.33,77.59,30,0
    .goto 7,50.23,78.31,30,0
    .goto 7,50.92,78.32,30,0
    .goto 7,50.31,77.25,30,0
    .goto 7,49.56,78.24
    >>Abate os |cRXP_ENEMY_Costagulha Invasores|r
    .complete 14452,1 --Bristleback Invaders (6)
    .mob Bristleback Invader
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .turnin 14452 >>Entregue Rito de força
    .accept 24852 >>Aceite Nossa Tribo, Aprisionada
    .target Grull Hawkwind
step
    .goto 7,52.06,80.48,30,0
    .goto 7,52.15,79.93,30,0
    .goto 7,52.06,78.28,30,0
    .goto 7,52.17,77.75,30,0
    .goto 7,52.21,76.72,30,0
    .goto 7,52.57,74.81,30,0
    .goto 7,50.89,82.37,30,0
    .goto 7,50.67,83.12,30,0
    .goto 7,52.06,80.48
    >>Clique nas |cRXP_PICK_Gaiolas|r para libertar os |cRXP_FRIENDLY_Bravos Capturados|r
    .complete 24852,1 --Braves Freed (4)
    .target Captured Brave
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grull|r
    .turnin 24852 >>Entregue Nossa Tribo, Aprisionada
    .accept 14458 >>Aceite Vá até Adana
    .target Grull Hawkwind
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adana|r
    .turnin 14458 >>Entregue Vá até Adana
    .accept 14455 >>Aceite Impeça as Tormentadoras
    .accept 14456 >>Aceite Rito de Bravura
    .target Adana Thunderhorn
step
    #loop
    .goto 7,46.72,87.92,0
    .goto 7,47.05,87.38,30,0
    .goto 7,46.72,87.92,30,0
    .goto 7,46.45,88.75,30,0
    .goto 7,47.33,89.49,30,0
    .goto 7,47.90,89.03,30,0
    .goto 7,47.90,88.05,30,0
    >>Abate os |cRXP_ENEMY_Costagulha Ladrões de Arma|r. Saqueie-os por seus |cRXP_LOOT_Rifles|r
    >>Abate os |cRXP_ENEMY_Costagulha Chamadores de Espinhos|r
    .complete 14456,1 --Stolen Rifle (7)
    .mob +Bristleback Gun Thiefs
    .complete 14455,1 --Bristleback Thorncaller (7)
    .mob +Bristleback Thorncaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adana|r e |cRXP_FRIENDLY_Rohaku|r
    .turnin 14456 >>Entregue Rito de Bravura
    .turnin 14455 >>Entregue Impeça as Tormentadoras
    .accept 14459 >>Aceite Os javaliços
    .accept 14461 >>Aceite Alimento do Mal
    .goto 7,46.18,82.61
    .accept 31165 >>Aceite Bilhete Caligrafado << Monk
    .accept 3092 >>Aceite Bilhete cinzelado << Hunter
    .accept 3091 >>Aceite Bilhete << Warrior
    .accept 27015 >>Aceite Bilhete Consagrado << Paladin
    .accept 3094 >>Aceite Bilhete verdejante << Druid
    .accept 3093 >>Aceite Bilhete inscrito em runas << Shaman
    .accept 27014 >>Aceite Bilhete Santificado << Priest
    .goto 7,46.15,82.32
    .target Adana Thunderhorn
    .target Rohaku Stonehoof
step
    #completewith ThirdTrough
    >>Abate |cRXP_ENEMY_Javaliço Encouraçado|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,44.70,87.82
    >>|cRXP_WARN_Usar|r |T135432:0|t[Tocha de Adana] |cRXP_WARN_ao lado do primeiro cocho|r
    .complete 14461,1 --First Trough (1)
    .use 49539
step
    .goto 7,44.32,88.71
    >>|cRXP_WARN_Usar|r |T135432:0|t[Tocha de Adana] |cRXP_WARN_ao lado do segundo cocho|r
    .complete 14461,2 --Second Trough (1)
    .use 49539
step
    #label ThirdTrough
    .goto 1412/1,-265.00000,-3405.80005
    >>|cRXP_WARN_Usar|r |T135432:0|t[Tocha de Adana] |cRXP_WARN_ao lado do terceiro cocho|r
    .complete 14461,3 --Third Trough (1)
    .use 49539
step
#loop
	.line 7,45.73,88.52,44.76,89.60,44.23,88.74,44.22,87.98,44.72,87.69,45.20,87.83,45.73,88
	.goto 7,45.73,88.52,30,0
	.goto 7,44.76,89.60,30,0
	.goto 7,44.23,88.74,30,0
	.goto 7,44.22,87.98,30,0
	.goto 7,44.72,87.69,30,0
	.goto 7,45.20,87.83,30,0
	.goto 7,45.73,88.00,30,0
    >>Abate |cRXP_ENEMY_Javaliço Encouraçado|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adana|r
    .turnin 14459 >>Entregue Os javaliços
    .turnin 14461 >>Entregue Alimento do Mal
    .accept 14460 >>Aceite Rito de Honra
    .target Adana Thunderhorn
step
    .goto 7,41.08,81.42
    >>Abate |cRXP_ENEMY_Chefe Grunhido Mantospinho|r. Saqueie-o por sua |cRXP_LOOT_Juba|r
    .complete 14460,1 --Mane of Thornmantle (1)
    .mob Chief Squealer Thornmantle
step
    #completewith next
    .hs >>Use a Pedra de Regresso para voltar à Aldeia Narache
    .cooldown item,6948,>0
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hawkwind|r
    .turnin 14460 >>Entregue Rito de Honra
    .accept 24861 >>Aceite Últimas Preces, Primeiras Preces
    .target Chief Hawkwind
step
    .goto 7,45.11,75.39
    >>|cRXP_WARN_Use a|r |T132813:0|t[Jarra de Água]
    .complete 24861,1 --Offering Placed (1)
    .use 50465
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hawkwind|r
    .turnin 24861 >>Entregue Últimas Preces, Primeiras Preces
    .accept 23733 >>Aceite Ritos da Mãe Terra
    .target Chief Hawkwind
step << Monk
    .goto 462/1,-260.800,-2910.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoyu|r
    .turnin 31165 >>Entregue Bilhete Caligrafado
    .accept 31166 >>Aceite Palma do Tigre
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entregue Bilhete Cinzelado
    .accept 27021 >>Aceite O Caminho do Caçador
    .train 56641 >>Treine |T132213:0|t[Tiro Firme] << Cata
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entregue Bilhete
    .accept 27020 >>Aceite A Primeira Lição
    .train 100 >>Treine |T132337:0|t[Carga] << Cata
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helaku|r
    .turnin 27015 >>Entregue Bilhete Consagrado
    .accept 27023 >>Aceite Os Caminhos dos Andarilhos do Sol
    .train 20271 >>Aprenda |T135959:0|t[Julgamento] << Cata
    .train 20154 >>Treine |T135960:0|t[Selo da Retidão] << Cata
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entregue Bilhete Verdejante
    .accept 27067 >>Aceite Rejuvenescer Toque
    .train 774 >>Treine |T136081:0|t[Rejuvenescer] << Cata
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entregue Bilhete Verdejante
    .accept 27067 >>Aceite Fogo Lunar
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Entregue Bilhete Inscrito em Runas
    .accept 27027 >>Aceite Golpe Primevo
    .train 73899 >>Treine |T460956:0|t[Golpe Primevo] << Cata
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27014 >>Entregue Bilhete Santificado
    .accept 27066 >>Aceite Cura em um Clarão
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << Cata
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27014 >>Entregue Bilhete Santificado
    .accept 27066 >>Aceite Aprenda a Palavra
    .target Seer Ravenfeather
step << Monk
    .goto 7,45.43,75.39
	>>Lance |T606551:0|t[Palma do Tigre] em um |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 31166,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Hunter
    .goto 7,45.43,75.39
	>>Lance |T132213:0|t[Tiro Firme] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 27021,2 << !Cata --Steady Shot (x3)
	.complete 27021,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Warrior
    .goto 7,45.43,75.39
	>>Lance |T132337:0|t[Investida] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 27020,2 << !Cata --Cast Charge (x3)
	.complete 27020,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Paladin cata
    .goto 7,45.43,75.39
	>>Use |T135959:0|t[Julgamento] em um |cRXP_ENEMY_Treinamento Boneco|r
	.complete 27023,1 --Cast Judgement (x3)
	.mob Training Dummy
step << Paladin !cata
    .goto 7,45.43,75.39
	>>Use |T135961:0|t[Selo de Comando], depois ataque um |cRXP_ENEMY_Treinamento Boneco|r
	.complete 27023,2
    .mob Training Dummy
step << Druid cata
    .goto 7,45.65,75.35
	>>Use |T136081:0|t[Rejuvenescer] em um |cRXP_FRIENDLY_Valente Ferido|r
	.complete 27067,1 << Cata --Cast Rejuvenation (x1)
	.target Wounded Brave
step << Druid !cata
    .goto 7,45.43,75.39
	>>Use |T136096:0|t[Fogo Lunar] em um |cRXP_ENEMY_Treinamento Boneco|r
	.complete 27067,2 --Cast Moonfire
	.mob Training Dummy
step << Shaman
    .goto 7,45.43,75.39
	>>Use |T460956:0|t[Golpe Primevo] em um |cRXP_ENEMY_Treinamento Boneco|r
	.complete 27027,2 << !Cata --Cast Primal Strike (x3)
	.complete 27027,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Priest
    .goto 7,45.65,75.35
	>>Use |T135907:0|t[Cura Célere] em um |cRXP_FRIENDLY_Valente Ferido|r
	.complete 27066,2 << !Cata --Cast Flash Heal (x5)
	.complete 27066,1 << Cata --Cast Flash Heal (x5)
	.target Wounded Brave
step << Monk
    .goto 462/1,-261.100,-2910.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoyu|r
    .turnin 31166 >>Entregue Palma do Tigre
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 27021 >>Entregue O Caminho do Caçador
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 27020 >>Entregue A Primeira Lição
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helaku|r
    .turnin 27023 >>Entregue Os Caminhos dos Andarilhos do Sol
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Entregue Rejuvenescer Toque
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Entregue Fogo Lunar
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meela|r
    .turnin 27027 >>Entregue Golpe Primevo
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27066 >>Entregue Cura em um Clarão
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 27066 >>Entregue Aprenda a Palavra
    .target Seer Ravenfeather
step
    #completewith next
    .goto 1412/1,-114.60000,-2976.90015,12,0
    .goto 1412/1,-48.40000,-2907.10010,12,0
    .goto 1412/1,7.20000,-2900.60010,12,0
    .goto 1412/1,-42.80000,-2933.50000,30 >>Siga o caminho até o topo da montanha
step
    .goto 1412/1,-42.80000,-2933.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dyami|r
    .turnin 23733 >>Entregue Ritos da Mãe Terra
    .accept 24215 >>Aceite Rito dos Ventos
    .target Dyami Windsoar
step
    #completewith next
    .goto 7,41.27,75.22,15,0
    .goto 7,41.36,74.10,15,0
    .deathskip >>Siga a seta ao pular da montanha. Morra e ressurja na |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Aceite Quico Sumiu!
    .target Ahab Wheathoof
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Mulgore
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Aceite Quico Sumiu!
    .target Ahab Wheathoof
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 2973 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <6,1
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Aceite Mazzranache
    .target Maur Raincaller
    .xp <6,1
step << Tauren
    .goto 7,46.06,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varg|r
    .accept 6361 >>Aceite Um pacote de peles
    .vendor >>Comerciante de descarte e reparo << Paladin/Priest
    .target Varg Windwhisper
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Venda os lixos. Venda sua arma se ela lhe der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (6p 66c). Você voltará depois se ainda não tiver o suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Fale com|r |cRXP_FRIENDLY_Mahnott|r
    >>|cFF0E8312Compre um|r |T133053:0|t[Marreta de Madeira] |cFF0E8312dele|r
    .collect 2493,1,14438,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenna Olho de Falcão|r
    .vendor >>Comerciante trash e reparo. Venda sua arma se lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (3s 93c). Você voltará depois se ainda não tiver o suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Fale com|r |cRXP_FRIENDLY_Kennah|r
    >>|cFF0E8312Compre um|r |T135611:0|t[Bacamarte Ornado] |cFF0E8312dele|r
    .collect 2509,1,14438,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith PalemaneGnolls
    +Equipe a |T133053:0|t[Marreta de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith PalemaneGnolls
    +Equipe o |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Tauren
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tak|r
    .turnin 6361 >>Entregue Um pacote de peles
    .accept 6362 >>Aceite Voo para o Penhasco do Trovão
    .target Tak
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T133968:0|t[Pão Fresquinho] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Compre até 20|r |T133968:0|t[Pão Fresquinho] << Warrior/Hunter
    .target Innkeeper Kauth
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahmo|r
    .turnin 24215 >>Entregue Rito dos Ventos
    .accept 14438 >>Aceite Dividindo a terra
    .target Ahmo Thunderhorn
step
    .goto 7,48.77,58.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .accept 761 >>Aceite Caçada ao rapineiro
    .target Harken Windtotem
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarl|r
    .train 8042 >>Treine suas magias de classe
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alsoomse|r
    .train 589 >>Treine suas magias de classe
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 8921 >>Treine suas magias de classe
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iopi|r
    .train 465 >>Treine suas magias de classe
    .target Sunwalker Iopi
step
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r
    .accept 20440 >>Aceite Água venenosa
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 34428 >>Treine suas magias de classe
    .target Krang Stonehoof
step
    #completewith WCleansing1
    >>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #completewith next
    >>Abate |cRXP_ENEMY_Wolfs|r. Saque seus |cRXP_LOOT_Paws|r
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie suas |cRXP_LOOT_Garras|r e |T134343:0|t[|cRXP_LOOT_Carne Tenra de Moa|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #label PalemaneGnolls
#loop
	.line 7,47.96,69.82,47.20,70.68,47.71,71.57,48.37,71.84,48.83,72.00,49.84,70.48,49.24,70.24,48.87,69.80,47.96,69.82
	.goto 7,47.96,69.82,30,0
	.goto 7,47.20,70.68,30,0
	.goto 7,47.71,71.57,30,0
	.goto 7,48.37,71.84,30,0
	.goto 7,48.83,72.00,30,0
	.goto 7,49.84,70.48,30,0
	.goto 7,49.24,70.24,30,0
	.goto 7,48.87,69.80,30,0
	.goto 7,47.96,69.82,30,0
#loop
	.line 7,51.94,69.95,52.07,70.98,52.52,71.73,52.92,72.36,53.62,72.44,53.84,72.04,54.25,72.15,55.07,72.12,55.52,71.26,55.22,70.65,54.55,70.22,53.92,70.07,53.15,69.85,52.58,70.17,51.94,69
	.goto 7,51.94,69.95,30,0
	.goto 7,52.07,70.98,30,0
	.goto 7,52.52,71.73,30,0
	.goto 7,52.92,72.36,30,0
	.goto 7,53.62,72.44,30,0
	.goto 7,53.84,72.04,30,0
	.goto 7,54.25,72.15,30,0
	.goto 7,55.07,72.12,30,0
	.goto 7,55.52,71.26,30,0
	.goto 7,55.22,70.65,30,0
	.goto 7,54.55,70.22,30,0
	.goto 7,53.92,70.07,30,0
	.goto 7,53.15,69.85,30,0
	.goto 7,52.58,70.17,30,0
	.goto 7,51.94,69.00,30,0
    >>Abate os |cRXP_ENEMY_Palemane Skinners|r, os |cRXP_ENEMY_Palemane Poachers|r e os |cRXP_ENEMY_Palemane Tanners|r
    .complete 14438,1 --Palemane Gnolls (15)
    .mob Palemane Skinner
    .mob Palemane Poacher
    .mob Palemane Tanner
step
    #loop
    .goto 7,48.25,67.61,0
    .goto 7,50.61,68.08,40,0
    .goto 7,50.23,66.00,40,0
    .goto 7,51.06,64.06,40,0
    .goto 7,52.38,63.49,40,0
    .goto 7,52.98,62.11,40,0
    .goto 7,54.02,61.22,40,0
    .goto 7,55.23,62.26,40,0
    .goto 7,56.63,62.25,40,0
    .goto 7,56.75,64.83,40,0
    .goto 7,56.06,67.30,40,0
    .goto 7,48.25,67.61,40,0
    >>Abate |cRXP_ENEMY_Wolfs|r. Saque seus |cRXP_LOOT_Paws|r
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie suas |cRXP_LOOT_Garras|r e |T134343:0|t[|cRXP_LOOT_Carne Tenra de Moa|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #completewith AcceptDangers
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134343:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label WCleansing1
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r
    .turnin 20440 >>Entregue Água venenosa
    .accept 24440 >>Aceite A purificação de Casco Invernal
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .turnin 761 >>Entregue Caçada ao rapineiro
    .target Harken Windtotem
    .isQuestComplete 761
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahmo|r
    .turnin 14438 >>Entregue Dividindo a terra
    .accept 14491 >>Aceite A Terra Indócil
    .accept 24459 >>Aceite Morin Espreita Nuvem
    .target Maur Raincaller
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Aceite Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 2973 >>Treine suas magias de classe
    .target Yaw Sharpmane
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahnott Ferida Aberta|r
    .vendor >>Comerciante fraco. Venda sua arma se der dinheiro suficiente para uma |T133053:0|t[Marreta de Madeira] (6s 65c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Fale com|r |cRXP_FRIENDLY_Mahnott|r|cFF0E8312. Compre uma|r |T133053:0|t[Marreta de Madeira] |cFF0E8312dela|r
    .collect 2493,1,24440,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenna Olho de Falcão|r
    .vendor >>Comerciante trash e reparo. Venda sua arma se lhe der dinheiro suficiente para um |T135611:0|t[Bacamarte Ornado] (3s 93c). Você voltará depois se ainda não tiver o suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Fale com|r |cRXP_FRIENDLY_Kennah|r|cFF0E8312. Compre um|r |T135611:0|t[Bacamarte Ornado] |cFF0E8312dele|r
    .collect 2509,1,24440,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith WinterhoofWell
    +Equipe a |T133053:0|t[Marreta de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith WinterhoofWell
    +Equipe o |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    #label AcceptDangers
    .goto 1412/1,-384.80002,-2397.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target Ruul Eagletalon
step
    #completewith next
    >>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label WinterhoofWell
    .goto 7,53.46,65.34
    >>|cRXP_WARN_Use o|r |T135139:0|t[A purificação de Casco Invernal Totem] |cRXP_WARN_perto do poço|r
    .use 5411
    .complete 24440,1 --Well Cleansed (1)
step
    #completewith next
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134343:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r
    .turnin 24440 >>Entregue A purificação de Casco Invernal
    .accept 24441 >>Aceite Totem de Chifre Troante
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 84939 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <7,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarl|r
    .train 324 >>Treine suas magias de classe
    .target Tarl Cloudsong
    .xp <8,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >>Treine suas magias de classe
    .target Seer Alsoomse
    .xp <8,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 768 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <8,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iopi|r
    .train 635 >>Treine suas magias de classe
    .target Sunwalker Iopi
    .xp <7,1
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Kauth|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T133968:0|t[Pão Fresquinho] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Compre até 20|r |T133968:0|t[Pão Fresquinho] << Warrior/Hunter
    .itemcount 1179,<20 << !Warrior !Hunter
    .itemcount 4541,<20
    .target Innkeeper Kauth
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin Espreita Nuvem|r
    .turnin 24459 >>Entregue Morin Espreita Nuvem
    .accept 749 >>Aceite A caravana devastada
    .target Morin Cloudstalker
step
    #completewith VentureCoCave
    >>Mate os |cRXP_ENEMY_Prairie Stalkers|r. Saque-os para obter suas |cRXP_LOOT_Garras|r
    >>Mate os |cRXP_ENEMY_Flatland Cougars|r. Saqueie-os para obter suas |cRXP_LOOT_Claws|r e um |cRXP_LOOT_Flatland Cougar Femur|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith VentureCoCave
    >>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    .goto 7,53.52,48.29
    >>Clique no |cRXP_PICK_Caixote Lacrado de Suprimentos|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin Espreita Nuvem|r
    .turnin 751 >>Entregue A Caravana Devastada
    .accept 26179 >>Aceite Empreendimentos S.A.
    .accept 26180 >>Aceite Supervisor Geringonça
    .target Morin Cloudstalker
step
    #label VentureCoCave
    #completewith FizsprocketKill
    .goto 7,60.86,47.47,10 >>Entre na caverna
step
    #completewith FizsprocketKill
    >>Mate os |cRXP_ENEMY_Venture Co. Trabalhadores|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #label FizsprocketKill
    .goto 7,61.21,46.29
    >>Mate |cRXP_ENEMY_Fizsprocket|r. Saque-o por sua |cRXP_LOOT_Prancheta|r
    .complete 26180,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
step
    #loop
    .goto 7,59.30,48.85,0
    .goto 7,62.21,45.13,20,0
    .goto 7,61.81,44.74,20,0
    .goto 7,61.29,43.64,20,0
    .goto 7,60.73,48.13,40,0
    .goto 7,60.47,49.63,40,0
    .goto 7,59.30,48.85,40,0
    >>Mate os |cRXP_ENEMY_Venture Co. Trabalhadores|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #completewith FizsprocketTurnin
    >>Mate os |cRXP_ENEMY_Prairie Stalkers|r. Saque-os para obter suas |cRXP_LOOT_Garras|r
    >>Mate os |cRXP_ENEMY_Flatland Cougars|r. Saqueie-os para obter suas |cRXP_LOOT_Claws|r e um |cRXP_LOOT_Flatland Cougar Femur|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith FizsprocketTurnin
    >>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label FizsprocketTurnin
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin Espreita Nuvem|r
    .turnin 26179 >>Entregue Empreendimentos S.A.
    .turnin 26180 >>Entregue Supervisor Geringonça
    .target Morin Cloudstalker
step
    #completewith next
    >>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #loop
    .goto 7,56.14,57.59,0
    .goto 7,57.94,60.08,40,0
    .goto 7,58.60,58.93,40,0
    .goto 7,59.73,57.46,40,0
    .goto 7,60.31,56.44,40,0
    .goto 7,61.03,55.56,40,0
    .goto 7,59.21,54.50,40,0
    .goto 7,58.44,53.38,40,0
    .goto 7,57.87,50.87,40,0
    .goto 7,57.23,50.07,40,0
    .goto 7,56.00,51.41,40,0
    .goto 7,55.66,53.73,40,0
    .goto 7,55.60,55.55,40,0
    .goto 7,56.14,57.59,40,0
    >>Mate os |cRXP_ENEMY_Prairie Stalkers|r. Saque-os para obter suas |cRXP_LOOT_Garras|r
    >>Abate os |cRXP_ENEMY_Flatland Cougars|r. Saqueie-os pelas suas |cRXP_LOOT_Garras|r e por um |cRXP_LOOT_Femur|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #loop
    .goto 7,54.70,67.69,0
    .goto 7,54.11,62.03,40,0
    .goto 7,51.77,66.37,40,0
    .goto 7,51.06,67.33,40,0
    .goto 7,50.01,68.11,40,0
    .goto 7,54.70,67.69,40,0
    >>Mate |cRXP_ENEMY_Rapineiros|r. Pegue seus |cRXP_LOOT_Cálamos|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #xprate <1.2
    #completewith ThunderHornTotem
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134343:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #xprate >1.19
    #completewith FlyTB
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134343:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label ThunderHornTurnin
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r
    .turnin 24441 >>Entregue Totem de Chifre Troante
    .accept 24456 >>Aceite Purificação de Chifre Troante
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .turnin 761 >>Entregue Caçada ao rapineiro
    .target Harken Windtotem
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 84939 >>Treine suas magias de classe
    .target Krang Stonehoof
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarl|r
    .train 324 >>Treine suas magias de classe
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >>Treine suas magias de classe
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 768 >>Treine suas magias de classe
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iopi|r
    .train 635 >>Treine suas magias de classe
    .target Sunwalker Iopi
step
    .goto 7,47.16,56.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 26188 >>Entregue Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 5116 >>Treine suas magias de classe
    .target Yaw Sharpmane
step
    #xprate <1.2
    #label ThunderHornTotem
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Use o|r |T135139:0|t[Purificação de Chifre Troante Totem] |cRXP_WARN_próximo ao poço|r
    .complete 24456,1 --Well Cleansed (1)
step
    #xprate >1.19
    #label FlyTB
    #completewith next
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tak|r
    .fly Thunder Bluff >>Voe para o Penhasco do Trovão
    .target Tak
step << Tauren
    #xprate >1.19
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Voe para o Penhasco do Trovão
    .accept 6363 >>Aceite Tal, o Mestre de Mantícoras
    .target Ahanu
step << Tauren
    #xprate >1.19
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entregue Tal, o Mestre de Mantícoras
    .accept 6364 >>Aceite Fale Novamente com Varg
    .target Tal
step << skip
    #xprate >1.19
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Retorno no Penhasco do Trovão
    .target Innkeeper Pala
step
    #optional
    .maxlevel 9,MulgoreEnd
step
    #xprate >1.19
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Pegue o elevador para sair de Penhasco do Trovão
    .zoneskip Mulgore
step
    #loop
    .goto 7,35.869,42.670,0
    .waypoint 7,36.260,44.783,40,0
    .waypoint 7,35.869,42.670,40,0
    .waypoint 7,34.946,40.825,40,0
    .waypoint 7,33.934,41.928,40,0
    .waypoint 7,32.540,41.483,40,0
    .waypoint 7,33.616,43.231,40,0
    >>Mate |cRXP_ENEMY_Bruxas Eólica Ventofúria|r e |cRXP_ENEMY_Harpias Ventofúria|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witches
    .mob Windfury Harpies
step
    #loop
    .goto 1412/1,416.10001,-1917.40002,0
    .goto 1412/1,377.89999,-1940.70007,20,0
    .goto 1412/1,416.10001,-1917.40002,20,0
    .goto 1412/1,447.89999,-1953.59998,20,0
    .goto 1412/1,414.30002,-1983.80005,20,0
    >>Usar o |T133841:0|t[Tambor da Terra Confortada] em |cRXP_ENEMY_Espíritos Agitados da Terra|r
    >>|cRXP_WARN_Abate-os se resistirem e atacarem você|r
    .complete 14491,1 --Spirits Calmed (6)
    .use 49647
    .mob Agitated Earth Spirit
step
    #xprate >1.19
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Use o|r |T135139:0|t[Purificação de Chifre Troante Totem] |cRXP_WARN_próximo ao poço|r
    .complete 24456,1 --Well Cleansed (1)
step
    #completewith DangerTurnin
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #loop
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .waypoint 1412/1,-368.10001,-2296.19995,30,0
    .waypoint 1412/1,-354.10001,-2318.40015,30,0
    .waypoint 1412/1,-378.39999,-2339.10010,30,0
    .waypoint 1412/1,-406.39999,-2348.90015,30,0
    .waypoint 1412/1,-437.50000,-2394.40015,30,0
    .waypoint 1412/1,-444.80002,-2440.80005,30,0
    .waypoint 1412/1,-483.70001,-2458.30005,30,0
    .waypoint 1412/1,-455.30002,-2395.69995,30,0
    .waypoint 1412/1,-488.20001,-2347.90015,30,0
    .waypoint 1412/1,-487.00000,-2295.30005,30,0
    .waypoint 1412/1,-452.50000,-2256.69995,30,0
    .waypoint 1412/1,-421.60001,-2256.00000,30,0
    .waypoint 1412/1,-377.10001,-2257.30005,30,0
    .waypoint 1412/1,-368.80002,-2275.90015,30,0
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134343:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.34,53.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Entregue Quico Desapareceu!
    .target Ahab Wheathoof
step << Tauren
    #xprate >1.19
    .goto 7,46.06,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varg|r
    .turnin 6364 >>Entregue Fale Novamente com Varg
    .target Varg Windwhisper
step
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahmo|r
    .turnin 14491 >>Entregue A Terra Indócil
    .target Ahmo Thunderhorn
step
    #label DangerTurnin
    .goto 7,47.51,61.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target Ruul Eagletalon
step
    #xprate <1.2
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Entregue Purificação de Chifre Troante
    .accept 24457 >>Aceite Rito de visão
    .target Mull Thunderhorn
step
    #xprate >1.19
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Entregue Purificação de Chifre Troante
    .target Mull Thunderhorn
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yaw Crina Cortante|r
    .train 1978 >>Treine suas magias de classe
    .target Yaw Sharpmane
    .xp <10,1
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 71 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <10,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarl|r
    .train 3599 >>Treine suas magias de classe
    .target Tarl Cloudsong
    .xp <10,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alsoomse|r
    .train 8092 >>Treine suas magias de classe
    .target Seer Alsoomse
    .xp <10,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gennia|r
    .train 5215 >>Treine suas magias de classe
    .target Gennia Runetotem
    .xp <10,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iopi|r
    .train 82242 >>Treine suas magias de classe
    .target Sunwalker Iopi
    .xp <10,1
step
    #xprate <1.2
    .goto 7,47.889,57.097
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman Duas Luas|r
    .turnin 24457 >>Entregue Rito de Visão
    .accept 20441 >>Aceite Rito de visão
    .target Zarlman Two-Moons
step
    #xprate <1.2
    .goto 7,47.850,56.961
    .use 49651 >>|cRXP_WARN_Use a|r |T134712:0|t[Água da Visão] |cRXP_WARN_perto da fogueira tribal|r
    .complete 20441,1 --Water of Vision consumed (1x)
    .timer 86,Rito de Visão RP
step
    #xprate <1.2
    #completewith next.
    .subzone 4835 >>Espere até chegar em Camp Sungraze
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Una|r
    .turnin 20441 >>Entregue Rito de Visão
    .accept 24523 >>Aceite Totem de Juba Agreste
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Erudito Totem da Chuva|r
    .accept 833 >>Aceite Sepultamento sagrado
    .accept 773 >>Aceite Rito de sabedoria
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn Nuvem Branca|r
    .accept 861 >>Aceite A senda do caçador
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn Garra de Águia|r
    .accept 744 >>Aceite Os preparativos da cerimônia
    .target Eyahn Eagletalon
step
    #xprate <1.2
    #completewith RedRocks
    >>Mate os |cRXP_ENEMY_Alfas Lobo da Pradaria|r. Saque-os pelos |cRXP_LOOT_Dentes|r
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    #loop
    .goto 7,52.476,8.126,0
    .waypoint 7,54.950,13.407,0
    .waypoint 7,51.782,11.187,50,0
    .waypoint 7,52.476,8.126,50,0
    .waypoint 7,53.252,12.366,50,0
    .waypoint 7,54.950,13.407,50,0
    .waypoint 7,55.939,16.542,50,0
    >>Mate as |cRXP_ENEMY_Fúria dos Ventos Feiticeiras|r e as |cRXP_ENEMY_Fúria dos Ventos Matriarcas|r. Saque-as pela |cRXP_LOOT_Peninha|r
    .complete 744,1 --Azure Feather (x6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (x6)
    .mob +Windfury Matriarch
step
    #xprate <1.2
    #label RedRocks
    .goto 7,60.828,22.737
    .subzone 225 >>Vá para Vermelho Rochas
    .isOnQuest 833
step
    #xprate <1.2
    #completewith next
    >>Mate os |cRXP_ENEMY_Invasores Costagulha|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    .goto 7,60.787,22.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 773 >>Entregue Rito de Sabedoria
    .target Ancestral Spirit
step
    #xprate <1.2
    #loop
    .goto 7,60.374,21.638,0
    .waypoint 7,61.344,24.848,50,0
    .waypoint 7,59.935,24.400,50,0
    .waypoint 7,59.122,22.210,50,0
    .waypoint 7,60.374,21.638,50,0
    >>Mate os |cRXP_ENEMY_Invasores Costagulha|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    #loop
    .goto 7,54.646,24.065,0
    .goto 7,46.777,18.984,0
    .waypoint 7,56.422,25.128,80,0
    .waypoint 7,54.646,24.065,80,0
    .waypoint 7,51.223,24.232,80,0
    .waypoint 7,49.326,21.378,80,0
    .waypoint 7,46.777,18.984,80,0
    .waypoint 7,47.051,13.915,80,0
    .waypoint 7,48.849,13.184,80,0
    >>Mate os |cRXP_ENEMY_Alfas Lobo da Pradaria|r. Saque-os pelos |cRXP_LOOT_Dentes|r
    >>Mate |cRXP_ENEMY_Predadores das Estepes|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Una|r
    .turnin 24523 >>Entregue Totem de Juba Agreste
    .accept 24524 >>Aceite Purificação de Juba Agreste
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Erudito Totem da Chuva|r
    .turnin 833 >>Entregue Sepultamento sagrado
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn Nuvem Branca|r
    .turnin 861 >>Entregue A senda do caçador
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn Garra de Águia|r
    .turnin 744 >>Entregue Os preparativos da cerimônia
    .target Eyahn Eagletalon
step
    #xprate <1.2
    .goto 7,43.204,16.050
    .use 5416 >>|cRXP_WARN_Use o|r |T135139:0|t[Totem de Purificação Juba Agreste] |cRXP_WARN_perto do poço|r
    .complete 24524,1 --Well Cleansed (1)
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Una|r
    .turnin 24524 >>Entregue Purificação de Juba Agreste
    .accept 24550 >>Aceite Siga para o Penhasco do Trovão
    .target Una Wildmane
step
    #xprate <1.2
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <1.2
    #completewith next
    .goto 88,54.766,26.571,15,0
    .goto 88,50.038,34.337,20 >>Pegue o elevador para o Penhasco do Trovão
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine Casco Sangrento|r
    .turnin 24550 >>Entregue Siga para o Penhasco do Trovão
    .accept 24540 >>Aceite Dança de Guerra
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Voe para o Penhasco do Trovão
    .accept 6363 >>Aceite Tal, o Mestre de Mantícoras
    .target Ahanu
step
    #xprate <1.2
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Retorno no Penhasco do Trovão
    .target Innkeeper Pala
    .isQuestAvailable 24540
step
    #xprate <1.2
    #completewith next
    .goto 88,51.937,26.573,15,0
    .goto 7,37.883,13.834,50 >>Pegue o Elevador do Norte de volta para Mulgore
    .zoneskip Mulgore
step
    #xprate <1.2
    .goto 7,36.975,11.910
    >>Ataque o |cRXP_ENEMY_Orno Temível Totem|r
    >>|cRXP_WARN_A missão será concluída assim que ele estiver com 90% de vida|r
    .complete 24540,1 --Orno Grimtotem Defeated (1x)
    .mob Orno Grimtotem
step
    #xprate <1.2
    #completewith next
    .hs >>Lar to Penhasco do Trovão
    .use 6948
    .zoneskip Thunder Bluff
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine Casco Sangrento|r
    .turnin 24540 >>Entregue Dança de Guerra
    .accept 26397 >>Aceite Tenha a Mãe Terra ao Seu Lado
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entregue Tal, o Mestre de Mantícoras
    .target Tal
    .zoneskip Orgrimmar
step
    #optional
    #label MulgoreEnd
step << !Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .gossipoption 111516 >>Voe para Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tak
    .zoneskip Mulgore,1
step
    #optional
    .abandon 743 >>Abandone Perigos das Ventofúria
step
    #optional
    .abandon 14491 >>Abandone A Terra Indócil
step
    #optional
    .abandon 24456 >>Abandone Purificação de Chifre Troante
step
    #optional
    .abandon 11129 >>Abandone Quico Sumiu!
step
    #optional
    .abandon 6364 >>Abandone Fale Novamente com Varg
step
    #xprate <1.2
    #completewith next
    .goto 85,49.886,75.613,8 >>Entre em Grommash Segurar
step
    #xprate <1.2
    .goto 1454/1,-4343.10010,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garrosh Grito Infernal|r
    .turnin 26397 >>Entregue Tenha a Mãe Terra ao Seu Lado
    .target Garrosh Hellscream
    .isOnQuest 26397
    ]])
