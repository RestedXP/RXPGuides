if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.player.race ~= "Pandaren" then return end

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP Zona inicial (Pandaren)
#name 1-12 The Wandering Isle
#next RXP Cataclismo 1-80 (A)\10-20 Loch Modan;RXP Cataclismo 1-80 (H)\10-22 Azshara;RXP MoP 1-80 (A)\10-20 Loch Modan;RXP MoP 1-80 (H)\10-22 Azshara;skip


<< Pandaren !DK

step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .accept 30034 >>Acepta la misión La lección de la rama de acero << Hunter
    .accept 30027 >>Acepta la misión La lección de la rama de acero << Priest/Monk
    .accept 30033 >>Acepta la misión La lección de la rama de acero << Mage
    .accept 30037 >>Acepta la misión La lección de la rama de acero << Shaman
    .accept 30038 >>Acepta la misión La lección de la rama de acero << Warrior
    .accept 30036 >>Acepta la misión La lección de la rama de acero << Rogue
	.target Master Shang Xi
step << Hunter
    .isOnQuest 30034
    .goto 378,57.22,19.22
    >>Haz clic en el |cRXP_PICK_Weapon Rack|r para obtener la |T537025:0|t[Ballesta de alumno]
    .collect 73211,1 --Trainee's Crossbow (1)
step << Hunter
    .goto 378,57.22,19.22
    >>Equipa la |T537025:0|t[Ballesta de alumno]
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .isOnQuest 30033
    .goto 378,57.22,19.22
    >>Haz clic en el |cRXP_PICK_Weapon Rack|r para obtener la |T537771:0|t[Hoja de hechizo de alumno] y el |T654237:0|t[Abanico de mano de alumno]
    .collect 76390,1 --Trainee's Spellblade (1)
    .collect 76392,1, --Trainee's Hand Fan (1)
step << Mage
    .goto 378,57.22,19.22
    >>Equipa la |T537771:0|t[Hoja de hechizo de alumno] y el |T654237:0|t[Abanico de mano de alumno]
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .isOnQuest 30027
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Haz clic en el|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para obtener el|r |T537770:0|t[Bastón de alumno]
    .collect 73209,1 -Trainee's Staff (1)
