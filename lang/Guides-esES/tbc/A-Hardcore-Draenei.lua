if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Draenei
#group RXP TBC Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#name 1-12 Isla Bruma Azur
#next 12-14 Costa Oscura

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Acepta la misión ¡Has sobrevivido!
    .target Megelon
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >> |cRXP_WARN_Kill 2-3 |cRXP_ENEMY_Vale Moths|r or |cRXP_ENEMY_Mutación volátil|r for vendor trash (worth 10c+)|r
    >>|cRXP_WARN_Vendor trash en |cRXP_FRIENDLY_Aurok|r dentro|r
    .mob Vale Moth
    .mob Volatile Mutation
    .target Aurok
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Firmanvaar|r
	.train 8017 >>Aprende |T136086:0|t[Arma Muerdepiedras]
    .target Firmanvaar
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kore|r
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target Kore
step << Priest/Mage
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_Vale Moths|r and |cRXP_ENEMY_Mutación volátil|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r
    .mob Vale Moth
    .mob Volatile Mutation
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Entrega la misión ¡Has sobrevivido!
    .accept 9280 >> Acepta la misión Recargar los cristales de sanación
    .target Proenitus
step << Priest/Mage
    .goto Azuremyst Isle,79.253,50.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ryosh|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Ryosh
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r
    .accept 10302 >> Acepta la misión Mutaciones volátiles
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,0
    .goto Azuremyst Isle,75.27,43.70,0
    .goto Azuremyst Isle,73.4,51.4,0
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Kill |cRXP_ENEMY_Mutación volátil|r
    >>Mata |cRXP_ENEMY_Polillas del valle|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_Mutación volátil|r as you will turn in the quest and complete |cRXP_ENEMY_Vale Moths|r after|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob +Volatile Mutation
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob +*Vale Moth
    .disablecheckbox
step
    #optional
    .isQuestComplete 9280
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Entrega la misión Recargar los cristales de sanación
    .accept 9409 >> Acepta la misión Entrega urgente
    .target Proenitus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r y la |cRXP_FRIENDLY_Aprendiza Vishael|r
    .turnin 10302 >> Entrega la misión Mutaciones volátiles
    .accept 9293 >> Acepta la misión Hacer lo correcto
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >> Acepta la misión Trabajo de campo
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #completewith next
    >>Mata |cRXP_ENEMY_Polillas del valle|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.94,52.21,0
    .goto Azuremyst Isle,72.26,49.29,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Mata a los |cRXP_ENEMY_Mutated Enraizar Lashers|r. Despójalos para obtener las |cRXP_LOOT_Muestra de azotador|r
    >>Despoja las |cRXP_LOOT_Flores corruptas|r del suelo
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step
    #loop
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
    >>Mata |cRXP_ENEMY_Polillas del valle|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #optional
    .isQuestTurnedIn 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-420 >>Sube de nivel hasta 980/1400 xp
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    #optional
    .isQuestAvailable 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-500 >>Sube de nivel hasta 900/1400 xp
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r y la |cRXP_FRIENDLY_Aprendiza Vishael|r
    .turnin 9293 >> Entrega la misión Hacer lo correcto
    .accept 9294 >> Acepta la misión Sanar el lago
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >> Entrega la misión Trabajo de campo
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Entrega la misión Recargar los cristales de sanación
    .accept 9409 >> Acepta la misión Entrega urgente
    .target Proenitus
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vende la basura
    .target Aurok
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valaatu|r
	.accept 9290 >> Acepta la misión Instrucción de mago
	.turnin 9290 >> Entrega la misión Instrucción de mago
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
	.accept 9287 >> Acepta la misión Instrucción de paladín
	.turnin 9287 >> Entrega la misión Instrucción de paladín
    .train 465 >>Aprende |T135893:0|t[Aura de devoción]
    .train 19740 >> Aprende |T135906:0|t[Bendición de poderío]
    .train 20271 >> Aprende |T135959:0|t[Sentencia]
    .target Aurelon
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .turnin 9409 >> Entrega la misión Entrega urgente
    .accept 9283 >> Acepta la misión ¡Rescata a los supervivientes!
    .accept 9291 >> Acepta la misión Instrucción de sacerdote << Priest
    .turnin 9291 >> Entrega la misión Instrucción de sacerdote << Priest
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza] << Priest
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior] << Priest
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor] << Priest
    .target Zalduun
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Firmanvaar|r
    .accept 9421 >> Acepta la misión Entrenamiento de chamán
	.turnin 9421 >> Entrega la misión Entrenamiento de chamán
    .accept 9449 >> Acepta la misión La llamada de la tierra
	.train 8042 >> Aprende |T136026:0|t[Choque de tierra]
    .target Firmanvaar
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_Cast|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un |cRXP_FRIENDLY_Superviviente draenei|r si ves uno|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu del Valle|r
    .turnin 9449 >> Entrega la misión La llamada de la tierra
    .accept 9450 >> Acepta la misión La llamada de la tierra
    .target Spirit of the Vale
step << Shaman
    #loop
    .goto Azuremyst Isle,69.62,35.13,0
    .goto Azuremyst Isle,70.73,37.74,40,0
    .goto Azuremyst Isle,69.62,35.13,60,0
    >>Mata a los |cRXP_ENEMY_Restless Licores of Tierra|r
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
    .mob Restless Spirit of Earth
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu del Valle|r
    .turnin 9450 >> Entrega la misión La llamada de la tierra
    .accept 9451 >> Acepta la misión La llamada de la tierra
    .target Spirit of the Vale
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un |cRXP_FRIENDLY_Superviviente draenei|r si ves uno|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 9451 >> Entrega la misión La llamada de la tierra
    .target Firmanvaar
