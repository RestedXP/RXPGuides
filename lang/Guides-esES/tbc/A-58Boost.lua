if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#name Personaje Mejorado 58-60
#subgroup RestedXP Alianza Mejorado 58-60
#subweight -1
#title Boosted Character 58-60 (NOT TRANSLATED IN :esMX YET)
#next 59-61 Península del Fuego Infernal

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
step
    .isOnQuest 64038
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .complete 64038,1 --Speak to Dungar Longdrink, the Gryphon Master (1)
    .fly Morgan's Vigil >> Vuela a la Vigilia de Morgan
    .target Dungar Longdrink
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helendis Rivacuerno|r
    .accept 4182 >> Acepta la misión La amenaza de los dragonantes
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,81.8,27.8,0
    .goto Burning Steppes,91.4,32.6,0
    .goto Burning Steppes,89.8,54.6,0
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Mata |cRXP_ENEMY_Estirpes negras|r, |cRXP_ENEMY_Dragauros negros|r, |cRXP_ENEMY_Vermintes negros|r y a un |cRXP_ENEMY_Draco negro|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Wyrmkin
    .complete 4182,3 -- Black Drake slain
    .mob +Black Drake
    .isOnQuest 4182
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helendis Rivacuerno|r
    .turnin 4182 >> Entrega la misión La amenaza de los dragonantes
    .accept 4183 >> Acepta la misión Los verdaderos maestros
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borgus Brazorrecio|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .turnin 4183 >> Entrega la misión Los verdaderos maestros
    .accept 4184 >> Acepta la misión Los verdaderos maestros
    .target Magistrate Solomon
step << Mage
    .isOnQuest 4184
    .cast 3561 >>|cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,47.87,31.31,8,0
    .goto Stormwind City,47.87,31.31,6 >>Viaja hacia el |cRXP_FRIENDLY_Agente Real Bathrilor|r en el piso de arriba
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Bolvar Fordragón|r
    .turnin 4184 >> Entrega la misión Los verdaderos maestros
    .accept 4185 >> Acepta la misión Los verdaderos maestros
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Bolvar Fordragón|r
    .turnin 4185 >> Entrega la misión Los verdaderos maestros
    .accept 4186 >> Acepta la misión Los verdaderos maestros
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
    .turnin 4186 >> Entrega la misión Los verdaderos maestros
    .accept 4223 >> Acepta la misión Los verdaderos maestros
    .target Magistrate Solomon
step
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Burning Steppes>> Vuela a Las Estepas Ardientes
    .target Ariena Stormfeather
    .zoneskip Burning Steppes
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mariscal Maxwell|r
    .turnin 4223 >> Entrega la misión Los verdaderos maestros
    .target Marshal Maxwell
step
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borgus Brazorrecio|r
    .fly Southshore >>Vuela a Costasur
    .target Borgus Stoutarm
step
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Anderson|r
    .home >> Establece tu Piedra de hogar en Costasur
    .target Innkeeper Anderson
    .bindlocation 271
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Vuela al Campamento del Orvallo
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Truuen|r
    >>|cRXP_WARN_Omite este paso si él no está aquí|r
    .accept 9474 >> Acepta la misión La marca del Iluminado
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .accept 5092 >> Acepta la misión Despejar el camino
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.967,83.546
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Oficial Argenta Purocorazón|r
    .accept 5401 >> Acepta la misión Comisión de El Alba Argenta
    .turnin 5401 >> Entrega la misión Comisión de El Alba Argenta
    .target Argent Officer Pureheart
step
    #completewith ADC
    .cast 17670 >> |cRXP_WARN_Equipa la|r |T133440:0|t[Comisión de El Alba Argenta] |cRXP_WARN_para empezar a recolectar|r |T133447:0|t[Piedras de la Plaga]
    .use 12846
step
    .goto Western Plaguelands,43.419,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathaniel Dumah|r
    .accept 5903 >> Acepta la misión Una Peste en la Cruzada
    .target Nathaniel Dumah
step
    #completewith next
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bibilfaz Plumasilba|r
    .fly Eastern Plaguelands >> Vuela a Tierras de la Peste del Este
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Custodio Alen|r
    .accept 5281 >> Acepta la misión Espíritus inquietos
    .accept 6021 >> Acepta la misión Zaeldarr el Marginado
    .target Caretaker Alen
