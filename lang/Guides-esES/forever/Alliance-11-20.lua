if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance !NightElf
#name 13-15 Páramos de Poniente
#displayname 14-15 Páramos de Poniente << Dwarf/Gnome
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#next 14-16 Costa Oscura
#defaultfor !NightElf !Hunter/!Dwarf !Hunter/!Human !Hunter/!Skyborne !Hunter

--Going to Darkshore if already 15

step
    #optional
    .maxlevel 14,endOfTheGuide
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 16509

step
    #label NEWestfallStart --hidden step for #include

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregar las misiones más rápido en Páramos de Poniente pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
    -->>|T4548890:0|t[Golem Isospring]
    -->>|T132995:0|t[Harvester Gyrostabilizer]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    --.collect 255007,14,92909,1 -- Golem Isospring (14)
    --.collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
step << Human
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .turnin 6261 >> Entrega la misión Dungar Tragolargo
    .accept 6285 >> Acepta la misión Regresa junto a Lewis
    .target Dungar Longdrink
step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente << !NightElf
    .fp Stormwind >> Consigue la Ruta de Vuelo de Ventormenta << NightElf
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >> Viaja a Páramos de Poniente
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verna Cejade|r
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Viaja a la Finca de Saldean
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .accept 9 >> Acepta la misión Campos de la muerte
    .accept 109 >>Acepta la misión Habla con Gryan Mantorrecio << !Human
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .target Salma Saldean
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >> Acepta la misión Pastel de hígado de dentosangre
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .target Quartermaster Lewis
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >> Entrega la misión Regresa junto a Lewis
step << !Human
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 12 >> Acepta la misión La Milicia Popular
    .turnin 98021 >>Entrega la misión Viaje a la Colina del Centinela << Skyborne
step << skip
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Heather|r
    .vendor >>|cRXP_BUY_Compra comida/agua si es necesario|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Lunaclara::253092|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Acepta la misión Pruebas en los pozos
    .accept 92744 >>Acepta la misión Branquias de múrloc
step
	#completewith bennytime
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener el |cRXP_LOOT_Puñado de avena|r
    >>|cRXP_WARN_Generalmente puedes encontrarlos cerca de las vallas de las granjas o de los edificios|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Mata |cRXP_ENEMY_Dentosangre jóvenes|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne de buitre|r, |cRXP_LOOT_Morros|r e |cRXP_LOOT_Hígados|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >> Viaja a la Hacienda de Alexston
    >>|cRXP_WARN_Ve completando los otros objetivos de misión mientras te diriges hacia allí|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r en el granero
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
step
    #sticky
    #completewith bennytime
    >>Mata |cRXP_ENEMY_Vigilantes de la cosecha|r ubicados en cualquiera de los campos mientras corres cerca de ellos
    >>Despójalos para obtener su |cRXP_LOOT_Okra|r y sus |cRXP_LOOT_Frascos de aceite|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Abre el |cRXP_PICK_Cofre de Alexston|r. Despójalo para obtener |cRXP_LOOT_Una sencilla brújula|r
    >>|cRXP_WARN_Evita a los enemigos frente al edificio quemado. Despoja esto desde atrás, junto a la chimenea. Usa la chimenea para evadir los hechizos de |cRXP_ENEMY_Saqueadores|r si es necesario|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Usa el|r |T236996:0|t[Kit de muestra de agua de pozo] |cRXP_WARN_en el pozo de la Granja de Molsen|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    #completewith bennytime
    >>Mata |cRXP_ENEMY_Dentosangre jóvenes|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne de buitre|r, |cRXP_LOOT_Morros|r e |cRXP_LOOT_Hígados|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >> Viaja a la Finca de Jansen, |cRXP_WARN_trabaja en los otros objetivos de misión mientras te mueves hacia allí|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Abre el |cRXP_PICK_Guardarropa de Cejade|r. Despoja el |cRXP_LOOT_Reloj de bolsillo de Cejade|r
    >>|cRXP_WARN_Puedes despojar el |cRXP_PICK_Guardarropa de Cejade|r desde fuera si orientas bien la cámara|r
	>>|cRXP_WARN_Cuidado con |cRXP_ENEMY_Benny Blaanco|r. Pega fuerte|r
    .complete 64,1 --Furlbrow's Pocket Watch
step << skip
    #label GnollPaws
    .goto 1436/0,1042.67,-9715.0,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1412.62,-9720.83,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1412.62,-9720.83
    .goto 1436/0,1517.97,-9743.000,0
    .goto 1436/0,1184.07,-9745.80,0
    .goto 1436/0,1028.32,-9710.330,0
    >>Mata |cRXP_ENEMY_Gnolls Zarparrío|r y |cRXP_ENEMY_Exploradores Zarparrío|r. Despójalos para obtener sus |T134297:0|t|cRXP_LOOT_Garras gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Mata a los |cRXP_ENEMY_Asaltantes múrloc|r y a los |cRXP_ENEMY_Correcostas múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r y |cRXP_LOOT_Branquias|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener el |cRXP_LOOT_Puñado de avena|r
	>>|cRXP_WARN_Generalmente puedes encontrarlos cerca de las vallas de las granjas o de los edificios|r
	.complete 151,1 --Handful of Oats (8)
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Usa el|r |T236996:0|t[Kit de muestra de agua de pozo] |cRXP_WARN_en el pozo de la Finca de Jansen|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step << Human Warlock
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .vendor >> |cRXP_BUY_Vende la basura|r
    >>|cRXP_WARN_NO vendas|r |T133884:0|t[Ojo de múrloc], |T135997:0|t[Morros de dentosangre], |T134341:0|t[Hígados de Dentosangre] |cRXP_WARN_o|r |T133972:0|t[Carne fibrosa de buitre]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
    .turnin 92909 >>Entrega la misión Cosechar a los cosechadores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Mata a los |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener su |cRXP_LOOT_Okra|r y sus |cRXP_LOOT_Frascos de aceite|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Mata a los |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener sus |cRXP_LOOT_Frascos de aceite|r
    .mob Harvest Watcher
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
    .turnin 92909 >>Entrega la misión Cosechar a los cosechadores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>Mata |cRXP_ENEMY_Dentosangre jóvenes|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne de buitre|r, |cRXP_LOOT_Morros|r e |cRXP_LOOT_Hígados|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
    .turnin 92909 >>Entrega la misión Cosechar a los cosechadores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1324.200,-10490.400
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
    >>|cRXP_WARN_Es un área de reaparición dinámica, lo que significa que si matas a suficientes enemigos, seguirán reapareciendo|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Entrega la misión La Milicia Popular
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Acepta la misión La hermandad de los Defias
step << skip
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Entrega la misión En patrulla por los Páramos de Poniente
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Entrega la misión Pañuelos rojos de cuero
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Lunaclara::253092|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Entrega la misión Pruebas en los pozos
    .turnin 92744 >>Entrega la misión Branquias de múrloc
step << !Skyborne
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DarkshoreBoat
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #optional
    #label endOfTheGuide
step << Human Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Cómprale una|r |T135343:0|t[Cimitarra] |cRXP_BUY_o algo mejor de la Casa de Subastas y equípalo en tu mano izquierda|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Human Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a esta vendedora|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Skyborne
    #optional
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 16509
step << Skyborne
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
step << Skyborne
    #optional
    #label TramEnd
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Forjaz|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del lado de Forjaz del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step << Skyborne
    >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratas] |cRXP_WARN_en las |cRXP_ENEMY_Rata del subterráneo|r dentro del Tranvía Subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .macro Rat Catcher's Flute,133942 >>Flauta cazarratas
    .mob Deeprun Rat
step << Skyborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r dentro del Tranvía Subterráneo
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .target Monty
step << Skyborne
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step << Skyborne Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    >>Aprende Armas arrojadizas y Mazas de 2 manos si no lo hiciste antes
    .train 2567 >> Aprende el uso de Arrojadizas
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Aprende Mazas de 2 manos
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Skyborne Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Skyborne Warrior
    #optional
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Skyborne
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << !NightElf
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << NightElf Hunter
    .goto 1453/0,706.15,-8795.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Compra|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_a este vendedor|r. |cRXP_BUY_Si puedes te lo puedes permitir, compra|r |T135490:0|t[Arco reforzado] |cRXP_BUY_y|r |T134410:0|t[Carcaj medio] |cRXP_BUY_también|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .collect 3026,1 --Reinforced Bow (1)
    .disablecheckbox
    .target Frederick Hornillos
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .train 1758,1
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    >>|cRXP_WARN_Si acabas de aprender habilidades antes, omite este paso|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1095.500,-8741.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theridran|r
    .trainer >>Aprende tus hechizos de clase
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .train 6222,1
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .train 2137,1
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith train19742 << Paladin
    #completewith next << Priest
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Human Paladin
    .isOnQuest 1780
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Paladin
    #label train19742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Aprende tus hechizos de clase
    .train 19742,1
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .train 8122,1
    .target Brother Joshua
step
    #label NEWestfallEnd --hidden step for #include
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Cómprale un|r |T134335:0|t[Adorno lustroso] |cRXP_BUY_y tres|r |T134324:0|t[Reptadores nocturnos] |cRXP_BUY_. Esto es para una misión de 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Shaman -- Shaman accepts now isntead of later due to arriving back from tram, not boat like the rest
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acepta la misión Philmor's Favor
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acepta la misión Hora de la pesca
    .turnin 95065 >>Entrega la misión Hora de la pesca
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Toma el barco hacia Costa Oscura
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 14-16 Costa Oscura
#displayname 11-16 Costa Oscura/Loch Modan << NightElf
#displayname 13-16 Costa Oscura << Dwarf Hunter/Human Hunter/Skyborne Hunter
#displayname 15-16 Costa Oscura << !NightElf/!Dwarf/!Human/!Skyborne Hunter
#next 16-19 Costa Oscura


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step << NightElf !Druid
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Entrega la misión Vuelo a Auberdine
    .target Laird
step << Druid NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Entrega la misión Vuelo a Auberdine
    .accept 6343 >> Acepta la misión Regreso a Nessa
    .target Laird
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.826,44.150,5,0
    .goto 1439,36.688,43.952,8 >> Sube por las rampas hacia |cRXP_FRIENDLY_Maniveo Zumbang|r
step << !NightElf
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .accept 963 >> Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
    .xp <11,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Sube por las rampa hacia |cRXP_FRIENDLY_Maniveo Zumbang|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    .goto 1439/1,515.55,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r abajo
    .home >> Establece tu Piedra de hogar en Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
    .xp <12,1
step
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2118 >> Acepta la misión Tierras apestadas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acepta la misión La extensión de la amenaza
    .target Terenthis
step
    .goto 1439/1,503.100,6402.100
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 98025 >>Acepta la misión SE BUSCA: Jai'vhanel
step
    #ah
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco << !sod/Hunter/Druid
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather



step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto 1439/1,272.54,5255.27,0
    .goto 1439/1,271.23,4902.88,0
    .goto 1439/1,438.91,5131.69,0
    .goto 1439/1,272.54,5255.27,40,0
    .goto 1439/1,271.23,4902.88,40,0
    .goto 1439/1,438.91,5131.69,40,0
    >>|cRXP_WARN_Envía tu mascota a atacar al |cRXP_ENEMY_Oso Cardo|r. Una vez que tu mascota sea aturdida por el |cRXP_ENEMY_Oso Cardo|r, abandona tu mascota y empieza a domesticarla|r
    .train 16828 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso cardo|r para domesticarlo|r
    .target Thistle Bear
    .train 17255,1 --skips if they also already know bite r2
step
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    >>|cRXP_WARN_Puede que necesites entrar al agua para encontrarlos|r
    >>|cRXP_WARN_Aunque algunas de estas misiones sean grises, complétalas igual, ya que forman parte de una cadena|r << !NightElf
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abre la |cRXP_PICK_Criatura marina varada|r. Despójala para obtener los |cRXP_LOOT_Huesos de criatura marina|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recolectar|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante en pronto. Puedes desaprenderla después|r
    >>|cRXP_WARN_Si prefieres comprar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_de la Casa de Subastas después, omite este paso|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recopilar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] |cRXP_WARN_y raramente en los|cRXP_PICK_ Cofres maltrechos|r para una misión de clase futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step
    #completewith next
    >>|cRXP_WARN_Usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso cardo rabioso|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>|cRXP_WARN_¡Puedes desperdiciar la trampa y hacer que la misión sea imposible de completar! Si eso te sucede, tienes que volver a quien te dio la misión y pedirle otra trampa|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
    .goto 1439/1,393.72,5993.24
    >>Corre hacia el borde del Campamento Fúrbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso cardo rabioso|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>|cRXP_WARN_¡Puedes desperdiciar la trampa y hacer que la misión sea imposible de completar! Si eso te sucede, tienes que volver a quien te dio la misión y pedirle otra trampa|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step << NightElf
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >> Mata enemigos hasta alcanzar 7300+/8800xp
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
    .accept 1001 >> Acepta la misión La caja mecánica 411
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Entrega la misión Varado
    .accept 4681 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde

