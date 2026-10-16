if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Claros de Tirisfal
#next 6-10 Bosque Canción Eterna
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Undead
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Undead
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía destinada para No-muertos. Se recomienda elegir la misma zona inicial en la que empiezas|r
step
    .goto 18,29.36,70.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Agatha|r
    .accept 24959 >>Acepta la misión Recién salido de la tumba
    .target Agatha
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mordo|r
    .turnin 24959 >>Entrega la misión Recién salido de la tumba
    .accept 28608 >>Acepta la misión El Sepulcro Sombrío
    .target Undertaker Mordo
step
    #completewith next
    .goto 18,30.33,72.31,8,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,29.94,72.45,5 >>Entra en la tumba sombría
step
    .goto 18,29.67,71.98
    >>Despoja el |cRXP_LOOT_Corpse-Stitching Twine|r y el |cRXP_LOOT_Thick Líquido de embalsamar|r en la mesa
    .complete 28608,2 --Corpse-Stitching Twine (1)
    .complete 28608,1 --Thick Embalming Fluid (1)
step
    #completewith next
    .goto 18,29.94,72.45,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.33,72.31,8,0 >>Sal de la tumba
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mordo|r
    .turnin 28608 >>Entrega la misión El Sepulcro Sombrío
    .accept 26799 >>Acepta la misión Aquellos que no pudieron salvarse
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caice|r
    .accept 24960 >>Acepta la misión El despertar
    .target Caretaker Caice
step
    #completewith ValdredMoray
    >>Mata a los |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 1420/0,1640.59998,1753.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Redpath|r
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .skipgossip
    .target Marshal Redpath
step
    .goto 18,30.24,69.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lilian|r
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .skipgossip
    .target Lilian Voss
step
    #label ValdredMoray
    .goto 1420/0,1704.70007,1740.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valdred|r
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
    >>Mata a los |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mordo|r
    .turnin 26799 >>Entrega la misión Aquellos que no pudieron salvarse
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caice|r
    .turnin 24960 >>Entrega la misión El despertar
    .accept 25089 >>Acepta la misión Más allá de las tumbas
    .target Caretaker Caice
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entra en la iglesia
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r
    .accept 26801 >>Acepta la misión Plaga en nuestro perímetro
    .target Shadow Priest Sarvis
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saltain|r
    .turnin 25089 >>Entrega la misión Más allá de las tumbas
    .accept 26800 >>Acepta la misión Reclutamiento
    .target Deathguard Saltain
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Rattlecage Skeletons|r y a los |cRXP_ENEMY_Wretches Necrófagos|r
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
    >>Haz clic en los |cRXP_ENEMY_Scarlet Cadáveres|r en el suelo
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
    >>Mata a los |cRXP_ENEMY_Rattlecage Skeletons|r y a los |cRXP_ENEMY_Wretches Necrófagos|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saltain|r
    .turnin 26800 >>Entrega la misión Reclutamiento
    .target Deathguard Saltain
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entra en la iglesia
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r
    .turnin 26801 >>Entrega la misión Plaga en nuestro perímetro
    .accept 31146 >>Acepta la misión Pergamino simple << Monk
    .accept 3096 >>Acepta la misión Un pergamino codificado << Rogue
    .accept 3095 >>Acepta la misión Un pergamino simple << Warrior
    .accept 24962 >>Acepta la misión Pergamino desgastado por el viaje << Hunter
    .accept 3098 >>Acepta la misión Un pergamino glífico << Mage
    .accept 3097 >>Acepta la misión Un pergamino sacralizado << Priest
    .accept 3099 >>Acepta la misión Un pergamino corrupto << Warlock
    .target Shadow Priest Sarvis