step << Hunter
    #sticky
    .tame 8602 >> |cRXP_WARN_If your pet has no abilities other than|r |T132270:0|t[Growl]|cRXP_WARN_, ditch your pet and tame a level 58 |cRXP_ENEMY_Murciélago|r on your way to Plaguewood|r
    >>|cRXP_WARN_Compra|r |T134526:0|t[Dried King Bolete] |cRXP_WARN_para alimentar a tu nueva mascota|r
    .collect 8948,20
    .goto Eastern Plaguelands,79.5,64.0
step
    #sticky
    .abandon 5211 >>Abandona Los defensores de Villa Darrow, si tienes esta misión
step
    #loop
    .goto Eastern Plaguelands,41.2,25.2,0
    .goto Eastern Plaguelands,42.1,38.2,0
    .goto Eastern Plaguelands,32.0,35.8,0
    .goto Eastern Plaguelands,33.8,25.8,0
    .goto Eastern Plaguelands,29.9,23.1,0
    .goto Eastern Plaguelands,26.5,37.5,0
    .goto Eastern Plaguelands,20.4,20.8,0
    .goto Eastern Plaguelands,31.4,29.6,0
    .goto Eastern Plaguelands,41.2,25.2,70,0
    .goto Eastern Plaguelands,42.1,38.2,70,0
    .goto Eastern Plaguelands,32.0,35.8,70,0
    .goto Eastern Plaguelands,33.8,25.8,70,0
    .goto Eastern Plaguelands,29.9,23.1,70,0
    .goto Eastern Plaguelands,26.5,37.5,70,0
    .goto Eastern Plaguelands,20.4,20.8,70,0
    .goto Eastern Plaguelands,31.4,29.6,70,0
    >>Abre los |cRXP_PICK_Montículos grandes de termitas|r por todo el Bosque de la Plaga. Despójalos para obtener las |cRXP_LOOT_Termitas de las Tierras de la Peste|r
    .complete 5903,1 --Collect Plagueland Termites (x100)
step
    #label Egan
    .goto Eastern Plaguelands,14.448,33.740
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >> Entrega la misión Espíritus inquietos
    .target Egan
step
    .hs >> Usa tu Piedra de hogar para ir a Costasur
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Vuela al Campamento del Orvallo
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Truuen|r
    >>|cRXP_WARN_Omite este paso si él no está aquí|r
    .accept 9474 >> Acepta la misión La marca del Iluminado
	.target Anchorite Truuen
step
    .goto Western Plaguelands,48.91,80.84,70,0
    .goto Western Plaguelands,50.01,76.90
    >>Mata |cRXP_ENEMY_Despellejadores esqueléticos|r y |cRXP_ENEMY_Necrófagos esclavizantes|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marlene Rutagrana|r
    >>|cRXP_FRIENDLY_Marlene Rutagrana|r también puede estar arriba
    .accept 5142 >> Acepta la misión La pequeña Pamela
    .target Marlene Redpath
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .turnin 5092 >> Entrega la misión Despejar el camino
    .accept 5215 >> Acepta la misión Las calderas de la Plaga
    .accept 5097 >> Acepta la misión Todas las atalayas
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa MacDonnell|r
    .turnin 5215 >> Entrega la misión Las calderas de la Plaga
    .accept 5216 >> Acepta la misión Objetivo: Campo de Piedramácula
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >> Entrega la misión Una Peste en la Cruzada
    .accept 5904 >> Acepta la misión Una Peste en la Cruzada
    .target Nathaniel Dumah
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
    .complete 5097,1 --Tower One marked
step
    .goto Western Plaguelands,37.015,57.145
    >>Mata al |cRXP_ENEMY_Señor de la caldera Garravil|r. Despójalo para obtener la |cRXP_LOOT_Llave de la caldera del Campo de Piedramácula|r
    >>|cRXP_ENEMY_Señor de la caldera Garravil|r |cRXP_WARN_puede aparecer cuando te acerques a la|r |cRXP_PICK_Caldera de la Plaga|r
    .complete 5216,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.194,56.860
    >>Haz clic en la |cRXP_PICK_Caldera de la Plaga|r
    .turnin 5216 >> Entrega la misión Objetivo: Campo de Piedramácula
    .accept 5217 >> Acepta la misión Regresa al Campamento del Orvallo
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
    .complete 5097,2 --Tower Two marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
    .complete 5097,3 --Tower Three marked