step << Shaman
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla ligeramente|r
    .turnin 9283 >> Entrega la misión ¡Rescata a los supervivientes!
    .target Zalduun
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kore|r
    .accept 9289 >> Acepta la misión Instrucción de guerrero
	.turnin 9289 >> Entrega la misión Instrucción de guerrero
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Kore
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keilnei|r
	.accept 9288 >> Acepta la misión Instrucción de cazador
	.turnin 9288 >> Entrega la misión Instrucción de cazador
    .train 1978 >>Aprende |T132204:0|t[Picadura de serpiente]
    .target Keilnei


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ryosh|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Ryosh
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mura|r
	.vendor >> Vende la basura
    >>|cRXP_BUY_Compra 5 pilas de|r |T132382:0|t[Rough Flechas] |cRXP_BUY_de ella|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Mura
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Técnica Zhanaa|r
    .accept 9305 >> Acepta la misión Piezas de repuesto
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aldar|r
    .accept 9303 >> Acepta la misión Inoculación
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    .usespell 28880 >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un|r |cRXP_FRIENDLY_Superviviente draenei|r|cRXP_WARN_. Están dispersos por toda la zona de inicio|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Haz clic en el |cRXP_PICK_Irradiated Poder Cristal|r en el lago
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Channel the|r |T132775:0|t[Cristal inoculador] |cRXP_WARN_on |cRXP_ENEMY_Nestlewood Owlkins|r durante 4 segundos|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Despoja las |cRXP_LOOT_Emitter Piezas de repuesto|r en el suelo
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Canaliza la|r |T132775:0|t[Cristal inoculador] |cRXP_WARN_en |cRXP_ENEMY_Nestlewood Owlkins|r durante 4 segundos|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    #completewith next
    .subzone 3527 >> Regresa al lugar del accidente
step
    .goto 1943/1,3865.399,6144.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aldar|r
    .target Vindicator Aldar
    .turnin 9303 >>Entrega la misión Inoculación
    .accept 9309 >>Acepta la misión El explorador desaparecido
step
    .goto 1943/1,3865.000,6157.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Técnica Zhanaa|r
    .target Technician Zhanaa
    .turnin 9305 >>Entrega la misión Piezas de repuesto
step
    .goto 1943/1,3877.000,6284.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r
    .target Botanist Taerix
    .turnin 9294 >>Entrega la misión Sanar el lago
step
    .goto 1943/1,3838.800,6221.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    .target Zalduun
    .turnin 9283 >>Entrega la misión ¡Rescata a los supervivientes!
step
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla ligeramente|r
    .turnin 9283 >> Entrega la misión ¡Rescata a los supervivientes!
    .target Zalduun
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vende la basura
    .target Aurok
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r
    .turnin 9294 >> Entrega la misión Sanar el lago
    .target Botanist Taerix
step
    #completewith SurveyorCandress
    .usespell 28880 >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un|r |cRXP_FRIENDLY_Draenei Superviviente|r|cRXP_WARN_. Están esparcidos por toda la zona de inicio|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >> Entrega la misión El explorador desaparecido
    .accept 10303 >> Acepta la misión Los elfos de sangre
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>Mata |cRXP_ENEMY_Exploradores elfo de sangre|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >> Entrega la misión Los elfos de sangre
    .accept 9311 >> Acepta la misión Espía elfo de sangre
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Mata a la |cRXP_ENEMY_Perita Candress|r. Despójala para obtener la |T132319:0|t[|cRXP_LOOT_Planes de los elfos de sangre|r]
    .use 24414 >>|cRXP_WARN_Usa los|r |T132319:0|t[|cRXP_LOOT_Planes de los elfos de sangre|r] |cRXP_WARN_para comenzar la misión|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >> Acepta la misión Planes de los elfos de sangre
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,0
    .goto Azuremyst Isle,77.6,56.0,0
    .goto Azuremyst Isle,74.8,43.4,0
    .goto Azuremyst Isle,80.2,42.6,0
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un|r |cRXP_FRIENDLY_Superviviente draenei|r|cRXP_WARN_. Están dispersos por toda la zona de inicio|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>Farmea |cRXP_ENEMY_Blood Elf Exploradores|r hasta estar a 1450xp del nivel 6 (1350/2800)
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Farmea |cRXP_ENEMY_Blood Elf Exploradores|r hasta estar a 1230xp del nivel 6 (1570/2800)
    .mob Blood Elf Scout
step
    #completewith next
    .subzone 3527 >> Regresa al Lugar del accidente
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aldar|r
    .turnin 9311 >> Entrega la misión Espía elfo de sangre
    .turnin 9798 >> Entrega la misión Planes de los elfos de sangre
    .accept 9312 >> Acepta la misión El emisor
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Técnica Zhanaa|r
    .turnin 9312 >> Entrega la misión El emisor
    .accept 9313 >> Acepta la misión Viaje a la Avanzada Azur
    .target Technician Zhanaa
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla ligeramente|r
    .turnin 9283 >> Entrega la misión ¡Rescata a los supervivientes!
    .target Zalduun
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >> Acepta la misión Un mensaje de la Avanzada Azur
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >> Acepta la misión Delicioso pargo rojo
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >> |cRXP_WARN_Nada al norte río arriba|r
    .use 23654 >>|cRXP_WARN_Usa la|r |T134325:0|t[Draenei Pesca Rojo] |cRXP_WARN_en|r |cRXP_PICK_Bancos de Pargo rojo|r |cRXP_WARN_que ves en el camino. Omite este paso una vez que llegues a la cima del río, lo completarás más tarde|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Vigila un|r |cRXP_FRIENDLY_Joven draenei|r
    >>|cRXP_WARN_Mientras estén en combate, lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ellos, luego acepta la misión|r
	.accept 9612 >> Acepta la misión ¡Gracias de corazón!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Mata |cRXP_ENEMY_Infected Acechador nocturno Cachorro|r. Despójalo para obtener un |T134072:0|t[|cRXP_LOOT_Cristal con resplandor tenue|r]
    .use 23678 >>|cRXP_WARN_Usa el|r |T134072:0|t[|cRXP_LOOT_Cristal con resplandor tenue|r] |cRXP_WARN_para comenzar la misión|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >> Acepta la misión Extraños hallazgos
    .mob Infected Nightstalker Runt
step
    #completewith NightstalkerCleanUp
    .goto 1943/1,4776.600,6457.500,55,0
    .goto 1943/1,4807.399,6348.100,55,0
    .goto 1943/1,4860.899,6302.500,55,0
    .subzone 3576 >> Ve a la Avanzada Azur. Sigue la flecha para llegar allá
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Anacoreta Fateema|r
    .accept 9463 >> Acepta la misión Propiedades curativas
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
	.turnin 9612 >> Entrega la misión ¡Gracias de corazón!
    .turnin 9455 >> Entrega la misión Extraños hallazgos
    .accept 9456 >> Acepta la misión Eliminando acechadores en la isla 2
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9455 >> Entrega la misión Extraños hallazgos
    .accept 9456 >> Acepta la misión Eliminando acechadores en la isla 2
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Técnico Dyvuun|r
    .turnin 9313 >> Entrega la misión Viaje a la Avanzada Azur
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cuidadora Chellan|r
    .turnin 9314 >> Entrega la misión Un mensaje de la Avanzada Azur
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cuidadora Chellan|r
    .home >> Establece tu hogar en Azure Observar
    .target Caregiver Chellan
    .bindlocation 3576
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Acepta la misión Ayudar a Tavara
    .train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Guvan
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semid|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Semid
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .train 3044 >> Aprende |T132218:0|t[Disparo Arcano]
    .train 1130 >> Aprende |T132212:0|t[Marca del cazador]
    .target Acteon