step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Entra en la cueva de la |cRXP_PICK_Piedra de lechúcico lunar|r
step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439/1,92.42,6325.98
    .cast 18974 >>|cRXP_WARN_Usa el|r |T132857:0|t[Polvo de luna Cenarion] |cRXP_WARN_en la |cRXP_PICK_Piedra de lechúcico lunar|r dentro de la cueva para invocar a |cRXP_ENEMY_Garraluna|r en la entrada de la cueva|r
    .timer 4,Cuerpo y corazón RP
    .use 15208
    .isOnQuest 6001
step << Druid NightElf
    #label Lunaclaw
    .goto 1439/1,119.27,6344.32
    >>Mata a |cRXP_ENEMY_Garraluna|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << Druid NightElf
    #label RedCrystal
    .isOnQuest 4811
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid NightElf
    #optional
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid NightElf
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Vuela a Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf Druid
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
step << NightElf Druid
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid NightElf
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .turnin 6001 >> Entrega la misión Cuerpo y corazón << NightElf
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
    .isOnQuest 6001
step << Druid NightElf
    #completewith next
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid NightElf
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid NightElf
    .isOnQuest 4812
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Viaja hacia |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .accept 963 >> Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Viaja al final del muelle, luego salta al agua
step
    #optional
    #completewith washed1
    .goto 1439/1,741.52,6570.95,0
    .goto 1439/1,915.10,6333.84,0
    .goto 1439/1,778.20,6231.66,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Abre la |cRXP_PICK_Tortuga marina esquelética|r. Despójala para obtener los |cRXP_LOOT_Restos de tortuga marina|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Entrega la misión Varado
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .accept 2138 >> Acepta la misión La limpieza de la infección
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .accept 985 >> Acepta la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
    .target Terenthis
step << NightElf Warrior/NightElf Rogue
    #sticky
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurdram Rocamartillo|r y |cRXP_FRIENDLY_Delfrum Barbasílex|r
    .train 2575 >> Aprende |T134708:0|t[Minería]
    .target +Kurdram Stonehammer
    .goto 1439/1,436.36,6542.65
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target +Delfrum Flintbeard
    .goto 1439/1,440.16,6545.84
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto 1439/1,443.37,6538.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elisa Mano de Acero|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a esta vendedora|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naram Garralarga|r
    .vendor 4183 >>|cRXP_BUY_Cómprale una|r |T135640:0|t[Jambiya] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step
    #optional
    #completewith next
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r dentro
    .vendor 4182 >> |cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrón pequeñas] |cRXP_BUY_o|r |T133634:0|t[Carteras de cuero marrón] |cRXP_BUY_como necesites|r
    >>|cRXP_BUY_Cómprale|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_o|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_hasta que tu carcaj/bolsa de proyectiles esté llena|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .accept 958 >> Acepta la misión Las herramientas de los Altonato << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


step
    #completewith MistVeil
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,602.66,6924.21,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #optional
    #completewith next
    +|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Amanecer de Plata|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Halo de bruma|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Halo de bruma|r dentro|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #loop
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,310.53,7077.48,55,0
    .goto 1439/1,404.85,7099.75,55,0
    .goto 1439/1,537.82,7023.33,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
    .isOnQuest 982
step
    .goto 1439,41.960,28.616
    >>Haz clic en la |cRXP_PICK_Caja mecánica 411|r del suelo
    .turnin 1001 >> Entrega la misión La caja mecánica 411
    .accept 1002 >> Acepta la misión La caja mecánica 323
    .isQuestComplete 1001
step
    #optional
    .goto 1439,41.960,28.616
    >>Haz clic en la |cRXP_PICK_Caja mecánica 411|r del suelo
    .accept 1002 >> Acepta la misión La caja mecánica 323
    .isQuestTurnedIn 1001
step
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step
    #optional
    #completewith AsterionTravel
    .goto 1439,43.509,33.207,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Viaja hacia |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    #label Bashal1
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Mata a los |cRXP_ENEMY_Grells salvaje|r y a los |cRXP_ENEMY_Duendes vil|r. Despójalos para obtener sus |cRXP_LOOT_Pendientes grell|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Sátiros Deth'ryll|r por ahora|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Entrega la misión Bashal'Aran
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >> Abandona la misión Bashal'Aran
    .isQuestAvailable 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Mata |cRXP_ENEMY_Sátiros Deth'ryll|r. Despójalos para obtener el |cRXP_LOOT_Sello de piedra lunar antiguo|r
    >>|cRXP_WARN_Ten en cuenta que no tienen reapariciones dinámicas|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step << NightElf/Dwarf/Human Hunter
    #optional
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    .xp 13 >> Mata enemigos hasta subir al nivel 13
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    .goto 1439,43.509,33.207,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith EndFirstMoonstalker << !NightElf !Hunter !Druid !Warrior
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #completewith RedCrystal
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith RedCrystal << !NightElf !Hunter !Druid !Warrior
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 50 más adelante|r
    >>|cRXP_WARN_No te desvíes para "farmear" esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >> Regresa a Auberdine
    .cooldown item,6948,<0,1 << !Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .xp >14,1 << Hunter/Druid
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior !Hunter
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 50 más adelante|r
    >>|cRXP_WARN_No te desvíes para "farmear" esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Warrior/Druid
    #optional
    #completewith EndFirstMoonstalker
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >> Regresa a Auberdine
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4813,3 >> Entrega la misión Los trozos del interior
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4813,3 >> Entrega la misión Los trozos del interior
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid/Warrior
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Equipa el|r |T135145:0|t[Bastón de roble]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step << NightElf !Hunter/Druid/Warrior
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .isQuestComplete 982
----Start of forced Level 14 Druid Turnin/train----
--Removed in wowF

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #optional
    #completewith AmethStart
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----

step << NightElf !Hunter/Druid/Warrior
    #optional
    #loop
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith Anaya
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf !Hunter/Druid/Warrior
    #optional
    #label EarlyTurtleStart
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
    .isQuestTurnedIn 4811
step
    #optional
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1


step
    #label EndFirstMoonstalker

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #optional
    #completewith AmethStart
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step << !NightElf !Druid !Warrior
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    -->>|cRXP_WARN_If you can't find her and want to try again later at the cost of potentially grinding more mobs soon, skip this step|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Mata a los |cRXP_ENEMY_Altonatos malditos|r, a los |cRXP_ENEMY_Altonatos en pena|r y a los |cRXP_ENEMY_Altonatos gemebunda|r. Despójalos para obtener sus |cRXP_LOOT_Reliquias|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    .goto 1439,42.652,63.145
    >>Haz clic en la |cRXP_PICK_La caída de Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Haz clic en la |cRXP_PICK_Llama antigua|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #label TheLay
    .goto 1439/1,105.52,5770.100
    >>Haz clic en |cRXP_PICK_La instauración de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Mata a |cRXP_ENEMY_Jai'vhanel|r. Despójalo para obtener la |cRXP_LOOT_Pluma de Jai'vhanel|r
    .complete 98025,1 --|1/1 Feather of Jai'vhanel
    .mob Jai'vhanel
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    .isQuestComplete 953
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 953 >> Entrega la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith FurbolgGrind
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrind
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
step
    #loop
    #label FurbolgGrind
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #optional
    #completewith FurbolgGrindEnd
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #optional
    #completewith FurbolgGrindEnd
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >> Regresa a Auberdine
    .isOnQuest 4722
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step << !NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Entrega la misión SE BUSCA: Jai'vhanel
    .turnin 4813,3 >> Entrega la misión Los trozos del interior << NightElf Hunter
step << NightElf Hunter
    #optional
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 4813,3 >> Entrega la misión Los trozos del interior
step << NightElf Hunter
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Equipa el|r |T135145:0|t[Bastón de roble]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Entrega la misión La extensión de la amenaza
    .accept 986 >> Acepta la misión El maestro perdido << !sod
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Sube las escaleras
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r arriba
    .accept 965 >> Acepta la misión La Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .vendor 6301 >>|cRXP_BUY_Cómprale|r |T134059:0|t[Especias suaves] |cRXP_BUY_hasta que tengas|r |T134059:0|t[Especias suaves] |cRXP_BUY_en cantidad igual o mayor que los|r |T132832:0|t[Huevos pequeños] |cRXP_BUY_que tienes actualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << NightElf
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .vendor >>|cRXP_BUY_Compra un|r [Adorno lustroso] |cRXP_BUY_y tres|r |T134324:0|t[Reptadores nocturnos] |cRXP_BUY_a este vendedor. Los necesitarás para una misión en Ventormenta pronto|r
    .collect 6529,1 --Shiny Bauble (1)
    .collect 6530,3 --Nightcrawlers (3)
    .target Gorbold Steelhand
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaja hacia la|cRXP_PICK_ Hoguera|r en el suelo|r
    +Empieza con |T133971:0|t[Cocina] |cRXP_WARN_elaborando|r |T132834:0|t[Huevo a las finas hierbas]|cRXP_WARN_. Haz esto hasta que tu|r |T133971:0|t[Cocina] |cRXP_WARN_haya alcanzado al menos el nivel 10|r
    >>|cRXP_WARN_Continúa subiendo el nivel de tu|r |T133971:0|t[Cocina] |cRXP_WARN_ hasta que se te acaben los|r |T132832:0|t[Huevos pequeños] << !sod
    >>|cRXP_WARN_Hay una misión en Bosque del Ocaso más adelante que requiere que tu|r |T133971:0|t[Cocina] |cRXP_WARN_sea de nivel 50 o superior. También puedes cocinar esto cuando subas al barco pronto|r << !sod
    >>|cRXP_WARN_Omite este paso una vez que hayas hecho todos los|r |T132834:0|t[Huevos a las finas hierbas]
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 958 >> Entrega la misión Las herramientas de los Altonato
    .accept 97914 >>Acepta la misión Expanding Horizons << NightElf
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


---Start of Night Elf Westfall section----
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step << NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step  << NightElf
    #include 15-16 Loch Modan
step << NightElf
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
----End of Night Elf Westfall section
step
    #optional
    #completewith next
    +|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Amanecer de Plata|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Halo de bruma|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Halo de bruma|r dentro|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #optional
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith BoatSeaCreature
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 50 más adelante|r
    >>|cRXP_WARN_No te desvíes para "farmear" esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    .goto 1439,47.314,48.676
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los 2 grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
step
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #completewith CrabTurtle
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
step
    #optional
    #completewith CrabTurtle
    >>Mata a los |cRXP_ENEMY_Volantones zancudos del bosque|r y a los |cRXP_ENEMY_Zancudos del bosques|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado, los|r |cRXP_ENEMY_Volantones zancudos del bosque|r |T132307:0|t[Huyen] |cRXP_WARN_al <30% de salud|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #optional
    #completewith CrabTurtle
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4725 >> Acepta la misión Tortuga marina varada
step
    #optional
    #completewith next
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,70,0
    .goto 1439,45.468,20.336,70,0
    .goto 1439,47.356,20.559,70,0
    .goto 1439,48.013,21.409,70,0
    .goto 1439,48.612,20.745,70,0
    .goto 1439,49.680,22.468,70,0
    .goto 1439,49.313,24.271,70,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>|cRXP_WARN_Considera saltarte algunos de los|r |cRXP_ENEMY_Reptadores de arrecife|r |cRXP_WARN_de nivel 17 si consigues buenos despojos.|r |cRXP_WARN_No tienes que completar esta misión ahora|r
    >>|cRXP_WARN_Ten cuidado ya que pueden lanzar|r |T132155:0|t[Rotura muscular] |cRXP_WARN_un ataque instantáneo que causa 30-55 de daño|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,-386.39,7219.830
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de ensayo vacío] |cRXP_WARN_en la base del Río Fonroca|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Sube por la rampa hacia la |cRXP_PICK_Caja mecánica 323|r
    .isQuestComplete 1002
step
    #optional
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestComplete 1002
step
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Viaja hacia |cRXP_FRIENDLY_Balthule Golpesombra|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith CliffCave
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Viaja a la Cueva del Río Fonroca
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>|cRXP_WARN_Usa la|r |T134776:0|t[Muestra vacía de Salto de Fonroca] |cRXP_WARN_en el agua en la entrada de la Cueva del Río Fonroca|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    #label CaveMushrooms
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Despoja los |cRXP_LOOT_Boletos rudos|r y una |cRXP_LOOT_Oronja verde|r del suelo
    >>|cRXP_WARN_Quédate en la sección superior. Si no hay una |cRXP_LOOT_Oronja verde|r al final del lado superior, baja y consigue uno de la sala del sur abajo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r lanzan|r |T135836:0|t[Aspersión] |cRXP_WARN_(Ataque a distancia instantáneo: Causa daño a los enemigos cercanos y los lanza hacia atrás) - asegúrate de no estar en una posición donde te puedan tirar del nivel superior de la cueva|r
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
-- step << NightElf !Druid
--     #softcore
--     #optional
--     #completewith CavetoAuber
--     .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
--     .target Spirit Healer
step << skip --logout skip
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salta encima de la roca en el piso superior dentro de la cueva. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
step
    #completewith CavetoAuber
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #requires MushroomLS
    #completewith CavetoAuber
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Viaja a Auberdine
step
    #label CliffspringEnd
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .itemcount 5469,5 -- strider meat (5)
step << Druid
    #optional
    .isOnQuest 6122
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .turnin 6122 >> Entrega la misión La fuente del envenenamiento
    .accept 6123 >> Acepta la misión Reunir los ingredientes del remedio
    .target Alanndarian Nightsong
