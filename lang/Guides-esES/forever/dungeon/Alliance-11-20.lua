if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
<< NightElf
#name 11-15 Costa Oscura/Páramos de Poniente 
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Salón de Señores Feudales

step
    #include RestedXP Guía Forever (A)\14-16 Costa Oscura@WashedA-Gatehouse
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 16509
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
    >>|T4548890:0|t[Isorresorte de gólem]
    >>|T132995:0|t[Giroestabilizador de cosechador]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la Ruta de Vuelo de Ventormenta
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
    .accept 109 >>Acepta la misión Habla con Gryan Mantorrecio
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .target Salma Saldean
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
step << Gnome/Dwarf/NightElf
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
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
step
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
	#completewith GnollPaws
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
step
    #sticky
    #completewith bennytime
    >>Mata |cRXP_ENEMY_Vigilantes de la cosecha|r ubicados en cualquiera de los campos mientras corres cerca de ellos
    >>Despójalos para obtener su |cRXP_LOOT_Okra|r y sus |cRXP_LOOT_Frascos de aceite|r
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Abre el |cRXP_PICK_Cofre de Alexston|r. Despójalo para obtener |cRXP_LOOT_Una sencilla brújula|r
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
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Usa el|r |T236996:0|t[Kit de muestra de agua de pozo] |cRXP_WARN_en el pozo de la Finca de Jansen|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
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
    #label FurlbrowFarm
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
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .isQuestComplete 38
    .target Salma Saldean
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
    .collect 814,5,103,1 --Flask of Oil (5)
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
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
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
    #completewith next
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
step
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Cómprale una|r |T135343:0|t[Cimitarra] |cRXP_BUY_o algo mejor de la Casa de Subastas y equípalo en tu mano izquierda|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a esta vendedora|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .train 1758,1
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <16,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
    .xp <16,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .xp <16,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theridran|r
    .trainer >>Aprende tus hechizos de clase
	.target Theridran
    .xp <16,1
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
    .isQuestComplete 399
step << Priest
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .train 8122,1
    .target Brother Joshua
    .xp <16,1
step
    #optional
    #label endOfTheGuide
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
    .zone Ironforge >> Toma el Tranvía a Forjaz
    .zoneskip Loch Modan
    .zoneskip Dun Morogh


]])



RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#name 13-15 Páramos de Poniente 
#displayname 14-15 Páramos de Poniente << Gnome/Dwarf !Hunter
#displayname 13-15 Páramos de Poniente << Hunter
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Salón de Señores Feudales

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
    >>|T4548890:0|t[Isorresorte de gólem]
    >>|T132995:0|t[Giroestabilizador de cosechador]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon

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
    .accept 109 >>Acepta la misión Habla con Gryan Mantorrecio << NightElf
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
step << Gnome/Dwarf/NightElf
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
step
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
	#completewith GnollPaws
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
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
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
step
    #completewith next
    >>Mata |cRXP_ENEMY_Gnolls Zarparrío|r y |cRXP_ENEMY_Exploradores Zarparrío|r. Despójalos para obtener sus |T134297:0|t|cRXP_LOOT_Garras gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Usa el|r |T236996:0|t[Kit de muestra de agua de pozo] |cRXP_WARN_en el pozo de la Finca de Jansen|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
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
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener el |cRXP_LOOT_Puñado de avena|r
	>>|cRXP_WARN_Generalmente puedes encontrarlos cerca de las vallas de las granjas o de los edificios|r
	.complete 151,1 --Handful of Oats (8)
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
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ozwin Piñón de Hierro::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Acepta la misión Cosechar a los cosechadores
    .turnin 92909 >>Entrega la misión Cosechar a los cosechadores
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
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
    #completewith next
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
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Usa el|r |T236996:0|t[Kit de muestra de agua de pozo] |cRXP_WARN_en el pozo de la Granja de Molsen|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
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
step
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
step
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

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
    >>|cRXP_WARN_Si acababas de entrenar hace poco, omite este paso|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
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
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
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
    >>|cRXP_BUY_Compra uno|r |T134335:0|t[Adorno lustroso] |cRXP_BUY_y tres|r |T134324:0|t[Reptadores nocturnos] |cRXP_BUY_de ella. Esto es para una misión de 900 xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acepta la misión Hora de la pesca
    .turnin 95065 >>Entrega la misión Fishin' Tiempo
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifest Clerk Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Acepta la misión Philmor's Favor
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Entrega la misión Philmor's Favor
    .accept 97222 >>Acepta la misión Gatehouse Objetos
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Usa el|r |T132762:0|t[Cargamento de entrada] |cRXP_WARN_frente a la |cRXP_PICK_Entrada|r arriba|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Entrega la misión Gatehouse Objetos
step
    #optional
    #label endOfTheGuide
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
    .zone Ironforge >> Toma el Tranvía a Forjaz
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 15-16 Salón de Señores Feudales
#next 16-18 Ruins of Lordaeron

