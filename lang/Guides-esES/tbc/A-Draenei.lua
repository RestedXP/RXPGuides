if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#name 1-12 Isla Bruma Azur
#subgroup RestedXP Alianza 1-20
#defaultfor Draenei
#next 12-20 Bruma de Sangre (Draenei)

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
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla ligeramente|r
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
    .usespell 28880 >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un |cRXP_FRIENDLY_Superviviente draenei|r si ves uno|r
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
	.use 22962 >>|cRXP_WARN_Canaliza la|r |T132775:0|t[Cristal inoculador] |cRXP_WARN_en |cRXP_ENEMY_Nestlewood Owlkins|r durante 4 segundos|r
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
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>De pie encima de hogueras cercanas para recibir daño adicional si es necesario
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r
    .turnin 9294 >> Entrega la misión Sanar el lago
    .target Botanist Taerix
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vende la basura
    .target Aurok
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
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Técnica Zhanaa|r
    .turnin 9305 >> Entrega la misión Piezas de repuesto
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aldar|r
    .turnin 9303 >> Entrega la misión Inoculación
    .accept 9309 >> Acepta la misión El explorador desaparecido
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    .usespell 28880 >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un|r |cRXP_FRIENDLY_Superviviente draenei|r|cRXP_WARN_. Están dispersos por toda la zona de inicio|r
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
    .xp 6-1450 >>Farmea a los |cRXP_ENEMY_Blood Elf Exploradores|r hasta que te falten 1450 puntos de experiencia para el nivel 6 (1350/2800). Baja tu salud al mínimo con los últimos monstruos; haremos un salto de muerte después
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Farmea a los |cRXP_ENEMY_Blood Elf Exploradores|r hasta que te falten 1230 puntos de experiencia para el nivel 6 (1570/2800). Baja tu salud al mínimo con los últimos monstruos; haremos un salto de muerte después
    .mob Blood Elf Scout
step
	#completewith BloodElfSpy
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
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
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Asegúrate de morir cerca del estanque junto a la montaña|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >> Viaja a la Avanzada Azur
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
    >>Mata a los |cRXP_ENEMY_Root Trappers|r. Despójalos para obtener sus |cRXP_LOOT_Vines|r
    >>Mata a los |cRXP_ENEMY_Moongraze Stags|r. Despoja a los para obtener sus |cRXP_LOOT_Tenderloins|r
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
    >>Mata a los |cRXP_ENEMY_Moongraze Stags|r. Despoja a los para obtener sus |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
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
	#completewith next
    .goto Azuremyst Isle,49.780,51.938
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Omite este paso si ya estás cerca de Azure Observar|r
    .subzoneskip 3576
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >> Acepta la misión La gran cacería lunar
    .turnin 9454 >> Entrega la misión La gran cacería lunar
    .accept 10324 >> Acepta la misión La gran cacería lunar
    .target Acteon
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
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> |cRXP_WARN_Cuidadosamente baja por el lado de la montaña|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
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
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
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
    .goto Azuremyst Isle,26.33,73.79,15 >> Desciende al nivel inferior