step << Druid
    #optional
    .isQuestTurnedIn 6123
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 6123 >> Acepta la misión Reunir los ingredientes del remedio
    .target Alanndarian Nightsong
step << !NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step << !NightElf
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_ya que deberías intentar guardar una|r |T135641:0|t[Daga] |cRXP_WARN_para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r << Rogue
    .turnin 4813 >> Entrega la misión Los trozos del interior
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en el pozo lunar de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
-- step << NightElf !Druid
--     .goto 1439,36.767,44.285
--     #optional
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
--     .accept 6343 >> Accept Return to Nessa
--     .isQuestAvailable 6343
--     .target Laird
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 16 >> Mata enemigos hasta subir al nivel 16
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid
    #optional
    #completewith DruidLesson
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
step << NightElf Druid
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #label DruidLesson
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .accept 26 >> Acepta la misión Una lección que aprender
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #completewith next
    .abandon 729 >> Abandona la misión El prospector despistado para aceptar la misión ¿Problemas en Costa Oscura?
step << NightElf Druid
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .accept 730 >> Acepta la misión ¿Problemas en Costa Oscura?
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2676.22,8019.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 26 >> Entrega la misión Una lección que aprender
    .accept 29 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2595.43,7697.24
    >>Nada al Lago Elune'ara
    >>Abre el |cRXP_PICK_Adorno contenedor|r. Despójalo para obtener un |T134125:0|t[Adorno de altar]
    >>|cRXP_WARN_Puede aparecer en diferentes ubicaciones bajo el agua|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto 1450/1,-2212.85,7854.68
    >>|cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el árbol del Santuario de Remulos|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto 1450/1,-2224.18,7874.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Entrega la misión La prueba del lago
    .accept 272 >> Acepta la misión La prueba del león marino
    .target Tajarri
step << Druid
    #optional
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore


----End of Druid Quest section----


]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance
#defaultfor None
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 15-16 Loch Modan
step
    #label SWBoat
    .goto 1439/1,929.100,6543.600
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco|r << Rogue/Warrior
    .zone Stormwind City >> Toma el barco hacia la Ciudad de Ventormenta
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step
    .goto 1453/0,1268.800,-8540.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilbert Gray|r
    .accept 95065 >>Acepta la misión Hora de la pesca
    .turnin 95065 >>Entrega la misión Fishin' Tiempo
    .target Gilbert Gray
step << Rogue/Warrior/Hunter
    .goto 1453/0,1194.500,-8332.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acepta la misión Philmor's Favor
step << Rogue/Warrior/Hunter
    #completewith next
    .goto 1453/0,1194.200,-8360.900,10,0
    .goto 1453/0,1076.300,-8408.500,15,0
    .goto 1453/0,1001.400,-8499.700,10,0
    .goto 1453/0,985.500,-8471.300,15,0
    .goto 1453/0,960.100,-8501.800,15,0
    .goto 1453/0,981.200,-8581.800,15,0
    .goto 1453/0,875.500,-8680.900,10 >> Sal del puerto de Ventormenta
--@TODO add new coords for harbor exit cus no philmor's favor
step << Druid
    .goto 1453/0,1095.500,-8741.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theridran|r
    .trainer >>Aprende tus hechizos de clase
	.target Theridran
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin -97914 >> Entrega la misión Expanding Horizons
    .accept 97926 >> Acepta la misión Making Do
--    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step << Rogue/Warrior/Hunter
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Rogue
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Hunter
    .target Woo Ping
step << Rogue/Warrior/Hunter
    .goto 1453/0,568.700,-8848.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Entrega la misión Philmor's Favor
    .accept 97222 >>Acepta la misión Gatehouse Objetos
step << Rogue/Warrior/Hunter
    .goto 1453/0,569.400,-8860.300
    >>Ve |cRXP_WARN_arriba|r y usa la |T132762:0|t[|cRXP_LOOT_Cargamento|r] frente a la |cRXP_PICK_Gatehouse Puerta|r
    .use 277198 --Gatehouse Shipment
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step << Rogue/Warrior/Hunter
    #label Gatehouse
    .goto 1453/0,566.900,-8847.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Entrega la misión Gatehouse Objetos
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Entrena los hechizos de tu mascota
    .target Karrina Mekenda
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    #completewith next
    .zone Ironforge >> Toma el Tranvía a Forjaz
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en la plataforma del medio en el Deeprun Tram |cRXP_WARN_en el lado de Forjaz!|r
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    >>Usa la |T133942:0|t[Flauta cazarratas] en las |cRXP_FRIENDLY_Ratas del subterráneo|r en el Tranvía Subterráneo
    .complete 6661,1 --Rats Captured (x5)
    .macro Rat Catcher's Flute,133942 >>Rata Catcher's Flute
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del Tranvía Subterráneo
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .goto Ironforge,65.905,88.405
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    >>Aprende Armas arrojadizas y Mazas de 2 manos si no lo hiciste antes
    .train 2567 >> Aprende el uso de Arrojadizas
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Aprende Mazas de 2 manos
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior
    #optional
    #completewith DRT
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #label IFExit
step
    #completewith next
    .zone Dun Morogh >> Viaja a Dun Morogh
step
    .goto Dun Morogh,59.9,49.5,30,0
    .goto Dun Morogh,61.2,47.2,15,0
    .goto Dun Morogh,62.1,47.3,20 >>Sube corriendo por la rampa hacia |cRXP_ENEMY_Vagash|r
step
    #completewith next
    +"Kitea" a |cRXP_ENEMY_Vagash|r hacia |cRXP_FRIENDLY_Rudra Semperámbar|r
    >>|cRXP_WARN_Intenta evitar acercarte a él o lanzará|r |T135848:16|t[Rugido glacial] |cRXP_WARN_lo que te aturdirá durante 3 segundos|r
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .goto Dun Morogh,63.1,49.8
    .target Rudra Amberstill
    .accept 314 >>Acepta la misión La protección del rebaño
step
    >>"Kitea" a |cRXP_ENEMY_Vagash|r hacia el |cRXP_FRIENDLY_Montaraz de Dun Morogh|r
    >>|cRXP_WARN_Asegúrate de causarle al menos 50% de daño|r
    .goto Dun Morogh,62.8,54.6,10,0
    .mob Vagash
    .target Dun Morogh Mountaineer
    .complete 314, 1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .turnin 314 >>Entrega la misión La protección del rebaño
step
    #label LochEnter
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Viaja a Loch Modan a través del Paso de la Puerta Sur
    .zoneskip Loch Modan
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entra en el Búnker. Ve al piso superior
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
step
    .goto 1432/0,-2729.40,-5534.96
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes de trogg de piedra|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Exploradores Rompecantos|r lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(Lanzamiento a distancia: Inflige 14-20 de daño)|r
    >>|cRXP_WARN_Esta es una zona de reaparición rápida. No deberías necesitar moverte de aquí|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >> Viaja a Thelsamar
step
    #completewith next
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrel
step
    #label ThelsamarFirst
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Abandona la misión Un pedido de Pico Tormenta. Esto desbloquea la misión La tarea del montaraz Pico Tormenta que te dará 550xp gratuitos al entregar
step
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step
    #optional
    #completewith KingsLands
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarda los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_para subir de nivel |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_No te desvíes de tu camino para completar esto ahora. Volverás a Loch Modan pronto|r
    .isOnQuest 418
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> Sube por el camino de tierra y luego déjate caer dentro del búnker
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    #label KingsLands
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step
    #optional
    #completewith Algaz
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarda los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_para subir de nivel |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_No te desvíes de tu camino para completar esto ahora. Volverás a Loch Modan pronto|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Viaja a la Estación de Algaz
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Entra en el Búnker. Ve al piso superior
step
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r dentro del búnker
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #completewith Gear
    #optional
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .waypoint 1432/0,-3033.92,-4797.29,50,0
    .waypoint 1432/0,-2972.41,-4796.92,50,0
    .waypoint 1432/0,-2684.71,-5042.87,50,0
    .waypoint 1432/0,-2712.57,-5286.61,50,0
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
step
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Entra en la Mina de Fuenteplata
step
    .goto 1432/0,-2984.82,-4902.33
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r dentro de la mina. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    .complete 307,1 --Miners' Gear (4)
step << Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Cómprale la|r |T133476:0|t[Maza con pinchos pesada] |cRXP_BUY_O la|r |T133053:0|t[Gran maza de maderaférrea] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_Si no puedes pagarlo, entonces obtén dinero de los cercanos |cRXP_ENEMY_Ratatúneles|r hasta que tengas suficiente|r
    >>|cRXP_WARN_Hazlo rápidamente ya que otro jugador podría comprarlo antes que tú|r
    >>|cRXP_WARN_Si no deseas hacer esto, omite este paso|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Warrior
    #ah
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Cómprale la|r |T133476:0|t[Maza con pinchos pesada] |cRXP_BUY_O la|r |T133053:0|t[Gran maza de maderaférrea] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_Si no puedes pagarlo, entonces obtén dinero de los cercanos |cRXP_ENEMY_Ratatúneles|r hasta que tengas suficiente|r
    >>|cRXP_WARN_Hazlo rápidamente ya que otro jugador podría comprarlo antes que tú|r
    >>|cRXP_WARN_Si no quieres hacer esto o prefieres intentar comprar un arma más barata/mejor de la Casa de Subastas pronto, omite este paso|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equipa la|r |T133476:0|t[Maza con pinchos pesada]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Gran maza de maderaférrea]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    #label Gear
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
step
    #optional
    #completewith PawsDelivery
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >> Entra en el Búnker
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entra en la Pensión La Cebada
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    #label FlintTinder
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .accept 436 >> Acepta la misión La excavación de Vetaferro
    .target Jern Hornhelm
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
step
    #loop
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Haz clic en la |cRXP_PICK_Caja de herramientas de pesca descartada|r en el piso del lago
    >>|cRXP_WARN_NOTA: Esto puede aparecer en una de muchas ubicaciones diferentes. Nada alrededor hasta que veas el signo de exclamación en tu minimapa|r
    >>|cRXP_WARN_Ten cuidado con los de alto nivel|r al |cRXP_ENEMY_Joven trillanodonte|r
    .accept 86614 >>Acepta la misión Plateado of the Waves
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magmar Ceñimal|r
    .turnin 436 >> Entrega la misión La excavación de Vetaferro
    .target Magmar Fellhew
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Vetaferro|r
    .accept 298 >> Acepta la misión Un informe sobre el avance de la excavación
    .target Prospector Ironband
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .accept 257 >> Acepta la misión La fanfarronada de un cazador
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step Rogue/NightElf Hunter/NightElf Warrior/NightElf Druid
    .goto Loch Modan,82.6,64.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Kat|r
    .vendor >> |cRXP_BUY_Compra las|r |T132539:0|t[Botas de agilidad] |cRXP_BUY_a ella si están disponibles|r
    .target Kat Sampson