step
    .goto 1420/0,1638.70007,1847.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .accept 24961 >>Acepta la misión La verdad de la tumba
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Entrega la misión Un pergamino glífico
    .accept 24965 >>Acepta la misión Entrenamiento de magia
    .train 5143 >>Aprende |T136096:0|t[Misiles Arcanos] << Cata
    .target Isabella
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xavier|r
    .turnin 24962 >>Entrega la misión Pergamino desgastado por el viaje
    .accept 24964 >>Acepta la misión La emoción de la caza
    .train 56641 >>Aprende |T132213:0|t[Vigía del pozo Solanian] << Cata
    .target Xavier the Huntsman
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .turnin 3097 >>Entrega la misión Un pergamino sacralizado
    .accept 24966 >>Acepta la misión De luces y sombras
    .train 2061 >>Aprende |T135907:0|t[Sanación relámpago] << Cata
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Entrega la misión Un pergamino corrupto
    .accept 24968 >>Acepta la misión Acciones oscuras
    .train 348 >>Aprende |T135817:0|t[Inmolar] << Cata
    .target Maximillion
step << Mage cata
    .goto 18,31.64,66.91
	>>Lanza |T136096:0|t[Misiles Arcanos] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 24965,1 --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 18,31.64,66.91
	>>Lanza |T135848:0|t[Vigía del pozo Solanian] a un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 24965,2 --Cast Frost Nova
	.mob Training Dummy
step << Priest cata
    .goto 18,31.20,66.02
	>>Lanza |T135907:0|t[Sanación relámpago] a un |cRXP_FRIENDLY_Guardia de la Muerte herido|r
	.complete 24966,1 --Cast Flash Heal (x5)
	.target Wounded Deathguard