step
    #label ADC
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Usa la|r |T135432:0|t[Antorcha de aviso] |cRXP_WARN_junto a la entrada de la Torre|r
    .complete 5097,4 --Tower Four marked
step
    #completewith next
    .subzone 3197 >> Viaja al Campamento del Orvallo
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .turnin 5097 >> Entrega la misión Todas las atalayas
    .accept 5533 >> Acepta la misión Scholomance
    .target Commander Ashlam Valorfist
step
    #sticky
    #optional
    .isQuestTurnedIn 5097
    .destroy 12815 >> Destruye la |T135432:0|t[Antorcha de aviso]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Alquimista Arbington|r
    >>|cRXP_WARN_No aceptes la siguiente misión todavía|r
    .turnin 5533 >> Entrega la misión Scholomance
    .accept 5537 >>Acepta la misión Trozos esqueléticos
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa MacDonnell|r
    .turnin 5217 >> Entrega la misión Regresa al Campamento del Orvallo
    .accept 5219 >> Acepta la misión Objetivo: Llanto de Dalson
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mulgris Río Hondo|r
    >>Los |cRXP_ENEMY_Necrófagos congelados|r |cRXP_WARN_lanzan|r |T135848:0|t[Congelación apresurada]|cRXP_WARN_. Esta habilidad aturde durante 5 segundos. Evita atraer múltiples enemigos a la vez|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .accept 4984 >> Acepta la misión La naturaleza también sufre
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,49.2,58.4,0
    .goto Western Plaguelands,51.6,47.6,0
    .goto Western Plaguelands,43.0,48.2,0
    .goto Western Plaguelands,43.4,57.8,0
    .goto Western Plaguelands,49.2,58.4,70,0
    .goto Western Plaguelands,51.6,47.6,70,0
    .goto Western Plaguelands,43.0,48.2,70,0
    .goto Western Plaguelands,43.4,57.8,70,0
    .goto Western Plaguelands,46.6,40.4,70,0
    >>Mata |cRXP_ENEMY_Lobos malsanos|r
    >>Los |cRXP_ENEMY_Lobos malsanos|r |cRXP_WARN_comparten puntos de aparición con los |cRXP_ENEMY_Rondadores carroñeros|r. Posiblemente necesites matarlos para forzar que los |cRXP_ENEMY_Lobos malsanos|r aparezcan|r
    .complete 4984,1 --Kill Diseased Wolf (x8)
    .unitscan Diseased Wolf
step
    .goto Western Plaguelands,47.796,50.671
    >>|cRXP_WARN_Entra en el Granero del Llanto de Dalson|r
    >>Haz clic en el |cRXP_PICK_Diario de la señora Dalson|r en el suelo
    .accept 5058 >> Acepta la misión El diario de la señorita Dalson
    .turnin 5058 >> Entrega la misión El diario de la señorita Dalson
step
    .goto Western Plaguelands,47.86,49.88,25,0
    .goto Western Plaguelands,48.48,51.56,25,0
    .goto Western Plaguelands,47.39,51.77,25,0
    .goto Western Plaguelands,46.64,49.21,25,0
    .goto Western Plaguelands,47.86,49.88
    >>Mata al |cRXP_LOOT_Esqueleto deambulante|r. Despójalo para obtener la |cRXP_LOOT_Llave de la letrina de Dalson|r
    >>|cRXP_WARN_El |cRXP_LOOT_Esqueleto deambulante|r patrulla alrededor del Granero y la Casa del Llanto de Dalson|r
    .collect 12738,1,5060,1 --Collect Dalson Outhouse Key (x1)
    .unitscan Wandering Skeleton
step
    #completewith next
    .goto Western Plaguelands,48.109,49.654
    >>Haz clic en la |cRXP_PICK_Letrina|r para invocar al |cRXP_ENEMY_Granjero Dalson|r
    .turnin 5059 >> Entrega la misión Encierro