step
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Mata |cRXP_ENEMY_Águilas ratoneras montesas|r
    >>|cRXP_WARN_Debes completar la misión y regresar a |cRXP_FRIENDLY_Daryl el Jovenzuelo|r en menos de 15 minutos. Si fallas la misión, abandónala y vuelve a aceptarla|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Viaja hacia |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Entrega la misión La fanfarronada de un cazador
    .target Daryl the Youngling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marek Coracero|r
    .accept 385 >> Acepta la misión La caza de crocoliscos
    .accept 86758 >>Acepta la misión Twisting the Cuchillo
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step
    #completewith next
    >>Mata |cRXP_ENEMY_Crocoliscos del lago|r. Despójalos para obtener su |cRXP_LOOT_Carne|r y |cRXP_LOOT_Piel|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    .goto Loch Modan,62,44
    >>Mata a |cRXP_ENEMY_Daggerfang|r, |cRXP_WARN_podría estar patrullando en la orilla|r. Despójalo para obtener |T3736888:0|t[|cRXP_LOOT_Marek's Crocolisco-Cuchillo de caza|r]
    .complete 86758,1 --Marek's Croc Hunting Knife (1)
    .mob Daggerfang
step
    #completewith next
    .goto Loch Modan,54.7,38.3,200 >> Viaja a la isla ubicada en el centro de El Lago
step
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>Mata |cRXP_ENEMY_Crocoliscos del lago|r. Despójalos para obtener su |cRXP_LOOT_Carne|r y |cRXP_LOOT_Piel|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marek Coracero|r
    .turnin 385 >>Entrega la misión La caza de crocoliscos
    .turnin 86758 >>Entrega la misión Twisting the Cuchillo
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .accept 258 >> Acepta la misión El reto de un cazador
    .target Daryl the Youngling
    .xp >16,1
step
    #optional
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,61.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.87,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>Mata |cRXP_ENEMY_Jabalíes monteses mayores|r
    >>|cRXP_WARN_Debes completar la misión y regresar junto a |cRXP_FRIENDLY_Daryl el Jovenzuelo|r en 12 minutos. Si fallas la misión, abandónala y vuelve a aceptarla|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
    .isOnQuest 258
step
    #completewith next
    #optional
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Viaja hacia |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >> Entrega la misión El reto de un cazador
    .target Daryl the Youngling
    .isOnQuest 258
step
    #optional
    .xp 16-2360 >> Farmea hasta que falten 2360 puntos de experiencia para el nivel 16 (12.040/14.400)
step
    >>Salta fuera de la cabaña y muere a los mobs de abajo
    .deathskip >> Muere y reaparece en el cementerio de Thelsamar
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 298 >> Entrega la misión Un informe sobre el avance de la excavación
    .accept 301 >> Acepta la misión Informe a Forjaz
    .target Jern Hornhelm
step
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Entrega la misión Plateado of the Waves
step
    #label LochEnd
step
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Pico Tormenta|r
    .turnin 301 >> Entrega la misión Informe a Forjaz
    .target Prospector Stormpike
step << Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belia Tronagranito|r
    .trainer >> Aprende tus hechizos de clase
    .target Regnus Thundergranite
step << Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sumo sacerdote Rohan|r
    .trainer >> Aprende tus hechizos de clase
    .target High Priest Rohan
step << Priest/Druid
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Compra lo siguiente si puedes permitírtelo:|r
    >>|T134711:0|t[Aceite de zahorí menor] |cRXP_WARN_y|r |T133906:0|t[Sabiola ahumada]
    >>|cRXP_WARN_También busca mejoras de DPS altas|r |T132317:0|t[Varita] |cRXP_WARN_que puedas usar ahora/pronto|r << Priest
    >>|cRXP_WARN_Estos proporcionarán un aumento de DPS alto en los primeros niveles. Si no quieres hacerlo o no puedes, omite este paso|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Aprende tus hechizos de clase
    .target Fenthwick
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << Druid
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step
    .hs >>Usa tu Piedra de hogar para ir a Auberdine
    .zoneskip Darkshore

]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 16-19 Costa Oscura
#next 19-20 Montañas Crestagrana;20-21 Costa Oscura/Vallefresno << !Hunter
#next 19-21 Costa Oscura/Vallefresno << Hunter

-- step << NightElf !Druid
--     #optional
--     #completewith PortalDarn
--     .goto 1439/1,561.66,6343.27
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
--     .fly Teldrassil >> Fly to Teldrassil
--     .target Caylais Moonfeather
--     .zoneskip Teldrassil
-- step << NightElf !Druid
--     .goto 1438/1,950.52,8694.07
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
--     .turnin 6343 >> Turn in Return to Nessa
--     .target Nessa Shadowsong
-- step << NightElf !Druid
--     #completewith next
--     #label PortalDarn
--     .goto 1438/1,965.80,8780.95
--     .zone Darnassus >> Take the purple portal into Darnassus
-- step << NightElf Warrior
--     .goto 1457/1,2316.91,9991.88
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
--     .trainer >> Train your class spells
--     .target Arias'ta Bladesinger
-- step << NightElf Warrior
--     .goto 1457/1,2329.19,9908.60
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
--     .skipgossipid 96881
--     .train 2567 >> Train Thrown
--     .target Ilyenia Moonfire
-- step << NightElf Hunter
--     #completewith start
--     .goto 1457/1,2511.01,10178.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
--     .trainer >> Train your class spells
--     .target Jocaste
-- step << NightElf Hunter
--     #completewith start
--     #label RecruveReinforced
--     .goto 1457/1,2268.76,9770.63
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
--     >>|cRXP_WARN_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_WARN_if you can afford it. If not then buy a|r |T135490:0|t[Reinforced Bow]
--     >>|cRXP_WARN_Stock up on|r |T132382:0|t[Sharp Arrows]
--     .collect 3027,1
--     .target Landria
--     .money <0.3812
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
--     .use 3027
--     .itemcount 3027,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
--     .xp <20,1
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135490:0|t[Reinforced Bow]
--     .use 3026
--     .itemcount 3026,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
-- step << NightElf Rogue
--     >>Enter the Cenarion Enclave
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
--     .goto 1457/1,2601.39,10120.53,15,0
--     .goto 1457/1,2546.78,10083.62
--     .trainer >> Train your class spells
--     .target Syurna
-- step << NightElf !Druid
--     #optional
--     #completewith next
--     .abandon 729 >> Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore?
-- step << NightElf !Druid
--     .goto 1438/1,2607.86,9641.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
--     .accept 730 >> Accept Trouble In Darkshore?
--     .target Chief Archaeologist Greywhisker
-- step << NightElf Priest
--     .goto 1457/1,2537.25,9654.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
--     .trainer >> Train your class spells
--     .target Jandria
-- step << NightElf !Druid
--     #label start
--     .hs >> Hearth to Auberdine
step
    .goto 1439/1,504.41,6402.39
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step << NightElf
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 730 >> Entrega la misión ¿Problemas en Costa Oscura?
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439/1,467.08,6409.38
    .use 12346 >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en el|r |cRXP_PICK_Pozo lunar de Auberdine|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #optional
    #completewith CompleteFangs
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #loop
    .waypoint 1439/1,385.20,5393.69,0
    .waypoint 1439/1,155.30,5374.48,0
    .waypoint 1439/1,322.32,4907.25,0
    .waypoint 1439/1,385.20,5393.69,70,0
    .waypoint 1439/1,155.30,5374.48,70,0
    .waypoint 1439/1,322.32,4907.25,70,0
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r en el sur de Costa Oscura
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Instantáneo Cuerpo a cuerpo: Reduce toda la regeneración de salud en un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #sticky
    #label earthroot
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mientras haces misiones|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    .goto 1439/1,98.97,6329.03,90,0
    .goto 1439/1,105.52,6189.30,90,0
    .goto 1439/1,164.47,6036.47,90,0
    .goto 1439/1,-51.68,6136.90,90,0
    .goto 1439/1,-25.48,6005.90
    .goto 1439/1,98.97,6329.03,0
    .goto 1439/1,105.52,6189.30,0
    .goto 1439/1,164.47,6036.47,0
    .goto 1439/1,-51.68,6136.90,0
    >>Despoja los |cRXP_LOOT_Hongos lunares|r del suelo de las cuevas
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Viaja al Páramo de los Ancianos
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 952 >> Entrega la misión El Páramo de los Ancianos << NightElf
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    #completewith MasterG
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>Ten cuidado ya que pueden lanzar |T132090:0|t[Aprovechar debilidad] un ataque de puñalada por la espalda que inflige 20-40 de daño si les das la espalda
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
    #completewith MasterG
    #optional
    .goto 1439/1,413.37,4818.17,0
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>|cRXP_WARN_Ten cuidado mientras lanzan|r |T132152:0|t[Devastar] |cRXP_WARN_un ataque instantáneo que causa 20-40 de daño y te tira al suelo durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    .goto 1439,41.390,80.563
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isQuestComplete 1003
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Viaja a La Espada del Maestro
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Descubre La Espada del Maestro
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
    .accept 98042 >>Acepta la misión Es pura diversión y juegos hasta que...
step
    #completewith TheryluneEnd
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |cRXP_LOOT_Ojo incomparable|r y el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |cRXP_LOOT_Ojo incomparable|r y el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Elimina la |T134715:0|t[Ampolla de adivinación] de tu inventario, ya que ya no se necesita
step
    #optional
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>Ten cuidado ya que pueden lanzar |T132090:0|t[Aprovechar debilidad] un ataque de puñalada por la espalda que inflige 20-40 de daño si les das la espalda
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>|cRXP_WARN_Ten cuidado mientras lanzan|r |T132152:0|t[Devastar] |cRXP_WARN_un ataque instantáneo que causa 20-40 de daño y te tira al suelo durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Acepta la misión Las reliquias de Mathystra
    .target Onu
step
    #optional
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
step << Hunter
    #optional
    .goto 1439/1,417.30,4575.82
    .xp 17 >> Mata enemigos hasta subir al nivel 17
step << Hunter
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Puede que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .target Prospector Remtravel
step << Hunter
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r. Esto iniciará una escolta
    .accept 731,1 >> Acepta la misión El prospector despistado
    >>|cRXP_WARN_Esta misión es MUY difícil. Puedes omitir este paso y volver al nivel 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Puedes omitir este paso y volver al nivel 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r
step
    #completewith CompleteThistleBears
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>Ten cuidado, ya que los |cRXP_ENEMY_Reptadores de arrecife|r pueden lanzar |T132155:0|t[Rotura muscular] un ataque instantáneo que causa 30-55 de daño
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Ten cuidado con |cRXP_ENEMY_Cazamareas Brumagris|r pueden lanzar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] mientras luchan cuerpo a cuerpo dejando un daño en el tiempo que inflige 13 p. de daño cada 3 s durante 30 s
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    #label TurtleSouth
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Ten cuidado con |cRXP_ENEMY_Cazamareas Brumagris|r pueden lanzar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] mientras luchan cuerpo a cuerpo dejando un daño en el tiempo que inflige 13 p. de daño cada 3 s durante 30 s
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step << !Hunter
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step << Hunter
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step << Druid
    #optional
    >>|cRXP_WARN_Termina de recolectar la |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] y raramente en|r |cRXP_PICK_Cofres maltrechos|r
    >>|cRXP_WARN_Si te rindes y no encuentras suficientes, omite este paso|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
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
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4728 >> Acepta la misión Criatura marina varada
step << Druid
    #label Southcrabs
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    .goto 1450/1,-2593.82,7867.06
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    .goto 1450/1,-2491.79,7454.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Vuela a Costa Oscura
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label Southcrabs
    #completewith CleansingTharnariun
    .subzone 442 >> Viaja a Auberdine
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #completewith CleansingTharnariun
    .abandon 963 >> Abandona la misión Un amor eterno
step
    #label BeachedTurnins
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Entrega la misión Criatura marina varada
    .turnin 4730 >> Entrega la misión Criatura marina varada
    .turnin 4731 >> Entrega la misión Tortuga marina varada
    .turnin 4732 >> Entrega la misión Tortuga marina varada << Hunter
    .turnin 4733 >> Entrega la misión Criatura marina varada << Hunter
    .target Gwennyth Bly'Leggonde
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto 1439/1,531.27,6403.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r y |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Vende y reabastece comida y agua|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4740 >> Entrega la misión SE BUSCA: ¡Viscoso!
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,492.300,6581.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos::3649|r
    .target Thundris Windweaver::3649
    .turnin 98042 >>Entrega la misión Pura diversión Until...
step
    #label CleansingTharnariun
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    .goto 1439/1,491.97,6560.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Reabastece munición|r
    .target Dalmond
step << Druid
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .turnin 6123 >> Entrega la misión Reunir los ingredientes del remedio
    .isQuestComplete 6123
--     .accept 6124 >> Accept Curing the Sick
-- step << Druid
--     #optional
--     .goto 1439/1,472.32,6556.100
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
--     .accept 6124 >> Accept Curing the Sick
--     .target Alanndarian Nightsong
--     .isQuestTurnedIn 6123
step << Druid
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >> Abandona la misión Reunir los ingredientes del remedio
-- step << Druid
--     #optional
--     #completewith Buzzbox323End
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .isQuestAvailable 1138
-- step << Druid
--     #sticky
--     #label SicklyDeers
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .waypoint 1439/1,-313.68,6883.60,40,0
--     .waypoint 1439/1,98.97,7237.30,40,0
--     .waypoint 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
--     .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-376.56,6807.62
    >>Abre las |cRXP_PICK_Provisiones de grano de los Bosque Negro|r. Despójalas para obtener |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado, ya que los |cRXP_ENEMY_Cachorros cardo|r pueden lanzar|r |T132152:0|t[Devastar]|cRXP_WARN_, un ataque cuerpo a cuerpo instantáneo que te aturde durante 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-453.20,6870.500
    >>Abre las |cRXP_PICK_Provisiones de nueces de los Bosque Negro|r. Despójalo para obtener la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-520.66,6874.43
    >>Abre las |cRXP_PICK_Provisiones de fruta de los Bosque Negro|r. Despójalas para obtener la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> |cRXP_WARN_Usa el|r |T134712:0|t[Cuenco de purificación lleno] |cRXP_WARN_en la |cRXP_PICK_Fogata|r para invocar a|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corrupción de los Bosque Negro RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Mata a |cRXP_ENEMY_Xabraxxis|r. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que cae en el suelo. Despójala para obtener el |cRXP_LOOT_Dije de corrupción|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18 >> Mata enemigos hasta subir al nivel 18
step << Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18.75 >> Sube al nivel 18 + 75%
    >>Asegúrate de que el tiempo de recarga de tu Piedra de hogar sea <10 min
    >>Omite este paso si el área está demasiado concurrida
step
    #label LateStalkerFangs
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    .isQuestComplete 1002
    #label Buzzbox323End
    #requires SicklyDeers << Druid
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
step
    #optional
    .isQuestTurnedIn 1002
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .accept 1003 >> Acepta la misión La caja mecánica 525
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << !Hunter !Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439/1,-800.35,7370.92,55,0
    .goto 1439/1,-855.37,7449.96,55,0
    .goto 1439/1,-880.91,7302.36,55,0
    .goto 1439/1,-950.34,7258.26,55,0
    .goto 1439/1,-1005.36,7383.58
    >>Despoja las |cRXP_LOOT_Reliquias de Mathystra|r del suelo
    .complete 951,1 -- Mathystra Relics (6)
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acepta la misión La búsqueda de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439/1,-732.88,7596.24,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,-656.25,7801.04
    >>Mata |cRXP_ENEMY_Oráculos Brumagris|r y |cRXP_ENEMY_Cazamareas Brumagris|r. Despójalos para obtener la |cRXP_LOOT_Mitad de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Ten cuidado con |cRXP_ENEMY_Cazamareas Brumagris|r pueden lanzar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] mientras luchan cuerpo a cuerpo dejando un daño en el tiempo que inflige 13 p. de daño cada 3 s durante 30 s
    >>|cRXP_WARN_Puedes cortar la línea de visión (LoS) de las|cRXP_ENEMY_  |T136048:0|t[Descargas de relámpagos] |rde los|r Oráculos Niebla Gris|cRXP_WARN_ usando el barco hundido para evitar recibir su daño|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.870
    >>Mata |cRXP_ENEMY_Zancudos del bosque gigantes|r. Despójalos para obtener la |cRXP_LOOT_Parte superior de la llave de Gelkak|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #label NorthStalkerPelts
    .goto 1439/1,-1080.03,7922.87,45,0
    .goto 1439/1,-1146.84,7998.41
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r y a las |cRXP_ENEMY_Matriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>|cRXP_WARN_Ten cuidado con las |cRXP_ENEMY_Matriarcas Acechalunas|r. Siempre atacan con un |cRXP_ENEMY_Cachorro Acechalunas|r a su lado|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r pueden lanzar |T132090:0|t[Aprovechar debilidad] un ataque por la espalda infligiendo 20-40 de daño si les das la espalda
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue/Shaman
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Empieza a buscar grupo para La venganza de Gyromast/|r|cRXP_ENEMY_El Trillomajareitor 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Empieza a buscar grupo para La venganza de Gyromast/|r|cRXP_ENEMY_El Trillomajareitor 4100|r << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Habla con |cRXP_FRIENDLY_El Trillomajareitor 4100|r para empezar la escolta
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Esta misión es MUY difícil|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
step
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4727 >> Acepta la misión Tortuga marina varada
step
    .goto 1439,56.654,13.484
    #optional
    >>Escolta al |cRXP_FRIENDLY_El Trillomajareitor 4100|r hasta |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Mata a |cRXP_ENEMY_El Trillomajareitor 4100|r cuando se vuelva hostil
    >>|cRXP_WARN_Esta misión es MUY difícil|r
    *Solo usa ataques a distancia mientras huyes de él, evita estar en rango de cuerpo a cuerpo << Druid
    >>|cRXP_WARN_Intenta hacer esta misión si puedes ya que te ahorrarás tiempo después porque ofrece|r |T134797:0|t[Elixires de Respiración acuática] |cRXP_WARN_para misiones submarinas después|r << !Druid !Warlock !Shaman
    >>|cRXP_WARN_Usa|r |T136100:0|t[Raíces enredadoras] |cRXP_WARN_en él cuando se vuelva hostil, luego crea distancia y "kitea" usando hechizos de lanzamiento instantáneo|r << Druid
    >>|cRXP_WARN_Si no puedes matar a |cRXP_ENEMY_El Trillomajareitor 4100|r, omite este paso|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Haz clic aquí para una guía en video|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Entrega la misión La venganza de Gyromast
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #completewith BeachedCloak
    .abandon 2078 >> Abandona la misión La venganza de Gyromast
step << Druid
    #optional
    #completewith DeerComplete
    >>Mata a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >> Borra la |T134459:0|t[Llave de Gyromast] de tu inventario, ya que ya no la necesitas
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Viaja a Auberdine
    .cooldown item,6948,<0
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>2,1
    .subzoneskip 442 --auberdine
    .bindlocation 442,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4727 >> Acepta la misión Tortuga marina varada
-- step << Druid
--     #label DeerComplete
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .goto 1439/1,-313.68,6883.60,40,0
--     .goto 1439/1,98.97,7237.30,40,0
--     .goto 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
step << Druid
    .goto 1439/1,-259.32,7839.03
    >>|cRXP_WARN_Nada hacia mar adentro|r
    >>Abre el |cRXP_PICK_Arcón extraño|r. Despójalo para obtener el |cRXP_LOOT_Medio colgante de Agilidad acuática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)

step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Grindea hasta que el tiempo de reutilización de tu Piedra de hogar sea menos de 6 minutos. Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #hardcore
    #optional
    #completewith next
    +Grindea hasta que tu cooldown de Piedra de Hogar sea menos de 9 minutos luego corre de regreso a Auberdine
step << !NightElf !Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << !NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Elimina la |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r de tu inventario, ya que ya no se necesita
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Borra la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Borra la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << !NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << !NightElf
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Entrega la misión El maestro perdido
    .accept 993 >> Acepta la misión El maestro perdido
    .target Terenthis
step << !NightElf
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Si equipas la|r |T133762:0|t[Capa de Acechalunas encantada]|cRXP_WARN_, asegúrate de guardar tu capa actual para después ya que la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_se pierde al entregar una misión posterior|r
    .equip 15,5387 >>|cRXP_WARN_Equipa la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_Si es mejor que tu Capa actual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >> Viaja al muelle del barco de Darnassus
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #requires DarnDwarfHCook1
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los|r |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r |cRXP_WARN_y|r |T134059:0|t[Especias suaves] |cRXP_WARN_en|r |T132834:0|t[Huevos a las finas hierbas]
    .usespell 2550
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Toma el barco hacia Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Consigue la ruta de vuelo de Teldrassil
    .target Vesprystus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2511.01,10178.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Aprende tus hechizos de clase
    .target Jocaste
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Aprende el uso de Arcos
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2268.76,9770.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a esta vendedora|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .accept 942 >> Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #optional
	#completewith MoongladeTrain
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
-- step << Druid
--     .goto 1450/1,-2678.53,8023.63
--     >>Go to Moonglade
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
--     .turnin 6124 >> Turn in Curing the Sick
--     .accept 6125 >> Accept Power over Poison
--     .target Dendrite Starblaze
--     .isQuestTurnedIn 6123
step << Druid
    #label MoongladeTrain
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step << NightElf/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Viaja a Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>0,1
step
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
step
    #requires DeleteGyromast
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12342 >> Elimina la |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r de tu inventario, ya que ya no se necesita
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12343 >> Borra la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12341 >> Borra la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << NightElf Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Abastécete de |T132382:0|t[Flechas afiladas]
    .target Dalmond
step << NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << NightElf
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Entrega la misión El maestro perdido
    .accept 993 >> Acepta la misión El maestro perdido
    .target Terenthis

step << NightElf
    #optional
    >>|cRXP_WARN_Si equipas la|r |T133762:0|t[Capa de Acechalunas encantada]|cRXP_WARN_, asegúrate de guardar tu capa actual para después ya que la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_se pierde al entregar una misión posterior|r
    .equip 15,5387 >>|cRXP_WARN_Equipa la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_Si es mejor que tu Capa actual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

--Hunter stays Darkshore/Ashenvale
--Shaman to IF for training then SW > Redridge
--!Hunter !Shaman straight to SW > Redridge

step << !Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compra un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_y una|r |T135435:0|t[Madera simple] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto es para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_mientras estés en el barco pronto|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
    #completewith next
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .vendor 6301 >>|cRXP_BUY_Cómprale|r |T134059:0|t[Especias suaves] |cRXP_BUY_hasta que tengas|r |T134059:0|t[Especias suaves] |cRXP_BUY_en cantidad igual o mayor que los|r |T132832:0|t[Huevos pequeños] |cRXP_BUY_que tienes actualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << !Hunter
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439/1,926.400,6542.900,15 >> Viaja al muelle del barco de Ciudad de Ventormenta << !Shaman
    .goto 1439,32.432,43.744,15 >> Viaja al embarcadero del barco del Puerto de Menethil << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << !Hunter
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>|cRXP_WARN_Mientras esperas al Bote en el muelle:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los|r |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r |cRXP_WARN_y|r |T134059:0|t[Especias suaves] |cRXP_WARN_en|r |T132834:0|t[Huevos a las finas hierbas]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label MenethilRRBoat
    .goto 1439/1,826.67,6409.82 << Shaman
    .goto 1439/1,929.100,6543.600 << !Hunter !Shaman
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco|r << Rogue/Warrior/Paladin
    .zone Stormwind City >> Toma el barco hacia la Ciudad de Ventormenta << !Shaman
    .zone Wetlands >> Toma el barco al Puerto de Menethil << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << Shaman
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step << Shaman
    .goto 1437/0,-782.03,-3793.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eldrun Rompetormentas::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Aprende tus hechizos de clase
step << Shaman
    #optional
    .goto 1455/0,-1115.43,-4598.86--c:Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .isOnQuest 968
step << Shaman
    #completewith next
    .goto 1455/0,-1249.95,-4793.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Cortallave Volopiñón|r no tiene uno|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Entra en el Tranvía Subterráneo. Toma el tranvía a Ventormenta
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_si es necesario mientras esperas el tranvía|r
    >>Tu|cRXP_WARN_ |T135966:0|t[Primeros auxilios] |rdebe ser 80 para una misión a nivel 24|cRXP_WARN_ << Rogue !Dwarf
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance !Hunter
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Montañas Crestagrana
#next 20-21 Costa Oscura/Vallefresno

step << !Shaman
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acepta la misión Philmor's Favor
step << Shaman
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Compra una|r |T135139:0|t[Varita ardiente] |cRXP_WARN_si es una mejora|r
    >>|cRXP_WARN_Es importante comprar una varita que no haga daño de sombra. Tendrás que enfrentarte a enemigos resistentes al daño de sombra más tarde|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5210,1
    .target Ardwyn Cailen
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Human Paladin
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Entrega la misión Escrito sobre divinidad
    .accept 1781 >>Acepta la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Human Paladin
    .goto 1453/0,862.400,-8516.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Entrega la misión Escrito sobre divinidad
    .accept 1786 >>Acepta la misión Escrito sobre divinidad
    .target Gazin Tenorm
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
    .isQuestComplete 399
step << !NightElf
    .goto 1453/0,600.22,-8426.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
    .isOnQuest 1338
step << !Shaman
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
step
    #completewith BMenace
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Billibub Volopiñón|r no tiene uno|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Asegúrate de entrenar|r |T136058:0|t[Forzar cerraduras] |cRXP_WARN_también, ya que lo necesitarás pronto para la misión de clase de pícaro|r
    .trainer >> Aprende tus hechizos de clase
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Entra en el cuartel general de IV:7. Sube las escaleras y dirígete hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto 1453/0,362.55,-8819.80
    .target Renzik "The Shiv"
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Mage/Rogue/Warlock/Druid/Warrior/Paladin
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage/Druid
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T135342:0|t[Kris] |cRXP_BUY_o algo mejor de la Casa de Subastas|r
    >>|cRXP_WARN_Equípalo cuando llegues al nivel 19|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Equípalo cuando llegues al nivel 19|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step -- must be on quest now to loot Great Goretusk Snout
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    -->>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    --.collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Entrega la misión Philmor's Favor
    .accept 97222 >>Acepta la misión Gatehouse Objetos
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Usa|r |T132762:0|t[Gatehouse Cargamento] |cRXP_WARN_frente a la |cRXP_PICK_Gatehouse Puerta|r arriba|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Entrega la misión Gatehouse Objetos
step
    #completewith orcs
    .goto 1453/0,490.12,-8835.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana << !NightElf !Skyborne
    .fp Stormwind >> Aprende la ruta de vuelo hacia Ventormenta << NightElf/Skyborne
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step << NightElf/Skyborne
    #completewith RRFP
    .goto 1429/0,389.800,-9119.900
    .zone Elwynn Forest >> Sal de Ventormenta
    .zoneskip Redridge Mountains