step << Monk/Priest
    .goto 378,56.67,18.20
    >>Equipa el |T537770:0|t[Bastón de alumno]
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .isOnQuest 30037
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Haz clic en el|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para obtener el|r |T537205:0|t[Hacha de alumno] |cRXP_WARN_y|r |T537769:0|t[Escudo de alumno]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1 --Trainee's Shield (1)
step << Shaman
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Equipa el|r |T537205:0|t[Hacha de alumno] |cRXP_WARN_y|r |T537769:0|t[Escudo de alumno]
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Haz clic en el|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para obtener el|r |T537205:0|t[Hacha de alumno] |cRXP_WARN_y|r |T537769:0|t[Escudo de alumno]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1  --Trainee's Shield (1)
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Equipa el|r |T537205:0|t[Hacha de alumno] |cRXP_WARN_y|r |T537769:0|t[Escudo de alumno]
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .isOnQuest 30036
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Haz clic en el|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_para obtener las|r |T537767:0|t[Trainee's Dagas]
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
step << Rogue
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Equipa las|r |T537767:0|t[Trainee's Dagas]
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 30034 >>Entrega la misión La lección de la rama de acero << Hunter
    .turnin 30033 >>Entrega la misión La lección de la rama de acero << Mage
    .turnin 30027 >>Entrega la misión La lección de la rama de acero << Priest/Monk
    .turnin 30037 >>Entrega la misión La lección de la rama de acero << Shaman
    .turnin 30038 >>Entrega la misión La lección de la rama de acero << Warrior
    .turnin 30036 >>Entrega la misión La lección de la rama de acero << Rogue
    .accept 29406 >>Acepta la misión La lección del puño de arena
	.target Master Shang Xi
step
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.31,18.97
    >>Mata |cRXP_ENEMY_Objetivos de entrenamiento|r.
    .complete 29406,1 --5/5 Training Targets destroyed
	.mob Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29406 >>Entrega la misión La lección del puño de arena
    .accept 29524 >>Acepta la misión La lección del orgullo herido
	.target Master Shang Xi
step
    #completewith next
    --#title |cFFFCDC00Enter the house|r
    .goto 378,59.57,19.05,10 >>Entra en la casa
step
    .goto 378,60.26,19.35
    >>Derrota a los |cRXP_ENEMY_Sparring Trainees|r
    *|cRXP_WARN_Hay más arriba|r
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.mob Tushui Trainee
	.mob Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29524 >>Entrega la misión La lección del orgullo herido
    .accept 29408 >>Acepta la misión La lección del pergamino ardiente
	.target Master Shang Xi
step
    .isOnQuest 29408
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0
	.goto 378,60.46,19.60,8 >>Sube las escaleras
    >>|cRXP_WARN_Tomar el atajo al piso superior saltando por el hueco debajo del segundo tramo de escaleras|r
step
    .goto 378,59.95,20.39
    >>Haz clic en el |cRXP_PICK_Estandarte|r en la cima del edificio
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    --#title |cFFFCDC00Jump down|r
    .goto 378,60.19,19.35,6 >> |cRXP_WARN_Bajar de un salto|r
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29408 >>Entrega la misión La lección del pergamino ardiente
    .accept 29409 >>Acepta la misión El reto de los discípulos
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>Derrota a |cRXP_ENEMY_Jaomin Ro|r
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.mob Jaomin Ro
step << Warrior
	#completewith Lorvo
    +|cRXP_WARN_Usar|r |T132337:0|t[charge] |cRXP_WARN_en las criaturas para moverte más rápido|r
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29409 >>Entrega la misión El reto de los discípulos
    .accept 29410 >>Acepta la misión Aysa de los tushui
	.target Master Shang Xi
step
    #completewith next
    .goto 378,55.09,32.83,50 >>Viajar hacia |cRXP_FRIENDLY_Mercader Lorvo|r
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHablar con |cRXP_FRIENDLY_Mercader Lorvo|r
    .turnin 29410 >>Entrega la misión Aysa de los tushui
    .accept 29419 >>Acepta la misión El conductor desaparecido
    .accept 29424 >>Acepta la misión Objetos de importancia crucial
	.target Merchant Lorvo
step
    #completewith next
    >>Matar a los |cRXP_ENEMY_Amberleaf Scamps|r. Despojar de ellos para obtener |T132622:0|t[|cRXP_LOOT_Stolen Entrenamiento Suministros|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.mob Amberleaf Scamp
step
    .goto 378,54.11,20.90
    --#title |cFFFCDC00Follow the arrow to |cFF00FF25Min Dimwind|r|r
    >>Viaja hacia |cRXP_FRIENDLY_Min Viento Apacible|r
    .complete 29419,1 --1/1 Rescue the Cart Driver
	.target Min Dimwind
step
    #loop
    .goto 378,53.08,31.58,0
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44,15,0
    .goto 378,53.00,20.17,15,0
    .goto 378,52.89,24.41,20,0
    .goto 378,55.04,24.93,20,0
    .goto 378,53.08,31.58,20,0
    >>Mata a los |cRXP_ENEMY_Amberleaf Scamps|r y despójalos para obtener |T132622:0|t[|cRXP_LOOT_Stolen Entrenamiento Suministros|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mercader Lorvo|r y |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 29419,2 >>Entrega la misión El conductor desaparecido
    .turnin 29424 >>Entrega la misión Objetos de importancia crucial
	.target +Merchant Lorvo
    .goto 378,55.11,32.40
    .accept 29414 >>Acepta la misión La filosofía tushui
    .goto 378,55.10,32.55
	.target +Aysa Cloudsinger
step
	#completewith next
    --#title |cFFFCDC00Enter the cave|r
    .goto 378,57.21,31.04,30,0
    .goto 378,57.63,35.20,10 >> Entra en la cueva
	.timer 87,Cueva RP
step
    .goto 378,57.89,36.55
    >>Defiende a |cRXP_FRIENDLY_Aysa|r de los |cRXP_ENEMY_Amberleaf Troublemakers|r que se acercan
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.mob Amberleaf Troublemaker
--step
--    #title Advanced
--    .isOnQuest 29414
--    >>|cFFFF0000Try out find out|r.
--    .goto 378,57.52,34.59,5 >>|cRXP_WARN_Staying near the entrance is faster but more dangerous|r
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29414 >>Entrega la misión La filosofía tushui
    .accept 29522 >>Acepta la misión Ji de los Huojin
	.target Master Shang Xi
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 29522 >>Entrega la misión Ji de los huojin
    .accept 29417 >>Acepta la misión La filosofía huojin
	.target Ji Firepaw
step
    #loop
    .goto 378,51.18,17.71,0
    .goto 378,51.18,17.71,30,0
    .goto 378,49.56,18.31,30,0
    .goto 378,49.49,20.13,30,0
    .goto 378,49.23,24.48,30,0
    .goto 378,49.90,23.37,30,0
    .goto 378,46.12,20.46,30,0
    >>Mata a |cRXP_ENEMY_Fe-Feng|r
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.mob Fe-Feng Hozen
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 29417 >>Entrega la misión La filosofía huojin
    .accept 29418 >>Acepta la misión Leña al fuego
    .accept 29523 >>Acepta la misión Avivar la llama
	.target Ji Firepaw
step << skip
    .isOnQuest 29523
    #completewith Fluttering Breeze
    +|cRXP_WARN_Para habilitar la asignación de teclas para los objetos de misión, sigue estos pasos:|r
    *[1] Presiona la tecla |cRXP_WARN_Escape key|r.
    *[2] Selecciona |cRXP_WARN_Opciones|r.
    *[3] Ve a |cRXP_WARN_Asignaciones de teclas|r.
    *[4] Dentro de |cRXP_WARN_Asignaciones de teclas|r, busca |cRXP_WARN_Guías de RestedXP|r
    *[5] Selecciona y asigna los |cRXP_WARN_Active Botones|r.
step
#optional
    #completewith next
	>>Recoge las |cRXP_PICK_Loose Dogwood Raíces|r en el suelo junto a los árboles
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    .goto 378,47.24,31.32
	>>|cRXP_WARN_Usa el|r |T519378:0|t[Viento Piedra] |cRXP_WARN_en el santuario para invocar a un|r |cRXP_ENEMY_Aire viviente|r
    >>Mátalo y despójalo para obtener una |T463565:0|t[|cRXP_LOOT_Brisa batiente|r]
    .complete 29523,1 --1/1 Fluttering Breeze
    .use 72109
	.mob Living Air
step
    #loop
    .goto 378,47.98,31.97,0
    .goto 378,47.98,31.97,10,0
    .goto 378,46.07,27.94,10,0
    .goto 378,48.99,30.16,10,0
    .goto 378,46.83,34.88,10,0
    .goto 378,46.04,33.12,10,0
    .goto 378,46.17,27.09,10,0
    .goto 378,48.31,29.58,10,0
    .goto 378,50.06,31.41,10,0
    .goto 378,48.90,33.14,10,0
    .goto 378,49.58,36.46,10,0
    .goto 378,46.86,35.05,10,0
    .goto 378,46.01,33.12,10,0
    >>Recoge las |cRXP_PICK_Loose Dogwood Raíces|r en el suelo junto a los árboles
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r y |cRXP_FRIENDLY_Shang Xi|r
    .turnin 29418 >>Entrega la misión Leña al fuego
    .turnin 29523 >>Entrega la misión Avivar la llama
	.target +Ji Firepaw
    .goto 378,50.24,21.26
    .accept 29420 >>Acepta la misión El guardián del espíritu
    .goto 378,50.29,21.47
	.target +Master Shang Xi
step
   --#title |cFFFCDC00Enter the cave|r
    .goto 378,41.09,24.83,10 >> Entra en la cueva
    .isOnQuest 29420
step
    .goto 378,40.75,23.86,10,0
    .goto 378,40.84,22.19,10,0
    .goto 378,40,22.77,10,0
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maestro Li Fei|r
    >>|cRXP_WARN_Esquivar los géiseres de fuego en el camino|r
    .turnin 29420 >>Entrega la misión El guardián del espíritu
    .accept 29664 >>Acepta la misión Las llamas del desafío
	.target Master Li Fei
 step
    >>Haz clic en los |cRXP_PICK_Braziers|r
    .complete 29664,1 --1/1 Challenger Torch lit
    .goto 378,38.71,25.39
    .complete 29664,4 --1/1 Violet Brazier lit
    .goto 378,38.25,24.87
    .complete 29664,2 --1/1 Red Brazier lit
    .goto 378,38.99,23.50
    .complete 29664,3 --1/1 Blue Brazier lit
    .goto 378,39.19,25.41
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maestro Li Fei|r
    .turnin 29664 >>Entrega la misión Las llamas del desafío
    .accept 29421 >>Acepta la misión Solo los dignos pueden pasar
	.target Master Li Fei
step
    .goto 378,38.81,25.50
    >>|cRXP_WARN_Derrota a |cRXP_ENEMY_Maestro Li Fei|r reduciendo su salud al 20%|r
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.mob Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maestro Li Fei|r
    .turnin 29421,2 >>Entrega la misión Solo los dignos pueden pasar
    .accept 29422 >>Acepta la misión Huo, el espíritu del fuego
	.target Master Li Fei
step
    --#title |cFFFCDC00Run up the ramp.|r Use |T133662:0|t[Huo's Offerings]
    .goto 378,39.41,29.55
	.cast 102522 >>|cRXP_WARN_Usar|r |T133662:0|t[Huo's Offerings] |cRXP_WARN_en|r |cRXP_FRIENDLY_Huo|r
	.timer 11,Huo, el espíritu del fuego RP
	.use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|cRXP_WARN_Espera a que termine el roleplay|r
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Huo|r
    .turnin 29422 >>Entrega la misión Huo, el espíritu del fuego
    .accept 29423 >>Acepta la misión La pasión de Shen-zin Su
	.target Huo
step
    --#title |cFFFCDC00Leave the cave|r
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,42.0,25.29
    .subzone 5849,1 >>Sal de la cueva
step
	#completewith next
    --#title |cFFFCDC00Follow the arrow|r
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,50.12,38.94,15,0
    .goto 378,50.32,37.48,20,0
    .goto 378,51.58,40.46
    .subzone 5820 >> Viaja al |cRXP_WARN_Temple of Cinco Dawns|r
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29423 >>Entrega la misión La pasión de Shen-zin Su
    .accept 29521 >>Acepta la misión Las Pozas Cantarinas
	.target Master Shang Xi
step
    .isOnQuest 29521
    .goto 378,51.83,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cheng Escriba del Alba|r
    .home >>Establece tu hogar en el Templo de los Cinco Albas
	.target Cheng Dawnscrive
step
    #completewith SingingPools
    .subzone 5826 >>Viaja a los Estanques Cantarines
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallador Dewei|r
    .train 2366 >> Aprende Herboristería
    .target Whittler Dewei
    .skipgossipid 112959
    .skipgossipid 130364
    .skipgossipid 112911
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallador Dewei|r
    .train 2575 >> Aprende Minería
	.target Whittler Dewei
    .skipgossipid 130364
    .skipgossipid 112912
    .skipgossipid 112975
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jojo Frente Recia|r
    .accept 29662 >>Acepta la misión Más fuerte que el junco
	.target Jojo Ironbrow
step
    #completewith JumpOnPole
    +|cRXP_WARN_Los nodos de Minería/Herboristería otorgan la experiencia equivalente a 1 enemigo en esta expansión, recuerda recoger los nodos cercanos. Puedes recoger todos los tipos de nodos sin importar tu nivel de habilidad en la profesión|r
step
    #completewith next
    +|cRXP_WARN_En esta zona, cierta agua te convierte en un animal, aumentando tu velocidad de movimiento|r
step
    #label SingingPools
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 29521 >>Entrega la misión Las Pozas Cantarinas
    .accept 29661 >>Acepta la misión La lección del pelaje seco
    .accept 29663 >>Acepta la misión La lección de la roca equilibrada
	.target Aysa Cloudsinger
step
    #completewith RingTrainingBell
	>>Derrota a los |cRXP_ENEMY_Monjes tushui|r en los postes
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .isOnQuest 29663
    .isQuestNotComplete 29663
    #label JumpOnPole
    .goto 378,63.37,45.17
	.vehicle >> Haz clic en un |cRXP_FRIENDLY_Poste de equilibrio|r |cRXP_WARN_mientras no estés en el agua/seas una rana|r
step
    #label RingTrainingBell
    .goto 378,61.41,47.81
    >>|cRXP_WARN_Haz clic en |cRXP_FRIENDLY_Balance Poles|r para saltar hacia la|r |cRXP_PICK_Campana de entrenamiento|r
    >>Haz clic en la |cRXP_PICK_Campana de entrenamiento|r
    .complete 29661,1 --1/1 Ring the Training Bell
step
    #completewith next
    >>Despojar el |cRXP_PICK_Hard Tearwood Reed|r en el suelo
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    #loop
    .goto 378,63.22,45.17,0
    .goto 378,63.22,45.17,20,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97,15,0
    .goto 378,62.22,44.33,15,0
	>>Derrota a los |cRXP_ENEMY_Monjes tushui|r en los postes
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    #completewith next
    --#title |cFFFCDC00Exit the vehicle|r
    .exitvehicle >>|cRXP_WARN_Sal del vehículo|r
    .macro Leave Vehicle,6656430 >>Sal del Vehículo
step
    #loop
    .goto 378,62.85,49.06,0
    .goto 378,62.85,49.06,20,0
    .goto 378,60.53,49.31,20,0
    .goto 378,60.82,45.70,20,0
    >>Despojar el |cRXP_PICK_Hard Tearwood Reed|r en el suelo
    *|cRXP_WARN_Si te quedas en el borde, entonces los |cRXP_ENEMY_Whitefeather Cranes|r no te atacarán|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jojo Frente Recia|r
    .turnin 29662 >>Entrega la misión Más fuerte que el junco
	.target Jojo Ironbrow
step
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 29661 >>Entrega la misión La lección del pelaje seco
    .turnin 29663 >>Entrega la misión La lección de la roca equilibrada
    .accept 29676 >>Acepta la misión En busca de un viejo amigo
	.target Aysa Cloudsinger
step
    #completewith next
    +|cRXP_WARN_En esta zona, los estanques de agua púrpura te convierten en un animal, aumentando tu velocidad de movimiento|r
step
    .goto 378,72.15,37.88,13,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liang el Viejo|r
    .turnin 29676 >>Entrega la misión En busca de un viejo amigo
    .accept 29666 >>Acepta la misión La picadura del aprendizaje
    .accept 29677 >>Acepta la misión La perla del sol
	.target Old Man Liang
step
    #loop
    .goto 378,74.94,38.46,30,0
    .goto 378,72.21,46.53,30,0
    .goto 378,71.47,52.26,30,0
    >>Mata a los |cRXP_ENEMY_Water Pinzas|r
    .complete 29666,1 --6/6 Water Pincer slain
    .mob Water Pincer
step
    .goto 378,76.21,46.87
    >>Haz clic en la |cRXP_PICK_Ancient Almeja|r bajo el agua
    >>|cRXP_WARN_No necesitas matar a|r |cRXP_ENEMY_Fang-she|r
    .complete 29677,1 --1/1 Sun Pearl
    .mob Fang-she
step
    .goto 378,78.47,42.85
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liang el Viejo|r
    >>|cRXP_WARN_Si por alguna razón no puedes encontrar al dador de misiones, regresa a su casa que está al oeste|r
    .turnin 29666 >>Entrega la misión La picadura del aprendizaje
    .turnin 29677 >>Entrega la misión La perla del sol
    .accept 29678 >>Acepta la misión Shu, el espíritu del agua
	.target Old Man Liang
step
	.isOnQuest 29678
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
    >>Camina sobre los círculos brillantes
    >>|cRXP_WARN_Esto te permitirá saltar hacia la piscina|r
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>|cRXP_WARN_Usa la|r |T463854:0|t[Sol Pearl] |cRXP_WARN_en la|r |cRXP_WARN_superficie del agua|r
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 29678 >>Entrega la misión Shu, el espíritu del agua
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .accept 29679 >>Acepta la misión Un nuevo amigo
	.target Aysa Cloudsinger
step
    .goto 378,79.11,37.77
    >>Sigue a |cRXP_FRIENDLY_Shu|r de cerca mientras se mueve alrededor.
    >>|cRXP_WARN_Mueve en la cima del agua que salta junto a él|r
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 29679 >>Entrega la misión Un nuevo amigo
    .accept 29680 >>Acepta la misión Nuestro sustento
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
	>>|cRXP_WARN_El |cRXP_PICK_Carro de Reparto|r es más lento que correr manualmente|r
    .turnin 29680 >>Entrega la misión Nuestro sustento
    .accept 29769 >>Acepta la misión Bribones
    .target Ji Firepaw
step
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gao Brisa Estival|r
    .accept 29770 >>Acepta la misión ¡Se pueden aprovechar!
	.target Gao Summerdraft
step
	#completewith Carrots
    >>Mata a los |cRXP_ENEMY_Plump Virmens|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
    .mob Plump Carrotcatcher
step
	.goto 378,70.11,77.63,0
    .goto 378,70.11,77.63,15,0
    .goto 378,69.55,79.23,15,0
    .goto 378,70.84,80.41,15,0
    .goto 378,71.46,78.11,15,0
#loop
	.line 378,70.11,77.63,69.55,79.23,70.84,80.41,71.46,78.11
	.goto 378,70.11,77.63,10,0
	.goto 378,69.55,79.23,10,0
	.goto 378,70.84,80.41,10,0
	.goto 378,71.46,78.11,10,0
    >>Despoja los |cRXP_PICK_Nabos Desarraigados|r en el suelo
    .complete 29770,1 --3/3 Uprooted Turnip
step
	.goto 378,78.60,69.75,0
    .goto 378,75.54,72.25,20,0
    .goto 378,77.79,71.81,20,0
    .goto 378,78.01,72.56,15,0
    .goto 378,78.85,70.76,20,0
    .goto 378,78.6,69.74,20,0
#loop
	.line 378,77.35,70.51,78.12,72.61,78.82,70.88,78.6,69.75
	.goto 378,77.35,70.51,10,0
	.goto 378,78.12,72.61,10,0
	.goto 378,78.82,70.88,10,0
	.goto 378,78.60,69.75,10,0
    >>Despoja las |cRXP_PICK_Calabazas Saqueadas|r en el suelo
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	.isOnQuest 29770
    .goto 378,77.05,71.02,10 >> Entra en la cueva
step
	#label Carrots
	.goto 378,74.70,74.76,0
    .goto 378,76.1,71.26,15,0
    .goto 378,75.57,72.94,15,0
    .goto 378,73.97,72.58,15,0
    .goto 378,73.94,70.86,15,0
    .goto 378,74.7,74.76,15,0
#loop
	.line 378,73.97,72.58,73.94,70.86,74.7,74.76
	.goto 378,73.97,72.58,5,0
	.goto 378,73.94,70.86,5,0
	.goto 378,74.70,74.76,5,0
    >>Mata a los |cRXP_ENEMY_Plump Carrotcrunchers|r. Despójalos para obtener sus |cRXP_LOOT_Carrots|r
    >>|cRXP_WARN_También puedes despojar|r los |cRXP_PICK_Carrots|r |cRXP_WARN_en el suelo|r
    .complete 29770,2 --3/3 Stolen Carrot
	.mob Plump Carrotcruncher
step
	.isOnQuest 29770
    .goto 378,74.99,69.42,10 >> Sal de la cueva
step
	.goto 378,77.85,71.75,0
    .goto 378,74.73,67.2,15,0
    .goto 378,72.67,69.48,15,0
    .goto 378,70.75,71.61,15,0
    .goto 378,69.4,69.74,15,0
#loop
	.line 378,77.89,70.13,77.36,70.49,77.85,71.75
	.goto 378,77.89,70.13,10,0
	.goto 378,77.36,70.49,10,0
	.goto 378,77.85,71.75,10,0
    >>Mata a los |cRXP_ENEMY_Plump Virmens|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gao Brisa Estival|r, |cRXP_FRIENDLY_Ji Zarpa Ígnea|r, y |cRXP_FRIENDLY_Jojo Frente Recia|r
    .turnin 29770 >>Entrega la misión ¡Se pueden aprovechar!
	.target +Gao Summerdraft
    .goto 378,68.13,66.40
    .turnin 29769 >>Entrega la misión Bribones
    .accept 29768 >>Acepta la misión La marra perdida
	.target +Ji Firepaw
	.goto 378,68.89,64.98
    .accept 29771 >>Acepta la misión Más fuerte que la madera
	.target +Jojo Ironbrow
    .goto 378,69.16,66.71
step
	#completewith next
	>>Despoja las |cRXP_PICK_Tablas de Madera|r en el suelo
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>Despoja el |cRXP_PICK_Mallet|r en el barril
    >>|cRXP_WARN_No tienes que matar a |cRXP_ENEMY_Raggis|r si puedes evitarlo|r
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
step
    #loop
    .goto 378,63.77,77.19,0
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08,15,0
	>>Despoja las |cRXP_PICK_Tablas de Madera|r en el suelo
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jojo Frente Recia|r y |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 29771 >>Entrega la misión Más fuerte que la madera
    .target +Jojo Ironbrow
    .goto 378,69.16,66.71
    .turnin 29768 >>Entrega la misión La marra perdida
    .accept 29772 >>Acepta la misión Alboroto
    .target +Ji Firepaw
	.goto 378,68.89,64.98
step
    .goto 378,68.95,64.80
    >>Haz clic en el |cRXP_PICK_Gong|r
    .complete 29772,1 --1/1 Ring the town gong
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 29772 >>Entrega la misión Alboroto
    .accept 29774 >>Acepta la misión ¡En la cara no!
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shu|r
    .complete 29774,1 --1/1 Ask Shu for help
	.timer 15,Roleplay
	.target Shu
    .skipgossip
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    >>|cRXP_WARN_Espera a que termine el roleplay|r
    .turnin 29774 >>Entrega la misión ¡En la cara no!
    .accept 29775 >>Acepta la misión El espíritu y cuerpo de Shen-zin Su
	.target Ji Firepaw
step
	.isOnQuest 29775
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
    .goto 378,51.48,57.40,20 >>Viaja al Templo de los Cinco Amaneceres
	>>|cRXP_WARN_El |cRXP_PICK_Carro de Reparto|r es más lento que correr manualmente|r
    .subzoneskip 5820--temple of five dawns
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29775 >>Entrega la misión El espíritu y cuerpo de Shen-zin Su
    .accept 29776 >>Acepta la misión Aldea Brisa Temprana
	.timer 20,Aldea Brisa Temprana RP
	.target Master Shang Xi
step
    .isOnQuest 29776
    .goto 378,51.46,48.93,7 >>|cRXP_WARN_Espera a que termine el roleplay|r
step
    #completewith next
    .subzoneskip 5830
	.isOnQuest 29776
    .goto 378,51.01,49.05,10,0
    .goto 378,40.19,50.79,20,0
    .goto 378,34.91,50.73,15,0
    .goto 378,33.1,42.6,15,0
    .goto 378,30.42,37.50,20 >>Viaja a |cRXP_WARN_Aldea Brisa Temprana|r
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 29776 >>Entrega la misión Aldea Brisa Temprana
    .accept 29778 >>Acepta la misión Sabiduría profanada
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jojo Frente Recia|r
    .accept 29783 >>Acepta la misión Más fuerte que la piedra
	.target Jojo Ironbrow
step
    .goto 378,31.78,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ancestro Shaopai|r
    .accept 29777 >>Acepta la misión Las herramientas del enemigo
	.target Elder Shaopai
step
    .isOnQuest 29777
    #completewith Defaced Scroll of Wisdom burned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Shen Tallador Pétreo|r
    .vendor >>|cRXP_WARN_Vende y repara si lo necesitas|r
    .target Shen Stonecarver
step
    #completewith Defaced Scroll of Wisdom burned
    >>Mata a los |cRXP_ENEMY_Fe-Feng Wisemans|r. Despójalos para obtener sus |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    #completewith Defaced Scroll of Wisdom burned
    >>Despoja los |cRXP_PICK_Stone Blocks|r en el suelo
    .complete 29783,1 --12/12 Abandoned Stone Block
step
	.goto 378,28.71,50.23,0
    .goto 378,30.3,42.95,15,0
    .goto 378,29.49,45.36,15,0
    .goto 378,29.11,47.53,15,0
    .goto 378,29.78,47.67,15,0
    .goto 378,29.21,48.57,15,0
    .goto 378,28.37,49.37,15,0
    .goto 378,27.16,49.67,15,0
    .goto 378,28.54,49.93,15,0
    .goto 378,29.12,51.09,15,0
    .goto 378,31.19,47.97,15,0
    .goto 378,32.49,46.63,15,0
    .goto 378,33.13,46.32,15,0
#loop
	.line 378,33.42,50.88,32.57,53.31,28.71,50.23
	.goto 378,33.42,50.88,15,0
	.goto 378,32.57,53.31,15,0
	.goto 378,28.71,50.23,15,0
    #label Defaced Scroll of Wisdom burned
    >>Haz clic en los |cRXP_PICK_Banners|r en los monumentos
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Fe-Feng Wisemans|r. Despójalos para obtener sus |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
	.goto 378,31.32,52.22,0
    .goto 378,31.18,47.97,15,0
    .goto 378,32.57,46.43,15,0
    .goto 378,33.66,47.21,15,0
    .goto 378,33.99,50.9,15,0
    .goto 378,33.06,52.27,15,0
    .goto 378,32.16,50.53,15,0
    .goto 378,31.32,52.22,15,0
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Despoja los |cRXP_PICK_Stone Blocks|r en el suelo
    .complete 29783,1 --12/12 Abandoned Stone Block
step
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.32,52.22,0
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Mata a los |cRXP_ENEMY_Fe-Feng Wisemans|r. Despójalos para obtener sus |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.751,39.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ancestro Shaopai|r
    .target Elder Shaopai
    .turnin 29777 >>Entrega la misión Las herramientas del enemigo
step
    .goto 378,29.969,39.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jojo Frente Recia|r
    .target Jojo Ironbrow
    .turnin 29783 >>Entrega la misión Más fuerte que la piedra
step
    .goto 378,30.950,36.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .target Ji Firepaw
    .turnin 29778 >>Entrega la misión Sabiduría profanada
    .accept 29779 >>Acepta la misión La solución directa
    .accept 29780 >>Acepta la misión Acción e inacción
    .accept 29781 >>Acepta la misión Peligro: monos
step
	.isOnQuest 29779
    .goto 378,29.28,39.98,15,0
    .goto 378,27.42,36.25,30,0
    .goto 378,26.42,33.68,30 >> Viaja al |cRXP_WARN_Jade Pilar|r
step
	#completewith RukRuk
	>>Mata a |cRXP_ENEMY_Hozen Fe-Feng|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.42,33.68
    >>Haz clic en el |cRXP_FRIENDLY_Jade Pilar|r
    .accept 29782 >>Acepta la misión Más fuerte que los huesos
step
    #completewith FeFeng
	>>Despoja los |cRXP_PICK_Stolen Fuegos artificiales|r en el suelo
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    #label RukRuk
    .goto 378,26.08,35.17,15,0
    .goto 378,20.94,34.43
	>>Mata a |cRXP_ENEMY_Ruk-Ruk|r
    .complete 29780,1 --1/1 Ruk-Ruk slain
	.mob Ruk-Ruk
step
    #label FeFeng
	.goto 378,26.75,31.86,0
    .goto 378,26.75,31.86,15,0
    .goto 378,27.49,29.61,15,0
    .goto 378,25.72,29.91,15,0
    .goto 378,24.24,30.84,15,0
    .goto 378,20.52,34.6,10,0
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
    >>Mata a |cRXP_ENEMY_Hozen Fe-Feng|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,0
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>Despoja los |cRXP_PICK_Stolen Fuegos artificiales|r en el suelo
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r, quien debería estar junto a ti
    >>|cRXP_WARN_Si no está allí, salta este paso|r
    .turnin 29779 >>Entrega la misión La solución directa
    .turnin 29780 >>Entrega la misión Acción e inacción
    .turnin 29781 >>Entrega la misión Peligro: monos
    .accept 29784 >>Acepta la misión Una perspectiva equilibrada
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jojo Frente Recia|r
    .turnin 29782 >>Entrega la misión Más fuerte que los huesos
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 29779 >>Entrega la misión La solución directa
    .turnin 29780 >>Entrega la misión Acción e inacción
    .turnin 29781 >>Entrega la misión Peligro: monos
    .accept 29784 >>Acepta la misión Una perspectiva equilibrada
	.target Ji Firepaw
step
	#completewith next
    .goto 378,31.14,36.79,5,0
    .goto 378,32.17,36.36,8,0
    .goto 378,32.88,37.16,8,0
    .goto 378,32.94,35.61,8 >>|cRXP_WARN_Cuidadosamente|r camina sobre la cuerda
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 29784 >>Entrega la misión Una perspectiva equilibrada
    .accept 29785 >>Acepta la misión Dafeng, el espíritu de aire
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>Viaja al |cRXP_WARN_Chamber of Susurros|r
	.isOnQuest 29785
step
	#sticky
	#label Temple2
	#requires Temple1
    .goto 378,26.64,66.63,10 >> Corre entre los conjuntos de escaleras después de que los vientos se disipan por primera vez
	.isOnQuest 29785
step
	#sticky
	#label Temple3
	#requires Temple2
    .goto 378,26.64,66.63,10 >> Corre hacia |cRXP_FRIENDLY_Dafeng|r después de que los vientos en la siguiente sala se disipan
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dafeng|r y |cRXP_FRIENDLY_Aysa|r
    .turnin 29785 >>Entrega la misión Dafeng, el espíritu de aire
	.target +Dafeng
    .goto 378,24.65,69.80
    .accept 29786 >>Acepta la misión La batalla en el cielo
	.target +Aysa Cloudsinger
    .goto 378,24.78,69.78
step
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,30.52,59.72
	>>Haz clic en los |cRXP_PICK_Firework Launchers|r en el suelo cuando |cRXP_ENEMY_Zhao-Ren|r sobrevuela sobre ellos para dañarlo
    >>Él gira en sentido contrario a las agujas del reloj. |cRXP_WARN_Avoid his Relámpago puddles|r. Dañalo cuando aterriza. Mátalo cuando aterriza por segunda vez
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29786 >>Entrega la misión La batalla en el cielo
    .accept 29787 >>Acepta la misión Ganarse el paso
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>Viaja |cRXP_WARN_to The Elders' Camino|r
step
    .goto 378,22.70,52.80
	>>Mata al |cRXP_ENEMY_Guardián de los ancestros|r
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,Gana el paso RP
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
	>>|cRXP_WARN_Espera a que termine el roleplay|r
    .turnin 29787 >>Entrega la misión Ganarse el paso
    .accept 29788 >>Acepta la misión Naturaleza agresiva
    .accept 29789 >>Acepta la misión Pequeños pero poderosos
	.target Master Shang Xi
step
    #loop
    .goto 378,18.84,51.88,0
    .goto 378,18.84,51.88,30,0
    .goto 378,18.43,49.88,30,0
    .goto 378,18.37,48.13,30,0
    .goto 378,21.57,49.29,30,0
    .goto 378,22.50,48.95,30,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52,30,0
    .goto 378,18.18,44.52,30,0
	>>Mata a los |cRXP_ENEMY_Thornbranch Scamps|r
    >>Despoja los |cRXP_PICK_Charms|r que cuelgan de los árboles
    .complete 29788,1 --8/8 Thornbranch Scamp slain
	.mob +Thornbranch Scamp
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Shang Xi|r
    .turnin 29788 >>Entrega la misión Naturaleza agresiva
    .turnin 29789 >>Entrega la misión Pequeños pero poderosos
    .accept 29790 >>Acepta la misión Transmisión de sabiduría
	.timer 83,Transmisión de sabiduría RP
	.target Master Shang Xi
step
    .goto 378,17.29,50.78
    >>Espera a que termine el Roleplay en la ubicación de la flecha
    >>|cRXP_WARN_Si pasas de eso, |cRXP_FRIENDLY_Shang Xi|r desaparecerá. Si eso sucede, abandona la misión y comienza el Roleplay de nuevo|r
    .complete 29790,1 --1/1 Listen to Master Shang Xi
	.target Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 29790 >>Entrega la misión Transmisión de sabiduría
    .accept 29791 >>Acepta la misión El sufrimiento de Shen-zin Su
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>Haz clic en el |cRXP_PICK_Air Balloon|r para abordarlo
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 231,El sufrimiento de Shen-zin Su RP
step
    .goto 378,30.8,92.9
	>>|cRXP_WARN_Espera al Roleplay|r
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.35,57.21,20,0
    .goto 378,51.31,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaopai|r
    .turnin 29791 >>Entrega la misión El sufrimiento de Shen-zin Su
    .accept 29792 >>Acepta la misión Camino a la grandeza
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    --#title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Sigue la Flecha|r
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>Viaja |cRXP_WARN_to the Pei-Wu Puerta|r
	.timer 28,Pei-Wu Puerta RP
step
    .goto 378,52.28,68.43
    >>|cFFFCDC00Sigue la flecha|r. Espera el Roleplay
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wei|r y |cRXP_FRIENDLY_Korga|r
    .turnin 29792 >>Entrega la misión Camino a la grandeza
    .accept 30591 >>Acepta la misión El cazador cazado
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .accept 29795 >>Acepta la misión Acopio de tallos
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    #loop
	.line 378,54.51,85.54,45.05,85.81,45.89,71.57,55.62,69.49,54.51,85.54
	.goto 378,54.51,85.54,40,0
	.goto 378,45.05,85.81,40,0
	.goto 378,45.89,71.57,40,0
	.goto 378,55.62,69.49,40,0
	.goto 378,54.51,85.54,0
    >>Mata a los |cRXP_ENEMY_Pei-Wu Tigers|r
    >>Despoja los |cRXP_PICK_Bamboo Stalks|r en el suelo
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
	.mob +Pei-Wu Tiger
    .complete 29795,1 --10/10 Broken Bamboo Stalk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wei|r y |cRXP_FRIENDLY_Korga|r
    .turnin 30591 >>Entrega la misión El cazador cazado
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .turnin 29795 >>Entrega la misión Acopio de tallos
    .accept 30589 >>Acepta la misión Arreglar el desastre
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Makael|r y |cRXP_FRIENDLY_Ji|r
    .turnin 30589 >>Entrega la misión Arreglar el desastre
    .accept 30590 >>Acepta la misión Manéjala con cuidado
	.target +Makael Bay
    .goto 378,36.32,72.36
    .accept 29793 >>Acepta la misión El mal del mar
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    #loop
    .goto 378,36.06,76.73,0
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01,40,0
    >>Mata a los |cRXP_ENEMY_Darkened Horrors|r y a los |cRXP_ENEMY_Darkened Terrors|r
	>>Despoja los |cRXP_PICK_Explosion Bundles|r en el suelo
    >>|cRXP_WARN_Be careful of the Horrors' Sombra Géiseres|r
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
	.mob +Darkened Horror
	.mob +Darkened Terror
    .complete 30590,1 --6/6 Packed Explosion Charge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Makael Bay|r y |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 30590 >>Entrega la misión Manéjala con cuidado
	.target +Makael Bay
    .goto 378,36.32,72.36
    .turnin 29793 >>Entrega la misión El mal del mar
    .accept 29796 >>Acepta la misión Noticias urgentes
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delora Corazón de León|r y |cRXP_FRIENDLY_Jojo Frente Recia|r
    .turnin 29796 >>Entrega la misión Noticias urgentes
    .accept 29794 >>Acepta la misión Nadie se queda atrás
    .accept 29797 >>Acepta la misión Suministros médicos
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .accept 29665 >>Acepta la misión De mal en peor
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step << skip
    #optional
    #completewith next
    #label InjuredSailorA
    .goto 378,42.27,86.80,0,0
    >>Lleva al |cRXP_FRIENDLY_Marinero herido|r de vuelta al campamento de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorA
    .goto 378,40.18,87.69
	.cast 56685 >>Recoge un |cRXP_FRIENDLY_Marinero herido|r en el suelo
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorA
    .goto 378,42.27,86.80
    >>Lleva al |cRXP_FRIENDLY_Marinero herido|r de vuelta al campamento de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
    #completewith next
	#label InjuredSailorB
    .goto 378,42.27,86.80,0,0
    >>Lleva al |cRXP_FRIENDLY_Marinero herido|r de vuelta al campamento de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorB
    .goto 378,39.41,87.98
	.cast 56685 >>Recoge al |cRXP_FRIENDLY_Marinero herido|r.
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorB
    .goto 378,42.27,86.80
    >>Lleva al |cRXP_FRIENDLY_Marinero herido|r de vuelta al Campamento de |cRXP_FRIENDLY_Delora's|r.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
	#completewith InjuredSailorB
    >>Mata a los |cRXP_ENEMY_Deepscale Tormentors|r
    >>Despoja los |cRXP_PICK_Cajones Médicos|r del suelo
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    .waypoint 378,42.27,86.80,-129340,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,42.27,86.80,-105520,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,40.18,87.69,10
    .waypoint 378,40.01,84.36,10
    .waypoint 378,38.08,84.73,10
    .waypoint 378,38.41,83.09,10
    .waypoint 378,37.60,81.44,10
    .waypoint 378,35.49,83.80,10
    .waypoint 378,36.17,87.63,10
    .waypoint 378,37.66,87.22,10
    .waypoint 378,38.36,87.43,10
    .goto 378,40.18,87.69
    >>Recoge un |cRXP_FRIENDLY_Marinero herido|r en el suelo y tráelo de vuelta al campamento de |cRXP_FRIENDLY_Delora Corazón de León|r
    >>|cRXP_WARN_Haz esto al menos dos veces|r
    .complete 29794,1,2 --2/3 Injured Sailors rescued
    .target Injured Sailor
step
#optional
#label InjuredSailorB
step
    #optional
    #loop
    .goto 378,37.86,83.22,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24,20,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,15,0
    .goto 378,36.82,89.24,15,0
    >>Mata a los |cRXP_ENEMY_Deepscale Tormentors|r
    >>Despoja los |cRXP_PICK_Cajones Médicos|r del suelo
	>>|cRXP_WARN_No recojas un nuevo |cRXP_FRIENDLY_Marinero herido|r todavía|r
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    #label InjuredSailorC
	#completewith next
    .goto 378,38.36,87.43,10,0
    .goto 378,37.66,87.22,10,0
    .goto 378,36.17,87.63,10,0
    .goto 378,35.49,83.80,10,0
    .goto 378,37.60,81.44,10,0
    .goto 378,38.41,83.09,10,0
    .goto 378,38.08,84.73,10,0
    .goto 378,40.01,84.36,10,0
    .goto 378,40.18,87.69
	.cast 56685 >>Recoge un |cRXP_FRIENDLY_Marinero herido|r
	.isOnQuest 29794
	.target Injured Sailor
step
    #requires InjuredSailorC
    .goto 378,42.27,86.80
    >>Lleva al |cRXP_FRIENDLY_Marinero herido|r de vuelta al campamento de |cRXP_FRIENDLY_Delora Corazón de León|r
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delora Corazón de León|r y |cRXP_FRIENDLY_Jojo Frente Recia|r
    .turnin 29794 >>Entrega la misión Nadie se queda atrás
    .turnin 29797 >>Entrega la misión Suministros médicos
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .turnin 29665 >>Entrega la misión De mal en peor
    .accept 29798 >>Acepta la misión Un mal antiguo
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step
    .goto 378,36.50,84.23
    >>Mata al |cRXP_ENEMY_Vordraka, The Deep Sea Pesadilla|r
    *|cRXP_WARN_Esquiva su Machaque de las profundidades|r
    *|cRXP_WARN_Mata a los |cRXP_ENEMY_Deepscale Aggressors|r cuando aparezcan|r
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.mob Vordraka, The Deep Sea Nightmare
    .mob Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 29798 >>Entrega la misión Un mal antiguo
    .accept 30767 >>Acepta la misión Un riesgo inasumible
    .timer 77,Un riesgo inasumible RP
	.target Aysa Cloudsinger
	.skipgossip
step
    .goto 378,36.35,86.08,10,0 << skip
    .goto 378,36.27,86.99,10,0 << skip
    .goto 378,36.90,85.50,5,0 << skip
    .goto 378,36.36,87.2,10,0 << skip
    .goto 378,36.38,87.12 << skip
    >>Espera a que termine el RP
    >>|cRXP_WARN_Toma un descanso si quieres|r
	>>|cRXP_WARN_Presiona "Escapar" en tu teclado para omitir la cinemática|r
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 30767 >>Entrega la misión Un riesgo inasumible
    .accept 29799 >>Acepta la misión La sanación de Shen-zin Su
	.target Ji Firepaw
step
    .goto 378,39.08,88.32,5,0
    .goto 378,39.04,88.87,5,0
    .goto 378,39.89,88.62,5,0
    .goto 378,42.92,87.31,5,0
    .goto 378,42.85,85.16,5,0
    .goto 378,42.01,84.89,5,0
    .goto 378,42.31,83.89,5,0
    .goto 378,41.21,83.78,5,0
    .goto 378,40.55,82.45,5,0
    .goto 378,40.26,83.35,5,0
    .goto 378,40.12,84.37,5,0
    .goto 378,38.44,86.07
    >>Haz clic en los |cRXP_PICK_Escombros Sueltos|r y ayuda a los |cRXP_FRIENDLY_Alianza Sacerdotes|r y a los |cRXP_FRIENDLY_Horda Druidas|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con los |cRXP_FRIENDLY_Alianza Sacerdotes|r y los |cRXP_FRIENDLY_Horda Druidas|r
    *|cRXP_WARN_Mata a los |cRXP_ENEMY_Dampscale Fleshrippers|r si los están atacando|r
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.mob Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
	>>|cRXP_WARN_Pulsa la tecla "Escape" en tu teclado para omitir la cinemática|r.
    .turnin 29799 >>Entrega la misión La sanación de Shen-zin Su
	.timer 18,La sanación de Shen-zin Su RP
	.target Ji Firepaw
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    >>|cRXP_WARN_Espera al Roleplay|r
    .goto 378,38.77,86.32
    .accept 29800 >>Acepta la misión Nuevos aliados
	.target Ji Firepaw
step
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir al |cRXP_WARN_Templo de Cinco Albores|r
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de Shang Xi|r y selecciona tu facción
	>>|cRXP_WARN_Presiona "Escapar" en tu teclado para omitir la cinemática|r
    .turnin 29800 >>Entrega la misión Nuevos aliados
    .accept 31450 >>Acepta la misión Un nuevo destino
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step
    .zoneskip 84
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ji Zarpa Ígnea|r
    .turnin 31450 >>Entrega la misión Un nuevo destino
    .accept 31012 >>Acepta la misión Unirse a la Horda
    .target Ji Firepaw
step
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aysa Canción Etérea|r
    .turnin 31450 >>Entrega la misión Un nuevo destino
	.accept 30987 >>Acepta la misión Uniéndose a la Alianza
	.target Aysa Cloudsinger
step
#optional
.neutralzonefinished
step <<skip
--TODO: skip this? the whole trip to SW keep is way too long
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Varian Wrynn|r
	.turnin 30987 >>Entrega la misión Uniéndose a la Alianza
	.target King Varian Wrynn
    .neutralzonefinished
step
    .zoneskip 84
    #completewith next
    .goto 85,49.87,75.52,20 >> Entra en el Fuerte Grommash
step
    .zoneskip 84
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garrosh Grito Infernal|r
    .turnin 31012 >> Entrega la misión Unirse a la Horda
    .target Garrosh Hellscream
    .neutralzonefinished
step
.zoneskip 84
.zoneskip 1
.zoneskip 85
+Felicitaciones, acabas de completar la zona de inicio de los Pandaren; por favor, haz clic en el botón de engranaje debajo de la ventana RXP y selecciona la guía de continuación apropiada.
]])