step << !Hunter
    >>Mata a |cRXP_ENEMY_Señor de la guerra Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+3070 >> Farmea hasta 3070+/6500xp
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >> Entrega la misión Busca a Acteon
    .turnin 10324 >> Entrega la misión La gran cacería lunar
    .target Acteon
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arugoo de los Semprepino|r
    .turnin 9544 >> Entrega la misión La profecía de Akida
    .accept 9559 >> Acepta la misión El Bastión Semprepino
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >> Entrega la misión La alternativa a la alternativa
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9456 >> Entrega la misión Eliminando acechadores en la isla 2
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
	>>Mata a los |cRXP_ENEMY_Especímenes de devastador|r. Despoja los para obtener |cRXP_LOOT_Pieles de devastador|r
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
    >>Mata a los |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Mata a los |cRXP_ENEMY_Enloquecido Wildkins|r. Despoja la |cRXP_LOOT_Ritual Antorcha|r << Shaman
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
    >>Mata a los |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
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
    >>Mata a los |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
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
    .turnin 9573 >> Entrega la misión al cabecilla Oomooroo
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
    >>Mata a los |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
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
    #completewith next
	.hs >> Usa tu Piedra de Hogar para ir a Azure Observar
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
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Viaja a Isla Bruma de Sangre
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#name 12-20 Bruma de Sangre (Draenei)
#subgroup RestedXP Alianza 1-20
#defaultfor Draenei
#next 20-21 Costa Oscura (Draenei);21-23 Vallefresno (Draenei)

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
    .xp 12-2000 >> |cRXP_WARN_Sube de nivel hasta estar 2000XP antes del nivel 12 (6800/8800)|r
    >>Mata a los |cRXP_ENEMY_Bloodmyst Hatchlings|r
	>>Despoja las |cRXP_LOOT_Peras de arena|r en el suelo
    >>|cRXP_WARN_Una vez que hayas alcanzado el XP necesario, continúa con la guía|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cuidador Topher Loaal|r
    .target Caregiver Topher Loaal
    .accept 9603 >> Acepta la misión Camas, vendas y algo más
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cuidador Topher Loaal|r
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Compra hasta 40|r |T133918:0|t[Pargo de lodo boquilargo] |cRXP_BUY_de él|r << Warrior
    >>|cRXP_BUY_Compra hasta 40|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_de él|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Compra hasta 40|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133918:0|t[Pargo de lodo boquilargo] |cRXP_BUY_de él|r << Paladin/Shaman
    .collect 1179,35 << !Warrior !Rogue --Ice Cold Milk (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cuidador Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Establece tu Piedra de Hogar en Avanzada de Sangre
    .subzoneskip 3584,1
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
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Entrega la misión ¿Qué es Argus para ti?
    .accept 9694 >> Acepta la misión Avanzada de Sangre
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mata a los |cRXP_ENEMY_Espías Sunhawk|r
    >>|cRXP_WARN_Ten cuidado porque |cRXP_ENEMY_Sunhawk Spies|r son muy fuertes a este nivel|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Entrega la misión Vigía de Sangre
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Acepta la misión Aquí te pillo, aquí te marco
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
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Usa el|r |T134709:0|t[Cristal Pico de minero] |cRXP_WARN_en el|r |cRXP_PICK_Impact Site Cristal|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
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
    .xp 12-2000 >> |cRXP_WARN_Sube de nivel hasta estar 2000XP antes del nivel 12 (6800/8800)|r
    >>Mata a los |cRXP_ENEMY_Bloodmyst Hatchlings|r
	>>Despoja las |cRXP_LOOT_Peras de arena|r en el suelo
    >>|cRXP_WARN_Una vez que hayas alcanzado el XP necesario, continúa con la guía|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith grind3800
	>>Despoja las |cRXP_LOOT_Peras de arena|r en el suelo
    >>|cRXP_WARN_Pueden ser difíciles de encontrar, busca alrededor de los árboles|r
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
	#label grind3800
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
	.xp 12+3880 >> Farmea hasta tener 3880 xp en el nivel 12 (3880+/9800)
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
    *|cRXP_WARN_¡Esta es también una misión cronometrada! ¡Tienes 15 minutos para completarla y entregarla!|r
    *|cRXP_WARN_Follow the road south to get to |cRXP_FRIENDLY_Gran jefe Semprepino|r safely|r
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran jefe Semprepino|r
    .accept 9622 >> Acepta la misión Avisar a tu pueblo << !Shaman
    .complete 9663,1 --High Chief Stillpine Warned
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >> Entrega la misión La dignidad de Gurf
    .turnin 9562 >> Entrega la misión Múrlocs... ¿Por qué?
    .target Gurf
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
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >> Entrega la misión La fuerza de uno solo
    .accept 10350 >> Acepta la misión Maestro Maestro Behomat
    .trainer >> Aprende tus hechizos de clase
    .target Ruada
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .trainer >> Aprende tus hechizos de clase
    .target Acteon
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .trainer >> Aprende tus hechizos de clase
    .target Guvan
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >> Entrega la misión La llamada del fuego
    .accept 9461 >> Acepta la misión La llamada del fuego
    .trainer >> Aprende tus hechizos de clase
    .target Tuluun
    .subzoneskip 3576,1
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
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9622 >> Entrega la misión Avisar a tu pueblo << !Shaman
    .complete 9663,2 --Exarch Menelaous Warned
    .target Exarch Menelaous
step
    #completewith next
    .isOnQuest 9663
    .subzone 3573 >> |cRXP_WARN_Sigue el camino hacia el sur hasta Odesyus' Aterrizando|r
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante Odesyus|r
    .complete 9663,3 --Admiral Odesyus Warned
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .turnin 9515 >> Entrega la misión a Señor de la guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,20,0
    .goto The Exodar,42.90,67.67,15 >>Entra en Exodar por la puerta trasera
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .target Jol
    .accept 9598 >>Acepta la misión Redención
    .turnin 9598 >>Entrega la misión Redención
    .accept 9600 >>Acepta la misión Redención
	.trainer >> Aprende tus hechizos de clase
step
    .isOnQuest 9581,9663
	.hs >> Viajar a Avanzada de Sangre
    .cooldown item,6948,>2,1
step
	.isOnQuest 9581,9663
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Vuela a Avanzada de Sangre
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .accept 9567 >> Acepta la misión Conoce a tu enemigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9581 >> Entrega la misión Las lecciones de los cristales
    .accept 9620 >> Acepta la misión El equipo de investigación desaparecido
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >> Entrega la misión La carrera de Kessel
    .accept 9666 >> Acepta la misión Declaración de poder
    .target Kessel
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Princesa Semprepino|r
    .accept 9667 >> Acepta la misión Salvar a la princesa Semprepino
    .target Princess Stillpine
step
	#completewith next
	>>Despoja una |cRXP_LOOT_Ruinous Polyspore|r en el suelo
    >>|cRXP_WARN_Parece un pequeño hongo azul encontrado alrededor de las ruinas Naga|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    .goto Bloodmyst Isle,67.35,67.99,40,0
    .goto Bloodmyst Isle,68.83,68.09
	>>Mata al |cRXP_ENEMY_Lord Xiz|r
    .use 24084 >> |cRXP_WARN_Usa el|r |T132484:0|t[Estandarte draenei] |cRXP_WARN_en su cadáver|r
    .complete 9666,1 -- Kill Lord Xiz (1)
    .mob +Lord Xiz
    .complete 9666,2 --Declaration of Power (x1)
step
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Despoja una |cRXP_LOOT_Ruinous Polyspore|r en el suelo
    >>|cRXP_WARN_Parece un pequeño hongo azul encontrado alrededor de las ruinas Naga|r
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step << Paladin
    #completewith next
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Usa el|r |T133439:0|t[Símbolo de la vida] |cRXP_WARN_en el|r |cRXP_FRIENDLY_Joven Fúrbolg Chamán|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Mata a los |cRXP_ENEMY_Bristlelimb Warriors|r y a los |cRXP_ENEMY_Bristlelimb Shamans|r hasta que |cRXP_ENEMY_Gran Jefe Brazolanudo|r aparezca
    >>Mata a |cRXP_ENEMY_Gran Jefe Brazolanudo|r. Despójalo para obtener la |cRXP_LOOT_The High Chief's Llave|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step << Paladin
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Usa el|r |T133439:0|t[Símbolo de la vida] |cRXP_WARN_en el|r |cRXP_FRIENDLY_Joven Fúrbolg Chamán|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Haz clic en la |cRXP_PICK_Jaula de Princesa Semprepino|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kessel|r
    .turnin 9666 >> Entrega la misión Declaración de poder
    .accept 9668 >> Acepta la misión Informar al exarca Admetius
    .target Kessel
step
	#completewith next
	.use 23995 >>|cRXP_WARN_Usa el|r |T135619:0|t[Marcador múrloc] |cRXP_WARN_en|r |cRXP_ENEMY_Blacksilt Exploradores|r
    >>|cRXP_WARN_NO mates a los|r |cRXP_ENEMY_Blacksilt Exploradores|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	>>Mata a |cRXP_ENEMY_Aleta Cruel|r. Despójalo para obtener |T133339:0|t[|cRXP_LOOT_Colgante de cristal rojo|r]
    .use 23870 >>|cRXP_WARN_Usa el|r |T133339:0|t[|cRXP_LOOT_Red Cristal Pendant|r] |cRXP_WARN_para comenzar la misión|r
    >>|cRXP_ENEMY_Aleta Cruel|r |cRXP_WARN_patrulla por la costa|r
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >> Acepta la misión El colgante de Aleta Cruel
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	.use 23995 >>|cRXP_WARN_Usa el|r |T135619:0|t[Marcador múrloc] |cRXP_WARN_en|r |cRXP_ENEMY_Blacksilt Exploradores|r
    >>|cRXP_WARN_NO mates a los|r |cRXP_ENEMY_Blacksilt Exploradores|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	#completewith FelConeFungus
	>>Despoja un |cRXP_LOOT_Blood Champiñón|r en el suelo
    >>|cRXP_WARN_Estos aparecen en toda la Isla Bruma de Sangre|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Despoja un |cRXP_LOOT_Fel Cono Hongo|r en el suelo
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Mata a |cRXP_ENEMY_Tzerak|r. Despójalo para obtener |T134518:0|t[|cRXP_LOOT_Placa de la armadura de Tzerak|r]
    .use 23900 >> |cRXP_WARN_Usar|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acepta la misión Signs of the
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Haz clic en los |cRXP_PICK_Nazzivus Monument Glyphs|r en la pared del altar. Despójalo para obtener el |cRXP_LOOT_Nazzivus Monument Glifo|r
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Mata a |cRXP_ENEMY_Tzerak|r. Despójalo para obtener |T134518:0|t[|cRXP_LOOT_Placa de la armadura de Tzerak|r]
    .use 23900 >> |cRXP_WARN_Usar|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_Si no lo ves patrullando por los campamentos, espera a que aparezca en el símbolo púrpura en el suelo al sur. Puede tardar 3-6 minutos en aparecer|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acepta la misión Signs of the
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Mata a los |cRXP_ENEMY_Nazzivus Satyrs|r y a los |cRXP_ENEMY_Nazzivus Felsworns|r
    >>|cRXP_WARN_Es posible que necesites matar a los |cRXP_ENEMY_Nazzivus Rogues|r si no ves los |cRXP_ENEMY_Satyrs|r o los |cRXP_ENEMY_Felsworns|r para que reaparezcan|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Despoja un |cRXP_LOOT_Fel Cono Hongo|r en el suelo
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #loop
    .goto Bloodmyst Isle,38.9,79.4,0
    .goto Bloodmyst Isle,42.1,71.7,0
    .goto Bloodmyst Isle,46.8,77.0,0
    .goto Bloodmyst Isle,45.7,86.9,0
    .goto Bloodmyst Isle,49.7,86.2,0
    .goto Bloodmyst Isle,53.5,75.7,0
    .goto Bloodmyst Isle,48.5,66.7,0
    .goto Bloodmyst Isle,54.1,67.6,0
    .goto Bloodmyst Isle,58.9,61.8,0
    .goto Bloodmyst Isle,38.9,79.4,15,0
    .goto Bloodmyst Isle,42.1,71.7,15,0
    .goto Bloodmyst Isle,46.8,77.0,15,0
    .goto Bloodmyst Isle,45.7,86.9,15,0
    .goto Bloodmyst Isle,49.7,86.2,15,0
    .goto Bloodmyst Isle,53.5,75.7,15,0
    .goto Bloodmyst Isle,48.5,66.7,15,0
    .goto Bloodmyst Isle,54.1,67.6,15,0
    .goto Bloodmyst Isle,58.9,61.8,15,0
	>>Despoja un |cRXP_LOOT_Blood Champiñón|r en el suelo
    >>|cRXP_WARN_Estos aparecen en toda la Isla Bruma de Sangre|r
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #optional
    .isOnQuest 9648,9594,9567,9629
	.hs >> Viajar a Avanzada de Sangre
    .cooldown item,6948,>2,1
step
    #completewith next
    .subzone 3584 >> Viaja a Avanzada de Sangre
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >> Entrega la misión El colgante de Aleta Cruel
    .turnin 9629 >> Entrega la misión Aquí te pillo, aquí te marco
    .accept 9574 >> Acepta la misión Víctimas de la corrupción
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Mata a los |cRXP_ENEMY_Corrupted Treants|r. Despójalos para su |cRXP_LOOT_Crystallized Corteza|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Entrega la misión Víctimas de la corrupción
    .target Morae
step
	.goto Bloodmyst Isle,53.319,56.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beega|r
    .target Beega
	.vendor >> |cRXP_WARN_Vendedor y Reparación|r << !Hunter
	.vendor >> |cRXP_BUY_Compra un|r |T134410:0|t[Carcaj medio] |cRXP_WARN_y compra|r |T132382:0|t[Flechas Agudas] << Hunter
    .collect 11362,1 << Hunter
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 9646 >> Acepta la misión SE BUSCA: Garraletal
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .turnin 9594 >> Entrega la misión Signos de la Legión
    .turnin 9567 >> Entrega la misión Conoce a tu enemigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .turnin 9567 >> Entrega la misión Conoce a tu enemigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Embajador Semprepino Olorg|r
    .turnin 9667 >> Entrega la misión Salvar a la princesa Semprepino
    .target Stillpine Ambassador Olorg
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
	.turnin 9641 >> Entrega la misión Fragmentos de cristal irradiado
    .accept 9779 >> Acepta la misión Interceptando el mensaje
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
    .accept 9779 >> Acepta la misión Interceptando el mensaje
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .trainer >> Aprende tus hechizos de clase
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .accept 9580 >> Acepta la misión Las necesidades del oso
    .accept 9643 >> Acepta la misión Parras constrictoras
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >> Entrega la misión La colección de champiñones de Mac'Aree
    .target Maatparm
step
    #completewith next
    .subzone 3591 >> Viaja a las Ruinas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el muerto |cRXP_FRIENDLY_Cartógrafo draenei|r
    .turnin 9620 >> Entrega la misión El equipo de investigación desaparecido
    .accept 9628 >> Acepta la misión Recuperar los datos
    .target Draenei Cartographer
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Mata a los |cRXP_ENEMY_Wrathscale Marauders|r y a las |cRXP_ENEMY_Wrathscale Sorceresses|r. Despójalos para el |cRXP_LOOT_Survey Data Cristal|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9628 >> Entrega la misión Recuperar los datos
    .accept 9584 >> Acepta la misión La segunda muestra
    .turnin 9668 >> Entrega la misión Informar al exarca Admetius
    .target Harbinger Mikolaas
step
	#completewith GrindCheck
	>>Mata a los |cRXP_ENEMY_Sunhawk Spies|r. Despoja la |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_Usa el|r |T134709:0|t[Cristal Pico de minero] |cRXP_WARN_en el|r |cRXP_PICK_Altered Bloodmyst Cristal|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    #label GrindCheck
	.goto Bloodmyst Isle,48.1,47.6
    .xp 15-1200 >> Farmea hasta estar a 1200xp del nivel 15 (11100/12300)
    .mob Sunhawk Spy
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mata a los |cRXP_ENEMY_Sunhawk Spies|r. Despoja la |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
	#completewith Audience
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mensajero Hermesius|r
    >>|cRXP_FRIENDLY_Mensajero Hermesius|r |cRXP_WARN_patrulla por toda Avanzada de Sangre|r
    .accept 9671 >> Acepta la misión Entrega urgente
    .turnin 9671 >> Entrega la misión Entrega urgente
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9584 >> Entrega la misión La segunda muestra
    .accept 9585 >> Acepta la misión La última muestra
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9779 >> Entrega la misión Interceptando el mensaje
    .accept 9696 >> Acepta la misión Traducciones
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
	.turnin 9641 >> Entrega la misión Fragmentos de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132775:0|t[Cristal de Perspicacia] |cRXP_WARN_objeto consumible (Aumenta Intelecto en 5. Dura 30 minutos.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132786:0|t[Cristal de Ferocidad] |cRXP_WARN_objeto consumible (Aumenta poder de ataque en 10. Dura 30 minutos.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    #label Audience
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Interrogadora Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >> Entrega la misión Traducciones
    .accept 9698 >> Acepta la misión Audiencia con el Profeta
step
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mensajero Hermesius|r
    >>|cRXP_FRIENDLY_Mensajero Hermesius|r |cRXP_WARN_patrulla por toda Avanzada de Sangre|r
    .accept 9671 >> Acepta la misión Entrega urgente
    .turnin 9671 >> Entrega la misión Entrega urgente
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.210,59.207
	>>Abre tu |cRXP_PICK_Buzón|r. Despoja |T134332:0|t[|cRXP_LOOT_Una carta del almirante|r]
    .use 24132 >>|cRXP_WARN_Usar|r |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r] |cRXP_WARN_to start the quest|r
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >> Acepta la misión El legado de la Sangre Maldita
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cuidador Topher Loaal|r
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Compra hasta 40|r |T133918:0|t[Pargo de lodo boquilargo] |cRXP_BUY_de él|r << Warrior
    >>|cRXP_BUY_Compra hasta 40|r |T132796:0|t[Melón Jugo] |cRXP_BUY_de él|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Compra hasta 40|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133918:0|t[Pargo de lodo boquilargo] |cRXP_BUY_del vendedor|r << Paladin/Shaman
    .collect 1205,35 << !Warrior !Rogue --Melon Juice (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .accept 9569 >> Acepta la misión Contener la amenaza
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
	.turnin 9641 >> Entrega la misión Fragmentos de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132775:0|t[Cristal de Perspicacia] |cRXP_WARN_objeto consumible (Aumenta Intelecto en 5. Dura 30 minutos.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132786:0|t[Cristal de Ferocidad] |cRXP_WARN_objeto consumible (Aumenta poder de ataque en 10. Dura 30 minutos.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9649 >> Acepta la misión Las lágrimas de Ysera
step
    #completewith next
    .subzone 3598 >> Viaja a la Isla Wyrmscar
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .accept 9687 >> Acepta la misión Restaurar la santidad
    .target Prince Toreth
step
	#completewith next
	>>Despoja las |cRXP_LOOT_Lágrimas de Ysera|r en el suelo
    >>|cRXP_WARN_Se ven como pequeños hongos verdes|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9672 >> Entrega la misión El legado de la Sangre Maldita
    .accept 9674 >> Acepta la misión Los nagas Sangre Maldita
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>Mata a los |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9674 >> Entrega la misión Los nagas Sangre Maldita
    .accept 9682 >> Acepta la misión Los Desesperados...
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>Mata a los |cRXP_ENEMY_Bloodcursed Voyagers|r. Despójalos para obtener sus |cRXP_LOOT_Bloodcursed Almas|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9682 >> Entrega la misión Los Desesperados...
    .accept 9683 >> Acepta la misión El fin de la Sangre Maldita << !Warrior
    .target Captain Edward Hanes
step << !Warrior
    .xp 16-3300 >> Farmea hasta que estés a 3300xp del nivel 16 (10300/13600)
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Despoja las |cRXP_LOOT_Lágrimas de Ysera|r en el suelo
    >>|cRXP_WARN_Se ven como pequeños hongos verdes|r
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << !Warrior
    #completewith Atoph
    .subzone 3612 >> Nada hacia el sur a Bloodcurse Isle
step << !Warrior
    #completewith Atoph
    .goto Bloodmyst Isle,83.58,55.21,20,0
    .goto Bloodmyst Isle,86.26,57.24,20,0
    .goto Bloodmyst Isle,86.90,52.70,20,0
    .goto Bloodmyst Isle,86.061,54.599
    .cast 8386,6477,6478 >> Haz clic en la |cRXP_PICK_Estatua de Reina Azshara|r para invocar al |cRXP_ENEMY_Atoph el Sangre Maldita|r
step << !Warrior
    #label Atoph
    .goto Bloodmyst Isle,85.59,53.42
    >>Mata a |cRXP_ENEMY_Atoph el Sangre Maldita|r
    >>|cRXP_ENEMY_Atoph el Sangre Maldita|r |cRXP_WARN_es nivel 19. Prepárate para usar una Poción de sanación o|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_si es necesario. Omite este paso si no puedes matarlo|r
    .complete 9683,1 --Kill Atoph the Bloodcursed (x1)
    .mob Atoph the Bloodcursed
step
	#completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >> Entrega la misión Las lágrimas de Ysera
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >> Acepta la misión Liga de Expedicionarios, ¿cosa de gnomos?
    .target Prospector Nachlan
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .accept 9604 >> Acepta la misión En alas de un hipogrifo
    .target Laando
step
    #completewith WingsofHippogryph
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Vuela a El Exodar
    .target Laando
step
    #completewith WingsofHippogryph
    .goto The Exodar,73.682,53.701,15 >> Desciende al interior de El Exodar
step
    #label WingsofHippogryph
	.goto The Exodar,57.011,50.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >> Entrega la misión En alas de un hipogrifo
    .accept 9605 >> Acepta la misión El maestro de hipogrifos Stephanos
    .target Nurguni
step << Warlock/Priest/Mage
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante] |cRXP_BUY_de él o busca en la Casa de Subastas una|r |T135144:0|t[Varita mágica superior]
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest/Mage
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante] |cRXP_BUY_a este vendedor|r
    .goto The Exodar,46.386,61.499
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.3173
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Recuerda equipar la|r |T135468:0|t[Varita humeante] |cRXP_WARN_más tarde cuando llegues al nivel 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    .goto The Exodar,53.589,90.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Feera|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Es un artículo de suministro limitado. Omite este paso si no lo tiene|r
    .bronzetube
    .target Feera
    .zoneskip The Exodar,1
step << Warrior/Shaman/Paladin
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Sube por las rampas hacia |cRXP_FRIENDLY_Maestro Maestro Maestro Behomat|r en el piso superior << Warrior
    .goto The Exodar,50.50,81.28,20 >> Sube las rampas hacia |cRXP_FRIENDLY_Handiir|r en el piso superior << Shaman/Paladin
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >> Entrega la misión a Maestro Maestro Maestro Behomat
    .trainer >> Aprende tus hechizos de clase
    .target Behomat
step << Warrior/Shaman/Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Handiir|r
    .train 199 >> Aprende Mazas de 2 manos << Warrior/Shaman
    .train 202 >> Aprende Espadas de 2 manos << Paladin
    .target Handiir
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Kyleen Il'dinare|r
    .turnin 9600 >>Entrega la misión Redención
	.trainer >> Aprende tus hechizos de clase
    .target Jol
step << Warrior/Paladin
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compra un|r |T133046:0|t[Martillo de roca] |cRXP_BUY_de ella o revisa la Casa de Subastas para un arma mejor|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compra un|r |T133046:0|t[Martillo de roca] |cRXP_BUY_de ella|r
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin
    #optional
    +|cRXP_WARN_Equipa el|r |T133046:0|t[Martillo de roca]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .turnin 9461 >> Entrega la misión La llamada del fuego << Shaman
    .accept 9555 >> Acepta la misión La llamada del fuego << Shaman
    .turnin 9698 >> Entrega la misión Audiencia con el Profeta
    .accept 9699 >> Acepta la misión Verdad o mentira
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
	.trainer >> Aprende tus hechizos de clase
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Sal de El Exodar
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .target Stephanos
    .turnin 9605 >> Entrega la misión El maestro de hipogrifos Stephanos
    .accept 9606 >> Acepta la misión Regresa junto a Topher Loaal
step
    .isOnQuest 9606,9699
	.hs >> Viajar a Avanzada de Sangre
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
	.isOnQuest 9606,9699
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Vuela a Avanzada de Sangre
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .turnin -9606 >> Entrega la misión Regresa junto a Topher Loaal
    .target Caregiver Topher Loaal
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9699 >> Entrega la misión Verdad o mentira
    .accept 9700 >> Acepta la misión Disparando magia en la oscuridad
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acepta la misión Fragmentos de cristal irradiado
	.turnin 9641 >> Entrega la misión Fragmentos de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132775:0|t[Cristal de Perspicacia] |cRXP_WARN_objeto consumible (Aumenta Intelecto en 5. Dura 30 minutos.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132786:0|t[Cristal de Ferocidad] |cRXP_WARN_objeto consumible (Aumenta poder de ataque en 10. Dura 30 minutos.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >> Viaja a Axxarien
    >>Mata a los |cRXP_ENEMY_Mutated Constrictors|r. Despójalos por sus |cRXP_LOOT_Thorny Parras constrictoras|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Mata a cualquiera que veas en el camino a Axxarien|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Despoja los |cRXP_LOOT_Corrupted Cristales|r en el suelo
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Mata a |cRXP_ENEMY_Zevrax|r, a |cRXP_ENEMY_Axxarien Shadowstalkers|r y a |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>|cRXP_WARN_Use the|r |T134709:0|t[Cristal Pico de minero] |cRXP_WARN_on the|r |cRXP_PICK_Axxarien Cristal|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Despoja los |cRXP_LOOT_Corrupted Cristales|r en el suelo
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Mata a |cRXP_ENEMY_Zevrax|r, a |cRXP_ENEMY_Axxarien Shadowstalkers|r y a |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Mata a |cRXP_ENEMY_Axxarien Shadowstalkers|r y a |cRXP_ENEMY_Axxarien Hellcallers|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Despoja los |cRXP_LOOT_Corrupted Cristales|r en el suelo
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Mata a los |cRXP_ENEMY_Mutated Constrictors|r. Despójalos por sus |cRXP_LOOT_Thorny Parras constrictoras|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Mata a |cRXP_ENEMY_Garraletal|r. Despójalo para obtener |cRXP_LOOT_Garraletal's Paw|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clopper Zumbibang|r
    .turnin 10063 >> Entrega la misión Liga de Expedicionarios, ¿cosa de gnomos?
    .accept 9548 >> Acepta la misión Equipamiento robado
    .accept 9549 >> Acepta la misión Los artefactos de los Cienonegro
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clopper Zumbibang|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si no lo tiene|r
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Mata a los |cRXP_ENEMY_Blacksilt Seers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Idols|r
    >>Mata a los |cRXP_ENEMY_Blacksilt Warriors|r y a |cRXP_ENEMY_Blacksilt Shorestrikers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Despoja el |cRXP_LOOT_Clopper's Equipo|r en el suelo
    >>|cRXP_WARN_Puede aparecer en cualquiera de los campamentos de Múrloc|r
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Mata a los |cRXP_ENEMY_Blacksilt Seers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Idols|r
    >>Mata a los |cRXP_ENEMY_Blacksilt Warriors|r y a |cRXP_ENEMY_Blacksilt Shorestrikers|r. Despójalos para obtener sus |cRXP_LOOT_Crude Múrloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clopper Zumbibang|r
    .turnin 9548 >> Entrega la misión Equipamiento robado
    .turnin 9549 >> Entrega la misión Los artefactos de los Cienonegro
    .target Clopper Wizbang
step
    .use 23837 >>|cRXP_WARN_Usa la|r |T134269:0|t[Mapa del tesoro deteriorado] |cRXP_WARN_para empezar la misión|r
    .accept 9550 >> Acepta la misión Un mapa con destino desconocido
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Kill |cRXP_ENEMY_Anomalía del Vacío|r and explore the Sun Portal Site
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Mata a los |cRXP_ENEMY_Mutated Constrictors|r. Despójalos por sus |cRXP_LOOT_Thorny Parras constrictoras|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Prioriza |cRXP_ENEMY_Mutated Constrictors|r ya que tendrás tiempo después para terminar con los|r |cRXP_ENEMY_Elder Brown Osos|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Loot the |cRXP_LOOT_Huesos de dragón|r on the ground
    >>|cRXP_WARN_Estos pueden ser difíciles de ver y normalmente se encuentran alrededor de los campamentos pequeños|r
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Haz clic en el |cRXP_PICK_Battered Ancient Libro|r en el suelo
    .turnin 9550 >> Entrega la misión Un mapa con destino desconocido
    .accept 9557 >> Acepta la misión Descifrar el libro
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .turnin 9557 >> Entrega la misión Descifrar el libro
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Presagista Mikolaas|r
    .turnin 9585 >> Entrega la misión La última muestra
    .accept 10064 >> Acepta la misión Habla con la Mano
    .turnin 9646 >> Entrega la misión SE BUSCA: Garraletal
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .accept 9561 >> Acepta la misión Las palabras de Nolkai
    .accept 9632 >> Acepta la misión Aliados inesperados
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    .target Vindicator Boros
    .turnin 9700 >> Entrega la misión Disparando magia en la oscuridad
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132775:0|t[Cristal de Perspicacia] |cRXP_WARN_objeto consumible (Aumenta Intelecto en 5. Dura 30 minutos.)|r << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Recuerdo para entregar tu|r |T134082:0|t[Fragmentos de cristal irradiado] |cRXP_WARN_para el|r |T132786:0|t[Cristal de Ferocidad] |cRXP_WARN_objeto consumible (Aumenta poder de ataque en 10. Dura 30 minutos.)|r << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Kuros|r
    .accept 9703 >> Acepta la misión El Crionúcleo
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .turnin 9643 >> Entrega la misión Parras constrictoras
    .accept 9647 >> Acepta la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9643 >> Entrega la misión Parras constrictoras
    .accept 9647 >> Acepta la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Aalesia|r
    .turnin 9569 >> Entrega la misión Contener la amenaza
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .accept 9578 >> Acepta la misión En busca de Galaen
    .target Morae
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >> Acepta la misión La expedición desaparecida
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges al Cyro-Núcleo|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges al Cyro-Núcleo|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >> Viaja al Cyro-Núcleo
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Haz clic en el |cRXP_FRIENDLY_Cadáver de Galaen|r
    >>|cRXP_WARN_Evita intentar matar muchos |cRXP_ENEMY_Sunhawk Reclaimers|r si es posible mientras te diriges al |cRXP_FRIENDLY_Cadáver de Galaen|r
    .turnin 9578 >> Entrega la misión En busca de Galaen
    .accept 9579 >> Acepta la misión El sino de Galaen
    .accept 9706 >> Acepta la misión El diario de Galaen: El destino del vindicador Saruan
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Mata a los |cRXP_ENEMY_Sunhawk Reclaimers|r. Despójalos para obtener |cRXP_LOOT_Galaen's Amulet|r y sus |cRXP_LOOT_Medical Suministros|r
    >>También puedes despojar los |cRXP_LOOT_Medical Suministros|r en el suelo
	>>|cRXP_WARN_Usa los pilares y estructuras para romper línea si es necesario para evitar sus|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_lanzamientos|r
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.xp 17+12800 >> Farmea hasta los 12800 xp del nivel 17 (12800+/16400)
step
	.isOnQuest 9580
	#completewith GFate
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges a la Avanzada de Sangre|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Ten cuidado con estos mientras te diriges a la Avanzada de Sangre|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >> Viaja a Avanzada de Sangre
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >> Entrega la misión El sino de Galaen
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Kuros|r
    .turnin 9703 >> Entrega la misión El Crionúcleo
    .turnin 9706 >> Entrega la misión El diario de Galaen: El destino del vindicador Saruan
    .accept 9711 >> Acepta la misión Matis el Cruel
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .accept 9748 >> Acepta la misión Agua que no has de beber...
    .accept 9753 >> Acepta la misión Saber es poder
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .trainer >> Aprende tus hechizos de clase
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9753 >> Entrega la misión Saber es poder
    .accept 9756 >> Accept What We Don't Know... (NOT TRANSLATED IN :esMX YET)
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,54.312,54.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_ENEMY_Agente Halcón del Sol capturado|r dentro de la |cRXP_PICK_Makeshift Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9756 >> Entrega la misión Lo que no sabemos
    .accept 9760 >> Acepta la misión El Reposo del Vindicador
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Jorli|r y |cRXP_FRIENDLY_Exploradora Loryi|r
    .turnin 10064 >> Entrega la misión Habla con la Mano
    .accept 10065 >> Acepta la misión Abrirse paso
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >> Acepta la misión Alimañas del vacío
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Vindicadora Corin|r
    .turnin 9760 >> Entrega la misión El Reposo del Vindicador
    .accept 10066 >> Acepta la misión ¡Vaya una maraña de telarañas!
    .accept 10067 >> Acepta la misión Espíritus del agua contaminados
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>|cRXP_WARN_Usa la|r |T134536:0|t[Pistola de bengalas] |cRXP_WARN_en|r |cRXP_ENEMY_Matis el Cruel|r
    >>|cRXP_WARN_This will summon a |cRXP_FRIENDLY_Tracker of the Hand|r which will capture him once his health reaches 50%. Try not to get aggro as |cRXP_ENEMY_Matis the Cruel|r hits very hard|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_ENEMY_Matis el Cruel|r |cRXP_WARN_patrulla una sección grande de la carretera. Su ruta de patrulla está marcada en tu mapa|r
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Mata a los |cRXP_ENEMY_Void Critters|r
    >>|cRXP_WARN_You must kill the |cRXP_ENEMY_Anomalía del Vacío|r to trigger |cRXP_ENEMY_Void Critters|r to spawn|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
    >>|cRXP_WARN_Vigila a estos mientras completes otros objetivos|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Mata a los |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Mata a los |cRXP_ENEMY_Enraged Ravagers|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob +Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Mata a los |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Mata a los |cRXP_ENEMY_Elder Brown Osos|r. Despójalos por sus |cRXP_LOOT_Elder Brown Oso Flank|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Mata a los |cRXP_ENEMY_Royal Azul Flutterers|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicadora Corin|r
    .turnin 10066 >> Entrega la misión ¡Vaya una maraña de telarañas!
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Exploradora Jorli|r
    .turnin 10065 >> Entrega la misión Abrirse paso
    .target +Scout Loryi
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Mata a los |cRXP_ENEMY_Espíritus del agua contaminados|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicadora Corin|r
    .turnin 10067 >> Entrega la misión Espíritus del agua contaminados
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Investigador Cornelius|r
    .accept 9670 >> Acepta la misión ¡Viven! A lo mejor...
    .target Researcher Cornelius
step
	#completewith next
	>>Kill the |cRXP_ENEMY_Criatura enredada|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't aggro you|r (NOT TRANSLATED IN :esMX YET)
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Mata a los |cRXP_ENEMY_Myst Leechers|r, a los |cRXP_ENEMY_Myst Spinners|r y a |cRXP_ENEMY_Zarakh|r en la cima de Amberweb Pasar
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Kill the |cRXP_ENEMY_Criatura enredada|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't aggro you|r (NOT TRANSLATED IN :esMX YET)
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Investigador Cornelius|r
    .turnin 9670 >> Entrega la misión ¡Viven! A lo mejor...
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_Usa el|r |T134870:0|t[Frasco de muestra de agua] |cRXP_WARN_en la base de la cascada|r
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step
    .isOnQuest 9748,9669,9741,9711
    .hs >> Viajar a Avanzada de Sangre
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >> Entrega la misión La expedición desaparecida
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .turnin 9741 >> Entrega la misión Alimañas del vacío
    .turnin 9748 >> Entrega la misión Agua que no has de beber...
    .accept 9746 >> Acepta la misión Los límites del agotamiento << Hunter/Shaman/Mage
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Kuros|r
    .turnin 9711 >> Entrega la misión Matis el Cruel
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >> Entrega la misión Las necesidades del oso
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >> Entrega la misión Sacrificar a los aleteadores
    .target Tracker Lyceon
step << Hunter/Mage
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Mata a los |cRXP_ENEMY_Sunhawk Pyromancers|r y a los |cRXP_ENEMY_Sunhawk Defenders|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Hunter/Mage
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .turnin 9746 >> Entrega la misión Los límites del agotamiento
    .target Vindicator Aesom
step
    #completewith next
    .subzone 3591 >> Viaja a las Ruinas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Haz clic en el |cRXP_PICK_Túmulo de barro|r del suelo
    .turnin 9561 >> Entrega la misión Las palabras de Nolkai
step
    #completewith next
    .subzone 3598 >> Viaja a la Isla Wyrmscar
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .turnin 9687 >> Entrega la misión Restaurar la santidad
    .accept 9688 >> Acepta la misión Entrando en el Sueño
    .target Prince Toreth
step
	#completewith next
    >>Mata a los |cRXP_ENEMY_Veridian Whelps|r y a los |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    #optional
    .isQuestComplete 9683
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9683 >> Entrega la misión El fin de la Sangre Maldita
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Mata a los |cRXP_ENEMY_Veridian Whelps|r y a los |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .turnin 9688 >> Entrega la misión Entrando en el Sueño
    .accept 9689 >> Acepta la misión Tajobuche
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Click the |cRXP_PICK_Pira perenne|r atop the mountain to summon |cRXP_ENEMY_Razormaw|r
    .timer 36,Tajobuche Roleplay
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Mata al |cRXP_ENEMY_Tajobuche|r
    >>|cRXP_ENEMY_Tajobuche|r |cRXP_WARN_es un enemigo élite de nivel 20. Tarda aproximadamente 35 segundos en aterrizar|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Encuentra un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo solo|r
    >>|cRXP_WARN_Recuerda lanzar|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en ti mismo si es necesario|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r |cRXP_WARN_camina alrededor ligeramente|r
    .turnin 9689 >> Entrega la misión Tajobuche
    .target Prince Toreth
step
    #optional
	.abandon 9711 >> Abandona la misión Matis el Cruel si no lo completaste
step
    #optional
	.abandon 9689 >> Abandona la misión Tajobuche si no lo completaste
step << Hunter/Shaman/Mage
    .xp 20 >> Mata enemigos hasta subir al nivel 20
step
	#completewith FlyExo
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Paladin
    #completewith FlyExo
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .trainer >> Aprende tus hechizos de clase
    .target Vindicator Aesom
step
    #label FlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Vuela a El Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Hunter/Priest/Mage/Warrior
    #completewith NewfoundAllies
    .goto The Exodar,73.682,53.701,15 >> Desciende al interior de El Exodar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sulaa|r
    .accept 9502 >> Acepta la misión La llamada del agua
    .trainer >> Aprende tus hechizos de clase
    .target Sulaa
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Clarividente Nobundo|r up the ramp
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Clarividente Nobundo|r
    >>|cRXP_FRIENDLY_Clarividente Nobundo|r |cRXP_WARN_patrols slightly|r
    .turnin 9502 >> Entrega la misión La llamada del agua
    .accept 9501 >> Acepta la misión La llamada del agua
    .target Farseer Nobundo
step << Shaman
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Sal de El Exodar
step << Shaman
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Vuela a Avanzada de Sangre
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >> Viaja al Oculto Arrecife
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acuosa|r bajo el agua
    .turnin 9501 >> Entrega la misión La llamada del agua
    .accept 9503 >> Acepta la misión La llamada del agua
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Mata a los |cRXP_ENEMY_Sunhawk Pyromancers|r y a los |cRXP_ENEMY_Sunhawk Defenders|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Mata a los |cRXP_ENEMY_Espíritus del agua contaminados|r. Despójalos para obtener sus |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acuosa|r bajo el agua
    .turnin 9503 >> Entrega la misión La llamada del agua
    .accept 9504 >> Acepta la misión La llamada del agua
    .target Aqueous
step << Shaman
	#completewith ShamFlyExo
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Shaman
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Aesom|r
    .turnin 9746 >> Entrega la misión Los límites del agotamiento
    .target Vindicator Aesom
step << Shaman
    #label ShamFlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Vuela a El Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vord|r
	.trainer >> Aprende tus hechizos de clase
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Entrena los hechizos de tu mascota
    .target Ganaar
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_de él o busca uno mejor en la Casa de Subastas|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_de él|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +|cRXP_WARN_Equipa la|r |T135139:0|t[Varita ardiente]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Izmir|r
    .trainer >> Aprende tus hechizos de clase
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edirah|r
    .trainer >> Aprende tus hechizos de clase
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >> Aprende |T135756:0|t[Teletransporte a: El Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Compra al menos uno|r |T134419:0|t[Runa de teletransporte] |cRXP_BUY_de ella|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Sube por las rampas hacia |cRXP_FRIENDLY_Maestro Maestro Maestro Behomat|r en el piso superior
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Behomat|r
    .trainer >> Aprende tus hechizos de clase
    .target Behomat
step
    #label NewfoundAllies
	.goto The Exodar,33.8,73.7,15,0 << !Shaman
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cazadora Kella Arconocturno|r
    >>|cRXP_FRIENDLY_Huntress Kella Nightbow|r |cRXP_WARN_is located outside the back entrance of The Exodar|r (NOT TRANSLATED IN :esMX YET)
    .turnin 9632 >> Entrega la misión Aliados Inesperados
    .accept 9633 >> Acepta la misión Camino de Auberdine
    .target Huntress Kella Nightbow
step
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Toma el barco hacia Costa Oscura

--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r abajo
    .home >> Establece tu Piedra de hogar en Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >> Viaja al embarcadero del barco del Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Ahora viajarás a Las Minas de la Muerte|r
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    >>|cRXP_WARN_Alternativamente, puedes verificar la Casa de Subastas pronto para algo mejor o más barato|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .money <1.3559
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equipa la|r |T135329:0|t[Espada de verdugo]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
step
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Salta del final del muelle y nada hacia el punto marcado de la ruta
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utiliza el servicio automático de personaje atascado para ir directamente a Forjaz. Tendrás que cerrar sesión en el lugar, luego navega al menú de ayuda en otro personaje (alternativamente, pega el enlace de desatasco a continuación en tu navegador), luego desplázate hacia abajo hasta autoayuda. Haz clic en tu personaje y muévelo. Si no puedes desatascarlo, omite este paso y nada a lo largo de las montañas hacia Páramos de Poniente
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> |cRXP_WARN_Haz clic aquí para la referencia del vídeo|r
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_Haz clic aquí para el enlace de desatascarse para servidores de EE.UU.|r
    .link https://eu.battle.net/support/en/article/32275 >> |cRXP_WARN_Haz clic aquí para el enlace de desatascarse para servidores de UE|r
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milstaff Ojotrueno|r
    .train 3562 >> Aprende |T135757:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si el sitio web de servicio de personaje atascado no está disponible, nada hacia Páramos de Poniente
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Corre por la costa y dirígete hacia la Colina del Centinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Corre hacia Ventormenta
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia Ventormenta
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage/Druid/Priest
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Paladin/Hunter
    .target Woo Ping
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
	.xp <20,1
    .target Larimaine Purdue
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << !Human
    .fly Westfall >> Vuela a Páramos de Poniente si acabas de venir de Páramos de Poniente, si no corre allá
    .disablecheckbox
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Grindea a los |cRXP_ENEMY_Gnolls|r al sur de Colina Centinela mientras reúnes un grupo para Minas de la Muerte|r
    .subzone 20 >>Una vez que tu grupo esté reunido, viaja a Arroyo de la Luna
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entra a la Ladronera de los Defias con tu grupo
step
.dungeon DM
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_También puedes completar esto dentro de Minas de la Muerte|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Sal de Minas de la Muerte por la salida trasera al este de |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r en lo alto de la Torre
    .train 2138 >> Aprende tus hechizos de clase
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
    .xp <22,1
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19835 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .train 8103 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .train 6192 >> Aprende tus hechizos de clase
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .use 2874 >>|cRXP_WARN_Usa |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r] para iniciar la misión|r
    .accept 373 >> Acepta la misión La carta sin enviar
    .turnin 373 >> Entrega la misión La carta sin enviar
    .accept 389 >> Acepta la misión Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .turnin 389 >> Entrega la misión Bazil Thredd
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r dentro
    .turnin 167 >> Entrega la misión Oh, hermano...
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
    >>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#xprate <1.5
#name 20-21 Costa Oscura (Draenei)
#subgroup Alianza 20-32
#defaultfor Draenei
#next 21-23 Vallefresno (Draenei)

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    .goto Darkshore,37.219,44.227
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r arriba
    .accept 965 >> Acepta la misión La Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
	.turnin 9633 >> Entrega la misión Camino de Auberdine
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
step
    .goto Darkshore,38.83,29.37,10,0
    .goto Darkshore,38.236,28.800
    >>|cRXP_WARN_Entra al barco naufragado Amanecer de Plata por el casco roto en la parte inferior. Asegúrate de tener la barra de respiración llena antes de sumergirte y entrar|r
    >>Despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r del suelo
    .complete 982,1 --Collect Silver Dawning's Lockbox (x1)
step
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.633,27.459
    >>|cRXP_WARN_Entra al barco naufragado Halo de Bruma por el casco roto en la parte inferior. Asegúrate de tener la barra de respiración llena antes de sumergirte y entrar|r
    >>Despoja el |cRXP_LOOT_Arcón del Halo de bruma|r del suelo
    .complete 982,2 --Collect Mist Veil's Lockbox (x1)
step
    #completewith GelkakGyromast
    >>Kill |cRXP_ENEMY_Reef Crawlers|r and |cRXP_ENEMY_Reptador de marea escamado|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acepta la misión La búsqueda de Gyromast
    .target Gelkak Gyromast
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad de los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r |T132152:0|t[Vapulear] . Puedes recibir 200 de daño instantáneamente de sus golpes cuerpo a cuerpo|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Mata |cRXP_ENEMY_Oráculos Brumagris|r y |cRXP_ENEMY_Cazamareas Brumagris|r. Despójalos para obtener la |cRXP_LOOT_Mitad de la llave de Gelkak|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Oráculo Brumagris|r |T136048:0|t[Lightning Bolt] damage and they can also heal with |T136052:0|t[Healing Wave]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad de los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r |T132152:0|t[Vapulear] . Puedes recibir 200 de daño instantáneamente de sus golpes cuerpo a cuerpo|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Mata |cRXP_ENEMY_Zancudos del bosque gigantes|r. Despójalos para obtener la |cRXP_LOOT_Parte superior de la llave de Gelkak|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
step
    .goto Darkshore,55.803,18.291,10,0
    .goto Darkshore,56.655,13.485
    >>Habla con |cRXP_FRIENDLY_El Trillomajareitor 4100|r para empezar la escolta
    >>Escolta al |cRXP_FRIENDLY_El Trillomajareitor 4100|r hasta |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Mata a |cRXP_ENEMY_El Trillomajareitor 4100|r cuando se vuelva hostil
    .skipgossip
    .complete 2078,1
    .mob The Threshwackonator 4100
step
    #label GelkakGyromast
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Entrega la misión La venganza de Gyromast
    .target Gelkak Gyromast
step
    #sticky
    #optional
    .destroy 7442 >> Desecha |T134459:0|t[Gyromast's Llave] ya que no la necesitas (no está en tu anillo de claves)
step
    #loop
    .goto Darkshore,53.51,18.65,0
    .goto Darkshore,51.42,22.04,0
    .goto Darkshore,48.52,20.65,0
    .goto Darkshore,45.50,20.45,0
    .goto Darkshore,53.51,18.65,70,0
    .goto Darkshore,51.42,22.04,70,0
    .goto Darkshore,48.52,20.65,70,0
    .goto Darkshore,45.50,20.45,70,0
    >>Kill |cRXP_ENEMY_Reef Crawlers|r and |cRXP_ENEMY_Reptador de marea escamado|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto Darkshore,55.231,26.508,0
    .goto Darkshore,56.194,27.071,0
    .goto Darkshore,56.047,26.586,0
    .goto Darkshore,55.231,26.508,50,0
    .goto Darkshore,55.369,27.025,50,0
    .goto Darkshore,55.763,26.695,50,0
    .goto Darkshore,55.815,26.972,50,0
    .goto Darkshore,56.194,27.071,50,0
    .goto Darkshore,56.790,27.621,50,0
    .goto Darkshore,57.278,26.311,50,0
    .goto Darkshore,57.046,26.234,50,0
    .goto Darkshore,56.544,26.598,50,0
    .goto Darkshore,56.047,26.586,50,0
    .goto Darkshore,55.743,25.915,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Viaja a la Cueva del Río Fonroca
step
    >>Despoja los |cRXP_LOOT_Boletos rudos|r y una |cRXP_LOOT_Oronja verde|r del suelo
    >>|cRXP_WARN_Quédate en la sección superior. Si no hay una |cRXP_LOOT_Oronja verde|r al final del lado superior, baja y consigue uno de la sala del sur abajo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r lanzan|r |T135836:0|t[Aspersión] |cRXP_WARN_(Ataque a distancia instantáneo: Causa daño a los enemigos cercanos y los lanza hacia atrás) - asegúrate de no estar en una posición donde te puedan tirar del nivel superior de la cueva|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
	.goto Darkshore,55.3,34.0
    .xp 20-3900 >> Farmea hasta tener 16900 de experiencia (3900 para el nivel 20)
step << Hunter
	#completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >> Acepta la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
step << Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Toma el barco hacia Teldrassil
    .zoneskip Darnassus
step << Hunter
.dungeon !BFD
    #optional
    #completewith TrainWeps
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step
.dungeon BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Toma el barco hacia Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    #completewith BFDAccept
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Manados|r y el |cRXP_FRIENDLY_Vigía del Alba Shaedlass|r subiendo las escaleras
    .accept 1199 >> Acepta la misión Cascada Crepuscular
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Acepta la misión Buscando a Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step << Hunter
#ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_WARN_si puedes permitirtelo o busca uno mejor en la Casa de Subastas|r
    >>|cRXP_WARN_Abastécete de|r |T132382:0|t[Flechas afiladas]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
#ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Compra un|r |T135489:0|t[Arco corvo pesado]
    >>|cRXP_WARN_Abastécete de|r |T132382:0|t[Flechas afiladas]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
    .money <0.5643
step << Hunter
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
    #label TrainWeps
    .goto Darnassus,57.56,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .train 264 >> Aprende el uso de Arcos
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
step
    #label BFDAccept
    .goto Darnassus,39.799,92.286,10,0
    .goto Darnassus,38.716,81.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Emisaria Valustraa|r arriba
    .accept 9432 >> Acepta la misión Viaje a Astranaar
    .target Emissary Valustraa
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto Darkshore,35.429,76.566,0
    .goto Darkshore,35.429,76.566,60,0
    .goto Darkshore,36.526,76.603
    >>|cRXP_WARN_Asegúrate de verificar si |cRXP_ENEMY_Viscoso|r ya está en el agua (si alguien ha fallado previamente el encuentro o dejó al |cRXP_ENEMY_Cazador Brumagris|r en la oleada con la que aparece vivo)|r
    >>Mata a los |cRXP_ENEMY_Guerreros Brumagris|r y a los |cRXP_ENEMY_Cazadores Brumagris|r en el campamento
    >>|cRXP_WARN_Muévete a la Fogata en el centro del campamento para iniciar el encuentro con |cRXP_ENEMY_Viscoso|r:|r
    >>|cRXP_WARN_3 oleadas aparecerán del agua, cada una después de matar la oleada anterior: Oleada 1 tiene 3 nivel 12-13 |cRXP_ENEMY_Correcostas Brumagris|r, Oleada 2 tiene 2 nivel 15-16 |cRXP_ENEMY_Guerreros Brumagris|r, y Oleada 3 tiene un nivel 19 |cRXP_ENEMY_Viscoso|r y un nivel 16-17 |cRXP_ENEMY_Cazador Brumagris|r. Puedes moverte lejos de la Fogata para evitar atraer la siguiente oleada|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto Darkshore,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    .goto Darkshore,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Esto iniciará una escolta. Es posible que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .accept 731,1 >> Acepta la misión El prospector despistado
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    .complete 731,1
    .isOnQuest 731
    .target Prospector Remtravel
step
    #optional
    #completewith next
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
step
    #optional
    #sticky
    .destroy 5251 >> Descarta la |T134715:0|t[Ampolla de adivinación], ya que ya no la necesitas
step
    .goto Darkshore,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
    .target Therylune
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#name 21-23 Vallefresno (Draenei)
#subgroup Alianza 20-32
#defaultfor Draenei
#next 23-24 Los Humedales;24-27 Redridge/Bosque del Ocaso

step
#xprate >1.49
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
	.turnin 9633 >> Entrega la misión Camino de Auberdine
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
    .zoneskip Darkshore,1
step
#xprate >1.49
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .accept 10752 >> Acepta la misión A Vallefresno
    .target Thundris Windweaver
    .zoneskip Darkshore,1
step
#xprate >1.49
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r
    .accept 1275 >> Acepta la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
    .zoneskip Darkshore,1
step
#xprate >1.49
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    .goto Ashenvale,28.929,14.485
    .zone Ashenvale >> Viaja al sur a Vallefresno
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    .accept 970 >> Acepta la misión La Torre de Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acepta la misión Cabello de Bathran
step
#xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Mata a los |cRXP_ENEMY_Cultores de la Facción Oscura|r, |cRXP_ENEMY_Adeptos de la Facción Oscura|r, |cRXP_ENEMY_Déspotas de la Facción Oscura|r y |cRXP_ENEMY_Excavadores de la Facción Oscura|r. Despójalos para obtener su |cRXP_LOOT_Gema de alma resplandeciente|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Parecen pequeños sacos marrones. Pueden ser difíciles de ver|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
    .accept 973 >> Acepta la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.67,48.83
    .subzone 415 >> Viaja a Astranaar
step
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
    .target Shindrell Swiftfire
step
    #optional
    .isOnQuest 9432
    .goto Ashenvale,34.894,49.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicadora Palanaar|r
    .turnin 9432 >> Entrega la misión Viaje a Astranaar
    .target Vindicator Palanaar
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_BUY_del vendedor|r
	.collect 922,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #sticky
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 10752 >> Entrega la misión A Vallefresno
    .accept 1054 >> Acepta la misión Matanza selectiva
    .accept 991 >> Acepta la misión La limpieza de Raene
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
    .subzoneskip 415,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
    .target Pelturas Whitemoon
step
.dungeon WC
    #completewith TravelRatchet
    +Comienza a buscar un grupo para Cuevas de los Lamentos mientras completas los siguientes dos pasos. Pronto te dirigirás a The Barrens para completar Cuevas de los Lamentos
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mata a |cRXP_ENEMY_Dal Zarpasangrante|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Dal Zarpasangrante|r |cRXP_WARN_patrulla el Poblado Piel de Cardo|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Despoja la |cRXP_LOOT_Lágrima de Elune|r del suelo
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Viaja a Trinquete en Los Baldíos. Sigue la flecha para evitar a los |cRXP_ENEMY_Guardas de Los Baldíos|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la Ruta de Vuelo de Ratchet
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Operador de grúa Pelardo|r
    .accept 959 >> Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994
    .goto 1414/1,-2003.0622,-830.7456,20 >> Viaja a las Cuevas de los Lamentos. Sube a la montaña, luego cae en la cueva oculta encima de la entrada de las Cuevas de los Lamentos. Sigue la Flecha para llegar a |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Acepta la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Acepta la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    >>|cRXP_WARN_Esto se puede completar DENTRO y FUERA de Cuevas de los Lamentos|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Mata al |cRXP_ENEMY_Loco Magglish|r. Despójalo para obtener el |cRXP_LOOT_Oporto con 99 años de antigüedad|r
    >>|cRXP_ENEMY_Loco Magglish|r |cRXP_WARN_puede aparecer en varios lugares|r
    >>|cRXP_WARN_Esta misión se completa FUERA de Cuevas de los Lamentos|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Entra en Las Cuevas de los Lamentos
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Mata a |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r y |cRXP_ENEMY_Lady Anacondra|r luego habla con el |cRXP_FRIENDLY_Discípulo de Naralex|r al inicio de la instancia para comenzar su escolta
    >>Escolta al |cRXP_FRIENDLY_Discípulo de Naralex|r a través de Cuevas de los Lamentos y completa el ritual del despertar
    >>Mata a |cRXP_ENEMY_Mutanus el Devorador|r. Despójalo para obtener el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r]
    >>|cRXP_WARN_Usa el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r] para comenzar la misión|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Acepta la misión El fragmento resplandeciente
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Mata a todo tipo de criaturas |cRXP_ENEMY_Descarriadas|r. Despójalas para obtener sus |cRXP_LOOT_Pellejos descarriados|r
    >>|cRXP_WARN_Esto se puede completar DENTRO y FUERA de Cuevas de los Lamentos|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Viaja a Trinquete. Entregarás las misiones situadas sobre Cuevas de los Lamentos pronto
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Operador de grúa Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Asciende la montaña empinada encima de las Cuevas de los Lamentos. Sigue la Flecha
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala Viento Sabio|r
    .turnin 6981 >> Entrega la misión El fragmento resplandeciente
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Déjate caer en la cueva oculta encima de la entrada de las Cuevas de los Lamentos. Sigue la Flecha para llegar a |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .zoneskip Ashenvale
step
    .goto Ashenvale,46.37,46.38
    >>Despoja la |cRXP_LOOT_Lágrima de Elune|r del suelo
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mata a |cRXP_ENEMY_Dal Zarpasangrante|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r
    >>|cRXP_ENEMY_Dal Zarpasangrante|r |cRXP_WARN_patrulla el Poblado Piel de Cardo|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >> Viaja a Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .turnin 1054 >> Entrega la misión Matanza selectiva
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Entrega la misión Lágrima de Elune
    .timer 17,Lágrima de Elune "Roleplay"
    .accept 1034 >> Acepta la misión Las Ruinas del Polvo Estelar
step << Shaman
    #completewith next
    >>Despoja los |cRXP_PICK_Arbustos cubiertos de polvo estelar|r para obtener el |cRXP_LOOT_Puñado de Polvo estelar|r
    >>|cRXP_WARN_Sus puntos de aparición están dispersos por toda la isla|r
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >> |cRXP_WARN_Usa la|r |T132825:0|t[Bota vacía] |cRXP_WARN_en la pequeña fuente de las Ruinas de Polvo estelar|r
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>Despoja los |cRXP_PICK_Arbustos cubiertos de polvo estelar|r para obtener el |cRXP_LOOT_Puñado de Polvo estelar|r
    >>|cRXP_WARN_Sus puntos de aparición están dispersos por toda la isla|r
    .complete 1034,1
step
#xprate <1.5
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Ve a la base de la montaña
    .goto Ashenvale,31.21,61.60,15 >>Corre directamente al norte mientras escalas la montaña
step
#xprate <1.5
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Mata a |cRXP_ENEMY_Ilkrud Magthrull|r. Despójalo para obtener su |cRXP_LOOT_Escrito|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_lanzará|r |T136221:0|t[Guardianes de Ilkrud] |cRXP_WARN_que es un lanzamiento de 5 segundos e invocará 2 Abisarios. Detén este lanzamiento si puedes|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
#xprate <1.5
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Entrega la misión La fuga de Therylune
	.target Therysil
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >> Entrega la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver de Teronis|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >> Entrega la misión La limpieza de Raene
    .accept 1023 >> Acepta la misión La limpieza de Raene
step
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Mata a los |cRXP_ENEMY_Múrlocs Gapo Salino|r. Despójalos para obtener la |cRXP_LOOT_Gema resplandeciente|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acepta la misión La estatuilla antigua
    .target Talen
step
    #completewith AncientStatuette
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    >>|cRXP_WARN_No te desvíes para completar esto aún|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Despoja la |cRXP_LOOT_Estatuilla antigua|r del suelo
    .complete 1007,1
step
    #label AncientStatuette
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Entrega la misión La estatuilla antigua
    .accept 1009 >> Acepta la misión Ruuzel
step
    #completewith next
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    .goto Ashenvale,6.528,13.361
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Comienza a buscar un grupo para Cavernas de Brazanegra mientras completas los siguientes pasos. Pronto estarás dentro de Cavernas de Brazanegra
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Entrega la misión Ruuzel
	.target Talen
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Farmea a los |cRXP_ENEMY_Naga|r mientras reúnes un grupo para BFD. Ve a BFD una vez que tengas un grupo.
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Viaja a Cavernas de Brazanegra
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Mata |cRXP_ENEMY_Pícaros Malarraíz|r, |cRXP_ENEMY_Sátiros Malarraíz|r, |cRXP_ENEMY_Oráculos Brazanegra|r y |cRXP_ENEMY_Sacerdotisas de las mareas Brazanegra|r. Despójalos para obtener los |cRXP_LOOT_Bulbos raquídeos corruptos|r
    >>|cRXP_WARN_También puedes despojar los |cRXP_LOOT_Bulbos raquídeos corruptos|r una vez dentro de la Instancia|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Dirígete al portal de la instancia de Cavernas de Brazanegra. Entra en la instancia
    >>|cRXP_WARN_Comprueba si alguien en tu grupo puede compartirte la misión "Conocimiento en las Cavernas" desde Ironforge|r
step
.dungeon BFD
    #completewith Kelris
    >>Mata |cRXP_ENEMY_Nagas|r y |cRXP_ENEMY_Sátiros|r. Despójalos para obtener sus |cRXP_LOOT_Bulbos raquídeos corruptos|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Abre el |cRXP_PICK_Cofre de hierro|r bajo el agua cerca de la zona con las tortugas. Despójalo para obtener el |cRXP_LOOT_Manuscrito de Lorgalis|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Thaelrid|r
    .turnin -1198 >> Entrega la misión Buscando a Thaelrid
    .accept 1200 >> Acepta la misión La vileza de Brazanegra
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Mata a todos los |cRXP_ENEMY_Martillo Crepuscular|r. Despójalos para obtener los |cRXP_LOOT_Colgantes Crepuscular|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Mata al |cRXP_ENEMY_Señor Crepuscular Kelris|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Mata a todos los |cRXP_ENEMY_Martillo Crepuscular|r. Despójalos para obtener los |cRXP_LOOT_Colgantes Crepuscular|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Mata |cRXP_ENEMY_Nagas|r y |cRXP_ENEMY_Sátiros|r. Despójalos para obtener sus |cRXP_LOOT_Bulbos raquídeos corruptos|r
    >>Si aún no has completado esta misión todavía, haz clic en el altar al final de la mazmorra para teletransportarte a la entrada. Los enemigos de fuera de la instancia también pueden soltarlo.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    #completewith ZoramStrandTurnin
    .subzone 415 >> Viaja a Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
	.target Raene Wolfrunner
    .turnin 1023 >> Entrega la misión La limpieza de Raene
step
    #optional
    #sticky
    .destroy 5505 >> Destruye el |T133741:0|t[Diario de Teronis]. Ya no lo necesitas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Entrega la misión Las Ruinas del Polvo Estelar
step
    #label ZoramStrandTurnin
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
	.target Shindrell Swiftfire
    .turnin 1008 >> Entrega la misión La Ensenada de Zoram
step
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Vuela a Costa Oscura
    .target Daelyshia
    .zoneskip Ashenvale,1
step
#xprate <1.5
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4740 >> Entrega la misión SE BUSCA: ¡Viscoso!
    .isQuestComplete 4740
step
.dungeon BFD
#xprate <1.5
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
.dungeon !BFD
#xprate <1.5
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado << !Hunter
    .target Archaeologist Hollee
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 1275 >> Entrega la misión Investigaciones acerca de la corrupción
    .target Gershala Nightwhisper
step
.dungeon BFD << !Hunter
    .isOnQuest 1199,1200 << !Hunter
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
step << !Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >> Toma el barco hacia Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD << !Hunter
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << !Hunter
.dungeon !BFD
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step
#xprate <1.5
    .isOnQuest 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
step
#xprate <1.5
    .isQuestTurnedIn 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >> Acepta la misión El prospector despistado
step << Priest
    .goto 1457,37.903,82.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jandria|r
    .trainer >> Aprende tus hechizos de clase
    .target Jandria
step << Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darnath Rugefilo|r
    .trainer >> Aprende tus hechizos de clase
    .target Darnath Bladesinger
    .zoneskip Darnassus,1
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Manados|r subiendo las escaleras
    .turnin 1199 >> Entrega la misión Cascada Crepuscular
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vigía del Alba Selgorm|r subiendo las escaleras
    .turnin 1200 >> Entrega la misión La vileza de Brazanegra
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << Hunter
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Aprende tus hechizos de clase
    .target Jocaste
    .zoneskip Darnassus,1
step
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Toma el barco al Puerto de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +|cRXP_WARN_Comienza a buscar un grupo para Castillo de Colmillo Oscuro. Pronto irás a Bosque de Argénteos para explorar Castillo de Colmillo Oscuro|r
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .accept 288 >> Acepta la misión La Tercera Flota
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    .home >> Establece tu Piedra de hogar en el Puerto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    >>|cRXP_BUY_Compra un|r |T132792:0|t[Cántaro de hidromiel enano]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Sube las escaleras hacia el |cRXP_FRIENDLY_Arqueólogo Gargavino|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Gargavino|r subiendo las escaleras
    .target Archaeologist Flagongut
    .turnin 942 >> Entrega la misión El prospector despistado
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Contramaestre Fistimos|r
    .turnin 288 >> Entrega la misión La Tercera Flota
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Mata repetidamente |cRXP_ENEMY_Gnolls Pellejomusgo|r mientras buscas grupo para Castillo de Colmillo Oscuro
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>No hay misiones para Castillo de Colmillo Oscuro. Tendrás que correr desde Los Humedales hasta el Bosque de Argénteos. Asegúrate de permanecer en el camino mientras atraviesas las Tierras Altas de Arathi, y ten cuidado con la |cRXP_ENEMY_Mensajera Renegada|r
    >>|cRXP_WARN_No necesitas conseguir la ruta de vuelo de Tierras Altas de Arathi todavía|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Consigue la Ruta de Vuelo de Costasur
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Entra en el Castillo de Colmillo Oscuro
step
#xprate >1.49
.dungeon SFK
    +No hay misiones para Castillo de Colmillo Oscuro
    >>Completa el Castillo de Colmillo Oscuro. Sal cuando hayas terminado
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Usa tu Piedra de hogar para ir al Puerto de Menethil
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step << !Draenei
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
step << Draenei
#xprate >1.49
    .goto Wetlands,53.74,70.33,30,0
    .goto Wetlands,48.17,67.49,30,0
    .goto Loch Modan,25.11,8.99,20 >>|cRXP_WARN_Travel through the Dun Algaz tunnel to Loch Modan|r (NOT TRANSLATED IN :esMX YET)
    .zoneskip Loch Modan --Completes if you run to Loch
step << skip --logout skip Draenei
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Ve a la cueva en la base de la presa en el este de Los Humedales
	.zone Loch Modan >> Desconéctate encima de las setas en el fondo de la cueva.
    >>Cuando vuelvas a conectarte, esto te teletransportará a Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_HAZ CLIC AQUÍ para ver una referencia|r
step << Draenei
#xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step << Draenei
#xprate >1.49
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_Comienza a quitarte tu equipo mientras corres hacia Dun Morogh|r
    .deathskip >> aggro the |cRXP_ENEMY_Scarred Crag Boars|r to die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r once you are in Dun Morogh (NOT TRANSLATED IN :esMX YET)
    .mob Scarred Crag Boar
step << skip --logout skip Draenei
#xprate >1.49
	>>Entra en la cueva Trogg del sureste. Realiza un "logout skip"
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver el vídeo de referencia|r
	.zone Ironforge >> Realiza un "logout skip" o viaja a Forjaz
step << Draenei
#xprate >1.49
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Loslor Rudge|r no tiene uno|r
	.target Loslor Rudge
    .bronzetube
step << Draenei
#xprate >1.49
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >> Viaja a Forjaz
step << Draenei
#xprate >1.49
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step << Draenei
#xprate >1.49
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Toma el tranvía a Ventormenta
]])