step << Shaman
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #sticky
    .equip 16,2495 >> |cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Nabek
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >> |cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
step << Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_if you can afford it|r (NOT TRANSLATED IN :esMX YET)
    .collect 2488,1 --Collect Gladius (1)
    .target Nabek
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Dulvi
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a este vendedor|r
    .collect 2901,1 --Mining Pick (1)
    .target Ziz
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining
step
	#completewith level8
    >>|cRXP_WARN_Vigila un|r |cRXP_FRIENDLY_Joven draenei|r
    >>|cRXP_WARN_Mientras estén en combate, lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ellos, luego acepta la misión|r
	.accept 9612 >> Acepta la misión ¡Gracias de corazón!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Mata a los |cRXP_ENEMY_Root Trappers|r. Despójalos para obtener |cRXP_LOOT_Vines|r
    >>Mata a los |cRXP_ENEMY_Moongraze Stags|r. Despoja a los para obtener sus |cRXP_LOOT_Venado lunar Solomillo de venado lunar|r
    >>|cRXP_WARN_NOTA: Pronto entrenarás y subirás nivel|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Costa Oscura después. Necesitarás 6 |cRXP_LOOT_Venado lunar Solomillo de venado lunar|r para la misión ahora y 9 después. NO los vendas|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior] (Rank 2) |cRXP_WARN_sobre|r |cRXP_FRIENDLY_Tavara|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante Odesyus|r
    .accept 9506 >> Acepta la misión Un pequeño susto
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Cocinitas" MacSalsafloja|r
    .accept 9512 >> Acepta la misión El jumbo gumbo de Cocinitas
    .target "Cookie" McWeaksauce
step << Warrior/Paladin
    .goto Azuremyst Isle,46.355,71.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Herrera Calypso|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_y|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Despoja el |cRXP_LOOT_Nautical Mapa|r en la pequeña jaula
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Despoja el |cRXP_LOOT_Nautical Compass|r en la pequeña caja
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,0
    .goto Azuremyst Isle,50.8,69.4,0
    .goto Azuremyst Isle,46.0,75.6,0
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Mata a los |cRXP_ENEMY_Skittering Crawlers|r. Despójalos para obtener su |cRXP_LOOT_Crawler Carne|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Cocinitas" MacSalsafloja|r
    .turnin 9512 >> Entrega la misión El jumbo gumbo de Cocinitas
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|Habla con el |cRXP_FRIENDLY_Admiral Odesyus|r y la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .turnin 9506 >> Entrega la misión Un pequeño susto
    .accept 9530 >> Acepta la misión Hay un traidor
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9513 >> Acepta la misión Recuperar las ruinas
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Adamant Coracero|r
    .accept 9523 >> Acepta la misión Material frágil y valioso, manipúlese con cuidado
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Despoja un |cRXP_LOOT_Hollowed Fuera Árbol|r en el suelo
    >>Despoja los |cRXP_LOOT_Piles of Leaves|r en el suelo
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Mata a los |cRXP_ENEMY_Root Trappers|r. Despójalos para obtener sus |cRXP_LOOT_Vines|r
    >>Mata a los |cRXP_ENEMY_Moongraze Stags|r. Despójalos para obtener |cRXP_LOOT_Solomillo de venado lunar|r
    >>|cRXP_WARN_NOTA: Pronto entrenarás y subirás nivel|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Costa Oscura después. Necesitarás 6 |cRXP_LOOT_Venado lunar Solomillo de venado lunar|r para la misión ahora y 9 después. NO los vendas|r .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante Odesyus|r
    .turnin 9530 >> Entrega la misión Hay un traidor
    .accept 9531 >> Acepta la misión En compañía de árboles
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >> Sube de nivel hasta que estés a 950 puntos de experiencia del nivel 8 (3550/4500)
    >>|cRXP_WARN_Intenta terminar cerca de Azure Observar|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >> Acepta la misión La gran cacería lunar
    .turnin 9454 >> Entrega la misión La gran cacería lunar
    .accept 10324 >> Acepta la misión La gran cacería lunar
    .target Acteon
step
    #completewith TenderloinRecipe
    +|cRXP_WARN_NO vendas|r |T134939:0|t[Recipe: Solomillo de venado lunar asado]
    >>|cRXP_WARN_La aprenderás pronto una vez que hayas entrenado|r |T133971:0|t[Cocina] |cRXP_WARN_que es necesaria para una misión en Costa Oscura después|r
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .train 5116 >> Aprende |T135860:0|t[Disparo de conmoción]
    .train 14260 >> Aprende |T132223:0|t[Golpe de raptor]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Fateema|r y |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >> Entrega la misión Propiedades curativas
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Acepta la misión La alternativa a la alternativa
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9612 >> Entrega la misión ¡Gracias de corazón!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Aprende tus hechizos de clase
    .target Tuluun
    .subzoneskip 3576,1
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >> Acepta la misión El pescador desaparecido
    .target Dulvi
step
    #label TenderloinRecipe
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Criptógrafo Aurren|r
    .accept 9538 >> Acepta la misión Aprendizaje de idiomas
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_Usa|r |T133741:0|t[Manual de idioma fúrbolg de Semprepino]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Akida|r
    .turnin 9538 >> Entrega la misión Aprendizaje de idiomas
    .accept 9539 >> Acepta la misión El Tótem de Coo
    .target Totem of Akida
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Entrega la misión Ayudar a Tavara
    .trainer >> Aprende tus hechizos de clase
    .target Guvan
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tullas|r
    .trainer >> Aprende tus hechizos de clase
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semid|r
    .trainer >> Aprende tus hechizos de clase
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Ruada
    .subzoneskip 3576,1