step
    .goto Western Plaguelands,48.115,49.814
    >>Mata al |cRXP_ENEMY_Granjero Dalson|r. Despójalo para obtener la |cRXP_LOOT_Llave del armario de Dalson|r
    .collect 12739,1,5060,1 --Collect Dalson Cabinet Key (x1)
    .mob Farmer Dalson
step
    .goto Western Plaguelands,47.353,49.626
    >>Haz clic en el |cRXP_PICK_Armario cerrado|r arriba en el piso superior de la casa
    .turnin 5060 >> Entrega la misión Encierro
step
    .goto Western Plaguelands,46.156,52.427
    >>Mata al |cRXP_ENEMY_Señor de la caldera Molevolus|r. Despójalo para obtener la |cRXP_LOOT_Llave de la caldera del Llanto de Dalson|r
    >>|cRXP_ENEMY_Señor de la caldera Molevolus|r |cRXP_WARN_puede aparecer cuando te acerques a la|r |cRXP_PICK_Caldera|r
    .complete 5219,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Malvinious
step
    #label DalsonCauldron
    .goto Western Plaguelands,46.176,52.009
    >>Haz clic en la |cRXP_PICK_Caldera de la Plaga|r
    .turnin 5219 >> Entrega la misión Objetivo: Llanto de Dalson
    .accept 5220 >> Acepta la misión Regresa al Campamento del Orvallo
step
    .goto Western Plaguelands,48.348,31.996
    >>Haz clic en el |cRXP_PICK_Cajón del Aserradero Crestanorte|r para colocar la |cRXP_PICK_Barrica de termitas|r y luego haz clic en la |cRXP_PICK_Barrica de termitas|r después
    .skipgossip
    .turnin 5904 >> Entrega la misión Una Peste en la Cruzada
    .accept 6389 >> Acepta la misión Una Peste en la Cruzada
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta Sombraprofunda|r
    .accept 6004 >> Acepta la misión Negocios inconclusos
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,50.85,40.68,60,0
    .goto Western Plaguelands,51.97,44.47,60,0
    .goto Western Plaguelands,41.23,51.54,60,0
    .goto Western Plaguelands,50.85,40.68
    >>Mata |cRXP_ENEMY_Médicos Escarlata|r, |cRXP_ENEMY_Cazadores Escarlata|r, |cRXP_ENEMY_Magos Escarlata|r y |cRXP_ENEMY_Caballeros Escarlata|r
    >>|cRXP_ENEMY_Médicos Escarlata|r |cRXP_WARN_y |cRXP_ENEMY_Cazadores Escarlata|r comparten puntos de aparición|r
    >>|cRXP_ENEMY_Magos Escarlata|r |cRXP_WARN_y |cRXP_ENEMY_Caballeros Escarlata|r comparten puntos de aparición|r
    .complete 6004,1 --Scarlet Medic (2)
    .mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
    .mob +Scarlet Hunter
    .complete 6004,3 --Scarlet Mage (2)
    .mob +Scarlet Mage
    .complete 6004,4 --Scarlet Knight (2)
    .mob +Scarlet Knight
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta Sombraprofunda|r
    .turnin 6004 >> Entrega la misión Negocios inconclusos
    .accept 6023 >> Acepta la misión Negocios inconclusos
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,56.38,34.11,50,0
    .goto Western Plaguelands,57.83,36.10
    >>Mata a la |cRXP_ENEMY_Montero Radley|r
    .complete 6023,1 --Kill Huntsman Radley (x1)
    .mob Huntsman Radley
step
    #completewith next
    >>Mata al |cRXP_ENEMY_Hidalgo Durgen|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    *|cRXP_WARN_Hay un enemigo élite de nivel 63 que puede aparecer en la torre, si es el caso, simplemente ten paciencia y espera a que el |cRXP_ENEMY_Hidalgo Durgen|r baje|r
    .unitscan Cavalier Durgen
step
    .isOnQuest 9474
    .goto Western Plaguelands,55.192,23.511
    >>Abre el |cRXP_PICK_Arca sagrada|r en lo alto de la torre. Despójala para obtener la |cRXP_LOOT_Marca del Iluminado|r
    .complete 9474,1 --Collect Mark of the Lightbringer (x1)
