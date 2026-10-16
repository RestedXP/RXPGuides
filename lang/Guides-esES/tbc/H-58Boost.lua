if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#name Personaje Mejorado 58-60
#subgroup Guía RestedXP Horda Mejorada 58-60
#subweight -1
#title Boosted Character 58-60 (NOT TRANSLATED IN :esMX YET)
#next 60-61 Península del Fuego Infernal

step
+As soon as you log in for the first time, finish the little tutorial section in front of your class trainer to get access to all of the boosted gear (NOT TRANSLATED IN :esMX YET)
.use 185964
.use 186051
.use 186052
.use 186053
.use 186054
.use 186055
.use 186056
.use 186057
.isQuestAvailable 64035 << Alliance
.isQuestAvailable 64052 << Horde !Druid
.isQuestAvailable 64053 << Horde Druid
step << Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Thuul|r en lo alto de la cabaña
    .train 3567 >> Aprende |T135759:0|t[Teletransporte a: Orgrimmar]
    .train 11417 >> Aprende |T135744:0|t[Portal: Orgrimmar]
    .target Thuul
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compra cualquier mejora para tu mascota que puedas permitirte
	.target Kurgul
step
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Posadero Morag|r
	.vendor >>|cRXP_BUY_Compra 2 pilas de comida|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Compra 2 pilas de comida y agua|r << Rogue/Warrior
	.target Barkeep Morag
step
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Sal de Orgrimmar
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Sube a la Torre del Zepelín
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Western Plaguelands
step
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step
    #label UCflightpath1
    .isQuestAvailable 5211
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
step
	#completewith next
	.subzone 152 >> Sal de Undercity y viaja a Baluarte
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tViaja a El Baluarte, luego habla con |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Acepta la misión Distracción Escarlata
	.target High Executor Derrington
step
	.goto Western Plaguelands,26.55,56.18
	>>Haz clic en la |cRXP_PICK_Caja de bombas incendiarias|r junto al fuego
	.collect 12814,1,5096,1 --Flame in a Bottle (1)
step
    .goto Tirisfal Glades,83.19,68.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garush|r
    .turnin 5405 >>Entrega la misión Comisión de El Alba Argenta
	.target Argent Officer Garush
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mehlar Hojalba|r
    .accept 9443 >>Accept in The So-Called Mark of the Lightbringer (NOT TRANSLATED IN :esMX YET)
    .target Mehlar Dawnblade
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mickey|r
    .accept 5901 >>Acepta la misión Una Peste en la Cruzada
	.target Mickey Levine
step
    #completewith next
    .use 12846 >>|cRXP_WARN_Equipa la|r |T133440:0|t[Comisión de El Alba Argenta] |cRXP_WARN_en tu ranura de abalorio|r
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Haz clic en la |cRXP_PICK_Tienda de mando|r, después usa tu |T132484:0|t[Estandarte de la Plaga]
	>>|cRXP_WARN_Estos enemigos son relativamente difíciles y pueden atraerse en cadena unos a otros, así que ten cuidado|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Entrega la misión Distracción Escarlata
    .accept 5098 >>Acepta la misión Todas las atalayas
    .accept 5228 >>Acepta la misión Las calderas de la Plaga
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandis|r
    .turnin 5228 >>Entrega la misión Las calderas de la Plaga
    .accept 5229 >>Acepta la misión Objetivo: Campo de Piedramácula
	.target Shadow Priestess Vandis
step
    .goto Western Plaguelands,37.12,57.18
    >>Mata al |cRXP_ENEMY_Señor de la caldera Garravil|r. Despójalo para obtener su |cRXP_LOOT_Llave de la caldera|r
    .complete 5229,1 --Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.2,56.8
	>>Haz clic en el |cRXP_PICK_Caldera de la Plaga|r que burbujea sobre la plataforma
    .turnin 5229 >>Entrega la misión Objetivo: Campo de Piedramácula
    .accept 5230 >>Acepta la misión Regresa a El Baluarte
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janice|r en el segundo piso de la casa
    .accept 5021 >>Acepta la misión Más vale tarde que nunca
	.target Janice Felstone
step
    #label FelstoneField
    .goto Western Plaguelands,38.8,55.3
	>>Haz clic en el |cRXP_PICK_Paquete de Janice|r en el granero
	>>|cRXP_WARN_Puedes hacer clic a través de la pared del pasillo si quieres evitar a los monstruos de dentro|r
    .turnin 5021 >>Entrega la misión Más vale tarde que nunca
    .accept 5023 >>Acepta la misión Más vale tarde que nunca
step
	#completewith next
	.subzone 152 >> Regresa a El Baluarte
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandis|r
    .turnin 5230 >>Entrega la misión Regresa a El Baluarte
    .accept 5231 >>Acepta la misión Objetivo: Llanto de Dalson
	.target Shadow Priestess Vandis
