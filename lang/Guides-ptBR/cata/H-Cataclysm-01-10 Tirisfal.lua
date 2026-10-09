if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Clareiras de Tirisfal
#next 6-10 Bosques do Canto Eterno
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Undead
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Undead
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado para Morto-vivo. É recomendado que você escolha a mesma zona inicial em que começou|r
step
    .goto 18,29.36,70.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ágata|r
    .accept 24959 >>Aceite Recém-saído da Tumba
    .target Agatha
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coveiro Mordo|r
    .turnin 24959 >>Entregue Recém-saído da Tumba
    .accept 28608 >>Aceite O Sepulcro Sombrio
    .target Undertaker Mordo
step
    #completewith next
    .goto 18,30.33,72.31,8,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,29.94,72.45,5 >>Entre no túmulo sombrio
step
    .goto 18,29.67,71.98
    >>Pegue o |cRXP_LOOT_Corpse-Stitching Twine|r e o |cRXP_LOOT_Thick Fluido Embalsamador|r na mesa
    .complete 28608,2 --Corpse-Stitching Twine (1)
    .complete 28608,1 --Thick Embalming Fluid (1)
step
    #completewith next
    .goto 18,29.94,72.45,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.33,72.31,8,0 >>Saia do túmulo
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coveiro Mordo|r
    .turnin 28608 >>Entregue O Sepulcro Sombrio
    .accept 26799 >>Aceite Aqueles Que Não Puderam Ser Salvos
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caice|r
    .accept 24960 >>Aceite O Despertar
    .target Caretaker Caice
step
    #completewith ValdredMoray
    >>Mate os |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 1420/0,1640.59998,1753.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Redpath|r
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .skipgossip
    .target Marshal Redpath
step
    .goto 18,30.24,69.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lilian|r
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .skipgossip
    .target Lilian Voss
step
    #label ValdredMoray
    .goto 1420/0,1704.70007,1740.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valdred|r
    .complete 24960,3 --1/1 Speak with Valdred Moray
    .skipgossip
    .target Valdred Moray
step
    #loop
    .goto 18,30.39,69.59,0
    .waypoint 18,30.81,69.74,30,0
    .waypoint 18,30.42,70.07,30,0
    .waypoint 18,29.76,69.98,30,0
    .waypoint 18,29.27,70.03,30,0
    .waypoint 18,29.50,71.75,30,0
    .waypoint 18,30.39,69.59,30,0
    >>Mate os |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coveiro Mordo|r
    .turnin 26799 >>Entregue Aqueles Que Não Puderam Ser Salvos
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caice|r
    .turnin 24960 >>Entregue O Despertar
    .accept 25089 >>Aceite Além das Tumbas
    .target Caretaker Caice
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entre na igreja
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r
    .accept 26801 >>Aceite Flagelo nas Proximidades
    .target Shadow Priest Sarvis
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r
    .turnin 25089 >>Entregue Além das Tumbas
    .accept 26800 >>Aceite Recrutamento
    .target Deathguard Saltain
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Rattlecage Skeletons|r e os |cRXP_ENEMY_Wretches Carniçais|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    #loop
    .goto 18,31.03,63.10,0
    .waypoint 18,31.79,64.38,20,0
    .waypoint 18,31.25,64.05,20,0
    .waypoint 18,31.97,61.99,20,0
    .waypoint 18,33.11,63.07,20,0
    .waypoint 18,33.34,63.87,20,0
    .waypoint 18,33.32,64.56,20,0
    .waypoint 18,32.87,64.62,20,0
    .waypoint 18,31.97,61.99,20,0
    >>Clique nos |cRXP_ENEMY_Scarlet Cadáveres|r no chão
    .complete 26800,1 --6/6 Scarlet Corpses gathered
    .mob Scarlet Corpse
step
    #loop
    .goto 18,31.24,63.43,0
    .waypoint 18,31.64,63.93,30,0
    .waypoint 18,32.18,63.21,30,0
    .waypoint 18,32.29,61.30,30,0
    .waypoint 18,31.26,61.24,30,0
    .waypoint 18,30.95,62.35,30,0
    .waypoint 18,31.24,63.43,30,0
    >>Mate os |cRXP_ENEMY_Rattlecage Skeletons|r e os |cRXP_ENEMY_Wretches Carniçais|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Saulo|r
    .turnin 26800 >>Entregue Recrutamento
    .target Deathguard Saltain
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entre na igreja
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r
    .turnin 26801 >>Entregue Flagelo nas Proximidades
    .accept 31146 >>Aceite Pergaminho Rabiscado << Monk
    .accept 3096 >>Aceite Pergaminho cifrado << Rogue
    .accept 3095 >>Aceite Pergaminho simples << Warrior
    .accept 24962 >>Aceite Pergaminho Desgastado com o Uso << Hunter
    .accept 3098 >>Aceite Pergaminho glífico << Mage
    .accept 3097 >>Aceite Pergaminho consagrado << Priest
    .accept 3099 >>Aceite Pergaminho conspurcado << Warlock
    .target Shadow Priest Sarvis