step
    #completewith next
    .goto Western Plaguelands,54.520,23.818
    >>Mata al |cRXP_ENEMY_Hidalgo Durgen|r
    >>|cRXP_WARN_Puede que esté patrullando subiendo y bajando por la torre|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    .unitscan Cavalier Durgen
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta Sombraprofunda|r
    .turnin 6023 >> Entrega la misión Negocios inconclusos
    .accept 6025 >> Acepta la misión Negocios inconclusos
    .target Kirsta Deepshadow
step
    #completewith next
    .goto Western Plaguelands,45.7,18.8
    .subzone 190 >> Viaja a Vega del Amparo
step
    .goto Western Plaguelands,45.7,18.8
    >>Asciende por la Torre de Vega del Amparo
    >>|cRXP_WARN_Puedes correr directo hasta arriba y saltar abajo o abrirte paso limpiando la subida|r
    >>|cRXP_WARN_Evita al |cRXP_ENEMY_Sumo Protector Lorik|r que es un Élite fuerte que merodea por Vega del Amparo|r
    .complete 6025,1 -- Overlook Hearthglen from a high vantage point
    .unitscan High Protector Lorik
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirsta Sombraprofunda|r
    .turnin 6025 >> Entrega la misión Negocios inconclusos
    .isQuestComplete 6025
    .target Kirsta Deepshadow
step
    #completewith next
    .subzone 3197 >> Viaja al Campamento del Orvallo
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa MacDonnell|r
    .target High Priestess MacDonnell
    .turnin 5220 >> Entrega la misión Regresa al Campamento del Orvallo
    .accept 5222 >> Acepta la misión Objetivo: El Tormento
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Truuen|r
    .turnin 9474 >> Entrega la misión La marca del Iluminado
	.target Anchorite Truuen
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 6389 >> Entrega la misión Una Peste en la Cruzada
    .target Nathaniel Dumah
step
    #completewith CountingTime
    >>Mata |cRXP_ENEMY_Verdugos esqueléticos|r y |cRXP_ENEMY_Acólitos esqueléticos|r. Despójalos para obtener sus |cRXP_LOOT_Trozos esqueléticos|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r arriba
    .accept 4971 >> Acepta la misión Una cuestión de tiempo
    .target Chromie
step
    .goto Western Plaguelands,45.172,62.559,25,0
    .goto Western Plaguelands,46.858,62.040,25,0
    .goto Western Plaguelands,48.324,62.610,25,0
    .goto Western Plaguelands,48.10,63.92,20,0
    .goto Western Plaguelands,48.06,66.18
    >>Mata |cRXP_ENEMY_Parásitos temporales|r
    .use 12627 >>|cRXP_WARN_Usa el|r |T134229:0|t[Desplazador temporal] |cRXP_WARN_en los silos para hacer que aparezcan. Si el silo no emite un pulso azul, no podrán aparecer los |r |cRXP_ENEMY_Parásitos temporales|r
    >>|cRXP_WARN_Múltiples |cRXP_ENEMY_Parásitos temporales|r pueden aparecer al mismo tiempo, y una vez que uno muere, otro puede aparecer instantáneamente. También seguirán lanzando|r |T136091:0|t[Ralentizar] |cRXP_WARN_sobre ti, reduciendo severamente tu velocidad de movimiento y de ataque|r
    >>|cRXP_WARN_¡Los |cRXP_ENEMY_Parásitos|r no pueden nadar! Si te ves superado por su número, intenta correr hacia el|r |T135861:0|t[|cRXP_LOOT_Agua|r] |cRXP_WARN_para evadirlos|r
    .complete 4971,1 -- Temporal Parasite slain (15)
    .mob Temporal Parasite
step
    #label CountingTime
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r
    .turnin 4972 >> Entrega la misión Contar el tiempo
    .target Chromie