step
	#sticky
	#completewith wplbf
	+|cRXP_WARN_Asegúrate de matar y despojar enemigos entre cada torre para obtener|r |T133724:0|t[Trozos de hueso]
    .collect 22526,30,91261 --Bone Fragments
step
    .goto Western Plaguelands,42.28,66.05
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,2 --Tower Two marked (1)
step
    #label TowerOne
    .goto Western Plaguelands,40.15,71.50
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r en el piso superior de la posada
    .accept 4971 >>Acepta la misión Una cuestión de tiempo
	.target Chromie
step
    .goto Western Plaguelands,44.24,63.06
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,45.8,63.3
	.use 12627 >>Haz que aparezcan los |cRXP_ENEMY_Parásitos temporales|r usando tu |T134229:0|t[Desplazador temporal] cerca de los silos brillantes
	>>|cRXP_WARN_Los Parásitos temporales lanzan Ralentizar constantemente y pueden invocar más parásitos al morir. Prepárate para correr hacia el agua si empiezan a ser demasiados; no saben nadar|r
    .complete 4971,1 --Temporal Parasite (10)
	.mob Temporal Parasite
step
    .goto Western Plaguelands,46.73,71.14
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,46.04,52.33
    >>Mata al |cRXP_ENEMY_Señor de la caldera Molevolus|r. Despójalo para obtener su |cRXP_LOOT_Llave de la caldera|r
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
	.unitscan Cauldron Lord Malvinious
step
    .goto Western Plaguelands,46.2,52.0
	>>Haz clic en el |cRXP_PICK_Caldera de la Plaga|r que burbujea sobre la plataforma
    .turnin 5231 >>Entrega la misión Objetivo: Llanto de Dalson
    .accept 5232 >>Acepta la misión Regresa a El Baluarte
step
    .goto Western Plaguelands,47.8,50.6
	>>Haz clic en el |cRXP_PICK_Diario de la señora Dalson|r
    .turnin 5058 >>Entrega la misión El diario de la señorita Dalson
step
    .goto Western Plaguelands,47.49,51.00
	>>Mata al |cRXP_ENEMY_Esqueleto deambulante|r. Despójalo para obtener su |cRXP_LOOT_Llave de la letrina|r
	>>|cRXP_WARN_"Farmea"|r |T133724:0|t[Trozos de hueso] |cRXP_WARN_si el |cRXP_ENEMY_Esqueleto deambulante|r no ha aparecido|r
	.collect 12738,1 -- Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
    >>Haz clic en la |cRXP_PICK_Letrina|r
    .turnin 5059 >>Entrega la misión Encierro
step
    .goto Western Plaguelands,48.2,49.7
	>>Mata al |cRXP_ENEMY_Granjero Dalson|r. Despójalo para obtener su |cRXP_LOOT_Llave del armario|r
    .collect 12739,1,5060 --Collect Dalson Cabinet Key (x1)
	.unitscan Farmer Dalson
step
    .goto Western Plaguelands,47.4,49.7
	>>Haz clic en el |cRXP_PICK_Armario cerrado|r en el piso superior de la casa
    .turnin 5060 >>Entrega la misión Encierro
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta|r
    .accept 6004 >>Acepta la misión Negocios inconclusos
	.target Kirsta Deepshadow
step
	#completewith next
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12,70,0
    >>Mata |cRXP_ENEMY_Magos Escarlata|r y |cRXP_ENEMY_Caballeros Escarlata|r
	>>|cRXP_WARN_Los|r |cRXP_ENEMY_Magos|r |cRXP_WARN_y|r |cRXP_ENEMY_Caballeros|r |cRXP_WARN_comparten reapariciones. Si es necesario, mata enemigos adicionales para reiniciar la zona|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.77,44.13,70,0
    .goto Western Plaguelands,40.83,52.30,70,0
    .goto Western Plaguelands,47.35,51.54,0
    .goto Western Plaguelands,51.77,44.13
	>>Mata |cRXP_ENEMY_Médicos Escarlata|r y |cRXP_ENEMY_Cazadores Escarlata|r
	>>Los |cRXP_ENEMY_Médicos|r |cRXP_WARN_y|r |cRXP_ENEMY_Cazadores|r |cRXP_WARN_se pueden encontrar en los campamentos. Si es necesario, mata enemigos adicionales para reiniciar la zona|r
    .complete 6004,1 --Scarlet Medic (2)
	.mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
	.mob +Scarlet Hunter