step << NightElf/Skyborne
    #completewith RRFP
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step
    .goto 1433/0,-2237.93,-9443.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .accept 246 >> Acepta la misión Evaluar la amenaza
    .accept 98407 >>Acepta la misión Muestra de fuerza
    .target Deputy Feldon
step << NightElf/Skyborne
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Acepta la misión La amenaza de los Roca Negra
    .accept 98387 >>Acepta la misión Blackrock Blockade
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Acepta la misión Las herramientas perdidas
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 118 >> Acepta la misión El precio de unas herraduras
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 95999 >>Acepta la misión SE BUSCA: Incinerador Gar'im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2221.65,-9218.60
    .accept 120 >> Acepta la misión Mensajero a Ventormenta
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.15,-9261.310
    .accept 127 >> Acepta la misión Pescado a la venta
step
    .goto 1433/0,-2152.62,-9217.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .accept 129 >> Acepta la misión Una comida gratis
step
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r arriba
	.target Wiley the Black
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .isOnQuest 65
step << skip -- must on quest now to loot Great Goretusk Snout
#optional
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.16,-9245.67
    .accept 34 >> Acepta la misión Una visita poco grata
step << Warlock
    .goto 1433/0,-1911.22,-9288.820
    >>Mata a |cRXP_ENEMY_Panzallena|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Kitea a |cRXP_ENEMY_Panzallena|r de vuelta a Villa del Lago para que los |cRXP_FRIENDLY_Guardias|r te ayuden a matar a|r |cRXP_ENEMY_Panzallena|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Puedes omitir este paso y volver más tarde.|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_Haz clic aquí para ver una guía en vídeo|r
    .mob Bellygrub
step << Warlock
    .goto 1433/0,-2045.16,-9245.67
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Entrega la misión Una visita poco grata
step << Rogue
    .goto 1433/0,-2180.19,-9328.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Acepta la misión El collar de Hilary
step
    >>|cRXP_WARN_Salta al Lago|r
    >>Abre el |cRXP_PICK_Barro centelleante|r. Despójalo para obtener el |cRXP_LOOT_Collar de Hilary|r
    >>|cRXP_WARN_Tiene múltiples ubicaciones de aparición en el Lago|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Entrega la misión El collar de Hilary
step
    #softcore
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #sticky
    #completewith orcs
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    >>Mata a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener sus |cRXP_LOOT_Carnes de araña crujiente|r
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>|cRXP_WARN_NO vendas ninguno de estos objetos hasta que entregues la misión Estofado Crestagrana|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que despojes, ya que los puedes usar para subir|r |T133971:0|t[Cocina] |cRXP_WARN_al 50, lo cual es necesario para Bosque del Ocaso más adelante|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Acepta la misión Gnolls invasores
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .turnin 129 >> Entrega la misión Una comida gratis
    .accept 130 >> Acepta la misión Una visita al herborista
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.28,-9443.750
    .turnin 244 >> Entrega la misión Gnolls invasores
    .accept 246 >> Acepta la misión Evaluar la amenaza
step
    #completewith next
	>>Mata a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Furtivos de Crestagrana|r
    >>Mata a los |cRXP_ENEMY_Redridge Thrashers|r. Despójalos para obtener sus |cRXP_LOOT_Spiked Collars|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .goto 1433/0,-2031.48,-9556.25,45,0
    .goto 1433/0,-1955.07,-9637.63,45,0
    .goto 1433/0,-1813.97,-9679.9,45,0
    .goto 1433/0,-1861.07,-9754.76,45,0
    .goto 1433/0,-1980.25,-9641.10
    >>Mata a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener sus |cRXP_LOOT_Carnes de araña crujiente|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #loop
    .goto 1433/0,-1913.800,-9490.601,50,0
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90,45,0
	>>Mata a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Furtivos de Crestagrana|r
    >>Mata a los |cRXP_ENEMY_Redridge Thrashers|r. Despójalos para obtener sus |cRXP_LOOT_Spiked Collars|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .goto 1433/0,-2634.54,-9588.54
    >>Mata a los |cRXP_ENEMY_Rompeolas múrloc|r y a los |cRXP_ENEMY_Clamamareas menor múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Aletas|r y |cRXP_LOOT_Pez luna|r
	>>|cRXP_WARN_Ten en cuenta que esta zona tiene una reaparición hiperrápida (hyperspawn) , lo que significa que los |cRXP_ENEMY_Múrlocs|r reaparecen rápidamente|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    .goto 1433/0,-2903.07,-9691.340
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>|cRXP_WARN_Omite este paso si no estás viendo ninguno|r |cRXP_ENEMY_Cóndor temible|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    .group 4
    .isOnQuest 95999
    #sticky
    #label IncineratorGarim
    .waypoint 1433/0,-3261.400,-9824.700
    >>Mata a |cRXP_ENEMY_Incinerador Gar'im|r dentro de la cueva. Despójalo para obtener el |cRXP_LOOT_Broken Bastón of Incinerador Gar'im|r
    >>|cRXP_WARN_Omite este paso si no puedes encontrar un grupo para él|r
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #completewith next
    >>Despoja los |cRXP_PICK_Grain Sacks|r y los |cRXP_PICK_Meat Haunches|r del suelo para obtener los |cRXP_LOOT_Suministros robados|r
    >>Despoja los |cRXP_PICK_Weapon Racks|r y las |cRXP_PICK_Stolen Armas|r del suelo
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label orcs
    #loop
    >>Mata a los |cRXP_ENEMY_Brutos Roca Negra|r y a los |cRXP_ENEMY_Avanzados Roca Negras|r. Despójalos para obtener sus |cRXP_LOOT_Hachas|r
	>>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Avanzados Roca Negra|r lanzarán |T132149:0|t[Red] sobre ti|r
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #loop
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    >>Despoja los |cRXP_PICK_Grain Sacks|r y los |cRXP_PICK_Meat Haunches|r del suelo para obtener los |cRXP_LOOT_Suministros robados|r
    >>Despoja los |cRXP_PICK_Weapon Racks|r y las |cRXP_PICK_Stolen Armas|r del suelo
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #requires IncineratorGarim
step
    .goto 1433/0,-2903.07,-9691.340
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Salta al Lago|r
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20-7687 >> Mata enemigos hasta que te falten 7687 puntos de experiencia para el nivel 20 << !Rogue
    .xp 20-10012 >> Mata enemigos hasta que te falten 10012 puntos de experiencia para el nivel 20 << Rogue
step << Rogue
    #completewith next
    .subzone 97 >> Viaja al Molino de Alther
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Colócate en el punto marcado de la ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Arcones de prácticas|r de una vez sin tener que mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
step << Rogue
	.goto 1433/0,-2700.75,-9222.07
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto 1433/0,-2298.06,-9284.04,150 >> Viaja a Villa del Lago
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Entrega la misión La amenaza de los Roca Negra
    .turnin 98387 >>Entrega la misión Blackrock Blockade
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Entrega la misión Las herramientas perdidas
    .accept 89 >> Acepta la misión El puente sempiterno
step
    #optional
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Entrega la misión WANTED: Incinerador Gar'im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Entrega la misión Pescado a la venta
    .accept 150 >> Acepta la misión Cazadores furtivos
    .turnin 150 >> Entrega la misión Cazadores furtivos
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Entrega la misión Pescado a la venta
step << Druid
    .goto 1433/0,-2152.62,-9223.67--c:Redridge Mountains,26.8,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Brianna|r
    .home Lakeshire >> Fija tu Piedra de hogar en Villa del Lago
    .target Innkeeper Brianna
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Entrega la misión Una visita al herborista
    .accept 131 >> Acepta la misión Un ramo de narcisos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Entrega la misión Un ramo de narcisos
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto 1433/0,-2180.19,-9328.21
    .turnin 2282 >> Entrega la misión Molino de Alther
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Entrega la misión El collar de Hilary
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Destruye el |T134328:0|t[Certificado de Ratería]. No lo necesitas
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Entrega la misión Evaluar la amenaza
    .turnin 98407 >>Entrega la misión Muestra de fuerza
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20 >> Sube de nivel matando enemigos hasta llegar al nivel 20

-- Druid Cat form quest --

step << Druid
    #completewith catspirit1
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Vuela a Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf !Druid
    #hidewindow
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    #label catspirit1
    .goto 1457/1,2564.600,10179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso::4217|r
    .target Mathrengyl Bearwalker::4217
    .accept 98393 >>Acepta la misión El Gran espíritu felino

step << Druid
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.900,8020.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar::11802|r
    .target Dendrite Starblaze::11802
    .turnin 98393 >>Entrega la misión El Gran espíritu felino
    .accept 98341 >>Acepta la misión El gran espíritu felino del viento << Skyborne
    .accept 98394 >>Acepta la misión El Gran espíritu felino << !Skyborne
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran espíritu felino|r
    .turnin 98394 >>Entrega la misión El Gran espíritu felino
    .accept 98396 >>Acepta la misión El Gran espíritu felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Entrega la misión El gran espíritu felino del viento
    .accept 98404 >>Acepta la misión El gran espíritu felino del viento
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Dirígete al Túmulo de Tempestira
step << Druid
    >>Ve al fondo de la cueva, cruza el puente, busca una estatua de gato dentro de un hueco y haz clic en el pequeño orbe junto a la estatua
    >>Despoja la |cRXP_LOOT_Reliquia de la garra|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98396,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Haz clic en el pequeño orbe junto a la estatua de gato
    >>Despoja la |cRXP_LOOT_Reliquia de la sombra silenciosa|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98396,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Haz clic en el pequeño orbe junto a la estatua de gato
    >>Despoja la |cRXP_LOOT_Reliquia del colmillo|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98396,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran espíritu felino|r
    .turnin 98396 >>Entrega la misión El Gran espíritu felino
    .accept 98731 >>Acepta la misión Bendiciones del Gran espíritu felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Entrega la misión El gran espíritu felino del viento
    .accept 98738 >>Acepta la misión Bendiciones del gran espíritu felino del viento
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTeletranspórtate a Claro de la Luna y habla con |cRXP_FRIENDLY_Dendrita Rafagaestelar::11802|r
    .target Dendrite Starblaze::11802
    .usespell 18960
    .turnin 98738 >>Entrega la misión Bendiciones del gran espíritu felino del viento << Skyborne
    .accept 98397 >>Acepta la misión A Darnassus --<< Alliance
    --.accept 98362 >>Accept To Thunder Bluff << Horde
step << Druid
    #completewith catspirit2
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Vuela a Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Vuela a Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #label catspirit2
    .goto 1457/1,2564.400,10179.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso::4217|r
    .target Mathrengyl Bearwalker::4217
    .turnin 98397 >>Entrega la misión A Darnassus
step << Druid
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Villa del Lago

-- Druid cat form quest end --

step
    #completewith InRR
    .goto 1433/0,-2234.89,-9435.35
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
	.target Ariena Stormfeather
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Compra una|r |T135324:0|t[Tizona] |cRXP_WARN_y equipala al nivel 21|r
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Compra una|r |T135324:0|t[Tizona] |cRXP_WARN_y equipala al nivel 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step
    #optional
    .isQuestComplete 2040
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .target Shoni the Shilent
step
    #optional
    .isQuestComplete 168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step
    #optional
    .isQuestComplete 167
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .turnin 167 >> Entrega la misión Oh, hermano...
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Warrior/Paladin
    #ah
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_WARN_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_WARN_si tienes suficiente dinero. Equípalo al nivel 21|r
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #ssf
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_WARN_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_WARN_si tienes suficiente dinero. Equípalo al nivel 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Mage
    .goto 1453/0,847.56,-8991.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
-- step << Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
--     .goto 1453/0,1100.15,-8776.330
--     .trainer >> Train your class spells
--     .train 768 >> Train |T132115:0|t[Cat Form]
--     .target Sheldras Moontree
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r. Te dará el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r]
    .use 6776 >>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r] para iniciar la misión|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Entrega la misión Escrito sobre valor
    .accept 1650 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue/Skyborne Rogue
    .goto 1436/0,1037.42,-10628.27,5,0
    .zone Westfall >> Viaja a Páramos de Poniente
    >>Vuela allí si ya tienes la Ruta de Vuelo de Páramos de Poniente
    .isOnQuest 2360
step << NightElf Rogue/Skyborne Rogue
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Consigue la ruta de vuelo de Páramos de Poniente
    .target Thor
    .isOnQuest 2360