step
    .goto 1420/0,1638.70007,1847.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .accept 24961 >>Aceite A Verdade da Tumba
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Entregue Pergaminho glífico
    .accept 24965 >>Aceite Treinamento de Magia
    .train 5143 >>Treine |T136096:0|t[Mísseis Arcanos] << Cata
    .target Isabella
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xavier|r
    .turnin 24962 >>Entregue Pergaminho Desgastado com o Uso
    .accept 24964 >>Aceite O Calor da Caçada
    .train 56641 >>Treine |T132213:0|t[Tiro Firme] << Cata
    .target Xavier the Huntsman
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .turnin 3097 >>Entregue Pergaminho consagrado
    .accept 24966 >>Aceite Luz e Sombras
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << Cata
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Entregue Pergaminho conspurcado
    .accept 24968 >>Aceite Proeza Sombria
    .train 348 >>Treine |T135817:0|t[Imolação] << Cata
    .target Maximillion
step << Mage cata
    .goto 18,31.64,66.91
	>>Lance |T136096:0|t[Mísseis Arcanos] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 24965,1 --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 18,31.64,66.91
	>>Lance |T135848:0|t[Novane Congelante] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 24965,2 --Cast Frost Nova
	.mob Training Dummy
step << Priest cata
    .goto 18,31.20,66.02
	>>Lance |T135907:0|t[Cura Célere] em um |cRXP_FRIENDLY_Necroguarda Ferido|r
	.complete 24966,1 --Cast Flash Heal (x5)
	.target Wounded Deathguard
step << Priest !cata
    .goto 18,31.64,66.91
	>>Lance |T136207:0|t[Palavra Sombria: Dor] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 24966,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Warlock
    .goto 18,31.64,66.91
	>>Lance |T135817:0|t[Imolação] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 24968,2 << !Cata --Cast Immolate (x3)
	.complete 24968,1 << Cata --Cast Immolate (x3)
	.mob Training Dummy
step
    #completewith next
    .goto 18,32.40,65.56,8 >>Entre na casa
step
    .goto 18,32.69,65.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lilian|r
    >>|cRXP_WARN_Ela pode estar em cima. Não espere a encenação|r
    .complete 24961,1 --1/1 Show Lilian her reflection
    .timer 9,A Verdade da Tumba Encenação
    .skipgossip
    .target Lilian Voss
step << Monk
    .goto 465/0,1567.900,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ting, o Pança Forte|r
    .turnin 31146 >>Entregue Pergaminho Rabiscado
    .accept 31147 >>Aceite Palma do Tigre
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entregue Pergaminho cifrado
    .accept 24967 >>Aceite Punhalada!
    .train 2098 >>Treine |T132292:0|t[Eviscerar] << Cata
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entregue Pergaminho simples
    .accept 24969 >>Aceite Com Toda a Carga
    .train 100 >>Treine |T132337:0|t[Carga] << Cata
    .target Dannal Stern
step << Monk
    .goto 18,31.64,66.91
	>>Lance |T606551:0|t[Palma do Tigre] em um |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 31147,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Rogue
    .goto 18,31.64,66.91
	>>Lance |T132292:0|t[Eviscerar] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 24967,2 << !Cata --Cast Eviscerate (x3)
	.complete 24967,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 18,31.64,66.91
    >>Lance |T132337:0|t[Investida] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 24969,2 << !Cata --Cast Charge (x3)
	.complete 24969,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 18,31.64,66.91
	>>Lance |T132213:0|t[Tiro Firme] em um |cRXP_ENEMY_Boneco de Treinamento|r
	.complete 24964,2 << !Cata --Steady Shot (x3)
	.complete 24964,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Monk
    .goto 465/0,1568.100,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ting, o Pança Forte|r
    .turnin 31147 >>Entregue Palma do Tigre
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 24967 >>Entregue Punhalada!
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 24969 >>Entregue Pergaminho simples
    .target Dannal Stern
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xavier|r
    .turnin 24964 >>Entregue O Calor da Caçada
    .target Xavier the Huntsman
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entre na igreja
step
    .goto 18,30.86,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noviça Elvira|r
    .turnin 24961 >>Entregue A Verdade da Tumba
    .accept 28672 >>Aceite O Executor em Campo
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .turnin 24965 >>Entregue Treinamento de Magia
    .target Isabella
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .turnin 24966 >>Entregue Luz e Sombras
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .turnin 24968 >>Entregue Proeza Sombria
    .target Maximillion
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 28672 >>Entregue O Executor em Campo
    .accept 26802 >>Aceite Os malditos
    .target Executor Arren