step
	#completewith AncientRelics
    >>|cRXP_WARN_Vigila un|r |cRXP_FRIENDLY_Joven draenei|r
    >>|cRXP_WARN_Mientras estén en combate, lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ellos, luego acepta la misión|r
	.accept 9612 >> Acepta la misión ¡Gracias de corazón!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Mata a los |cRXP_ENEMY_Infected Acechador nocturno Cachorro|r
	>>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for their |cRXP_LOOT_Ocultar|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Coo|r
    .turnin 9539 >> Entrega la misión El Tótem de Coo
    .accept 9540 >> Acepta la misión El Tótem de Tikti
    .target Totem of Coo
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto 1943/1,5114.300,6462.700,60,0
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Despoja los |cRXP_LOOT_Azure Snapdragons|r en el suelo
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Tikti|r
    .turnin 9540 >> Entrega la misión El Tótem de Tikti
    .accept 9541 >> Acepta la misión El Tótem de Yor
    .timer 30,El Tótem de Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >> |cRXP_WARN_Seguir|r |cRXP_FRIENDLY_Stillpine Ancestor Tikti|r|cRXP_WARN_. He will buff you with|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_which grants 150% increased swim speed and water breathing|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Usa el|r |T134325:0|t[Draenei Pesca Rojo] |cRXP_WARN_en|r |cRXP_PICK_Escuelas de Pargo rojo|r
    >>|cRXP_WARN_If a |cRXP_ENEMY_Múrloc|r spawns out of the pool, swim away fast! Casting any hostils spells will cause you to lose the|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_Beneficio|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >> Entrega la misión Delicioso pargo rojo
    .accept 9453 >> Acepta la misión Busca a Acteon
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Yor|r bajo el agua
    .turnin 9541 >> Entrega la misión El Tótem de Yor
    .accept 9542 >> Acepta la misión El Tótem de Vark
    .timer 71,El Tótem de Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >> |cRXP_WARN_Seguir|r |cRXP_FRIENDLY_Stillpine Ancestor Yor|r|cRXP_WARN_. He will buff you with|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_which grants increased movement speed and invisibility|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> |cRXP_WARN_Viaja al oeste de Azuremyst Isle|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Vark|r
    .turnin 9542 >> Entrega la misión El Tótem de Vark
    .accept 9544 >> Acepta la misión La profecía de Akida
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Click off the|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_Beneficio|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,0
    .goto Azuremyst Isle,27.87,66.78,0
    .goto Azuremyst Isle,25.04,67.67,0
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Mata a los |cRXP_ENEMY_Bristlelimb Furbolgs|r, a los |cRXP_ENEMY_Bristlelimb Windcallers|r y a los |cRXP_ENEMY_Bristlelimb Ursas|r. Despoja las |cRXP_LOOT_Bristlelimb Keys|r
    >>Abre las |cRXP_PICK_Bristlelimb Cages|r para liberar a los |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,0
    .goto Azuremyst Isle,31.6,70.4,0
    .goto Azuremyst Isle,33.6,60.4,0
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Mata a los |cRXP_ENEMY_Infected Acechador nocturno Cachorro|r
	>>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for their |cRXP_LOOT_Ocultar|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>Despoja las |cRXP_LOOT_Reliquias antiguas|r en el suelo
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Mata a los |cRXP_ENEMY_Wrathscale Nagas|r, a los |cRXP_ENEMY_Wrathscale Myrmidons|r y a los |cRXP_ENEMY_Wrathscale Sirens|r. Despoja las |T134462:0|t[|cRXP_LOOT_Tablilla cubierta de runas|r]
    .use 23759 >>|cRXP_WARN_Usa la|r |T134462:0|t[|cRXP_LOOT_Tablilla cubierta de runas|r] |cRXP_WARN_para iniciar la misión|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>> Tablilla cubierta de runas
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Despoja las |cRXP_LOOT_Reliquias antiguas|r en el suelo
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >> Nada a Traitor's Cove
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >> |cRXP_WARN_Usa el|r |T132288:0|t[Disfraz completo de árbol] |cRXP_WARN_en la bandera naga|r
    .timer 73,En compañía de árboles RP
    .use 23792
step
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_Click off the|r |T132288:0|t[Tree Disguise] |cRXP_WARN_Beneficio|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >> Entrega la misión El pescador desaparecido
    .accept 9527 >> Acepta la misión Solo quedan los restos
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Mata a los |cRXP_ENEMY_Owlbeasts|r. Despoja los |cRXP_LOOT_Restos de la familia Cowlen|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >> Entrega la misión Solo quedan los restos
    .target Cowlen
step
    #completewith next
	.hs >> Usa tu Piedra de Hogar para ir a Azure Observar
    .bindlocation 3576,1
step
    .goto 1943/1,5182.200,6172.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .target Exarch Menelaous
    .turnin 9456 >>Entrega la misión Eliminando acechadores en la isla 2
step
    .goto 1943/1,5129.899,6148.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daedal|r
    .target Daedal
    .turnin 9473 >>Entrega la misión La alternativa a la alternativa
step
    .goto 1943/1,5090.399,6159.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arugoo de los Semprepino|r
    .target Arugoo of the Stillpine
    .turnin 9544 >>Entrega la misión La profecía de Akida
    .accept 9559 >>Acepta la misión El Bastión Semprepino
step
    .goto 1943/1,5073.300,6136.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .target Acteon
    .turnin 9453 >>Entrega la misión Busca a Acteon
    .turnin 10324 >>Entrega la misión La gran cacería lunar
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Adamant Coracero|r
    .turnin 9523 >> Entrega la misión Material frágil y valioso, manipúlese con cuidado
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante Odesyus|r
    .turnin 9531 >> Entrega la misión En compañía de árboles
    .accept 9537 >> Acepta la misión Justicia para el gnomo
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .turnin 9513 >> Entrega la misión Recuperar las ruinas
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .turnin 9514 >> Entrega la misión Tablilla cubierta de runas
    .target Priestess Kyleen Il'dinare
