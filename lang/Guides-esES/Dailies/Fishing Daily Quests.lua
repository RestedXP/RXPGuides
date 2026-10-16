if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de profesión
#wotlk
#cata
#name Pesca

step
	.goto Dalaran,53.04,64.95
	.daily 13830,13832,13833,13834,13836, >> Habla con |cRXP_FRIENDLY_Marcia Persecución|r en Dalaran. Tiene 1 de 5 misiones diarias de Pesca. Acepta la que esté disponible
	>>The Ghostfish -- 13830
	>>Joya de las cloacas -- 13832
	>>Sangre más espesa -- 13833
	>>Peligrosamente delicioso -- 13834
	>>¡Desbrazado! -- 13836
	.target Marcia Chase

-- Quest: Dangerously Delicious -- 13834
step << Alliance
	#completewith next
	>>Recuerda comprar abalorios para usar en tu caña de pescar
	.fly Valiance Landing Camp >>Habla con Aludane para volar a Wintergrasp -- autofly not working from dala to valiance landing camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step << Horde
	#completewith next
	>>Recuerda comprar abalorios para usar en tu caña de pescar
	.fly Warsong Camp, Wintergrasp>>Habla con Aludane para volar a Wintergrasp -- autofly not working from dala to warsong camp (wg)
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13834
	.target Aludane
step
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.zone Wintergrasp >> Viaja a Wintergrasp
	.isOnQuest 13834
step << Alliance
	>>Pesca el |cRXP_LOOT_Terrorfish|r en cualquier lugar en Wintergrasp
	.goto Wintergrasp,71.05,36.85,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Horde
	>>Pesca el |cRXP_LOOT_Terrorfish|r en cualquier lugar en Wintergrasp
	.goto Wintergrasp,22.62,37.33,-1
	.goto Wintergrasp,79.57,46.92,-1
	.goto Wintergrasp,79.88,41.38,-1
	.complete 13834,1 --Terrorfish (10)
	.isOnQuest 13834
step << Alliance
	#completewith next
	.fly Dalaran >>Vuela a Dalaran
	.goto Wintergrasp,71.98,30.95
	.isOnQuest 13834
step << Horde
	#completewith next
	.fly Dalaran >>Vuela a Dalaran
	.goto Wintergrasp,21.62,34.96
	.isOnQuest 13834
step
	>>Habla con |cRXP_FRIENDLY_Marcia Sedal|r en Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Entrega la misión Peligrosamente delicioso
	.isQuestComplete 13834

-- Quest: The Ghostfish -- 13830
step
	#completewith next
	>>Recuerda comprar abalorios para usar en tu caña de pescar
	.fly River's Heart >>Habla con |cRXP_FRIENDLY_Aludane|r para volar a Cuenca de Sholazar
	.goto Dalaran,72.18,45.78,15,0
	.isOnQuest 13830
	.target Aludane
step
	.goto SholazarBasin,49.40,62.13
	.zone SholazarBasin >> Viaja a Cuenca de Sholazar
	.isOnQuest 13830
step
	#completewith next
	>>Pesca para el |cRXP_LOOT_Espeztro|r en Corazón de río
	.goto SholazarBasin,49.40,62.13
	.collect 45902,1 --Phantom Ghostfish (1)
	.isOnQuest 13830
step
	.use 45902 >>Come el |cRXP_LOOT_Espeztro|r en tus bolsas
	.complete 13830,1 --Discover the Ghostfish mystery (1)
	.isOnQuest 13830
step
	#completewith next
	.fly Dalaran >>Vuela a Dalaran
	.goto SholazarBasin,50.13,61.36
	.isOnQuest 13830
step
	>>Habla con |cRXP_FRIENDLY_Marcia Sedal|r en Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Entrega la misión El espeztro
	.isQuestComplete 13830
	.target Marcia Chase

-- Quest: Jewel Of The Sewers -- 13832
step
	>>Recuerda comprar abalorios para usar en tu caña de pescar
	>>Baja a las Dalaran Sewers. Pesca para la |cRXP_LOOT_Corroded Jewelry|r
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,37.06,48.02
	.complete 13832,1 --Corroded Jewelry (1)
	.isOnQuest 13832
step
	>>Habla con |cRXP_FRIENDLY_Marcia Sedal|r en Dalaran
	.goto 126,22.66,41.71,10,0
	.goto Dalaran,35.31,45.28,10,0
	.goto Dalaran,53.04,64.95
	.turnin 13832 >>Entrega la misión Joya de las cloacas
	.isQuestComplete 13832
	.target Marcia Chase
-- Quest: Disarmed! -- 13836
step
	>>Recuerda comprar abalorios para usar en tu caña de pescar
	>>Pesca para el |cRXP_LOOT_Bloated Resbaladizo Eel|r fuera de El Bastión Violeta en Dalaran
	.goto Dalaran,62.16,67.18
	.collect 45328,1 -- Bloated Slippery Eel (1)
	.isOnQuest 13836
step
	.use 45328 >>Abre el |cRXP_LOOT_Bloated Resbaladizo Eel|r en tus bolsas y despoja el |cRXP_LOOT_Severed Activar|r
	.complete 13836,1 --Severed Arm (1)
	.isOnQuest 13836
step
	>>Habla con |cRXP_FRIENDLY_Olisarra the Kind|r en Dalaran
	.goto Dalaran,36.58,37.33
	.turnin 13836 >>Entrega la misión ¡Desbrazado!
	.isQuestComplete 13836
	.target Olisarra the Kind

-- Quest: Blood Is Thicker -- 13833
step << Alliance
	#completewith next
	>>Recuerda comprar abalorios para usar en tu caña de pescar
	.fly Une'pe >>Habla con |cRXP_FRIENDLY_Aludane|r para volar a Une'pe, Tundra Boreal
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step << Horde
	#completewith next
	>>Recuerda comprar abalorios para usar en tu caña de pescar
	.fly Taunka'le >>Habla con |cRXP_FRIENDLY_Aludane|r para volar a Taunka'le, Tundra Boreal
	.goto Dalaran,72.18,45.78,20,0
	.isOnQuest 13833
	.target Aludane
step
	.goto BoreanTundra,75.56,42.01
	.zone BoreanTundra >>Viaja a Tundra Boreal
	.isOnQuest 13833
step -- WIP. Currently no check for debuff. If they get debuff @ first WP then it will point to the next 2 WP's before pointing to the sea to start fishing
	>>Mata a cualquier |cRXP_ENEMY_animal|r en Tundra Boreal para recibir el debilitamiento [Sangre animal] en ti
	>>Salta al agua para quitarte el debilitamiento, que creará un |cRXP_PICK_Charco de Sangre|r
	.goto BoreanTundra,75.56,42.01,60,0
	>>Pesca |cRXP_LOOT_Bloodtooth Frenzys|r de este |cRXP_PICK_Charco de Sangre|r
	.complete 13833,1 --Bloodtooth Frenzy (5)
	.goto BoreanTundra,82.28,49.62,-1
	.goto BoreanTundra,79.22,51.61,-1
	.isOnQuest 13833
step
	#completewith next
	.fly Dalaran >>Vuela a Dalaran
	.goto BoreanTundra,78.54,51.53
	.isOnQuest 13833
step
	>>Habla con |cRXP_FRIENDLY_Marcia Persecución|r en Dalaran
	.goto Dalaran,53.04,64.95
	.turnin 13834 >>Entrega la misión Sangre más espesa
	.isQuestComplete 13833
	.target Marcia Chase
step
	+Has terminado la misión diaria de Pesca por hoy
]])