step
    #loop
    .goto 18,32.00,57.83,0
    .waypoint 18,31.47,58.41,40,0
    .waypoint 18,32.00,57.83,40,0
    .waypoint 18,31.54,56.21,40,0
    .waypoint 18,32.39,56.15,40,0
    .waypoint 18,33.70,57.30,40,0
    .waypoint 18,35.11,56.22,40,0
    .waypoint 18,35.69,58.25,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.19,59.64,40,0
    .waypoint 18,32.90,58.08,40,0
    >>Mate os |cRXP_ENEMY_Duskbats|r. Saque as |cRXP_LOOT_Asas|r
    >>Mate os |cRXP_ENEMY_Wolves|r. Saque as |cRXP_LOOT_Paws|r
    .complete 26802,2 --4/4 Duskbat Wing
    .mob +Duskbat
    .mob +Mangy Duskbat
    .complete 26802,1 --4/4 Scavenger Paw
    .mob +Young Scavenger
    .mob +Ragged Scavenger
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 26802 >>Entregue Os malditos
    .accept 24973 >>Aceite Vale Teia da Noite
    .target Executor Arren
step
    #completewith NWSpiders
    .subzone 155 >>Vá para a caverna oca da Teia da Noite
step
    #completewith next
    >>Mate as |cRXP_ENEMY_Young Noite Teia Aranhas|r |cRXP_WARN_fora da mina|r
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    #label NWSpiders
    #loop
    .goto 18,25.43,59.80,0
    .waypoint 18,26.83,59.39,8,0
    .waypoint 18,26.01,59.65,8,0
    .waypoint 18,25.43,59.80,8,0
    .waypoint 18,25.04,60.35,8,0
    .waypoint 18,24.15,60.82,8,0
    .waypoint 18,23.23,60.06,8,0
    .waypoint 18,23.68,58.52,8,0
    >>Mate as |cRXP_ENEMY_Night Teia Aranhas|r |cRXP_WARN_dentro da mina|r
    .complete 24973,2 --5/5 Night Web Spider slain
    .mob Night Web Spider
step
    #loop
    .goto 18,29.44,58.33,0
    .waypoint 18,27.47,59.05,40,0
    .waypoint 18,28.13,57.32,40,0
    .waypoint 18,29.77,56.26,40,0
    .waypoint 18,29.44,58.33,40,0
    .waypoint 18,28.63,59.20,40,0
    >>Mate as |cRXP_ENEMY_Young Noite Teia Aranhas|r fora da mina
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Arren|r
    .turnin 24973 >>Entregue Vale Teia da Noite
    .accept 24970 >>Aceite Pior que os Zumbis
    .target Executor Arren
step
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darnell|r
    .turnin 24970 >>Entregue Pior que os Zumbis
    .accept 24971 >>Aceite Ataque o Acampamento Miolo Podre
    .target Darnell
step
    #completewith next
    >>Mate o |cRXP_ENEMY_Mago Miolo Podre|r e os |cRXP_ENEMY_Bersérqueres Miolo Podre|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserker
step
    .goto 18,36.50,68.82
    >>Mate o |cRXP_ENEMY_Delegado Trilharrubra|r
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob Marshal Redpath
step
    #loop
    .goto 18,37.07,67.02,0
    .waypoint 18,37.57,68.77,40,0
    .waypoint 18,38.07,67.55,40,0
    .waypoint 18,37.07,67.02,40,0
    .waypoint 18,35.94,68.27,40,0
    >>Mate o |cRXP_ENEMY_Mago Miolo Podre|r e os |cRXP_ENEMY_Bersérqueres Miolo Podre|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserkers
step
    #completewith next
    .subzone 154 >>Vá para Deathknell
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Sarvis|r
    .turnin 24971 >>Entregue Ataque o Acampamento Miolo Podre
    .accept 24972 >>Aceite Informações cruciais
    .target Shadow Priest Sarvis
step
    #completewith next
    .goto 18,38.09,56.48,20,0
    .goto 18,38.41,55.69,20,0
    .goto 18,38.78,55.57,20 >>Saia de Deathknell
step
    #completewith next
    .subzone 4916 >>Vá para Calston Estate
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .turnin 24972 >>Entregue Informações cruciais
    .accept 24978 >>Aceite Ceifando os Ceifadores
    .target Deathguard Simmer