step
    #completewith next
    .goto Azuremyst Isle,46.219,70.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Logan Daniel|r
    .vendor >> |cRXP_WARN_Vende basura mientras esperas a que termine el RP|r << !Hunter
    >>|cRXP_BUY_Compra más pilas de|r |T132382:0|t[Rough Flechas] |cRXP_BUY_de él mientras esperas a que termine el Roleplay|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Logan Daniel
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .accept 9515 >> Acepta la misión Señor de la guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Habla con |cRXP_FRIENDLY_Ingeniero "Chispik" Pasarrosca|r patrullando la playa
    >>Mata al |cRXP_ENEMY_Ingeniero "Chispik" Pasarrosca|r después del breve RP. Despójalo para obtener la |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante Odesyus|r
    .turnin 9537 >> Entrega la misión Justicia para el gnomo
    .accept 9602 >> Acepta la misión Líbralos del mal...
    .target Admiral Odesyus
step << !Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Enter the Tides' Hollow cave (NOT TRANSLATED IN :esMX YET)
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Baja al nivel inferior
step << !Hunter
    >>Mata al |cRXP_ENEMY_Señor de la guerra Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << !Hunter
    .xp 9+5360 >> Farmea hasta 5360+/6500 de experiencia
step << !Hunter
    #optional
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides' Hollow cave (NOT TRANSLATED IN :esMX YET)
    .subzoneskip 3569,1
step << !Hunter
	#completewith next
    >>|cRXP_WARN_Vigila un|r |cRXP_FRIENDLY_Joven draenei|r
    >>|cRXP_WARN_Mientras estén en combate, lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ellos, luego acepta la misión|r
	.accept 9612 >> Acepta la misión ¡Gracias de corazón!
	.unitscan Draenei Youngling
step << !Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .turnin 9515 >> Entrega la misión Señor de la guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << !Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Cocinitas" MacSalsafloja|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target "Cookie" McWeaksauce
step << !Hunter
    .cast 33277 >> |cRXP_WARN_Usa la|r |T134939:0|t[Receta: Solomillo de venado lunar asado] |cRXP_WARN_para aprender la|r |T133971:0|t[Cocina] |cRXP_WARN_receta|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9602 >> Entrega la misión Líbralos del mal...
    .accept 9623 >> Acepta la misión La edad adulta
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9612 >> Entrega la misión ¡Gracias de corazón!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .accept 9464 >> Acepta la misión La llamada del fuego
    .trainer >> Aprende tus hechizos de clase
    .target Tuluun
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .accept 9757 >> Acepta la misión La cazadora Kella Arconocturno
    .trainer >> Aprende tus hechizos de clase
    .target Acteon
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .trainer >> Aprende tus hechizos de clase
    .target Guvan
    .subzoneskip 3576,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tullas|r
    .trainer >> Aprende tus hechizos de clase
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semid|r
    .trainer >> Aprende tus hechizos de clase
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .trainer >> Aprende tus hechizos de clase
    .accept 9582 >> Acepta la misión La fuerza de uno solo
    .target Ruada
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cazadora Kella Arconocturno|r
    .turnin 9757 >> Entrega la misión Cazadora Kella Arconocturno
    .accept 9591 >> Acepta la misión Domesticar la bestia
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >> |cRXP_WARN_Usa el|r |T135139:0|t[Tótem de doma] |cRXP_WARN_en un |cRXP_ENEMY_Reptador con púas|r en el agua|r
    .complete 9591,1 --Tame a Barbed Crawler
    .mob Barbed Crawler
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >> Enter the Tides' Hollow cave (NOT TRANSLATED IN :esMX YET)
step << Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >> Desciende al nivel inferior
step << Hunter
    >>Mata a |cRXP_ENEMY_Señor de la guerra Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >> Exit the Tides' Hollow cave (NOT TRANSLATED IN :esMX YET)
    .subzoneskip 3569,1
step << Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .turnin 9515 >> Entrega la misión a Señor de la guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Cocinitas" MacSalsafloja|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target "Cookie" McWeaksauce
step << Hunter
    .cast 33277 >> |cRXP_WARN_Usa la|r |T134939:0|t[Recipe: Solomillo de venado lunar asado] |cRXP_WARN_para aprender la|r |T133971:0|t[Cocina] |cRXP_WARN_receta|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cazadora Kella Arconocturno|r
    .turnin 9591 >> Entrega la misión Domesticar la bestia
    .accept 9592 >> Acepta la misión Domesticar la bestia
    .target Huntress Kella Nightbow
step
    .goto The Exodar,81.488,51.449
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torallius el Controlador de la Manada|r
    .turnin 9623 >> Entrega la misión La edad adulta
    .accept 9625 >> Acepta la misión Con los elekks no se bromea
    .target Torallius the Pack Handler