step
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12
    >>Termina de matar |cRXP_ENEMY_Magos Escarlata|r y |cRXP_ENEMY_Caballeros Escarlata|r
	>>|cRXP_WARN_Los|r |cRXP_ENEMY_Magos|r |cRXP_WARN_y|r |cRXP_ENEMY_Caballeros|r |cRXP_WARN_comparten reapariciones. Si es necesario, mata enemigos adicionales para reiniciar la zona|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta|r
    .turnin 6004 >>Entrega la misión Negocios inconclusos
    .accept 6023 >>Acepta la misión Negocios inconclusos
	.target Kirsta Deepshadow
step
    .goto Western Plaguelands,57.83,36.10
	>>Mata a la |cRXP_ENEMY_Montero Radley|r
	>>|cRXP_WARN_Los enemigos que la rodean pueden atraerse en cadena fácilmente. Los Vinculahechizos lanzan Nova de Escarcha|r
    .complete 6023,1 --Huntsman Radley (1)
	.unitscan Huntsman Radley
step
    .goto Western Plaguelands,54.64,23.71
	>>Mata al |cRXP_ENEMY_Hidalgo Durgen|r
	>>|cRXP_WARN_Este encuentro es mucho más seguro si esperas a que salga patrullando de la torre antes de atraerlo. Tiene un aturdimiento instantáneo de 5 segundos|r
    .complete 6023,2 --Cavalier Durgen (1)
	.unitscan Cavalier Durgen
step
	#label crusader
    .goto Western Plaguelands,55.1,23.5
    >>Despoja el |cRXP_PICK_Arca sagrada|r en lo alto de la torre para obtener la |cRXP_LOOT_Marca del Iluminado|r
	>>|cRXP_WARN_Puede que el |cRXP_ENEMY_Alto Clérigo Escarlata|r (63  élite) haya aparecido. Omite esta misión si es necesario|r
    .complete 9443,1 --Mark of the Lightbringer (1)
    .unitscan Scarlet High Clerist
step
	#label Businessman
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta|r
    .turnin 6023 >>Entrega la misión Negocios inconclusos
    .accept 6025 >>Acepta la misión Negocios inconclusos
	.target Kirsta Deepshadow
step
    #label HearthglenOverlook
    .goto Western Plaguelands,47.94,21.43,60,0
    .goto Western Plaguelands,43.31,17.34,50,0
    .goto Western Plaguelands,45.6,18.6
    >>Corre a Hearthglen y sigue la flecha para restablecer los enemigos una vez que estés dentro
    >>Corre a la cima de la torre. Ten cuidado con los Paladines fuera, ya que pueden sanar. Puedes intentar pasar junto a ellos o controlarlos para llegar a la cima
    >>|cRXP_WARN_Ten en cuenta que los enemigos no tienen rango en el eje Z. Pueden golpearte desde la base de la torre si están directamente debajo de ti|r
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    #completewith next
    .subzone 192 >>Sal de Vega del Amparo
step
    .goto Western Plaguelands,51.92,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta|r
    .turnin 6025 >>Entrega la misión Negocios inconclusos
	.target Kirsta Deepshadow
step
	#completewith next
	.subzone 152 >> Regresa a El Baluarte
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandis|r
    .turnin 5232 >>Entrega la misión Regresa a El Baluarte
    .accept 5233 >>Acepta la misión Objetivo: El Tormento
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Entrega la misión Todas las atalayas
    .accept 838 >>Acepta la misión Scholomance
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dithers|r
    .turnin 838 >>Entrega la misión Scholomance
    .accept 964 >>Acepta la misión Trozos esqueléticos
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mehlar Hojalba|r
    .turnin 9443 >>Entrega la misión La supuesta marca del Iluminado
    .accept 9444 >>Acepta la misión Profanar la Tumba de Uther
    .target Mehlar Dawnblade
	.isQuestComplete 9443
step
    #optional
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mehlar Hojalba|r
    .accept 9444 >>Acepta la misión Profanar la Tumba de Uther
    .target Mehlar Dawnblade
	.isQuestTurnedIn 9443
step
	.goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r en el piso superior de la posada
    .turnin 4971 >>Entrega la misión Una Cuestión de Tiempo
    .accept 4972 >>Acepta la misión Contar el tiempo
	.target Chromie