step << Human Rogue/Dwarf Rogue
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_o|r |T626006:0|t|cFF0070DDChamán|r |cRXP_WARN_amigo, puedes omitir este paso y pedirle que lo quite por ti|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
step << Rogue
    .goto 1436/0,619.17,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto 1436/0,514.52,-11114.77,0
    .goto 1436/0,531.32,-11166.80,0
    .goto 1436/0,581.37,-11104.97,0
    .goto 1436/0,514.52,-11114.77,30,0
    .goto 1436/0,531.32,-11166.80,30,0
    .goto 1436/0,581.37,-11104.97,30,0
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Viaja hasta el 2.º piso de la torre. Mientras estés en|r |T132320:0|t[Sigilo] |cRXP_WARN_y los |cRXP_ENEMY_Avizores de torre Defias|r no estén cerca de ti, Salta en la silla, luego en la lámpara, luego en el estante encima del punto de la ruta|r
    >>|cRXP_WARN_Manualmente desactiva el|r |T132320:0|t[Sigilo]|cRXP_WARN_, luego presiona tu tecla "Interactuar con el objetivo" para abrir el |cRXP_PICK_Cofre de Bosque del Ocaso|r. Despójalo para obtener el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_NOTA: Tu|r |T132320:0|t[Sigilo] |cRXP_WARN_dejará de funcionar temporalmente después de despojar el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_Prepárate para correr si no matas los |cRXP_ENEMY_Avizores de torre Defias|r en el 2.º piso. Lo más probable es que te generen amenaza permanente (aunque no te atacarán) cuando estés encima de la estantería, ya que es un punto de evasión|r
    >>|cRXP_WARN_Si tienes una|r |T135641:0|t[Daga] |cRXP_WARN_en tu inventario o equipada, puedes lanzar|r |T132282:0|t[Emboscada] |cRXP_WARN_en los |cRXP_ENEMY_Guardias de torre Defias|r y |cRXP_ENEMY_Avizores de torre Defias|r de dentro para matarlos instantáneamente. Prepárate para correr después de matar al primer |cRXP_ENEMY_Avizor de torre Defias|r y recuerda que puedes ser golpeado desde arriba. Esto es más lento, pero MUCHO más seguro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Zángano Defias deforme|r y los |cRXP_ENEMY_Zánganos Defias|r pueden estar en la entrada de la torre si tienes que salir corriendo de ella|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_o|r |T626006:0|t|cFF0070DDChamán|r |cRXP_WARN_amigo, pídele que elimine el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por ti en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_o|r |T626006:0|t|cFF0070DDChamán|r |cRXP_WARN_amigo, pídele que elimine el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por ti en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto 1453/0,520.88,-8954.15
    .turnin 120 >> Entrega la misión Mensajero a Ventormenta
    .accept 121 >> Acepta la misión Mensajero a Ventormenta
step
    #completewith next
    .goto 1429/0,84.61,-9457.95,60 >> Viaja a Villadorada
step
    .goto 1429/0,87.73,-9456.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .turnin 118 >> Entrega la misión El precio de unas herraduras
    .accept 119 >> Acepta la misión Regresa junto a Verner
step
    #completewith next
    .goto 1429/0,-727.57,-9555.16,50 >> Viaja a la Torre de Azora. Sube la torre
step
    .goto 1429/0,-728.26,-9553.08
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto
    .accept 94 >> Acepta la misión Un ojo vigilante
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto 1453/0,489.72,-8837.28,-1
	.goto 1433/0,-1716.28,-9623.29,-1
    .zone Redridge Mountains >>Viaja a Montañas Crestagrana
    .fly Redridge >> Vuela a Crestagrana
    >>|cRXP_WARN_Si estás en Villadorada será más rápido volar desde Ventormenta|r
	>>|cRXP_WARN_Si estás en la Torre de Azora simplemente corre a Montañas Crestagrana|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .turnin 119 >> Entrega la misión Regresa junto a Verner
    .accept 124 >> Acepta la misión El aullido de los gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 122 >> Acepta la misión Escamas de barriga
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 121 >> Entrega la misión Mensajero a Ventormenta
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Entrega la misión El collar de Hilary
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Entrega la misión Pescado a la venta
    .accept 150 >> Acepta la misión Cazadores furtivos
    .turnin 150 >> Entrega la misión Cazadores furtivos
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Entrega la misión Una visita al herborista
    .accept 131 >> Acepta la misión Un ramo de narcisos
step
	#completewith next
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .isOnQuest 92
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que despojes, ya que los puedes usar para subir|r |T133971:0|t[Cocina] |cRXP_WARN_al 50, lo cual es necesario para Bosque del Ocaso más adelante|r
    .goto 1433/0,-1912.31,-9339.93,60,0
    .goto 1433/0,-2270.93,-9591.440,60,0
    .goto 1433/0,-2244.23,-9619.53,60,0
    .goto 1433/0,-1912.31,-9339.93
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	#completewith next
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2059.27,-9091.91,0
    >>Mata a los |cRXP_ENEMY_Toscos de Crestagrana|r y a los |cRXP_ENEMY_Místicos de Crestagrana|r. Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    .complete 124,1 --Redridge Brute (10)
    .mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step
    .goto 1433/0,-2514.49,-9033.70,50,0
    .goto 1433/0,-2580.70,-9091.33,50,0
    .goto 1433/0,-2321.07,-9527.58,50,0
    .goto 1433/0,-2364.92,-9645.44
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Entrega la misión Un ramo de narcisos
step
    #completewith next
    .goto 1433/0,-1908.40,-9299.83,0
    .goto 1433/0,-1988.50,-9176.32,0
    .goto 1433/0,-1937.7,-9371.64,0
    .goto 1433/0,-2146.54,-9225.84
    +|cRXP_WARN_Sube tu|r |T133971:0|t[Cocina] |cRXP_WARN_usando|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que farmeaste anteriormente. Necesitas nivel 50 de habilidad de|r |T133971:0|t[Cocina]
    +|cRXP_WARN_Si necesitas más|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_viaja hacia el oeste cerca de|r |cRXP_ENEMY_Panzallena|r |cRXP_WARN_y mata más|r |cRXP_ENEMY_Gran dentosangre|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto 1433/0,-2243.79,-9259.860
    .turnin 124 >> Entrega la misión El aullido de los gnolls
    .turnin 122 >> Entrega la misión Escamas de barriga
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto 1433/0,-2267.67,-9280.140
    .turnin 89 >> Entrega la misión El puente sempiterno
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance Hunter
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 19-21 Costa Oscura/Vallefresno
#next RestedXP Guía Forever (A)\21-23 Vallefresno/Sierra Espolón

step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 951 >> Entrega la misión Las reliquias de Mathystra
    .target Onu
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    >>|cRXP_WARN_Esta es una misión cronometrada. Tienes que escoltarlo a su bolsa en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Puede que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .isOnQuest 729
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>Esto iniciará una escolta
    .accept 731,1 >> Acepta la misión El prospector despistado
    >>|cRXP_WARN_Esta misión es MUY difícil. Omite este paso si no puedes encontrar un grupo o completarla en solitario|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Omite este paso si no puedes encontrar un grupo o completarla en solitario|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith TheryluneEnd
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
    --  .use 13536
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r
step
    #optional
    .goto 1439,31.229,85.564
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    #optional
    .goto 1439,31.690,83.700
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
    #optional
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>|cRXP_WARN_Ten cuidado cuando lanzan|r |T132152:0|t[Devastar] |cRXP_WARN_un ataque instantáneo que inflige 20-40 de daño y te tira al suelo durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isOnQuest 1003
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Limpia a los fúrbolg cerca de la cueva antes de hablar con él|r
    .turnin 993 >> Entrega la misión El maestro perdido
    .accept 994 >> Acepta la misión Escaparse por la fuerza
    .target Volcor
    .isOnQuest 993
step
    #optional
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Limpia a los fúrbolg cerca de la cueva antes de hablar con él|r
    .accept 994 >> Acepta la misión Escaparse por la fuerza
    .target Volcor
    .isQuestTurnedIn 993
step
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escolta a |cRXP_FRIENDLY_Volcor|r
    >>Después de cruzar la 3ª antorcha después de salir de la cueva, un |cRXP_ENEMY_Fúrbolg|r aparecerá desde ambos lados y atacará a |cRXP_FRIENDLY_Volcor|r
    >>A mitad de camino a la carretera, unos |cRXP_ENEMY_Fúrbolgs|r aparecerán desde ambos lados y atacarán a |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .isQuestTurnedIn 993
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 951 >> Entrega la misión Las reliquias de Mathystra
    .target Onu
    .isOnQuest 951
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    >>|cRXP_WARN_Esta es una misión cronometrada. Tienes que escoltarlo a su bolsa en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label Kerlonian
    .goto 1439/1,206.400,4402.500
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r a su bolsa |cRXP_WARN_en Costa Oscura|r|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto 1440/1,-12.70,4150.17
step
    #sticky
    #completewith next
    >>Mata y saquea a los |cRXP_WARN_Corredores Garraespectro|r que encuentres mientras haces misiones. Guarda los |T133970:0|t[|cRXP_LOOT_Costillares de lobo magro|r] que obtengas. Necesitarás 10 para una misión de cocina más tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Entrega la misión El despertar
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    .accept 970 >> Acepta la misión La Torre de Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Mata a los |cRXP_ENEMY_Cultores de la Facción Oscura|r, |cRXP_ENEMY_Adeptos de la Facción Oscura|r, |cRXP_ENEMY_Déspotas de la Facción Oscura|r y |cRXP_ENEMY_Excavadores de la Facción Oscura|r. Despójalos para obtener su |cRXP_LOOT_Gema de alma resplandeciente|r
    >>Sé paciente, este objeto tiene una baja tasa de caída
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Parecen pequeños sacos marrones. Pueden ser difíciles de ver|r
    .complete 1010,1
    .isOnQuest 1010
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Sigue matando a los |cRXP_ENEMY_miembros de la Facción Oscura|r hasta que tengas suficiente experiencia para alcanzar el nivel 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
step
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Mata enemigos hasta subir al nivel 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Acepta la misión Cabello de Bathran
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Parecen pequeños sacos marrones. Pueden ser difíciles de ver|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
    .accept 973 >> Acepta la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    #sticky
    #completewith Astranaar
    >>Mata y saquea a los |cRXP_WARN_Corredores Garraespectro|r que encuentres mientras haces misiones. Guarda los |T133970:0|t[|cRXP_LOOT_Costillares de lobo magro|r] que obtengas. Necesitarás 10 para una misión de cocina más tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto 1440/1,394.43,2677.63
    .turnin 945 >> Entrega la misión La fuga de Therylune
    .isQuestComplete 945
step << Hunter
    .goto 1440/1,522.900,2716.100,30 >> Sube por la rampa hacia el noroeste
step
    #completewith Astranaar
    >>Guarda hasta 6 |cRXP_LOOT_Patas pegajosas de araña|r despojadas de las |cRXP_ENEMY_Arañas|r de la zona para más tarde
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #sticky
    .goto 1440/1,663.38,2365.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Aprende las habilidades de tu mascota
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    .goto 1440/1,661.42,2373.12--c:Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Aprende tus habilidades de clase
    .train 5118 >> Aprende |T132242:0|t[Aspecto del guepardo]
    .target Alenndaar Lapidaar
step
    #label Astranaar
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Thenysil|r
	.target Sentinel Thenysil
    .goto 1440/1,-311.99,2759.11
    .accept 1070 >> Acepta la misión Estar de guardia en Espolón
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto 1440/1,-362.16,2785.640
    .accept 1056 >> Acepta la misión Viaje a Cima del Espolón
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
	.target Raene Wolfrunner
    .goto 1440/1,-411.18,2767.19
    .accept 991 >> Acepta la misión La limpieza de Raene
    .accept 1054 >> Acepta la misión Matanza selectiva
step
    #label HCHunterNoHS --hidden step for #include
step << NightElf Hunter
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    .goto 1440/1,-410.60,2758.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Compra comida y agua si es necesario|r
    .target Maliynn
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
step << Hunter
    .goto 1440/1,-306.80,2720.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haljan Roblezón|r
    .vendor >> |cRXP_BUY_Reabastécete de munición si es necesario|r
    .target Haljan Oakheart
step
    #completewith ElunesTear
    >>Guarda hasta 6 |cRXP_LOOT_Patas pegajosas de araña|r despojadas de las |cRXP_ENEMY_Arañas|r de la zona. Las necesitarás para una misión más tarde
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    .goto 1440/1,-974.00,2890.19
    >>Despoja la |cRXP_LOOT_Lágrima de Elune|r del suelo
    .complete 1033,1
step
    #label ElunesTear
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Entrega la misión Lágrima de Elune
    .timer 17,Lágrima de Elune "Roleplay"
    .accept 1034 >> Acepta la misión Las Ruinas del Polvo Estelar
step
    .goto 1440/1,-220.3,2067.24
    >>Despoja los |cRXP_PICK_Arbustos cubiertos de polvo estelar|r para obtener el |cRXP_LOOT_Puñado de Polvo estelar|r
    >>|cRXP_WARN_Sus puntos de aparición están dispersos por toda la isla|r
    .complete 1034,1