step
    #xprate >1.19
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .turnin 24972 >>Entregue Informações cruciais
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .accept 24975 >>Aceite Campos de mágoa
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >>Suba
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sedrick|r
    .accept 24974 >>Aceite Tão Sozinho
    .target Sedrick Calston
step << Hunter Cata
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darna|r lá fora
    .train 2973 >>Treine suas magias de classe
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karla|r lá fora
    .train 34428 >>Treine suas magias de classe
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larah|r lá fora
    .train 2136 >>Treine suas magias de classe
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Claressa|r lá fora
    .train 589 >>Treine suas magias de classe
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maressa|r lá fora
    .train 87389 >>Treine suas magias de classe
    .target Maressa Milner
    .xp <5,1
step
    #xprate <1.2
    #completewith next
    >>Mate os |cRXP_ENEMY_Agricultores de Tirisfal|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Saque o |cRXP_LOOT_Tirisfal Pumpkins|r no chão
    .complete 24975,1 --10/10 Tirisfal Pumpkin
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Mate os |cRXP_ENEMY_Agricultores de Tirisfal|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    .goto 18,34.37,43.68,40,0
    .goto 18,35.90,42.92,40,0
    .goto 18,36.66,40.40,40,0
    .goto 18,35.91,43.85
    .use 52059 >>Ataque o |cRXP_ENEMY_Murloc Pinavil Torpe|r até que comece a fugir, depois use sua |T133802:0|t[Correia de Murloc] para capturá-lo
    .complete 24974,1 --1/1 Vile Fin captured
    .mob File Vin Puddlejumper
    .mob File Vin Minor Oracle
step
    #xprate <1.2
    #completewith next
    .subzone 4916 >>Vá para Calston Estate
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .turnin 24978 >>Entregue Ceifando os Ceifadores
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joaquino|r
    .turnin 24975 >>Entregue Campos de mágoa
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith MurlocDelivery
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >>Suba
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>Entregue para o Murloc
    .complete 24974,2 --1/1 Vile Fin returned
    .target Sedrick Calston
step
    #xprate <1.2
    #label MurlocDelivery
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Entregue Tão Sozinho
    .target Sedrick Calston
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.86,5,0
    .goto 18,44.75,53.65 >>Suba para retornar ao Murloc
    .complete 24974,2 --1/1 Vile Fin returned
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Entregue Tão Sozinho
    .target Sedrick Calston
step << Hunter Cata
    #xprate <1.2
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darna|r lá fora
    .train 2973 >>Treine suas magias de classe
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    #xprate <1.2
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karla|r lá fora
    .train 34428 >>Treine suas magias de classe
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    #xprate <1.2
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larah|r lá fora
    .train 2136 >>Treine suas magias de classe
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    #xprate <1.2
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Claressa|r lá fora
    .train 589 >>Treine suas magias de classe
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    #xprate <1.2
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maressa|r lá fora
    .train 87389 >>Treine suas magias de classe
    .target Maressa Milner
    .xp <5,1
step
    #completewith next
    .goto 18,45.86,48.38,40,0
    .goto 18,46.61,47.42,40,0
    .goto 18,47.75,47.67
    .deathskip >>Puxe o máximo de inimigos que puder, morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r, ou viaje para Brill
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morris|r
    .accept 6321 >>Aceite Suprimentos para Montalvo
    .target Deathguard Morris
step
    .goto 18,60.87,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Geni|r
    .home >>Defina sua Pedra de Retorno em Brill
    .target Innkeeper Renee
    .isQuestAvailable 6323
step << Undead
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anette|r
    .turnin 6321 >>Entregue Suprimentos para Montalvo
    .accept 6323 >>Aceite Carona para a Cidade Baixa
    .target Anette Williams
step
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anette|r
    .fly Undercity >>Voe para Undercity
    .target Anette Williams
step << Undead
    .goto 90,61.49,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antônio Nunes|r
    .turnin 6323 >>Entregue Carona para a Cidade Baixa
    .accept 6322 >>Aceite Miguel Garreta
    .target Gordon Wendham
step << Undead
    .goto 90,63.28,48.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .turnin 6322 >>Entregue Miguel Garreta
    .accept 6324 >>Aceite De volta ao Morres
    .target Michael Garrett
step << Undead
    #completewith SilvermoonPort
    .goto 90,59.98,47.60,10,0
    .goto 90,59.16,44.02,8,0
    .goto 90,65.87,43.99,15 >>Pegue o elevador para cima
step << !Undead
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Vá para Undercity
step
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Clique no |cRXP_PICK_Orbe de Deslocamento|r para Luaprata
step
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059
    .zone Eversong Woods >>Saia de Luaprata
step
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Jaela|r
    .accept 8475 >>Aceite A Trilha da Morte
    .target Ranger Jaela
    ]])