step << Hunter
    .goto Azuremyst Isle,34.56,34.04,60,0
	.goto Azuremyst Isle,41.0,30.4,50,0
    .goto Azuremyst Isle,43.6,26.2
	.use 23897 >> |cRXP_WARN_Usa el|r |T135139:0|t[Tótem de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Maderazancudo superior|r
    .complete 9592,1 --Tame a Greater Timberstrider
    .mob Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cazadora Kella Arconocturno|r
    .turnin 9592 >> Entrega la misión Domesticar la bestia
    .accept 9593 >> Acepta la misión Domesticar la bestia
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,35.0,33.9,50,0
    .goto Azuremyst Isle,41.2,28.6
	.use 23898 >> |cRXP_WARN_Use the|r |T135139:0|t[Taming Totem] |cRXP_WARN_on a|r |cRXP_ENEMY_Acechador nocturno|r
    .complete 9593,1 --Tame a Nightstalker
    .mob Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cazadora Kella Arconocturno|r
    .turnin 9593 >> Entrega la misión Domesticar la bestia
    .accept 9675 >> Acepta la misión Doma de bestias
    .target Huntress Kella Nightbow
step << Hunter
    .isOnQuest 9675
    .goto Azuremyst Isle,24.6,49.0,20 >>Entra en Exodar por la puerta trasera
step << Hunter
	.goto The Exodar,53.79,86.11,30,0
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ganaar|r
    .turnin 9675 >> Entrega la misión Doma de bestias
	.trainer >> Entrena los hechizos de tu mascota
    .target Ganaar
step << Hunter
    #completewith next
    .destroy 2512 >> Destruye todas tus |T132382:0|t[Rough Flechas]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compra 6 pilas de|r |T132382:0|t[Sharp Flechas]
    .collect 2515,1200
    .target Avelii
step << Hunter
	#completewith next
	.goto The Exodar,53.696,78.280,15 >> Viaja por la rampa hacia |cRXP_FRIENDLY_Handiir|r
step << Hunter
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Aprende Espadas de 2 manos
    .target Handiir
step << Hunter
	#completewith next
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.34,34.07,25,0
	.goto The Exodar,64.0,36.5,20,0
    .goto The Exodar,69.34,32.03,20,0
    .goto The Exodar,74.48,54.09,20 >>Salta hacia abajo y sal de Exodar
	-->> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	--.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .accept 9560 >> Acepta la misión ¡Las bestias del apocalipsis!
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gurf|r
    .target Gurf
    .accept 9562 >> Acepta la misión Múrlocs... ¿Por qué?
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran jefe Semprepino|r
    .target High Chief Stillpine
    .turnin 9559 >> Entrega la misión en El Bastión Semprepino
step << Hunter
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >> |cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un|r |cRXP_ENEMY_Espécimen de devastador|r |cRXP_WARN_para domesticarlo|r
    .mob Ravager Specimen
step << Shaman
	#completewith next
	>>Mata a los |cRXP_ENEMY_Especímenes de devastador|r. Despoja los para obtener |cRXP_LOOT_Pieles de devastador|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Templar|r
    .turnin 9464 >> Entrega la misión La llamada del fuego
    .accept 9465 >> Acepta la misión La llamada del fuego
    .target Temper
step
    #loop
    .goto Azuremyst Isle,54.6,23.8,0
    .goto Azuremyst Isle,55.6,18.2,0
    .goto Azuremyst Isle,53.0,11.6,0
    .goto Azuremyst Isle,54.6,23.8,70,0
    .goto Azuremyst Isle,55.6,18.2,70,0
    .goto Azuremyst Isle,53.0,11.6,70,0
	>>Mata a los |cRXP_ENEMY_Ravager Specimens|r. Despójalos para obtener sus |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Warrior
    #completewith next
    .goto Azuremyst Isle,54.021,9.956
    .cast 30767 >> Haz clic en la |cRXP_PICK_Ravager Jaula|r para liberar |cRXP_ENEMY_Devastador de la Muerte|r
step << Warrior
    .goto Azuremyst Isle,54.084,9.721
    >>Mata a |cRXP_ENEMY_Devastador de la Muerte|r
    .complete 9582,1 --Kill Death Ravager (x1)
    .mob Death Ravager
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9560 >> Entrega la misión ¡Las bestias del apocalipsis!
step
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semprepino el Menor|r
    .target Stillpine the Younger
    .accept 9573 >> Acepta la misión El cabecilla Oomooroo
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran jefe Semprepino|r
    .target High Chief Stillpine
    .accept 9565 >> Acepta la misión Registra el Bastión Semprepino
step
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,45.391,18.194,20 >> Entra en la cueva del Bastión Semprepino
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,47.453,16.078,10 >> Sube a la sección superior de la cueva
step
	.goto Azuremyst Isle,47.394,14.121
    >>Mata a |cRXP_ENEMY_El cabecilla Oomooroo|r
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r << !Shaman
    >>Mata a los |cRXP_ENEMY_Crazed Wildkins|r. Despójalos para obtener la |cRXP_LOOT_Ritual Antorcha|r << Shaman
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .mob +Chieftain Oomooroo
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .disablecheckbox
    .mob +Crazed Wildkin
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .disablecheckbox
    .mob +Crazed Wildkin
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,48.26,13.78,10 >> Baja hacia el fondo de la cueva
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r << !Shaman
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r. Despoja la |cRXP_LOOT_Ritual Antorcha|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,50.632,11.544
    >>Haz clic en el |cRXP_PICK_Blood Cristal|r
    >>|cRXP_WARN_Evita matar a |cRXP_ENEMY_El Kurken|r si es posible ya que necesitarás matarlo en breve|r
    .turnin 9565 >> Entrega la misión Registra el Bastión Semprepino
    .accept 9566 >> Acepta la misión Cristales de sangre
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r << !Shaman
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r. Despoja la |cRXP_LOOT_Ritual Antorcha|r << Shaman
    >>|cRXP_WARN_You will finish this shortly if you haven't yet|r (NOT TRANSLATED IN :esMX YET)
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isOnQuest 9573,9566
    .goto Azuremyst Isle,45.391,18.194,12 >> Sal de la cueva
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran jefe Semprepino|r
    .target High Chief Stillpine
    .turnin 9566 >> Entrega la misión Cristales de sangre
step
    #optional
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semprepino el Menor|r
    .target Stillpine the Younger
    .turnin 9573 >> Entrega la misión El cabecilla Oomooroo
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurz el Revelador|r
    .target Kurz the Revelator
    .accept 9570 >> Acepta la misión El Kurken acecha
step
	.goto Azuremyst Isle,46.964,22.011
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parkat Furiacerada|r
    .vendor >> |cRXP_BUY_Compra una|r |T133634:0|t[Pequeño Brown Pouch]
    .target Parkat Steelfur
    .subzoneskip 3572,1
step
    .isOnQuest 9570,9573
    .goto Azuremyst Isle,45.391,18.194,20 >> Entra de nuevo en la cueva del Bastión Semprepino
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r. Despoja la |cRXP_LOOT_Ritual Antorcha|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,48.26,13.78,10,0
    .goto Azuremyst Isle,49.9,12.8
	>>Kill |cRXP_ENEMY_The Kurken|r. Loot him for his |cRXP_LOOT_Ocultar|r
    .complete 9570,1 --Collect The Kurken's Hide (x1)
    .mob The Kurken
step
    .goto Azuremyst Isle,47.394,14.121
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r << !Shaman
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r. Despoja la |cRXP_LOOT_Ritual Antorcha|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semprepino el Menor|r
    .target Stillpine the Younger
    .turnin 9573 >> Entrega la misión al cabecilla Oomooroo
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurz el Revelador|r
    .target Kurz the Revelator
    .turnin 9570 >> Entrega la misión El Kurken acecha
    .accept 9571 >> Acepta la misión El pellejo de El Kurken
step << Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran jefe Semprepino|r
    .accept 9622 >> Acepta la misión Avisar a tu pueblo
    .target High Chief Stillpine
step
	#label end
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9571 >> Entrega la misión El pellejo de El Kurken
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Templar|r
    .turnin 9465 >> Entrega la misión La llamada del fuego
    .accept 9467 >> Acepta la misión La llamada del fuego
    .target Temper
step << Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9622 >> Entrega la misión Avisar a tu pueblo
    .target Exarch Menelaous
step << Shaman
    #completewith Wickerman
    .subzone 3639 >> Viaja a Silvermyst Isle
step << Shaman
    #completewith Wickerman
    .use 24336 >>Abre la |T133655:0|t[Cartera a prueba de fuego] para obtener el |T135432:0|t[Ritual Antorcha]
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    #completewith Wickerman
    .goto Azuremyst Isle,11.442,82.273
    .cast 30212 >>Haz clic en la |cRXP_PICK_Wickerman Efigie|r para evocar |cRXP_ENEMY_Prepotencia|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>Kill |cRXP_ENEMY_Hauteur|r. Loot him for his |cRXP_LOOT_Cenizas|r
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
    .mob Hauteur
step << Shaman
    #completewith next
    .cast 31613 >>|cRXP_WARN_Usa|r |T134337:0|t[Orbe de retorno] |cRXP_WARN_para volver a Emberglade|r
    .use 24335
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Templar|r
    .turnin 9467 >> Entrega la misión La llamada del fuego
    .accept 9468 >> Acepta la misión La llamada del fuego
    .target Temper
step
    #completewith next
    >>Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r and |cRXP_ENEMY_Siltfin Hunters|r. Loot them for their |cRXP_LOOT_Grano|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Mata a |cRXP_ENEMY_Murgurgula|r. Despoja para obtener |T134350:0|t[|cRXP_LOOT_Gurf's Dignidad|r]
    .use 23850 >> |cRXP_WARN_Usar|r |T134350:0|t[|cRXP_LOOT_Gurf's Dignity|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_ENEMY_Murgurgula|r |cRXP_WARN_patrulla por la costa|r
	.collect 23850,1,9564,1 --Gurf's Dignity (1)
    .accept 9564 >> Acepta la misión La dignidad de Gurf
	.unitscan Murgurgula
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r and |cRXP_ENEMY_Siltfin Hunters|r. Loot them for their |cRXP_LOOT_Grano|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >> Entrega la misión La dignidad de Gurf
    .turnin 9562 >> Entrega la misión Múrlocs... ¿Por qué?
    .target Gurf
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Viaja a Isla Bruma de Sangre
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .accept 9624 >> Acepta la misión Un caprichito goloso
step
    .isOnQuest 9625
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vorkhan el Pastor de elekks|r
    .target Vorkhan the Elekk Herder
    .turnin 9625 >> Entrega la misión Con los elekks no se bromea
    .accept 9634 >> Acepta la misión Depredadores alienígenas
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vorkhan el Pastor de elekks|r
    .target Vorkhan the Elekk Herder
    .accept 9634 >> Acepta la misión Depredadores alienígenas
step
    #completewith next
	>>Despoja las |cRXP_LOOT_Sand Pears|r en el suelo
    >>|cRXP_WARN_Pueden ser difíciles de detectar, busca alrededor de los árboles|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    >>Mata a los |cRXP_ENEMY_Bloodmyst Hatchlings|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
	>>Despoja las |cRXP_LOOT_Peras de arena|r en el suelo
    >>|cRXP_WARN_Pueden ser difíciles de encontrar, busca alrededor de los árboles|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .turnin 9624 >> Entrega la misión Un caprichito goloso
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vorkhan el Pastor de elekks|r
    .target Vorkhan the Elekk Herder
    .turnin 9634 >> Entrega la misión Depredadores alienígenas
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Princesa Semprepino|r
    .accept 9667 >> Acepta la misión Salvar a la princesa Semprepino
    .target Princess Stillpine
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Mata a los |cRXP_ENEMY_Bristlelimb Warriors|r y a los |cRXP_ENEMY_Bristlelimb Shamans|r hasta que |cRXP_ENEMY_Gran Jefe Brazolanudo|r aparezca
    >>Mata a |cRXP_ENEMY_Gran Jefe Brazolanudo|r. Despójalo para obtener la |cRXP_LOOT_The High Chief's Llave|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Haz clic en la |cRXP_PICK_Jaula de Princesa Semprepino|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Acepta la misión La carrera de Kessel
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Viaja al norte a Avanzada de Sangre
    >>|cRXP_WARN_¡Sigue la flecha de cerca! ¡No cruces el puente o serás desmontado!|r
    >>|cRXP_WARN_No ataques a ningún monstruo ni lances hechizos o serás desmontado. También serás desmontado si eres aturdido desde atrás.|r
    >>|cRXP_WARN_Cuando llegues a Avanzada de Sangre o si eres desmontado, abandona la misión "La carrera de Kessel"|r
step
    #optional
    #completewith next
    .subzone 3584 >> Viaja a Avanzada de Sangre
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cuidador Topher Loaal|r
    .target Caregiver Topher Loaal
    .accept 9603 >> Acepta la misión Camas, vendas y algo más
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Embajador Semprepino Olorg|r
    .turnin 9667 >> Entrega la misión Salvar a la princesa Semprepino
    .target Stillpine Ambassador Olorg
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >> Acepta la misión La colección de champiñones de Mac'Aree
step
    #completewith next
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >> Entrega la misión Camas, vendas y algo más
step
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>> Aprende la ruta de vuelo hacia Avanzada de Sangre
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >> Entrega la misión Camas, vendas y algo más
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Admetius|r
    .accept 9693 >> Acepta la misión ¿Qué es Argus para ti?
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .accept 9581 >> Acepta la misión Las lecciones de los cristales
    .target Harbinger Mikolaas
step
    .solo
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Entrega la misión ¿Qué es Argus para ti?
step
    .group
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Entrega la misión ¿Qué es Argus para ti?
    .accept 9694 >> Acepta la misión Avanzada de Sangre
step
    #optional
    #sticky
    .abandon 9663 >> Abandona la misión La carrera de Kessel
step
    .group 2
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mata a los |cRXP_ENEMY_Espías Sunhawk|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Espías Sunhawk|r son muy fuertes en este nivel. Solo enfrenta a uno a la vez|r
    >>|cRXP_WARN_NO intentes esta misión si estás jugando solo|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .isQuestComplete 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Entrega la misión Vigía de Sangre
step
    #completewith ImpactSiteCrystalSample
    .xp 12
step
	#completewith next
	>>Despoja un |cRXP_LOOT_Blood Champiñón|r en el suelo
    >>|cRXP_WARN_Estos aparecen en toda la Isla Bruma de Sangre|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Mata al |cRXP_ENEMY_Asediador cuernohediondo|r. Despójalo para obtener el |cRXP_LOOT_Aquatic Stinkhorn|r
    >>|cRXP_WARN_También puedes despojar el |cRXP_LOOT_Aquatic Stinkhorn|r bajo el agua|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #label ImpactSiteCrystalSample
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Usa el|r |T134709:0|t[Cristal Pico de minero] |cRXP_WARN_en el|r |cRXP_PICK_Impact Site Cristal|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    .goto Bloodmyst Isle,64.2,76.8,60,0 -- furbolgs
    .goto Bloodmyst Isle,64.2,76.8,0-- furbolgs
    .xp 12
    .mob Bloodmyst Hatchling
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Acepta la misión La carrera de Kessel
    .target Kessel
step
    #completewith next
    .goto Azuremyst Isle,42.18,2.88,20,0
    .goto Azuremyst Isle,43.23,11.58,70,0
    .goto Azuremyst Isle,50.99,13.09,70,0
    .goto Azuremyst Isle,49.40,23.09,80,0
    .goto Azuremyst Isle,46.685,20.617
	.subzone 3572 >> |cRXP_WARN_NOTA: No ataques a ningún mob ni lances ningún hechizo, ya que hacerlo te desmontará. También serás desmontado si eres aturdido por un ataque desde atrás.|r
    *|cRXP_WARN_Sigue el camino hacia el sur|r
step << !Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran jefe Semprepino|r
    .accept 9622 >> Acepta la misión Avisar a tu pueblo
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,49.25,49.53
    .isOnQuest 9663
    .subzone 3576 >> |cRXP_WARN_Continúa siguiendo el camino hacia el sur hasta Vigía del Azur|r
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semid|r
    .trainer >> Aprende tus hechizos de clase
    .target Semid
    .subzoneskip 3576,1
    .xp <12,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >> Entrega la misión La fuerza de uno solo
    .accept 10350 >> Acepta la misión Maestro Maestro Behomat
    .target Ruada
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .trainer >> Aprende tus hechizos de clase
    .target Ruada
    .subzoneskip 3576,1
    .xp <12,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .trainer >> Aprende tus hechizos de clase
    .target Acteon
    .subzoneskip 3576,1
    .xp <12,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .trainer >> Aprende tus hechizos de clase
    .target Guvan
    .subzoneskip 3576,1
    .xp <12,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tullas|r
    .trainer >> Aprende tus hechizos de clase
    .target Tullas
    .subzoneskip 3576,1
    .xp <12,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >> Entrega la misión La llamada del fuego
    .accept 9461 >> Acepta la misión La llamada del fuego
    .target Tuluun
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Aprende tus hechizos de clase
    .target Tuluun
    .subzoneskip 3576,1
    .xp <12,1
step
    #optional
    .use 23910 >> |cRXP_WARN_Usa la|r |T133473:0|t[Comunicación de elfos de sangre] |cRXP_WARN_para iniciar la misión|r
    .accept 9616 >> Acepta la misión ¡Bandidos!
    .itemcount 23910,1
step
    #optional
    .isOnQuest 9616
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9616 >> Entrega la misión ¡Bandidos!
    .target Exarch Menelaous
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9612 >> Entrega la misión ¡Gracias de corazón!
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Anacoreta Fateema|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Anchorite Fateema
step
    .goto 1943/1,5143.700,6130.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Otonambusi|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Pequeño Brown Pouch] |cRXP_BUY_también de él si es necesario|r << !Warrior !Shaman !Paladin -- saving money for weps soon
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Otonambusi
    .skill cooking,<1,1 -- shows if cooking is >1
step << !Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9622 >> Entrega la misión Avisar a tu pueblo
    .target Exarch Menelaous
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Desciende al interior de El Exodar
step
    .goto 1947/1,5903.899,6593.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuidador Breel|r
    .target Caregiver Breel
    .home >> Establece tu Piedra de hogar en Exodar
    .bindlocation 3557
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Shaman/Warrior
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_de ella o revisa la Casa de Subastas por un arma mejor|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman/Warrior
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_de ella|r
    .goto The Exodar,73.625,84.814
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    .money <0.2871
step << Shaman/Warrior
    #optional
    #sticky
    .equip 16,854 >> |cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
step << Paladin
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_de él|r |cRXP_BUY_de él o revisa la Casa de Subastas por un arma mejor|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compra una|r |T133477:0|t[Maza gigante] |cRXP_BUY_de ella|r
    .goto The Exodar,73.625,84.814
    .collect 1197,1 -- Giant Mace
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
    #optional
    #sticky
    .equip 16,1197 >> |cRXP_WARN_Equipa la|r |T133477:0|t[Maza gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
	#completewith next
	.goto The Exodar,53.696,78.280,15 >> Viaja por la rampa hacia |cRXP_FRIENDLY_Handiir|r
step << Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Aprende Espadas de 2 manos
    .target Handiir
step << Paladin
    #optional
    #sticky
    .equip 16,1198 >> |cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Sube por las rampas hacia |cRXP_FRIENDLY_Maestro Maestro Maestro Behomat|r en el piso superior
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >> Entrega la misión a Maestro Maestro Maestro Behomat
    .target Behomat
step << Shaman
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .turnin 9461 >> Entrega la misión La llamada del fuego
    .accept 9555 >> Acepta la misión La llamada del fuego
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Clarividente Nobundo|r up the ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Clarividente Nobundo|r
    >>|cRXP_FRIENDLY_Clarividente Nobundo|r |cRXP_WARN_patrols slightly|r
    .target Farseer Nobundo
    .turnin 9555 >> Entrega la misión La llamada del fuego
step
    #completewith DarkshoreBoat
    .goto 1947/1,6179.200,6216.100,20 >> Sal de El Exodar
    .zoneskip The Exodar,1
step
    #completewith DarkshoreBoat
    #label Cooking1
    #optional
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith DarkshoreBoat
    #requires Cooking1
    #optional
    +|T133971:0|t[Cocina] |cRXP_WARN_el|r |cRXP_LOOT_Solomillo de venado lunar|r |cRXP_WARN_para obtener|r |T134016:0|t[Solomillo de venado lunar asado]
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco|r
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Toma el barco hacia Costa Oscura
]])