step
	#completewith next
	>>Despoja los |cRXP_PICK_Arcones pequeños|r en los edificios en ruinas para obtener |cRXP_LOOT_Relojes de Andorhal|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    #loop
	.goto Western Plaguelands,46.40,70.00,0
	.goto Western Plaguelands,46.40,70.00,50,0
	.goto Western Plaguelands,45.60,72.20,50,0
	.goto Western Plaguelands,42.60,71.40,50,0
	.goto Western Plaguelands,41.60,73.20,50,0
	.goto Western Plaguelands,38.80,71.00,50,0
	.goto Western Plaguelands,38.80,68.20,50,0
	.goto Western Plaguelands,40.40,66.40,50,0
	.goto Western Plaguelands,42.60,70.00,50,0
	.goto Western Plaguelands,43.40,64.40,50,0
	.goto Western Plaguelands,45.80,65.80,50,0
	>>Mata a todos los |cRXP_ENEMY_Esqueletos|r en Andorhal. Despójalos para obtener sus |cRXP_LOOT_Trozos|r
	>>Los |cRXP_ENEMY_Verdugos esqueléticos|r |cRXP_WARN_pueden lanzar|r |T135358:0|t[Ejecutar] |cRXP_WARN_si tu salud cae por debajo del 20%|r
    .complete 964,1 --Skeletal Fragments (15)
	.mob Skeletal Executioner
	.mob Skeletal Acolyte
	.mob Skeletal Warlord
	.mob Skeletal Sorcerer
	.mob Skeletal Flayer
	.mob Skeletal Terror
step
    #loop
	.goto Western Plaguelands,40.40,66.50,0
	.goto Western Plaguelands,40.40,66.50,30,0
	.goto Western Plaguelands,38.90,68.10,30,0
	.goto Western Plaguelands,41.30,69.80,30,0
	.goto Western Plaguelands,42.80,73.90,30,0
	.goto Western Plaguelands,43.60,73.40,30,0
	.goto Western Plaguelands,45.10,73.70,30,0
	.goto Western Plaguelands,46.50,73.00,30,0
	.goto Western Plaguelands,44.80,70.50,30,0
	.goto Western Plaguelands,42.90,68.50,30,0
	.goto Western Plaguelands,40.90,67.20,30,0
	>>Despoja los |cRXP_PICK_Arcones pequeños|r en los edificios en ruinas para obtener |cRXP_LOOT_Relojes de Andorhal|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marlene|r dentro de la casa
    .accept 5142 >>Acepta la misión La pequeña Pamela
	.target Marlene Redpath
step
    .goto Western Plaguelands,52.1,83.3
    .use 23691 >>|cRXP_WARN_Equipa la|r |T135160:0|t[Marca del Iluminado corrupta] |cRXP_WARN_en tu mano secundaria|r
    >>|cRXP_WARN_Usa la|r |T135160:0|t[Marca del Iluminado corrupta] |cRXP_WARN_en la Tumba de Uther|r
    .complete 9444,1 --Uther's Tomb Defiled (1)
    .isQuestTurnedIn 9443
step
    .goto Western Plaguelands,53.07,65.97
    >>Mata al |cRXP_ENEMY_Señor de la caldera Razarch|r. Despójalo para obtener su |cRXP_LOOT_Llave de caldera|r
	>>Los |cRXP_ENEMY_Necrófagos congelados|r |cRXP_WARN_tienen un aturdimiento de área instantáneo de 5 segundos de duración|r
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
	.unitscan Cauldron Lord Razarch
step
    .goto Western Plaguelands,53.0,65.7
	>>Haz clic en el |cRXP_PICK_Caldera de la Plaga|r que burbujea sobre la plataforma
	>>Los |cRXP_ENEMY_Necrófagos congelados|r |cRXP_WARN_tienen un aturdimiento de área instantáneo de 5 segundos de duración|r
    .turnin 5233 >>Entrega la misión Objetivo: El Tormento
    .accept 5234 >>Acepta la misión Regresa a El Baluarte
step
    #label WildlifePU
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mulgris|r dentro de la casa
	>>Los |cRXP_ENEMY_Necrófagos congelados|r |cRXP_WARN_tienen un aturdimiento de área instantáneo de 5 segundos de duración|r
    .accept 4984 >>Acepta la misión La naturaleza también sufre
	.target Mulgris Deepriver