step << Priest !cata
    .goto 18,31.64,66.91
	>>Lanza |T136207:0|t[Palabra de las Sombras: dolor] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 24966,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Warlock
    .goto 18,31.64,66.91
	>>Lanza |T135817:0|t[Inmolar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 24968,2 << !Cata --Cast Immolate (x3)
	.complete 24968,1 << Cata --Cast Immolate (x3)
	.mob Training Dummy
step
    #completewith next
    .goto 18,32.40,65.56,8 >>Entra en la casa
step
    .goto 18,32.69,65.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lilian|r
    >>|cRXP_WARN_Puede que esté arriba. No esperes el RP|r
    .complete 24961,1 --1/1 Show Lilian her reflection
    .timer 9,RP de La verdad de la tumba
    .skipgossip
    .target Lilian Voss
step << Monk
    .goto 465/0,1567.900,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ting Vientre Firme|r
    .turnin 31146 >>Entrega la misión Pergamino simple
    .accept 31147 >>Acepta la misión Palma del tigre
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Entrega la misión Un pergamino codificado
    .accept 24967 >>Acepta la misión ¡Apuñalar!
    .train 2098 >>Aprende |T132292:0|t[Eviscerar] << Cata
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Entrega la misión Un pergamino simple
    .accept 24969 >>Acepta la misión Cargando hacia la batalla
    .train 100 >>Aprende |T132337:0|t[Cargar] << Cata
    .target Dannal Stern
step << Monk
    .goto 18,31.64,66.91
	>>Lanza |T606551:0|t[Palma del tigre] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 31147,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Rogue
    .goto 18,31.64,66.91
	>>Lanza |T132292:0|t[Eviscerar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 24967,2 << !Cata --Cast Eviscerate (x3)
	.complete 24967,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 18,31.64,66.91
    >>Lanza |T132337:0|t[Cargar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 24969,2 << !Cata --Cast Charge (x3)
	.complete 24969,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 18,31.64,66.91
	>>Lanza |T132213:0|t[Vigía del pozo Solanian] a un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 24964,2 << !Cata --Steady Shot (x3)
	.complete 24964,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Monk
    .goto 465/0,1568.100,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ting Vientre Firme|r
    .turnin 31147 >>Entrega la misión Palma del tigre
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 24967 >>Entrega la misión ¡Apuñalar!
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannal|r
    .turnin 24969 >>Entrega la misión Un pergamino simple
    .target Dannal Stern
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xavier|r
    .turnin 24964 >>Entrega la misión La emoción de la caza
    .target Xavier the Huntsman
step
    #completewith next
    .goto 18,31.38,66.23,8 >>Entra en la iglesia
step
    .goto 18,30.86,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elreth|r
    .turnin 24961 >>Entrega la misión La verdad de la tumba
    .accept 28672 >>Acepta la misión El ejecutor en el campo
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con ||cRXP_FRIENDLY_Isabella|r
    .turnin 24965 >>Entrega la misión Entrenamiento de magia
    .target Isabella
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .turnin 24966 >>Entrega la misión De luces y sombras
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .turnin 24968 >>Entrega la misión Acciones oscuras
    .target Maximillion
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arren|r
    .turnin 28672 >>Entrega la misión El ejecutor en el campo
    .accept 26802 >>Acepta la misión Los Malditos
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
    >>Mata a los |cRXP_ENEMY_Duskbats|r. Despoja las |cRXP_LOOT_Alas|r
    >>Mata a los |cRXP_ENEMY_Wolves|r. Despoja los |cRXP_LOOT_Paws|r
    .complete 26802,2 --4/4 Duskbat Wing
    .mob +Duskbat
    .mob +Mangy Duskbat
    .complete 26802,1 --4/4 Scavenger Paw
    .mob +Young Scavenger
    .mob +Ragged Scavenger
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arren|r
    .turnin 26802 >>Entrega la misión Los Malditos
    .accept 24973 >>Acepta la misión Hoya Nocturácnidas
    .target Executor Arren
step
    #completewith NWSpiders
    .subzone 155 >>Viaja a la cueva Noche's Telaraña Hollow
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Young Noche Telaraña Arañas|r |cRXP_WARN_outside the mine|r
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
    >>Mata a los |cRXP_ENEMY_Night Telaraña Arañas|r |cRXP_WARN_inside the mine|r
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
    >>Mata a los |cRXP_ENEMY_Young Noche Telaraña Arañas|r outside the mine
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arren|r
    .turnin 24973 >>Entrega la misión Hoya Nocturácnidas
    .accept 24970 >>Acepta la misión No son mejores que los zombis
    .target Executor Arren
step
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darnell|r
    .turnin 24970 >>Entrega la misión No son mejores que los zombis
    .accept 24971 >>Acepta la misión Asalto al Campamento Pudrecerebro
    .target Darnell
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Magus Pudrecerebro|r y a los |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserker
step
    .goto 18,36.50,68.82
    >>Mata a |cRXP_ENEMY_Alguacil Rutagrana|r
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob Marshal Redpath
step
    #loop
    .goto 18,37.07,67.02,0
    .waypoint 18,37.57,68.77,40,0
    .waypoint 18,38.07,67.55,40,0
    .waypoint 18,37.07,67.02,40,0
    .waypoint 18,35.94,68.27,40,0
    >>Mata a los |cRXP_ENEMY_Magus Pudrecerebro|r y a los |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserkers
step
    #completewith next
    .subzone 154 >>Viaja a Deathknell
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarvis|r
    .turnin 24971 >>Entrega la misión Asalto al Campamento Pudrecerebro
    .accept 24972 >>Acepta la misión Información decisiva
    .target Shadow Priest Sarvis
step
    #completewith next
    .goto 18,38.09,56.48,20,0
    .goto 18,38.41,55.69,20,0
    .goto 18,38.78,55.57,20 >>Abandona Deathknell
step
    #completewith next
    .subzone 4916 >>Viaja a Calston Estate
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Simmer|r
    .turnin 24972 >>Entrega la misión Información decisiva
    .accept 24978 >>Acepta la misión Segar los segadores
    .target Deathguard Simmer
step
    #xprate >1.19
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Simmer|r
    .turnin 24972 >>Entrega la misión Información decisiva
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 24975 >>Acepta la misión Campos de pena
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Sube las escaleras
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sedrick|r
    .accept 24974 >>Acepta la misión 100 años de soledad
    .target Sedrick Calston
step << Hunter Cata
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darna|r afuera
    .train 2973 >>Aprende tus hechizos de clase
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karla|r afuera
    .train 34428 >>Aprende tus hechizos de clase
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larah|r afuera
    .train 2136 >>Aprende tus hechizos de clase
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Claressa|r afuera
    .train 589 >>Aprende tus hechizos de clase
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maressa|r afuera
    .train 87389 >>Aprende tus hechizos de clase
    .target Maressa Milner
    .xp <5,1
step
    #xprate <1.2
    #completewith next
    >>Mata a los |cRXP_ENEMY_Tirisfal Farmers|r
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
    >>Despoja las |cRXP_LOOT_Tirisfal Pumpkins|r en el suelo
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
    >>Mata a los |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    .goto 18,34.37,43.68,40,0
    .goto 18,35.90,42.92,40,0
    .goto 18,36.66,40.40,40,0
    .goto 18,35.91,43.85
    .use 52059 >>Ataca a |cRXP_ENEMY_Vil Fin Múrloc|r hasta que comience a huir, luego usa tu |T133802:0|t[Correa de múrloc] para capturarlo
    .complete 24974,1 --1/1 Vile Fin captured
    .mob File Vin Puddlejumper
    .mob File Vin Minor Oracle
step
    #xprate <1.2
    #completewith next
    .subzone 4916 >>Viaja a Calston Estate
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Simmer|r
    .turnin 24978 >>Entrega la misión Segar los segadores
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 24975 >>Entrega la misión Campos de pena
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith MurlocDelivery
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Sube las escaleras
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>Entrega al |cRXP_FRIENDLY_Múrloc|r
    .complete 24974,2 --1/1 Vile Fin returned
    .target Sedrick Calston
step
    #xprate <1.2
    #label MurlocDelivery
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Entrega la misión 100 años de soledad
    .target Sedrick Calston
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.86,5,0
    .goto 18,44.75,53.65 >> Sube para devolver al |cRXP_FRIENDLY_Múrloc|r
    .complete 24974,2 --1/1 Vile Fin returned
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Entrega la misión 100 años de soledad
    .target Sedrick Calston
step << Hunter Cata
    #xprate <1.2
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darna|r afuera
    .train 2973 >>Aprende tus hechizos de clase
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    #xprate <1.2
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karla|r afuera
    .train 34428 >>Aprende tus hechizos de clase
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    #xprate <1.2
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larah|r afuera
    .train 2136 >>Aprende tus hechizos de clase
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    #xprate <1.2
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Claressa|r afuera
    .train 589 >>Aprende tus hechizos de clase
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    #xprate <1.2
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maressa|r afuera
    .train 87389 >>Aprende tus hechizos de clase
    .target Maressa Milner
    .xp <5,1
step
    #completewith next
    .goto 18,45.86,48.38,40,0
    .goto 18,46.61,47.42,40,0
    .goto 18,47.75,47.67
    .deathskip >>Tira tantos enemigos como puedas para morir y reaparecer en el |cRXP_FRIENDLY_Ángel de la Resurrección|r, o viaja a Brill
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morris|r
    .accept 6321 >>Acepta la misión Suministros para El Rémol
    .target Deathguard Morris
step
    .goto 18,60.87,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    .home >>Establece tu Piedra de Hogar en Brill
    .target Innkeeper Renee
    .isQuestAvailable 6323
step << Undead
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anette|r
    .turnin 6321 >>Entrega la misión Suministros para Brill
    .accept 6323 >>Acepta la misión Vuela a Entrañas
    .target Anette Williams
step
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anette|r
    .fly Undercity >>Vuela a Entrañas
    .target Anette Williams
step << Undead
    .goto 90,61.49,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >>Entrega la misión Vuela a Entrañas
    .accept 6322 >>Acepta la misión Michael Garrett
    .target Gordon Wendham
step << Undead
    .goto 90,63.28,48.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Entrega la misión Michael Garrett
    .accept 6324 >>Acepta la misión Regresa junto a Morris
    .target Michael Garrett
step << Undead
    #completewith SilvermoonPort
    .goto 90,59.98,47.60,10,0
    .goto 90,59.16,44.02,8,0
    .goto 90,65.87,43.99,15 >>Toma el ascensor arriba
step << !Undead
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Viaja a Entrañas
step
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Haz clic en el |cRXP_PICK_Orb of Traslado|r a Ciudad de Lunargenta
step
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059
    .zone Eversong Woods >>Sale de Ciudad de Lunargenta
step
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Jaela|r
    .accept 8475 >>Acepta la misión La Cicatriz Muerta
    .target Ranger Jaela
    ]])