step
    #loop
    .goto Western Plaguelands,37.8,70.6,0
    .goto Western Plaguelands,42.6,73.8,0
    .goto Western Plaguelands,49.6,69.4,0
    .goto Western Plaguelands,49.6,63.6,0
    .goto Western Plaguelands,43.0,63.4,0
    .goto Western Plaguelands,39.8,67.4,0
    .goto Western Plaguelands,37.8,70.6,70,0
    .goto Western Plaguelands,42.6,73.8,70,0
    .goto Western Plaguelands,49.6,69.4,70,0
    .goto Western Plaguelands,49.6,63.6,70,0
    .goto Western Plaguelands,43.0,63.4,70,0
    .goto Western Plaguelands,39.8,67.4,70,0
    >>Mata |cRXP_ENEMY_Verdugos esqueléticos|r y |cRXP_ENEMY_Acólitos esqueléticos|r. Despójalos para obtener sus |cRXP_LOOT_Trozos esqueléticos|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,53.020,65.718
    >>Haz clic en la |cRXP_PICK_Caldera de la Plaga|r
    .turnin 5222 >> Entrega la misión Objetivo: El Tormento
    .accept 5223 >> Acepta la misión Regresa al Campamento del Orvallo
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mulgris Río Hondo|r
    >>Los |cRXP_ENEMY_Necrófagos congelados|r |cRXP_WARN_lanzan|r |T135848:0|t[Congelación apresurada]|cRXP_WARN_. Esta habilidad aturde durante 5 segundos. Evita atraer múltiples enemigos a la vez|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4984 >> Entrega la misión La naturaleza también sufre
    .accept 4985 >> Acepta la misión La naturaleza también sufre
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,58.8,58.6,0
    .goto Western Plaguelands,53.6,48.0,0
    .goto Western Plaguelands,58.8,52.6,0
    .goto Western Plaguelands,67.2,46.6,0
    .goto Western Plaguelands,66.0,55.6,0
    .goto Western Plaguelands,60.8,50.8,0
    .goto Western Plaguelands,58.8,58.6,70,0
    .goto Western Plaguelands,53.6,48.0,70,0
    .goto Western Plaguelands,58.8,52.6,70,0
    .goto Western Plaguelands,67.2,46.6,70,0
    .goto Western Plaguelands,66.0,55.6,70,0
    .goto Western Plaguelands,60.8,50.8,70,0
    >>Mata |cRXP_ENEMY_Osos pardos malsanos|r
    >>Los |cRXP_ENEMY_Osos pardos malsanos|r |cRXP_WARN_comparten puntos de aparición con los |cRXP_ENEMY_Rondadores de peste|r. Posiblemente necesites matarlos para forzar que los |cRXP_ENEMY_Osos pardos malsanos|r aparezcan|r
    .complete 4985,1 -- Diseased Grizzly slain (8)
    .unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mulgris Río Hondo|r
    >>Los |cRXP_ENEMY_Necrófagos congelados|r |cRXP_WARN_lanzan|r |T135848:0|t[Congelación apresurada]|cRXP_WARN_. Esta habilidad aturde durante 5 segundos. Evita atraer múltiples enemigos a la vez|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4985 >> Entrega la misión La naturaleza también sufre
    .accept 4986 >> Acepta la misión Rama de roble con inscripciones << Mage
    .target Mulgris Deepriver
step
    #completewith next
    .subzone 3197 >> Viaja al Campamento del Orvallo
    .zoneskip Hillsbrad Foothills
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa MacDonnell|r
    .turnin 5223 >> Entrega la misión Regresa al Campamento del Orvallo
    .accept 5225 >> Acepta la misión Objetivo: Gangrena de Gahrron
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,62.573,58.573
    >>Haz clic en la |cRXP_PICK_Caldera de la Plaga|r
    .turnin 5225 >> Entrega la misión Objetivo: Gangrena de Gahrron
    .accept 5226 >> Acepta la misión Regresa al Campamento del Orvallo
step
    #completewith next
    .goto Eastern Plaguelands,27.850,86.245,15 >> Entra en la cripta de La Subgranja
step
    .goto Eastern Plaguelands,27.467,84.853
    >>Mata a |cRXP_ENEMY_Zaeldarr el Marginado|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 6021,1 -- Zaeldarr's Head (1)
    .mob Zaeldarr the Outcast