step
    #completewith next
    .goto 1440/1,-126.30,2203.69,15 >> Ve a la base de la montaña
    .goto 1440/1,-99.78,2305.170,15 >>Corre directamente al norte mientras escalas la montaña
step
    #completewith next
    .goto 1440/1,114.17,2337.45,8 >> Sube a la colina junto al árbol grande a la derecha de la entrada del Santuario de la Escara
    >>Salta sobre la raíz del árbol y mantente cerca del lado derecho para evitar atraer la atención de enemigos
step
    .goto 1440/1,242.76,2340.53
    >>Mata a |cRXP_ENEMY_Ilkrud Magthrull|r. Despójalo para obtener su |cRXP_LOOT_Escrito|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_lanzará|r |T136221:0|t[Guardianes de Ilkrud] |cRXP_WARN_que es un lanzamiento de 5 segundos e invocará 2 Abisarios. Detén este lanzamiento si puedes|r
    >>|cRXP_WARN_Despeja una ruta de salida si es necesario para poder reiniciar los enemigos junto con la |cRXP_ENEMY_Súcubo|r si es necesario. Puedes omitir esto y hacerlo al nivel 23 si lo deseas|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Haz clic aquí para ver la referencia en vídeo|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    .isQuestComplete 973
    .goto 1440/1,189.71,3185.77
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 973 >> Entrega la misión La Torre de Althalaxx
step
    #label HCHunterEnd --hidden step for #include
step
    #sticky
    #completewith StatuetteStart
    >>Guarda hasta 6 |cRXP_LOOT_Patas pegajosas de araña|r despojadas de las |cRXP_ENEMY_Arañas|r de la zona. Las necesitarás para una misión más tarde
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith StatuetteStart
    >>Mata y saquea a los |cRXP_WARN_Corredores Garraespectro|r que encuentres mientras haces misiones. Guarda los |T133970:0|t[|cRXP_LOOT_Costillares de lobo magro|r] que obtengas. Necesitarás 10 para una misión de cocina más tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label StatuetteStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .accept 1007 >> Acepta la misión La estatuilla antigua
step
    #completewith nagas
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    >>|cRXP_WARN_No te desvíes para completar esto aún|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto 1440/1,881.13,3879.57
    >>Despoja la |cRXP_LOOT_Estatuilla antigua|r del suelo
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1007 >> Entrega la misión La estatuilla antigua
    .timer 22,La estatuilla antigua Roleplay
    .accept 1009 >> Acepta la misión Ruuzel
step
    .goto 1440/1,1323.55,4159.35
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_WARN_Si tienes algunas|r |T133717:0|t[Bombas]|cRXP_WARN_/|r[Granadas] |cRXP_WARN_también puedes usarlas para hacer un "split pull"|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Hacer clic aquí para ver un vídeo de referencia sobre el "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto 1440/1,1323.55,4159.35
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    .goto 1440/1,1296.33,4088.67,0
    .goto 1440/1,866.14,4013.71,0
    .goto 1440/1,843.07,3863.42,0
    .goto 1440/1,942.84,3710.83,0
    .goto 1440/1,1072.01,3518.64,0
    .goto 1440/1,1296.33,4088.67,70,0
    .goto 1440/1,866.14,4013.71,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,1072.01,3518.64,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,866.14,4013.71,70,0
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1009 >> Entrega la misión Ruuzel
step
    #sticky
    #completewith SoulGemStart
    >>Guarda hasta 6 |cRXP_LOOT_Patas pegajosas de araña|r despojadas de las |cRXP_ENEMY_Arañas|r de la zona. Las necesitarás para una misión más tarde
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith SoulGemStart
    >>Mata y saquea a los |cRXP_WARN_Corredores Garraespectro|r que encuentres mientras haces misiones. Guarda los |T133970:0|t[|cRXP_LOOT_Costillares de lobo magro|r] que obtengas. Necesitarás 10 para una misión de cocina más tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label SoulGemStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver de Teronis|r
	.target Teronis' Corpse
    .goto 1440/1,528.79,3045.86
    .turnin 991 >> Entrega la misión La limpieza de Raene
    .accept 1023 >> Acepta la misión La limpieza de Raene
step
    #sticky
    #completewith GlowingGem
    >>Guarda cualquier |T134304:0|t[Aleta de múrloc] que puedas despojar. Necesitarás 8 para una misión más tarde
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    .goto 1440/1,523.02,2988.59,50,0
    .goto 1440/1,579.54,3055.08,50,0
    .goto 1440/1,488.42,3073.53,50,0
    .goto 1440/1,528.79,3045.86
    >>Mata a los |cRXP_ENEMY_Múrlocs Gapo Salino|r. Despójalos para obtener la |cRXP_LOOT_Gema resplandeciente|r
    >>|cRXP_WARN_Ten cuidado porque los |cRXP_ENEMY_Oráculos|r pueden curarse y lanzar un hechizo de choque instantáneo de 90 de daño cada pocos segundos|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
step << NightElf Hunter
    #softcore
    #completewith next
    .deathskip >> Muere en la orilla oriental del lago y resucita en Astranaar
step << NightElf Hunter
    #hardcore
    #completewith next
    .goto 1440/1,-283.73,2827.92,200 >> Viaja a Astranaar
step << NightElf Hunter
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .turnin 1008 >> Entrega la misión La Ensenada de Zoram
    .accept 1134 >> Acepta la misión Alaorgullo del Espolón
step << NightElf Hunter
    .goto 1440/1,-284.31,2828.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Vuela a Costa Oscura
    .target Daelyshia
step
    #optional
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    #completewith end
    .vendor >> Reaprovisionar/Reabastecimiento
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Entrega la misión Escaparse furtivamente
    .target Terenthis
    .isOnQuest 995
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Entrega la misión Escaparse por la fuerza
    .target Terenthis
    .isOnQuest 994
step
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Entrega la misión Criatura marina varada
    .turnin 4731 >> Entrega la misión Tortuga marina varada
    .turnin 4732 >> Entrega la misión Tortuga marina varada
    .turnin 4733 >> Entrega la misión Criatura marina varada
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .goto 1438/1,968.90,8795.34
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Aprende tus hechizos de clase
    .xp <22,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garryeth|r
    .goto 1457/1,2515.03,9940.50
    .bankdeposit 5996,1468,2251,1015 >> Deposita los siguientes objetos en tu banco
    .target Garryeth
    >>|T134797:0|t[Elixir de respiración acuática] --5996
    >>|T134304:0|t[Aletas de múrloc] --1468
    >>|T134321:0|t[Patas pegajosas de araña] --2251
    >>|T133970:0|t[Costillar de lobo magro] --1015
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossipid 96881
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Aprende el uso de Arcos
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
    .isOnQuest 741
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .accept 942 >> Acepta la misión El prospector despistado
    .isQuestTurnedIn 741
step << NightElf Hunter
    #label end
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label end
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Vuela a Vallefresno
    .target Vesprystus
    .zoneskip Ashenvale
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance !Hunter
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Costa Oscura/Vallefresno
#next RestedXP Guía Forever (A)\21-23 Espolón/Vallefresno


step << Druid
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7867.06
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step
    #optional
    #completewith AshenvaleEnd
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>2,1
step << Druid
    .goto 1450/1,-2491.79,7454.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Vuela a Costa Oscura
    .target Sindrayl
    .zoneskip Darkshore
step
    #optional
    #sticky
    .abandon 2040 >> Abandona la misión Asalto subterráneo
    .abandon 167 >> Abandona la misión Oh, hermano...
    .abandon 168 >> Abandona la misión Recolección de recuerdos
step
    .goto 1439/1,504.41,6402.39
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
    .isOnQuest 3765
step
    .goto 1439,39.373,43.483
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Acepta la misión El maestro perdido
	.target Terenthis
    .isQuestTurnedIn 986
step
    #optional
    #completewith OnuGrove
    >>|cRXP_WARN_Si equipas la|r |T133762:0|t[Capa de Acechalunas encantada]|cRXP_WARN_, asegúrate de guardar tu capa actual para después ya que la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_se pierde al entregar una misión posterior|r
    .equip 15,5387 >>|cRXP_WARN_Equipa la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_Si es mejor que tu Capa actual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #completewith TheryluneEnd
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>|cRXP_WARN_Ten cuidado cuando lanzan|r |T132152:0|t[Devastar] |cRXP_WARN_un ataque instantáneo que inflige 20-40 de daño y te tira al suelo durante 2 segundos|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
    .subzoneskip 449 -- Master's Glaive
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Viaja al Páramo de los Ancianos
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 952 >> Entrega la misión El Páramo de los Ancianos << NightElf
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Viaja a La Espada del Maestro
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Descubre La Espada del Maestro
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
    .accept 98042 >>Acepta la misión Es pura diversión y juegos hasta que...
step
    #completewith TheryluneEnd
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |cRXP_LOOT_Ojo incomparable|r y el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |cRXP_LOOT_Ojo incomparable|r y el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior/Shaman
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
step
    #completewith prospectorEscort
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>|cRXP_WARN_Ten cuidado cuando lanzan|r |T132152:0|t[Devastar] |cRXP_WARN_un ataque instantáneo que inflige 20-40 de daño y te tira al suelo durante 2 segundos|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Puede que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .target Prospector Remtravel
    .isOnQuest 729
step
    #label prospectorEscort
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r. Esto iniciará una escolta
    .accept 731,1 >> Acepta la misión El prospector despistado
    >>|cRXP_WARN_Esta misión es MUY difícil. Omite este paso si no puedes encontrar un grupo o completarla en solitario|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Omite este paso si no puedes encontrar un grupo o completarla en solitario|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith Murkdeep
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r
step
    .goto 1439,31.229,85.564
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    #optional
    .goto 1439,31.690,83.700
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
    #optional
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
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
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>|cRXP_WARN_Ten cuidado cuando lanzan|r |T132152:0|t[Devastar] |cRXP_WARN_un ataque instantáneo que inflige 20-40 de daño y te tira al suelo durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isOnQuest 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 951 >> Entrega la misión Las reliquias de Mathystra
    .target Onu
    .isQuestComplete 951
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .target Onu
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    >>|cRXP_WARN_Esta es una misión cronometrada. Tienes que escoltarlo a su bolsa en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
step
    .goto 1439/1,34.78,5001.570
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith volcorEnd
    .goto 1440/1,128.01,3305.31
    +|cRXP_FRIENDLY_Kerlonian|r te seguirá y ocasionalmente te ayudará en combate. |cRXP_WARN_Asegúrate de no perderlo porque dejará de moverse cuando se duerma. Tienes 25 minutos para llegar a su bolsa y completar esta misión|r
    .use 13536 >> |cRXP_WARN_Usa el|r |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] |cRXP_WARN_siempre que |cRXP_FRIENDLY_Kerlonian|r se quede dormido mientras estás a su lado para despertarlo|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,-5.83,4608.57,30 >> Viaja hacia |cRXP_FRIENDLY_Volcor|r en la cueva
    .isOnQuest 993
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Entrega la misión El maestro perdido
    .accept 995 >> Acepta la misión Escaparse furtivamente
    .timer 20,Escaparse furtivamente Roleplay
    .target Volcor
step
    #label volcorEnd
    .goto 1439/1,30.85,4635.20
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 995,1
    .isOnQuest 995
step
    #label KerlonianTwo
    .goto 1439/1,206.400,4402.500
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r a su bolsa |cRXP_WARN_en Costa Oscura|r|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step
    #completewith tower
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto 1440/1,-12.70,4150.17
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Entrega la misión El despertar
    .isQuestComplete 5321
step
    #label tower
    .goto 1440/1,189.71,3185.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    .accept 970 >> Acepta la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Mata a los |cRXP_ENEMY_Cultores de la Facción Oscura|r y a los |cRXP_ENEMY_Adeptos de la Facción Oscura|r. Despójalos para obtener la |cRXP_LOOT_Gema de alma resplandeciente|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Sigue matando a los |cRXP_ENEMY_miembros de la Facción Oscura|r hasta que tengas suficiente experiencia para alcanzar el nivel 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
    .accept 973 >> Acepta la misión La Torre de Althalaxx
step
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Mata enemigos hasta subir al nivel 20
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .target Orendil Broadleaf
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Viaja a Astranaar
step
    #label AshenvaleEnd
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step
    #label TZS
    .goto 1440/1,-299.30,2796.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
    .target Shindrell Swiftfire
step
    .goto 1440/1,-311.99,2759.11
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Thenysil|r
    .accept 1070 >> Acepta la misión Estar de guardia en Espolón
    .target Sentinel Thenysil
step
    .goto 1440/1,-362.16,2785.640
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Acepta la misión Viaje a Cima del Espolón
    .target Faldreas Goeth'Shael
step
    .goto 1440/1,-411.18,2767.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .accept 991 >> Acepta la misión La limpieza de Raene
    .accept 1054 >> Acepta la misión Matanza selectiva
    .target Raene Wolfrunner
step << !Warlock
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home 415 >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
]])