step
    #loop
	.goto Western Plaguelands,46.80,39.60,0
	.goto Western Plaguelands,46.80,39.60,70,0
	.goto Western Plaguelands,45.80,46.40,70,0
	.goto Western Plaguelands,43.40,54.80,70,0
	.goto Western Plaguelands,46.00,59.20,70,0
	.goto Western Plaguelands,51.60,61.60,70,0
	.goto Western Plaguelands,51.00,53.20,70,0
	.goto Western Plaguelands,50.00,46.60,70,0
	.goto Western Plaguelands,47.80,43.40,70,0
	>>Mata |cRXP_ENEMY_Lobos malsanos|r
	>>Los |cRXP_ENEMY_Lobos malsanos|r |cRXP_WARN_comparten reapariciones con los|r |cRXP_ENEMY_Rondadores carroñeros|r|cRXP_WARN_. Si es necesario, mátalos para reiniciar la zona|r
    .complete 4984,1 --Diseased Wolf (8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mulgris|r
    .turnin 4984 >>Entrega la misión La naturaleza también sufre
    .accept 4985 >>Acepta la misión La naturaleza también sufre
	.target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,56.08,63.26,0
    .goto Western Plaguelands,56.08,63.26,90,0
    .goto Western Plaguelands,60.15,59.93,90,0
    .goto Western Plaguelands,59.43,52.40,90,0
    .goto Western Plaguelands,68.18,46.23,90,0
	>>Mata |cRXP_ENEMY_Osos pardos malsanos|r
	>>Los |cRXP_ENEMY_Osos pardo malsanos|r |cRXP_WARN_comparten reapariciones con los|r |cRXP_ENEMY_Rondadores de peste|r|cRXP_WARN_. Si es necesario, mátalos para reiniciar la zona|r
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathanos|r
    .accept 6022 >>Acepta la misión Matar con un propósito
	.target Nathanos Blightcaller
step
	.goto Eastern Plaguelands,27.28,85.22
	>>Haz clic en el gran |cRXP_PICK_Pergamino roto|r del suelo dentro de la cripta
    .accept 6024 >>Acepta la misión La súplica de Hameya
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pamela|r
    .turnin 5142 >>Entrega la misión La pequeña Pamela
    .accept 5149 >>Acepta la misión La muñeca de Pamela
	.target Pamela Redpath
step
    .goto Eastern Plaguelands,38.10,92.24
	>>Despoja las 3 |cRXP_PICK_Partes de la muñeca|r del suelo en los edificios en ruinas
	>>|cRXP_WARN_Hacer clic en las partes de la muñeca puede hacer aparecer algunos|r |cRXP_ENEMY_Fantasmas del pasado|r |cRXP_WARN_que tienen armadura de hielo y choque de escarcha|r
	.collect 12886,1,5149,1 -- Pamela's Doll's Head
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.64,92.51
	>>Despoja las 3 |cRXP_PICK_Partes de la muñeca|r del suelo en los edificios en ruinas
	>>|cRXP_WARN_Hacer clic en las partes de la muñeca puede hacer aparecer algunos|r |cRXP_ENEMY_Fantasmas del pasado|r |cRXP_WARN_que tienen armadura de hielo y choque de escarcha|r
	.collect 12887,1,5149,1 -- Pamela's Doll's Left Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.67,90.24
	>>Despoja las 3 |cRXP_PICK_Partes de la muñeca|r del suelo en los edificios en ruinas
	>>|cRXP_WARN_Hacer clic en las partes de la muñeca puede hacer aparecer algunos|r |cRXP_ENEMY_Fantasmas del pasado|r |cRXP_WARN_que tienen armadura de hielo y choque de escarcha|r
	.collect 12888,1,5149,1 -- Pamela's Doll's Right Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	.use 12886 >>|cRXP_WARN_Haz clic en la|r |T134164:0|t[Cabeza de la muñeca de Pamela] |cRXP_WARN_para combinar las tres piezas|r
    .complete 5149,1 --Pamela's Doll (1)
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pamela|r
    .turnin 5149 >>Entrega la misión La muñeca de Pamela
    .accept 5152 >>Acepta la misión Tía Marlene
    .accept 5241 >>Acepta la misión Tío Carlin
	.target Pamela Redpath
    .isQuestComplete 5149
step
    #optional
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pamela|r
    .accept 5152 >>Acepta la misión Tía Marlene
    .accept 5241 >>Acepta la misión Tío Carlin
	.target Pamela Redpath
    .isQuestTurnedIn 5149
step
	#completewith RottingUndead
	.subzone 2264 >> Viaja al Cruce de Corin
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_No-muerto|r. Despójalos para obtener su |cRXP_LOOT_Putrefacción viva|r.
	>>|cRXP_WARN_Grupos de élites patrullan los caminos del norte y del este. Hay enemigos invisibles patrullando dentro del Cruce de Corin, así que intenta atraer a los enemigos hacia afuera|r
	.collect 15447,7 --Living Rot (7)
	.mob Hate Shrieker
	.mob Scourge Warder
	.mob Stitched Horror
	.mob Gibbering Ghoul
	.mob Unseen Servant
	.mob Dark Caster
step
	#label RottingUndead
    #loop
	.goto Eastern Plaguelands,58.20,70.20,0
	.goto Eastern Plaguelands,58.20,70.20,25,0
	.goto Eastern Plaguelands,60.40,71.60,25,0
	.goto Eastern Plaguelands,61.00,69.40,25,0
	.goto Eastern Plaguelands,61.40,66.40,25,0
	.goto Eastern Plaguelands,59.40,66.40,25,0
	.goto Eastern Plaguelands,58.00,67.60,25,0
	.use 15454 >>|cRXP_WARN_Usa el|r |T133748:0|t[Mortero y majadero] |cRXP_WARN_antes de que la |cRXP_LOOT_Putrefacción viva|r expire|r
    .complete 6022,1 --Coagulated Rot (1)
step
	#completewith LHFP
	.subzone 2268 >> Viaja a la Capilla de la Esperanza de la Luz
step
    .goto Eastern Plaguelands,79.60,63.87
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alen|r
    .accept 6021 >>Acepta la misión Zaeldarr el Marginado
    .accept 5281 >>Acepta la misión Espíritus inquietos
	.target Caretaker Alen
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carlin|r
    .turnin 5241 >>Entrega la misión Tío Carlin
    .accept 5211 >>Acepta la misión Los defensores de Villa Darrow
	.target Carlin Redpath
step
    .goto Eastern Plaguelands,81.627,58.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jessica Cuevas|r
    .home >> Establece tu Piedra de hogar en la Capilla de la Esperanza de la Luz
    .target Jessica Chambers
    .bindlocation 2268
    .subzoneskip 2268,1
step
    #completewith next
    .subzone 2273 >> Viaja a Zul'Mashar
step
	.goto Eastern Plaguelands,64.25,22.09,50,0
	.goto Eastern Plaguelands,68.57,20.95,50,0
	.goto Eastern Plaguelands,69.23,18.48
	>>Mata al |cRXP_ENEMY_Infiltrado Hameya|r. Despójalo para obtener su |cRXP_LOOT_Llave|r
	>>|cRXP_WARN_Deberías poder evitar a todos los enemigos en el camino de subida a la montaña. Pasa de largo corriendo junto a todos ellos y luego sube por las montañas hacia el este. No te acerques a las tumbas|r
    .complete 6024,1 --Hameya's Key (1)
	.unitscan Infiltrator Hameya
step
	#completewith Termites
	.subzone 2277 >> Viaja al Bosque de la Plaga
step
    #completewith Egan1
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
	.goto Eastern Plaguelands,26.48,37.58,0
	>>Mata |cRXP_ENEMY_Despellejadores malsanos|r y |cRXP_ENEMY_Necrófagos balbuceantes|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con los |cRXP_FRIENDLY_Espíritus de Villa Darrow|r que aparecen sobre los cadáveres
	>>|cRXP_WARN_Estos enemigos comparten puntos de aparición con algunos tipos de enemigos, así que mátalo todo después de que todos los necrófagos hayan muerto|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #label Termites
    #loop
    .goto Eastern Plaguelands,42.80,34.24,0
    .goto Eastern Plaguelands,39.97,21.11,50,0
    .goto Eastern Plaguelands,34.90,24.67,50,0
    .goto Eastern Plaguelands,30.69,24.99,50,0
    .goto Eastern Plaguelands,26.59,23.84,50,0
    .goto Eastern Plaguelands,24.19,23.62,50,0
    .goto Eastern Plaguelands,21.15,24.05,50,0
    .goto Eastern Plaguelands,20.90,29.89,50,0
    .goto Eastern Plaguelands,23.75,32.44,50,0
    .goto Eastern Plaguelands,26.48,37.58,50,0
    .goto Eastern Plaguelands,29.55,34.13,50,0
    .goto Eastern Plaguelands,34.89,35.29,50,0
    .goto Eastern Plaguelands,42.80,34.24,50,0
	>>Despoja los |cRXP_PICK_Montículos de termitas|r de color tostado para obtener sus |cRXP_LOOT_Termitas|r
    .complete 5901,1 --Plagueland Termites (100)
step
    #label Egan1
    .goto Eastern Plaguelands,14.45,33.74
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEntra en la casa, luego habla con |cRXP_FRIENDLY_Egan|r y |cRXP_FRIENDLY_Augustus|r
    .turnin 5281 >>Entrega la misión Espíritus inquietos
	.target Egan
    .isOnQuest 5281
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	>>Mata |cRXP_ENEMY_Despellejadores malsanos|r y |cRXP_ENEMY_Necrófagos balbuceantes|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con los |cRXP_FRIENDLY_Espíritus de Villa Darrow|r que aparecen sobre los cadáveres
	>>|cRXP_WARN_Estos enemigos comparten puntos de aparición con algunos tipos de enemigos, así que mátalo todo después de que todos los necrófagos hayan muerto|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
    >>Mata a más |cRXP_ENEMY_No-muerto|r en la zona para obtener |T133447:0|t[|cRXP_LOOT_Piedra de la Plaga del esbirro|r]
    .collect 12840,20 --Minion's Scourgestones (x20)
step
    #completewith next
    .hs >>Usa tu Piedra de hogar para ir a la Capilla de la Esperanza de la Luz
    .bindlocation 2268,1
    .subzoneskip 2268
    .cooldown item,6948,>2,1
step
    .goto Eastern Plaguelands,81.44,59.81
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nicholas|r y |cRXP_FRIENDLY_Carlin|r
	.turnin 5510 >>Entrega la misión Piedras de la Plaga del esbirro
	.target Duke Nicholas Zverenhoff
step
    .goto Eastern Plaguelands,81.05,57.55
    >>Habla con |cRXP_FRIENDLY_Metz|r
    .accept 9141 >> Acepta la misión Me llaman "El Gallo"
    .turnin 9141 >> Entrega la misión Me llaman "El Gallo"
    .target Dispatch Commander Metz
    .itemcount 12844,1 --Argent Dawn Valor Token (1)
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carlin|r
    .turnin 5211 >>Entrega la misión Los defensores de Villa Darrow
	.target Carlin Redpath
step
    #completewith UCvisit2
	.goto Eastern Plaguelands,80.22,57.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Georgia|r
    .fly Undercity >>Vuela a Entrañas
	.target Georgia
	.zoneskip Undercity
step
    .goto Undercity,69.79,43.16
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bauhaus|r
    .turnin 5023 >>Entrega la misión Más vale tarde que nunca
    .accept 5049 >>Acepta la misión La depre de Jeremiah
	.target Royal Overseer Bauhaus
step
    .goto Undercity,67.61,44.14
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeremiah|r
    .turnin 5049 >>Entrega la misión La depre de Jeremiah
    .accept 5050 >>Acepta la misión Talismán de buena suerte
	.target Jeremiah Payson
step
    .goto Undercity,51.88,64.49,30,0
    .goto Undercity,58.07,91.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylvanas|r
    .accept 5961 >>Acepta la misión Campeón de la Reina alma en pena
	.target Lady Sylvanas Windrunner
step
    #label UCvisit2
	#completewith next
    .goto Tirisfal Glades,61.85,66.59,60 >>Sal de Entrañas
	.zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandis|r
    .turnin 5234 >>Entrega la misión Regresa a El Baluarte
    .accept 5235 >>Acepta la misión Objetivo: Gangrena de Gahrron
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dithers|r
    .turnin 964 >>Entrega la misión Trozos esqueléticos
	.target Apothecary Dithers
    .isQuestComplete 964
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mickey|r
    .turnin 5901 >>Entrega la misión Una Peste en la Cruzada
    .accept 5902 >>Acepta la misión Una Peste en la Cruzada
	.target Mickey Levine
step
	#optional
    .isQuestTurnedIn 5901
    .destroy 15043 >>Destruye todas las |T134321:0|t[Termitas de las Tierras de la Peste] que te sobren
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSube al piso superior del edificio y luego habla con |cRXP_FRIENDLY_Janice|r
    .turnin 5050 >>Entrega la misión Talismán de buena suerte
    .accept 5051 >>Acepta la misión Dos mitades hacen una
	.target Janice Felstone
step
    #loop
	.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
	.goto Western Plaguelands,36.80,58.60,0
	.goto Western Plaguelands,36.80,58.60,50,0
	.goto Western Plaguelands,36.40,56.40,50,0
	.goto Western Plaguelands,37.40,55.60,50,0
	.goto Western Plaguelands,38.60,56.20,50,0
	.goto Western Plaguelands,37.80,57.60,50,0
	>>Mata al |cRXP_ENEMY_Necrófago farfullante|r. Despójalo para obtener el |cRXP_LOOT_Otro medio talismán de buena suerte|r
    .use 12722 >> Úsalo para crear el |cRXP_LOOT_Talismán de buena suerte|r
    .complete 5051,1 --Good Luck Charm (1)
	.unitscan Jabbering Ghoul
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janice|r en el piso superior del edificio
    .turnin 5051 >>Entrega la misión Dos mitades hacen una
	.target Janice Felstone
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marlene|r dentro de la casa
    .turnin 5152 >>Entrega la misión Tía Marlene
    .accept 5153 >>Acepta la misión Una extraña historiadora
	.target Marlene Redpath
step
    .goto Western Plaguelands,49.69,76.75
	>>Despoja el |cRXP_PICK_Monumento de Joseph Rutagrana|r para obtener la |cRXP_LOOT_Alianza de Joseph|r
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r en el piso superior de la posada
    .turnin 5153 >>Entrega la misión Una extraña historiadora
    .accept 5154 >>Acepta la misión Las Crónicas de Villa Darrow
    .turnin 4972 >>Entrega la misión Contar el tiempo
	.target Chromie
step
    .goto Western Plaguelands,43.4,69.6
	>>Despoja los |cRXP_PICK_Libros enmohecidos|r dentro del ayuntamiento hasta que despojes las |cRXP_LOOT_Crónicas de Villa Darrow|r
	>>|cRXP_WARN_Muchos libros son falsos y hacen aparecer enemigos al abrirlos. Los libros reales tienen las páginas completamente blancas, sin coloración gris u oscura. Es posible que tengas que hacer clic en libros falsos para que aparezca uno real|r
    .complete 5154,1 --Annals of Darrowshire (1)
	.link https://i.imgur.com/B2HDb6K.png >> Haz clic AQUÍ para ver un ejemplo visual
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r en el piso superior de la posada
    .turnin 5154 >>Entrega la misión Las Crónicas de Villa Darrow
    .accept 5210 >>Acepta la misión Carlin, el hermano de Joseph
	.target Chromie
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mulgris|r
    .turnin 4985 >>Entrega la misión La naturaleza también sufre
    .accept 4987 >>Acepta la misión Rama de roble con inscripciones
	.target Mulgris Deepriver
step
    .goto Western Plaguelands,62.80,58.76
    >>Mata al |cRXP_ENEMY_Señor de la caldera Iralma|r. Despójalo para obtener su |cRXP_LOOT_Llave de la caldera|r
	>>|cRXP_WARN_Este enemigo tiene una enfermedad que silencia 10 segundos|r << !Priest
	>>|cRXP_WARN_Este enemigo tiene una enfermedad que silencia 10 segundos; lanza Suprimir enfermedad de antemano y mantenla activa|r << Priest
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
	.unitscan Cauldron Lord Soulwrath
step
    .goto Western Plaguelands,62.5,58.6
	>>Haz clic en el |cRXP_PICK_Caldera de la Plaga|r que burbujea sobre la plataforma
    .turnin 5235 >>Entrega la misión Objetivo: Gangrena de Gahrron
    .accept 5236 >>Acepta la misión Regresa a El Baluarte
step
	.goto Eastern Plaguelands,28.03,86.16
	>>Haz clic en el |cRXP_PICK_Túmulo de barro|r detrás de la cripta
    .turnin 6024 >>Entrega la misión La súplica de Hameya
	.isQuestComplete 6024
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathanos|r
    .turnin 6022 >>Entrega la misión Matar con un propósito
	.turnin 5961 >>Entrega la misión Campeón de la Reina alma en pena
	.target Nathanos Blightcaller
step
	#completewith next
	.subzone 192 >>Viaja al Aserradero Crestanorte
step
	.goto Western Plaguelands,48.35,32.00
	>>Entra en el molino. Haz clic en el |cRXP_PICK_Cajón del Aserradero Crestanorte|r junto a la rampa, luego haz clic en la |cRXP_PICK_Barrica de termitas|r
    .turnin 5902 >>Entrega la misión Una Peste en la Cruzada
    .accept 6390 >>Acepta la misión Una Peste en la Cruzada
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r en el piso superior de la posada
    .turnin 5154 >>Entrega la misión Las Crónicas de Villa Darrow
	.target Chromie
step
	#completewith next
	.subzone 152 >>Viaja de regreso a El Baluarte
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandis|r
    .turnin 5236 >>Entrega la misión Regresa a El Baluarte
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.30,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mickey|r
    .turnin 6390 >>Entrega la misión Una Peste en la Cruzada
	.target Mickey Levine
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Derrington|r
    .turnin 5238 >>Entrega la misión ¡Misión cumplida!
	.target High Executor Derrington
step << skip
    .goto Tirisfal Glades,61.87,59.11
    >>|cRXP_WARN_Sube la Torre de Zepelín.|r
    .zone Stranglethorn Vale >>Toma el zepelín hacia Stranglethorn
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thysta|r
    .complete 64217,2 << Druid--Speak to Thysta at Grom'gol Base Camp (1)
    .complete 64063,2 << !Druid--Speak to Thysta at Grom'gol Base Camp (1)
	.target Thysta
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thysta|r
	.fly Stonard >> Vuela a Rocal
	.target Thysta
    .subzoneskip 75
step << skip
	#completewith next
	.goto Swamp of Sorrows,33.4,71.9,60,0
	.goto Swamp of Sorrows,33.2,68.4,60,0
	.zone Blasted Lands >> Viaja a Las Tierras Devastadas

step << skip
    .goto Blasted Lands,58.1,56.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Señor de la Guerra Dar'toon|r
    --.turnin 64063 >>Turn in The Dark Portal << !Druid
    --.turnin 64217 >>Turn in The Dark Portal << Druid
    --.accept 9407 >>Accept Through the Dark Portal
    .target Warlord Dar'toon

]])