step << NightElf
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step
    #completewith OII
    +|cRXP_WARN_Ahora completarás una misión previa para El Salón de Señores Feudales y luego harás la mazmorra|r
step
    #completewith OII
    .zone Dun Morogh >> Viaja a Dun Morogh
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >> Acepta la misión Farsen's Observar
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Habla con |cRXP_FRIENDLY_Earthseer Farsen|r para ver su vista lejana
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
    .turnin 96392 >> Entrega la misión Farsen's Observar
    .accept 96390 >> Acepta la misión Nip 'Em in the Compa
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mata |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener el |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r]
    .use 274268 >>|cRXP_WARN_Usa el|r |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r] |cRXP_WARN_para iniciar la misión|r
    >>|cRXP_WARN_Puedes saltarte matar a los |cRXP_ENEMY_Dark Hierro Spies|r para la otra misión porque son de bajo nivel una vez que encuentres el|r |T237385:0|t[|cRXP_LOOT_Dark Hierro Mapa|r]
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acepta la misión Mapa subterráneo
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96391 >> Entrega la misión Subterráneo Mapa
    .accept 96393 >> Acepta la misión Old Ironforge Incursion
    .target Earthseer Farsen
step
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Entrega la misión Nip 'Em in the Compa
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_Empieza a buscar un grupo para Salón de Señores Feudales|r
step
    #optional
    #label InIronforge
    #completewith EnterHoT
    .zone Ironforge >> Viaja a Forjaz
step
    #requires InIronforge
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Viaja hacia abajo en Old Ironforge a través de la sala de |cRXP_FRIENDLY_King Magni|r
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >> Acepta la misión Los muertos sin descanso
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Déjate caer en la rampa de abajo|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >> Acepta la misión Important Heirlooms
    .target Thom Filch
step
    #label EnterHoT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >> Entra en el Hall of Thanes

step
    #completewith FaldrimAnvilmar
    >>Despoja los |cRXP_PICK_Dwarven Heirlooms|r en el suelo a lo largo del Hall of Thanes
    >>|cRXP_WARN_Puedes recoger muchos de estos al final de la mazmorra también|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>Mata a las |cRXP_ENEMY_Enraged Apariciones|r y a las |cRXP_ENEMY_Almas atormentadas|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghostly Asistente|r
    .accept 96395 >> Acepta la misión An Ancient Resentimiento
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>Mata a |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_Regresa junto al|r |cRXP_FRIENDLY_Ghostly Asistente|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghostly Asistente|r
    .turnin 96395 >> Entrega la misión An Ancient Resentimiento
    .target Ghostly Attendant