step
    .isOnQuest 5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pamela Rutagrana|r
    .turnin 5142 >> Entrega la misión La pequeña Pamela
    .accept 5149 >> Acepta la misión La muñeca de Pamela
    .target Pamela Redpath
step
    .isQuestTurnedIn 5601,5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pamela Rutagrana|r
    .accept 5149 >> Acepta la misión La muñeca de Pamela
    .target Pamela Redpath
step
    .goto Eastern Plaguelands,38.038,92.549,15,0
    .goto Eastern Plaguelands,39.643,92.522,15,0
    .goto Eastern Plaguelands,39.622,90.079
    >>Despoja |T134164:0|t[|cRXP_LOOT_Cabeza de la muñeca de Pamela|r], |T134230:0|t[|cRXP_LOOT_Parte izquierda de la muñeca de Pamela|r] y |T134230:0|t[|cRXP_LOOT_Parte derecha de la muñeca de Pamela|r] por los edificios
    >>|cRXP_WARN_Todas aparecen aleatoriamente en cualquiera de los 3 edificios en Villa Darrow|r
    .collect 12886,1,5149,1 -- Pamela's Doll's Head (1)
    .collect 12887,1,5149,1 -- Pamela's Doll's Left Side (1)
    .collect 12888,1,5149,1 -- Pamela's Doll's Right Side (1)
step
    >>|cRXP_WARN_Usa la|r |T134164:0|t[|cRXP_LOOT_Cabeza de la muñeca de Pamela|r]|cRXP_WARN_,|r |T134230:0|t[|cRXP_LOOT_Parte izquierda de la muñeca de Pamela|r] |cRXP_WARN_o|r |T134230:0|t[|cRXP_LOOT_Parte derecha de la muñeca de Pamela|r] |cRXP_WARN_para combinarlas en la|r |cRXP_LOOT_Muñeca de Pamela|r
    .complete 5149,1 --Collect Pamela's Doll (x1)
    .use 12886
    .use 12887
    .use 12888
step
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pamela Rutagrana|r
    .turnin 5149 >> Entrega la misión La muñeca de Pamela
    .accept 5152 >> Acepta la misión Tía Marlene
    .accept 5241 >> Acepta la misión Tío Carlin
    .target Pamela Redpath
step
    .hs >> Usa tu Piedra de hogar para ir a Costasur
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Vuela al Campamento del Orvallo
    .target Darla Harris
    .zoneskip Western Plaguelands
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa MacDonnell|r
    .turnin 5226 >> Entrega la misión Regresa al Campamento del Orvallo
    .target High Priestess MacDonnell
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anacoreta Truuen|r
    .turnin 9474 >> Entrega la misión La marca del Iluminado
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    .target Commander Ashlam Valorfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Comandante Ashlam Puñovalor|r
    .accept 5237 >> Acepta la misión ¡Misión cumplida!
    .turnin 5237 >> Entrega la misión ¡Misión cumplida!
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Alquimista Arbington|r
    .turnin 5537 >> Entrega la misión Trozos esqueléticos
    .target Alchemist Arbington
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marlene Rutagrana|r
    >>|cRXP_FRIENDLY_Marlene Rutagrana|r también puede estar arriba
    .turnin 5152 >> Entrega la misión Tía Marlene
    .accept 5153 >> Acepta la misión Una extraña historiadora
    .target Marlene Redpath
step
    .goto Western Plaguelands,49.696,76.754
    >>Haz clic en el |cRXP_PICK_Monumento de Joseph Rutagrana|r. Despójalo para obtener la |cRXP_LOOT_Alianza de Joseph|r
    .complete 5153,1 -- Collect Joseph's Wedding Ring (x1)
step
    .isQuestComplete 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r arriba
    .turnin 4971 >>Entrega la misión Una Cuestión de Tiempo
    .accept 4972 >>Acepta la misión Contar el tiempo
    .turnin 5153 >>Entrega la misión Una extraña historiadora
    .accept 5154 >>Acepta la misión Las Crónicas de Villa Darrow
    .target Chromie
