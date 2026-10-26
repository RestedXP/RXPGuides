if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
--TODO: skip the furbolg quests if xp rate is greater than 1x
RXPGuides.RegisterGuide([[
<< Alliance
#name 1-10 Isla Bruma Azur
#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#defaultfor Draenei
#next 10-18 Costa Oscura
step
    .goto Azuremyst Isle,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >> Acepta la misión ¡Has sobrevivido!
    .target Megelon
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >> Entrega la misión ¡Has sobrevivido!
    .accept 9280 >> Acepta la misión Recargar los cristales de sanación
    .target Proenitus
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    >>Mata |cRXP_ENEMY_Polillas del valle|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >> Entrega la misión Recargar los cristales de sanación
    .accept 9409 >> Acepta la misión Entrega urgente
    .target Proenitus
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r
    .accept 10302 >> Acepta la misión Mutaciones volátiles
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Mata a las |cRXP_ENEMY_Mutaciones volátiles|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob Volatile Mutation
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
    #loop
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Mata a los |cRXP_ENEMY_Mutated Enraizar Lashers|r. Despójalos para obtener su |cRXP_LOOT_Muestra de azotador|r
    >>Despoja las |cRXP_LOOT_Flores corruptas|r del suelo
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step << cata Priest/Shaman
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-470 >>Sube al nivel 4 hasta que te falten 470 XP (930/1400)
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
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vende la basura
    .target Aurok
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla un poco|r
    .turnin 9409 >> Entrega la misión Entrega urgente
    .accept 9283 >> Acepta la misión ¡Rescata a los supervivientes!
    .accept 26970 >> Acepta la misión Ayudando a los heridos << cata Priest
    .accept 26970 >> Acepta la misión Ayudando a los heridos << !cata Priest
    .train 2061 >> Aprende |T135907:0|t[Sanación relámpago] << cata Priest
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor] << cata Priest
    .target Zalduun
step << Priest cata
    .goto Azuremyst Isle,80.32,48.30,10,0
    .goto Azuremyst Isle,80.12,49.23
    >>|cRXP_WARN_Lanza|r |T135907:0|t[Sanación relámpago] |cRXP_WARN_5 veces sobre un |cRXP_FRIENDLY_Draenei herido|r a tu lado|r
    .complete 26970,1 -- Heal Injured Draenei
    .target Injured Draenei
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla un poco|r
    .turnin 26970 >> Entrega la misión Ayudando the Herido
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valaatu|r
    .accept 26968 >> Acepta la misión Misiles Arcanos << cata
    .accept 26968 >> Acepta la misión Nova de Escarcha << !cata
	.train 5143 >> Aprende |T136096:0|t[Misiles Arcanos] << cata
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_puede patrullar un poco|r
    .accept 26966 >> Acepta la misión El poder de la Luz
    .train 20154 >> Aprende |T135960:0|t[Sello de rectitud] << cata
	.train 20271 >> Aprende |T135959:0|t[Sentencia] << cata
    .target Aurelon
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kore|r
    .accept 26958 >> Acepta la misión Tu primera lección
	.train 100 >> Aprende |T132337:0|t[Cargar] << cata
    .target Kore
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Firmanvaar|r
    .accept 26969 >> Acepta la misión Golpe primigenio
    .train 8075 >> Aprende |T136023:0|t[Tótem Fuerza de la tierra] << cata
    .train 73899 >> Aprende |T460956:0|t[Golpe primigenio] << cata
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keilnei|r
	.accept 26963 >> Acepta la misión Afinando tu puntería
    .train 56641 >> Aprende |T132213:0|t[Vigía del pozo Solanian] << cata
    .target Keilnei
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
    >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre un|r |cRXP_FRIENDLY_Draenei Superviviente|r|cRXP_WARN_. Están dispersos por toda la zona inicial|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Haz clic en el |cRXP_PICK_Cristal de Poder Irradiado|r en el lago
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Canaliza el|r |T132775:0|t[Cristal inoculador] |cRXP_WARN_en |cRXP_ENEMY_Nestlewood Owlkins|r durante 4 segundos|r
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
	.use 22962 >>|cRXP_WARN_Canaliza el|r |T132775:0|t[Cristal inoculador] |cRXP_WARN_en |cRXP_ENEMY_Nestlewood Owlkins|r durante 4 segundos|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
	#completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Botánica Taerix|r
    .turnin 9294 >> Entrega la misión Sanar el lago
    .target Botanist Taerix
step << Mage
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_sobre el |cRXP_ENEMY_Muñeco de Entrenamiento|r hasta que obtengas un|r |T135731:0|t[Arcano Missles!] |cRXP_WARN_proc, luego lanza|r |T136096:0|t[Misiles Arcanos]|cRXP_WARN_. Repite esto dos veces|r
    >>|cRXP_WARN_Lanza|r |T135848:0|t[Vigía del pozo Solanian] |cRXP_WARN_sobre el |cRXP_ENEMY_Muñeco de Entrenamiento|r. Repite esto dos veces|r
    .complete 26968,1 << cata -- Practice Arcane Missiles (1)
    .complete 26968,2 << !cata -- Practice Frost Nova (1)
    .mob Training Dummy
step << Shaman
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lanza|r |T460956:0|t[Golpe primigenio] |cRXP_WARN_sobre el |cRXP_ENEMY_Muñeco de Entrenamiento|r 3 veces|r
    .complete 26969,1 << cata -- Practice Primal Strike (1)
    .complete 26969,2 << !cata -- Practice Primal Strike (1)
    .mob Training Dummy
step << Hunter
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lanza|r |T132213:0|t[Disparo firme] |cRXP_WARN_sobre el |cRXP_ENEMY_Muñeco de Entrenamiento|r 5 veces|r
    .complete 26963,1 << cata -- Practice Steady Shot (1)
    .complete 26963,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Warrior
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lanza|r |T132337:0|t[Cargar] |cRXP_WARN_sobre el|r |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 26958,1 << cata -- Practice Charge (1)
    .complete 26958,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Paladin
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lanza|r |T135960:0|t[Sello de rectitud] |cRXP_WARN_seguido de|r |T135959:0|t[Sentencia] |cRXP_WARN_sobre el|r |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 26966,1 << cata -- Practice Charge (1)
    .complete 26966,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Priest !cata
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Lanza|r |T136207:0|t[Palabra de las Sombras: dolor] |cRXP_WARN_sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r 5 veces|r
    .complete 26970,2 -- Shadow Word: Pain (5)
    .mob Training Dummy
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurok|r
	.vendor >> Vende la basura
    .target Aurok
step
    .isQuestComplete 9283
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla un poco|r
    .turnin 9283 >> Entrega la misión ¡Rescata a los supervivientes!
    .target Zalduun
step << !cata Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla un poco|r
    .turnin 26970 >> Entrega la misión Aprender la palabra
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valaatu|r
    .turnin 26968 >> Entrega la misión Misiles Arcanos << cata
    .turnin 26968 >> Entrega la misión Vigía del pozo Solanian << !cata
    .target Valaatu
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 26969 >> Entrega la misión Golpe primigenio
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keilnei|r
	.turnin 26963 >> Gira en Afinando tu puntería
    .target Keilnei
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kore|r
    .turnin 26958 >> Gira en Tu primera lección
    .target Kore
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_puede patrullar ligeramente|r
    .turnin 26966 >> Gira en El poder de la Luz
    .target Aurelon
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
    >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un|r |cRXP_FRIENDLY_Draenei Superviviente|r|cRXP_WARN_. Están dispersos por toda la zona de inicio|r
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
    >>Mata a |cRXP_ENEMY_Perita Candress|r. Despójala para obtener |T132319:0|t[|cRXP_LOOT_Planes de los elfos de sangre|r]
    .use 24414 >>|cRXP_WARN_Usa los|r |T132319:0|t[|cRXP_LOOT_Planes de los elfos de sangre|r] |cRXP_WARN_para iniciar la misión|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >> Acepta la misión Planes de los elfos de sangre
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_Lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_en un|r |cRXP_FRIENDLY_Draenei Superviviente|r|cRXP_WARN_. Están dispersos por toda la zona de inicio|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
	#completewith BloodElfSpy
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #loop
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
step << Mage cata
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valaatu|r
	.train 2136 >> Aprende |T135807:0|t[Explosión de Fuego]
    .target Valaatu
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulla ligeramente|r
    .train 17 >> Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Zalduun
step << Paladin cata
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_puede patrullar ligeramente|r
	.train 465 >> Aprende |T135893:0|t[Aura de devoción]
    .target Aurelon
step << Warrior cata
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kore|r
	.train 34428 >> Aprende |T132342:0|t[Ataque de la victoria]
    .target Kore
step << Shaman cata
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Firmanvaar|r
	.train 8042 >> |T136026:0|t[Choque de tierra]
    .target Firmanvaar
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
    .goto Azuremyst Isle,61.87,41.62,60 >> |cRXP_WARN_Nada río arriba|r
    .use 23654 >>|cRXP_WARN_Usa la|r |T134325:0|t[Rojo de pesca draenei] |cRXP_WARN_en|r |cRXP_PICK_Bancos de Pargo rojo|r |cRXP_WARN_que ves en el camino. Omite este paso cuando llegues al final del río, lo completarás más adelante|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Busca una|r |cRXP_FRIENDLY_Joven draenei|r
    >>|cRXP_WARN_Mientras estén en combate, lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ellos, luego acepta la misión|r
	.accept 9612 >> Acepta la misión ¡Gracias de corazón!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Mata a los |cRXP_ENEMY_Cachorros de acechador nocturno infectados|r. Despójalos para obtener un |T134072:0|t[|cRXP_LOOT_Cristal con resplandor tenue|r]
    .use 23678 >>|cRXP_WARN_Usa el|r |T134072:0|t[|cRXP_LOOT_Cristal con resplandor tenue|r] |cRXP_WARN_para iniciar la misión|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >> Acepta la misión Extraños hallazgos
    .mob Infected Nightstalker Runt
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Muere cerca del estanque junto a la montaña|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >> Viaja a la Avanzada Azul
--not sure what the deal with weapons are
step << Shaman
    .goto Azuremyst Isle,49.577,53.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    +Equipa la |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .goto Azuremyst Isle,48.960,51.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Dulvi
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Anacoreta Fateema|r
    .accept 9463 >> Acepta la misión Propiedades curativas
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
	.turnin 9612 >> Gira en ¡Gracias de corazón!
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
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Aprende |T136052:0|t[Ola de sanación]
    .target Tuluun
    .xp <7,1
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Técnico Dyvuun|r
    .turnin 9313 >> Entrega la misión Viaje a la Avanzada Azur
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cuidadora Chellan|r
    .turnin 9314 >> Entrega la misión Un mensaje de la Avanzada Azur
    .accept 9603 >>Acepta la misión Camas, vendas y algo más
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Cuidadora Chellan|r
    .home >> Establece tu Piedra de Hogar en la Avanzada Azul
    .target Caregiver Chellan
step
    .goto Azuremyst Isle,49.67,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldaan|r
    .turnin 9603 >>Entrega la misión Camas, vendas y algo más
    .target Zaldaan
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Aprende |T135920:0|t[Luz Sagrada]
    .target Tullas
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Acepta la misión Ayudar a Tavara
    .train 588 >> Aprende |T135926:0|t[Fuego interno]
    .target Guvan
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >> Acepta la misión Ayudar a Tavara
    .target Guvan
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Ruada
    .xp <7,1
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .train 2973 >> Aprende |T132223:0|t[Golpe de raptor]
    .target Acteon
step
	#completewith level8
    >>|cRXP_WARN_Estate atento a un|r |cRXP_FRIENDLY_Joven draenei|r
    >>|cRXP_WARN_Mientras combaten, lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ellos, luego acepta la misión|r
	.accept 9612 >> Acepta la misión ¡Gracias de corazón!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Mata a los |cRXP_ENEMY_Root Trappers|r. Despoja sus |cRXP_LOOT_Vines|r
    >>Mata a los |cRXP_ENEMY_Moongraze Stags|r. Despoja sus |cRXP_LOOT_Lomos|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    >>|cRXP_WARN_Lanza|r |T135907:0|t[Sanación relámpago] |cRXP_WARN_sobre|r |cRXP_FRIENDLY_Tavara|r
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
step << Warrior/Rogue/Paladin
    .goto Azuremyst Isle,46.355,71.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Herrera Calypso|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Paladin
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Despoja la |cRXP_LOOT_Nautical Mapa|r en la pequeña jaula
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Despoja la |cRXP_LOOT_Nautical Compass|r en la pequeña caja
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Mata a los |cRXP_ENEMY_Skittering Crawlers|r. Despoja sus |cRXP_LOOT_Crawler Carne|r
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
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9530 >> Acepta la misión Hay un traidor
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
    >>Mata a los |cRXP_ENEMY_Root Trappers|r. Despoja sus |cRXP_LOOT_Vines|r
    >>Mata a los |cRXP_ENEMY_Moongraze Stags|r. Despoja sus |cRXP_LOOT_Lomos|r
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
    >>|cRXP_WARN_Intenta terminar cerca de Vigilia del Azur|r
step
	#completewith next
    .goto Azuremyst Isle,50.43,63.70
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Omite este paso si ya estás cerca de Vigilia del Azur|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >> Acepta la misión La gran cacería lunar
    .turnin 9454 >> Entrega la misión La gran cacería lunar
    .accept 10324 >> Acepta la misión La gran cacería lunar
    .target Acteon
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .train 5116 >> Aprende |T135860:0|t[Disparo de conmoción]
    .train 82243 >> Aprende |T132269:0|t[Parar]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Fateema|r y |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >> Entrega la misión Propiedades curativas
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >> Acepta la misión La alternativa a la alternativa
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step << Shaman cata
    .train 331,1
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Aprende |T136052:0|t[Ola de sanación]
    .train 324 >> Aprende |T136051:0|t[Escudo de relámpagos]
    .target Tuluun
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .train 324 >> Aprende |T136051:0|t[Escudo de relámpagos]
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Aprende |T135920:0|t[Luz Sagrada]
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >> Entrega la misión Ayudar a Tavara
    .trainer >> Aprende tus hechizos de clase
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semid|r
    .trainer >> Aprende tus hechizos de clase
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Ruada
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
	.use 23818 >>|cRXP_WARN_Usa el|r |T133741:0|t[Manual de idioma fúrbolg de Semprepino]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Akida|r
    .turnin 9538 >> Entrega la misión Aprendizaje de idiomas
    .accept 9539 >> Acepta la misión El Tótem de Coo
    .target Totem of Akida
step
	#completewith AncientRelics
    >>|cRXP_WARN_Estate atento a un|r |cRXP_FRIENDLY_Joven draenei|r
    >>|cRXP_WARN_Mientras combaten, lanza|r |T135923:0|t[Ofrenda de los naaru] |cRXP_WARN_sobre ellos, luego acepta la misión|r
	.accept 9612 >> Acepta la misión ¡Gracias de corazón!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Mata a los |cRXP_ENEMY_Infected Acechador nocturno Cachorro|r
	>>Mata a los |cRXP_ENEMY_Moongraze Bucks|r. Despoja a los para obtener sus |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Coo|r
    .turnin 9539 >> Gira en El Tótem de Coo
    .accept 9540 >> Acepta la misión El Tótem de Tikti
    .target Totem of Coo
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >> |cRXP_WARN_Desciende cuidadosamente por el lateral de la montaña|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Despoja los |cRXP_LOOT_Azure Snapdragons|r en el suelo
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Tikti|r
    .turnin 9540 >> Gira en El Tótem de Tikti
    .accept 9541 >> Acepta la misión El Tótem de Yor
    .timer 30,El Tótem de Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >> |cRXP_WARN_Sigue|r |cRXP_FRIENDLY_Antepasado Semprepino Tikti|r|cRXP_WARN_. Te dará el buff|r |T132107:0|t[Abrazo de la serpiente] |cRXP_WARN_, que otorga un aumento del 150% en la velocidad de nado y respiración acuática|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Usa el|r |T134325:0|t[Draenei Pesca Rojo] |cRXP_WARN_en|r |cRXP_PICK_Bancos de Pargo rojo|r
    >>|cRXP_WARN_Si aparece un |cRXP_ENEMY_Múrloc|r fuera del agua, ¡nada rápidamente! Lanzar hechizos hostiles causará que pierdas el|r |T132107:0|t[Abrazo de la serpiente] |cRXP_WARN_Potenciación|r
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
    .turnin 9541 >> Gira en El Tótem de Yor
    .accept 9542 >> Acepta la misión El Tótem de Vark
    .timer 71,El Tótem de Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >> |cRXP_WARN_Sigue|r |cRXP_FRIENDLY_Antepasado Semprepino Yor|r|cRXP_WARN_. Te dará el buff|r |T132142:0|t[Sombra del bosque] |cRXP_WARN_, que otorga velocidad de movimiento aumentada e invisibilidad|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >> |cRXP_WARN_Viaja al oeste de Azuremyst Isle|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tótem de Vark|r
    .turnin 9542 >> Gira en El Tótem de Vark
    .accept 9544 >> Acepta la misión La profecía de Akida
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Desactiva el|r |T132142:0|t[Sombra del bosque] |cRXP_WARN_Potenciación|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Mata a los |cRXP_ENEMY_Bristlelimb Furbolgs|r, a los |cRXP_ENEMY_Bristlelimb Windcallers|r y a los |cRXP_ENEMY_Bristlelimb Ursas|r. Despoja a los para obtener sus |cRXP_LOOT_Bristlelimb Keys|r
    >>Abre los |cRXP_PICK_Bristlelimb Cages|r para liberar los |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Mata a los |cRXP_ENEMY_Infected Acechador nocturno Cachorro|r
	>>Mata a los |cRXP_ENEMY_Moongraze Bucks|r. Despójalos por sus |cRXP_LOOT_Hides|r
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
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Mata a los |cRXP_ENEMY_Wrathscale Nagas|r, a los |cRXP_ENEMY_Wrathscale Myrmidons|r y a los |cRXP_ENEMY_Wrathscale Sirens|r. Despójalos para obtener la |T134462:0|t[|cRXP_LOOT_Tablilla cubierta de runas|r]
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
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Despoja las |cRXP_LOOT_Reliquias antiguas|r en el suelo
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >> Nada hacia Traitor's Cove
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
    +|cRXP_WARN_Haz clic en el|r |T132288:0|t[Disfraz de árbol] |cRXP_WARN_Potenciación|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >> Entrega la misión El pescador desaparecido
    .accept 9527 >> Acepta la misión Solo quedan los restos
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Mata a los |cRXP_ENEMY_Owlbeasts|r. Despójalos para obtener los |cRXP_LOOT_Restos de la familia Cowlen|r
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
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Habla con |cRXP_FRIENDLY_Ingeniero "Chispik" Pasarrosca|r patrullando la playa
    >>Mata a |cRXP_ENEMY_Ingeniero "Chispik" Pasarrosca|r después del corto roleplay. Despójalo para obtener la |cRXP_LOOT_Traitor's Communication|r
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
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+2430 >> Farmea hasta 2430+/6500xp
step
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a Azure Observar
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arugoo de los Semprepino|r
    .turnin 9544 >> Entrega la misión La profecía de Akida
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >> Entrega la misión Busca a Acteon
    .turnin 10324 >> Entrega la misión La gran cacería lunar
    .target Acteon
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
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Exarca Menelaous|r
    .turnin 9612 >> Gira en ¡Gracias de corazón!
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Aprende tus hechizos de clase
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tullas|r
    .trainer >> Aprende tus hechizos de clase
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guvan|r
    .trainer >> Aprende tus hechizos de clase
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Semid|r
    .trainer >> Aprende tus hechizos de clase
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruada|r
    .trainer >> Aprende tus hechizos de clase
    .target Ruada
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acteon|r
    .trainer >> Aprende tus hechizos de clase
    .target Acteon
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldaan|r
    .accept 9604 >>Acepta la misión En alas de un hipogrifo
    .target Zaldaan
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldaan|r
    .fly The Exodar >> Vuela a El Exodar
    .target Zaldaan
step
    .goto The Exodar,57.016,50.081
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >> Entrega la misión En alas de un hipogrifo
    .accept 9605 >> Acepta la misión El maestro de hipogrifos Stephanos
    .target Nurguni
step << Warrior/Paladin
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Shaman
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compra una|r |T132402:0|t[Hachuela] |cRXP_BUY_a él|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ven
step << Hunter
    .goto The Exodar,47.904,89.780
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ven
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Equipa la|r |T132402:0|t[Hachuela] |cRXP_WARN_en tu mano principal|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .goto The Exodar,54.488,36.285
    .turnin 9605 >>Entrega la misión El maestro de hipogrifos Stephanos
    .target Stephanos
step
    #label end
    .goto The Exodar,54.488,36.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanos|r
    .fly Lor'danel >> Vuela a Lor'danel
    .target Stephanos
]])