step
    >>Mata a las |cRXP_ENEMY_Enraged Apariciones|r y a las |cRXP_ENEMY_Almas atormentadas|r
    >>|cRXP_WARN_Completa esto ahora porque quizás no tengas la oportunidad de terminarla después|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>Despoja las |cRXP_PICK_Reliquias de los enanos|r del suelo a lo largo de El Salón de Señores Feudales
    >>|cRXP_WARN_Puedes recoger muchas de estas al final de la mazmorra también|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Mata a |cRXP_ENEMY_Durgen Dirgehammer|r. Despójalo para obtener la |cRXP_LOOT_Cabeza de Durgen Martillo de Endecha|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>Haz clic en el |cRXP_PICK_Tratado del entendimiento|r
    .accept 98423 >> Acepta la misión The Treaty of Understanding
step
    >>Despoja las |cRXP_PICK_Reliquias de los enanos|r del suelo a lo largo de El Salón de Señores Feudales
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >> |cRXP_WARN_Sal del Salón de Señores Feudales. La forma más rápida es correr en línea recta por el pasillo desde la sala del jefe final|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Entrega la misión Important Heirlooms
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Regresa a |cRXP_FRIENDLY_Afadra Dunwall|r subiendo la rampa
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >> Entrega la misión Los muertos sin descanso
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Sube la rampa hacia |cRXP_FRIENDLY_Rey Magni Barbabronce|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Magni Barbabronce|r
    .turnin 96393 >> Entrega la misión Old Ironforge Incursion
    .turnin 98423 >> Entrega la misión The Treaty of Understanding
    .target King Magni Bronzebeard

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eldrun Rompetormentas::258098|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Aprende tus hechizos de clase
step << Priest/Paladin/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
    .target Dink << Mage
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio de sacrificio (Rank 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regnus Tronagranito|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >> Aprende tus hechizos de clase
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 16-18 Ruins of Lordaeron
#next 18-20 Minas de la Muerte

step
    #completewith EnterRoL
    +|cRXP_WARN_Ahora entrarás a Ruins of Lordaeron|r
    >>|cRXP_WARN_Todas las misiones se aceptan dentro de la mazmorra|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Si no tienes la ruta de vuelo hacia Los Humedales, omite este paso|r
    .fly Wetlands >> Vuela a Los Humedales
    .target Gryth Thurden
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >> |cRXP_WARN_Salir de Ironforge. Viaja a Dun Morogh -> ubicación de deathskip de Los Humedales|r
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    .subzone 207 >>|cRXP_WARN_Sube la montaña, luego baja pasando el patrón dentado hasta que tu zona cambie a Los Humedales|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>|cRXP_WARN_Salta de la montaña hacia el norte o noroeste|r
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r de la Bahía de Baradin
    .target Ángel de la Resurrección
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >> Nada hacia el Puerto de Menethil
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >> Toma el barco hacia Costasur
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Consigue la ruta de vuelo de Costasur
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >>Viaja a las Ruinas de Lordaeron en Entrañas. Entra en la mazmorra
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Felinos|r, |cRXP_ENEMY_Osos|r, |cRXP_ENEMY_Arañas|r o |cRXP_ENEMY_Múrlocs|r de mayor nivel mientras vas hacia allí|r
    >>|cRXP_WARN_En cuanto entres a Entrañas se te activará automáticamente el JcJ (PVP), pudiendo ser atacado por la|r |cRXP_ENEMY_Horda|r

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Truman|r
    .accept 95250 >> Acepta la misión Abominable Creatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Mata |cRXP_ENEMY_El barón|r. Despójalo para obtener la |cRXP_LOOT_Cabeza del Barón|r
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Despoja todos los enemigos para obtener la |T133328:0|t[|cRXP_LOOT_Insignia ensangrentada|r]
    .use 268535 >> |cRXP_WARN_Usa la|r |T133328:0|t[|cRXP_LOOT_Insignia ensangrentada|r] |cRXP_WARN_para iniciar la misión|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >> Acepta la misión Ensangrentado Insignia
step
    #sticky
    #label BloodiedInsignia
    >>Despoja todos los enemigos para obtener sus |cRXP_LOOT_Insignias ensangrentadas|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>Despoja el |T4504543:0|t[|cRXP_LOOT_Blasón de Lordaeron|r] del suelo o colgado en una pared
    >>|cRXP_WARN_Mantente atento a esto. Puede aparecer en muchas ubicaciones diferentes y puede ser difícil de ver|r
    .use 268579 >> |cRXP_WARN_Usa el|r |T4504543:0|t[|cRXP_LOOT_Blasón de Lordaeron|r] |cRXP_WARN_para iniciar la misión|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >> Acepta la misión Crest of Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Haz clic en el |cRXP_PICK_Crumpled Papel|r en el suelo cerca de |cRXP_ENEMY_Rath'mael|r
    >>|cRXP_WARN_Puedes hacer esto después de haberlo matado|r
    .accept 92415 >> Acepta la misión Recuerdo That I Love You
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Truman|r
    >>|cRXP_FRIENDLY_Capitán Truman|r |cRXP_WARN_está de vuelta al inicio de la mazmorra|r
    .turnin 95250 >> Entrega la misión Abominable Creatures
    .target Captain Truman

step
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    >>|cRXP_WARN_Si tu Piedra de Hogar no fue establecida en Ventormenta, dirígete allá|r
    .zoneskip Stormwind City
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora de huérfanos Ruiseñor|r
    .turnin 92415 >> Entrega la misión Recuerdo That I Love You
    .accept 95161 >> Acepta la misión Recuerdo That I Love You
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora de huérfanos Ruiseñor|r
    .accept 95161 >> Acepta la misión Recuerdo That I Love You
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .target Wilder Thistlenettle
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Viaja a la Biblioteca de Ventormenta
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Dena Kennedy|r
    >>|cRXP_WARN_Ella camina un poco en la Galería Real|r
    .turnin 95189 >> Entrega la misión Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 95195 >> Entrega la misión Ensangrentado Insignia
    .target General Marcus Jonathan
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theridran|r
    .trainer >> Aprende tus hechizos de clase
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
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
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
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Guía de Mazmorras (A)
#subgroup (En progreso) Guía de mazmorras 1-20
--#groupid RXP-SRGCE-A1
#name 18-20 Minas de la Muerte
#next 20-20 Montañas Crestagrana

step
    #completewith next
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Acepta la misión La hermandad de los Defias
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r u |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Si no tienes ya la ruta de vuelo hacia Montañas Crestagrana, omite este paso|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    #completewith RRDB
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    #label RRDB
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r en la planta de arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Acepta la misión El collar de Hilary
    .zoneskip 1433,1
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
    .zoneskip 1433,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Entrega la misión El collar de Hilary
    .zoneskip 1433,1
step
    #completewith next
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
step
    #completewith SWDB
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step
    #label SWDB
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .turnin 135 >> Entrega la misión La hermandad de los Defias
    .accept 141 >> Acepta la misión La hermandad de los Defias
    .target Master Mathias Shaw
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente en breve:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T132794:0|t[Frasco de aceite]
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 141 >> Entrega la misión La hermandad de los Defias
    .accept 142 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >> Viaja a Arroyo de la Luna
step
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mata al |cRXP_ENEMY_Mensajero Defias|r. Despójalo para obtener |cRXP_LOOT_Un mensaje misterioso|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Mensajero Defias|r aparece en Arroyo de la Luna. Camina por el camino al norte de Arroyo de la Luna, hacia la Mina de la Costa del Oro y la Mina de Jango. Si no lo ves por el camino, espéralo a que aparezca en Arroyo de la Luna|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 142 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Traidor de los Defias|r
    >>|cRXP_WARN_Es posible que debas esperar a que |cRXP_FRIENDLY_El Traidor de los Defias|r aparezca si no está ahí|r
    .accept 155 >> Acepta la misión La hermandad de los Defias
    .target The Defias Traitor
step
    .goto 1436/0,1527.07,-11073.23
    >>Escolta a |cRXP_FRIENDLY_El Traidor de los Defias|r a las Minas de la Muerte
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 155 >> Entrega la misión La hermandad de los Defias
    .accept 166 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .accept 214 >> Acepta la misión Pañuelos rojos de seda
    .target Scout Riell
step
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
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Entra a la Ladronera de los Defias con tu grupo
step
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_También puedes completar esto dentro de Minas de la Muerte|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_NOTA: Esta misión NO otorga XP adicional similar a otras misiones de mazmorra, y tarda significativamente más tiempo en completarse. Considera omitir esta misión si tu grupo está de acuerdo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_NOTA: Esta misión NO otorga experiencia extra como otras misiones de mazmorra, y lleva bastante más tiempo completarla. Considera omitir esta misión si tu grupo está de acuerdo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
step
    #completewith DMend
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 214,1 -- Red Silk Bandana (10)
step
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    #label DMend
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    >>|cRXP_WARN_Usa |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r] para iniciar la misión|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Acepta la misión La carta sin enviar
    .use 2874 -- An Unsent Letter
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Viaja al Faro de Poniente
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .accept 103 >> Acepta la misión Guardián de la Llama
    .turnin 103 >> Entrega la misión Guardián de la Llama
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mata a |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener su |cRXP_LOOT_Escama|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 104 >> Entrega la misión La amenaza costera
    .target Captain Grayson
    .isQuestComplete 104