step
    .isQuestTurnedIn 4971
    #loop
    .goto Western Plaguelands,38.71,68.25,0
    .goto Western Plaguelands,38.51,69.74,0
    .goto Western Plaguelands,40.63,68.40,0
    .goto Western Plaguelands,41.08,67.45,0
    .goto Western Plaguelands,40.69,66.16,0
    .goto Western Plaguelands,41.46,69.85,0
    .goto Western Plaguelands,42.17,68.88,0
    .goto Western Plaguelands,42.67,70.31,0
    .goto Western Plaguelands,38.71,68.25,20,0
    .goto Western Plaguelands,38.51,69.74,20,0
    .goto Western Plaguelands,40.63,68.40,20,0
    .goto Western Plaguelands,41.08,67.45,20,0
    .goto Western Plaguelands,40.69,66.16,20,0
    .goto Western Plaguelands,41.46,69.85,15,0
    .goto Western Plaguelands,42.17,68.88,20,0
    .goto Western Plaguelands,42.67,70.31,20,0
    >>Abre los |cRXP_PICK_Arcones pequeños|r. Despójalos para obtener los |cRXP_LOOT_Relojes de Andorhal|r
    >>|cRXP_WARN_Se encuentran dentro de las casas quemadas|r
    .complete 4972,1 --Collect Andorhal Watch (x5)
step
    #completewith next
    .goto Western Plaguelands,43.822,69.250,10,0 >> Entra en el Ayuntamiento de las Ruinas de Andorhal
step
    .goto Western Plaguelands,43.50,69.46
    >>Entra en el Ayuntamiento de las Ruinas de Andorhal
    >>Abre los |cRXP_PICK_Libros enmohecidos|r. Despójalos para obtener las |cRXP_LOOT_Crónicas de Villa Darrow|r
    >>|cRXP_WARN_El |cRXP_PICK_Libro enmohecido|r correcto tendrá sus páginas de un tono completamente oscuro, o tendrá una mancha marrón. Si es solo mitad blanco y mitad negro, es una trampa|r
    >>|cRXP_WARN_Puede haber ocasiones en las que todos los |cRXP_PICK_Libros enmohecidos|r sean trampas y debas abrirlos para forzar que aparezca uno correcto|r
    .complete 5154,1 --Collect Annals of Darrowshire (x1)
    .link https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia sobre cómo identificar el|r Libro enmohecido|cRXP_PICK_ correcto|r
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r
    .turnin 4972 >>Entrega la misión Contar el tiempo
    .turnin 5154 >>Entrega la misión Las Crónicas de Villa Darrow
    .accept 5210 >>Acepta la misión Carlin, el hermano de Joseph
    .target Chromie
step
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bibilfaz Plumasilba|r
    .fly Eastern Plaguelands >> Vuela a Tierras de la Peste del Este
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carlin Rutagrana|r
    .turnin 5241 >>Entrega la misión Tío Carlin
    .turnin 5210 >>Entrega la misión Carlin, el hermano de Joseph
    .accept 5181 >>Acepta la misión Los villanos de Villa Darrow
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Custodio Alen|r
    .turnin 6021 >> Entrega la misión Zaeldarr el Marginado
    .target Caretaker Alen
step
    .goto Eastern Plaguelands,51.41,49.70,0
    .xp 60-8750 >> Sube de nivel hasta que te falten 8750 puntos de experiencia para el nivel 60
step
    .goto Eastern Plaguelands,51.106,49.937
    >>Despoja el |cRXP_LOOT_Cráneo de Horgus|r bajo el agua
    .complete 5181,1 --Collect Skull of Horgus (x1)
step
    .goto Eastern Plaguelands,53.913,65.755
    >>Despoja la |cRXP_LOOT_Espada destrozada de Marduk|r del suelo
    .complete 5181,2 --Collect Shattered Sword of Marduk (x1)
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carlin Rutagrana|r
    .turnin 5181 >>Entrega la misión Los villanos de Villa Darrow
    .target Carlin Redpath
step << Mage
    .cast 3561 >>|cRXP_WARN_Lanza|r |T135763:0|t[Teletransporte a: Ventormenta]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .goto Eastern Plaguelands,81.637,59.280
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khaelyn Alacerada|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Khaelyn Steelwing
    .zoneskip Stormwind City
    .zoneskip Hellfire Peninsula
]])