step
    .goto 1436/0,1707.2116,-10583.0227
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .accept 79008 >> Acepta la misión ... Y la nota que encontraste
step
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >> Viaja a Colina del Centinela
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r y la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .goto 1436/0,1033.22,-10504.83
    .target +Scout Riell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

--Shaman water totem quest start
step << Shaman
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thor
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eldrun Rompetormentas::258098|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Acepta la misión La llamada del agua
    .trainer >> Aprende tus hechizos de clase
step << Shaman
    #completewith CallofWater
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Vuela a Loch Modan
    .target Gryth Thurden
step << Shaman
	.isOnQuest 94494
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .turnin 94494 >>Entrega la misión La llamada del agua
	.accept 94495 >>Acepta la misión La llamada del agua
step << Shaman
	#label CallofWater
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .accept 94495 >>Acepta la misión La llamada del agua
step << Shaman
	#optional
	.isOnQuest 468
    .goto 1432/0,-2695.500,-4678.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mountaineer Rockgar::1342|r
    .target Mountaineer Rockgar::1342
    .turnin 468 >>Entrega la misión Report a Montaraz Rockgar
step << Shaman
    #completewith WaterTotem1
    #label DunAlgaz1
    .goto 1432/0,-2697.700,-4645.500,15,0
    .goto 1437/0,-2653.800,-4448.100,15,0
    .goto 1437/0,-2480.200,-4421.800,15,0
    .goto 1437/0,-2464.200,-4280.900,15,0
    .goto 1437/0,-2419.800,-4092.100,15,0
    .goto 1437/0,-2629.900,-4086.400,15 >> Viaja a través de Dun Algaz hacia Los Humedales
step << Shaman
    #completewith WaterTotem1
    #requires DunAlgaz1
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >> Sube la rampa hacia |cRXP_FRIENDLY_Hervdana Saegrund::258203|r dentro de la cueva
step << Shaman
    #label WaterTotem1
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94495 >>Entrega la misión La llamada del agua
    .accept 94497 >>Acepta la misión La llamada del agua  
step << Shaman
    .goto 1437/0,-3069.100,-4210.100
    .use 265732 >>|cRXP_WARN_Usa la|r |T132825:0|t[Bota de agua marrón sin llenar] |cRXP_WARN_en la base de la cascada|r
    .complete 94497,1 --|1/1 Full Brown Waterskin
step << Shaman
    #completewith next
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >> Sube de nuevo por la rampa hacia |cRXP_FRIENDLY_Hervdana Saegrund::258203|r dentro de la cueva
step << Shaman
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94497 >>Entrega la misión La llamada del agua
    .accept 94499 >>Acepta la misión La llamada del agua

--sham can hs to sw
--everyone else can fly sw turn in / train 20 spells

]])