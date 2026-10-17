if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

----Start of <1.5x Westfall----
----Night Elves and Hunters stay in Darkshore and Grind----

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#name 13-15 Páramos de Poniente
#displayname 14-15 Páramos de Poniente << Dwarf/Gnome
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#next 14-16 Costa Oscura
#defaultfor !NightElf !Hunter

step
    #sticky
    #optional
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> Viaja a Páramos de Poniente
step
    .goto Westfall,59.95,19.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .target Farmer Furlbrow
step
    .goto Westfall,59.92,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verna Cejade|r
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto Westfall,56.04,31.23,65 >> Viaja a la Finca de Saldean
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .accept 9 >> Acepta la misión Campos de la muerte
step
    #label SalmaS
    .goto Westfall,56.40,30.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .target Salma Saldean
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >> Acepta la misión Pastel de hígado de dentosangre
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Entrega la misión Regresa junto a Lewis
step << Gnome/Dwarf
    #completewith next
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .isOnQuest 109
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 12 >> Acepta la misión La Milicia Popular
step
    #xprate <1.2
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Heather|r
    >>|cRXP_BUY_Compra comida/agua si es necesario|r
    .vendor >>|T133918:0|t[Pargo de lodo boquilargo] |cRXP_WARN_es muy barato|r
	.target Innkeeper Heather
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
    .goto Westfall,40.4,52.7,75 >> Viaja a la Hacienda de Alexston, |cRXP_WARN_trabaja en los otros objetivos de misión mientras te mueves hacia allí|r
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
    .goto Westfall,36.24,54.52
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
    .goto Westfall,50.0,22.6,75 >> Viaja a la Finca de Jansen, |cRXP_WARN_trabaja en los otros objetivos de misión mientras te mueves hacia allí|r
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Abre el |cRXP_PICK_Guardarropa de Cejade|r. Despoja el |cRXP_LOOT_Reloj de bolsillo de Cejade|r
    >>|cRXP_WARN_Puedes despojar el |cRXP_PICK_Guardarropa de Cejade|r desde fuera si orientas bien la cámara|r
	>>|cRXP_WARN_Cuidado con |cRXP_ENEMY_Benny Blaanco|r. Pega fuerte|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #xprate <1.2
    #completewith next
    >>Mata |cRXP_ENEMY_Gnolls Zarparrío|r y |cRXP_ENEMY_Exploradores Zarparrío|r. Despójalos para obtener sus |T134297:0|t|cRXP_LOOT_Garras gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36
    .goto Westfall,56.40,9.40,0
    >>|cRXP_WARN_Viajar hacia la costa, mata a los Gnolls en el camino|r para obtener |T134297:0|t[|cRXP_LOOT_Garras gnoll|r] si es necesario
    >>Mata a los |cRXP_ENEMY_Asaltantes múrloc|r y a los |cRXP_ENEMY_Correcostas múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #xprate <1.2
    #label GnollPaws
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    .goto Westfall,42.82,14.70,0
    .goto Westfall,52.36,14.82,0
    .goto Westfall,56.81,13.30,0
    >>Mata |cRXP_ENEMY_Gnolls Zarparrío|r y |cRXP_ENEMY_Exploradores Zarparrío|r. Despójalos para obtener sus |T134297:0|t|cRXP_LOOT_Garras gnoll|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener el |cRXP_LOOT_Puñado de avena|r
	>>|cRXP_WARN_Generalmente puedes encontrarlos cerca de las vallas de las granjas o de los edificios|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #xprate <1.2
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << Human Warlock
    #xprate >1.1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
    .isOnQuest 184
step
    #xprate <1.2
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
step
    #xprate >1.1
    #optional << Human Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #completewith SaldeanVendor
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .vendor >> |cRXP_BUY_Vende la basura|r
    >>|cRXP_WARN_NO vendas|r |T133884:0|t[Ojo de múrloc], |T135997:0|t[Morros de dentosangre], |T134341:0|t[Hígados de Dentosangre] |cRXP_WARN_o|r |T133972:0|t[Carne fibrosa de buitre]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .isQuestComplete 38
    .target Salma Saldean
  step
    .isQuestAvailable 38
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Mata a los |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener su |cRXP_LOOT_Okra|r y sus |cRXP_LOOT_Frascos de aceite|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Mata a los |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener sus |cRXP_LOOT_Frascos de aceite|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .goto Westfall,52.49,42.11,75,0
    .goto Westfall,53.67,46.07,75,0
    .goto Westfall,61.60,45.55,75,0
    .goto Westfall,60.36,27.38,75,0
    .goto Westfall,54.63,19.20,75,0
    .goto Westfall,49.09,26.92,75,0
    .goto Westfall,47.89,42.94,75,0
    .goto Westfall,54.42,40.38
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
    .goto Westfall,56.04,31.23
    .turnin 9 >> Entrega la misión Campos de la muerte
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
step
    .goto Westfall,50.0,45.4
    >>Termina las misiones |cRXP_ENEMY_Defias|r en el área marcada en tu mapa. |cRXP_WARN_Es un área de reaparición dinámica, lo que significa que si matas suficientes enemigos seguirán reapareciendo|r
    >>Mata |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |T133694:0|t|cRXP_LOOT_Pañuelos rojos de cuero|r
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
    .goto Westfall,56.33,47.52
    .turnin 12 >> Entrega la misión La Milicia Popular
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Acepta la misión La hermandad de los Defias
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Entrega la misión En patrulla por los Páramos de Poniente
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Quartermaster Lewis
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Entrega la misión Pañuelos rojos de cuero
step << Gnome Rogue/Dwarf Rogue
    #completewith next
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .money <0.3815
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Cómprale una|r |T135343:0|t[Cimitarra] |cRXP_BUY_o algo mejor de la Casa de Subastas y equípalo en tu mano izquierda|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a esta vendedora|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregas de misiones más rápidas en Costa Oscura pronto
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .isQuestComplete 399
step << Gnome Rogue/Dwarf Rogue
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
    .zoneskip Stormwind City,1
    .isQuestComplete 399
step << Dwarf !Paladin/Gnome
    #label end
    #completewith DarkshoreBoat
    .hs >> Usa tu Piedra de Hogar para ir a Thelsamar
step << Dwarf !Paladin/Gnome
    #softcore
    #completewith DarkshoreBoat
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Wetlands >> Vuela a Los Humedales
    .target Thorgrum Borrelson
step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
step << Human/Dwarf Paladin
    #label end
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thor
step << Human Mage/Human Rogue/Human Warrior/Human Warlock/Human Paladin/Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r << Human Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r << Human Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r << Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r << Human Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r << Human Warlock
    .goto Ironforge,51.1,8.7,15,0 << Human Warlock
    .goto Ironforge,50.343,5.657 << Human Warlock
    .goto Ironforge,65.905,88.405 << Human Warrior
    .goto Ironforge,51.495,15.330 << Human Rogue
    .goto Ironforge,25.207,10.756 << Human Priest
    .goto Ironforge,27.18,8.60 << Human Mage
    .goto Ironforge,23.141,6.149 << Human Paladin
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner << Human Warrior
    .target Fenthwick << Human Rogue
    .target Toldren Deepiron << Human Priest
    .target Dink << Human Mage
    .target Brandur Ironhammer << Human Paladin
    .target Briarthorn << Human Warlock
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r
    .train 2567 >>Aprende el uso de Arrojadizas
    .target Bixi Wobblebonk
step << Human Rogue
    #ah
    .goto Ironforge,62.375,88.679
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    +|cRXP_BUY_Cómprale una|r |T135343:0|t[Cimitarra] |cRXP_BUY_o revisa la Casa de Subastas para algo mejor/más barato|r
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Human Rogue
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    +|cRXP_BUY_Compra y equipa una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a esta vendedora si puedes permitírtela|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra un|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .collect 3107,100 -- Keen Throwing Knife
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.30
step << Human Rogue
    #completewith next
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.29
step << Dwarf Paladin
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldruk Ceñomaldito|r
    .trainer >> Aprende tus hechizos de clase
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >> Viaja hacia |cRXP_FRIENDLY_Muiredon|r arriba
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muiredon Forjabatalla|r
    .turnin 1784 >>Entrega la misión Escrito sobre divinidad
    .accept 1785 >>Acepta la misión Escrito sobre divinidad
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r
    .turnin 1785 >>Entrega la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Vuela a Los Humedales
    .target Gryth Thurden
step
    #hardcore << !Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Sal de Forjaz
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Viaja al punto de atajo (skip) entre Dun Morogh -> Los Humedales
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,20,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_¡Mira primero la guía en vídeo para obtener una referencia sobre cómo realizar el atajo (skip)!||r
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Crocoliscos de Los Humedales|r y a los |cRXP_ENEMY_Múrlocs|r al cruzar el agua|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .goto Wetlands,12.1,60.3,80 >> Viaja al Puerto de Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Ve al deathskip de Dun Morogh -> Los Humedales
step << Human
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >> Continúa por la montaña hasta la ubicación del deathskip
step << Human
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Corre recto hacia el borde al norte y cae. Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Human
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Nada al Puerto de Menethil
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor 1448 >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step << Human/Dwarf Paladin
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor 1453 >> |cRXP_WARN_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_WARN_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Viaja al muelle del barco de Auberdine
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
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
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
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
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
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
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
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
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
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
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
]])

----End of <1.5x Westfall----
----Start of Darkshore Part 1----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 14-16 Costa Oscura
#displayname 11-16 Costa Oscura << NightElf
#displayname 13-16 Costa Oscura << Dwarf Hunter
#displayname 15-16 Costa Oscura << !NightElf/!Dwarf Hunter
#next 16-19 Costa Oscura


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step
    #label start --hidden step for #include
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>Salta del barco cuando esté más cerca de la costa de Auberdine
    .subzone 442 >> Nada hacia Auberdine
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco << !sod/Hunter/Druid
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Cómprale hasta 40|r |T133918:0|t[Pargos de lodo boquilargos] |cRXP_WARN_. Vende toda tu otra comida de nivel 5 o inferior|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >> Entrega la misión Vuelo a Auberdine
    .accept 6343 >> Acepta la misión Regreso a Nessa << Druid sod
    .target Laird
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Entrega la misión Vuelo a Auberdine
    .target Laird
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Cómprale hasta 40|r |T133918:0|t[Pargos de lodo boquilargos] |cRXP_WARN_. Vende toda tu otra comida de nivel 5 o inferior|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target Laird
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r abajo
    .home >> Establece tu Piedra de hogar en Auberdine
    .target Innkeeper Shaussiy
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >> Viaja escaleras arriba hacia |cRXP_FRIENDLY_Maniveo Zumbang|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    #xprate >1.49
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2118 >> Acepta la misión Tierras apestadas
    .target Tharnariun Treetender
step
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acepta la misión La extensión de la amenaza
    .target Terenthis
step
    #optional
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r abajo
    .home >> Establece tu Piedra de hogar en Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
step << Dwarf Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Envía tu mascota a atacar al |cRXP_ENEMY_Oso Cardo|r. Una vez que tu mascota sea aturdida por el |cRXP_ENEMY_Oso Cardo|r, abandona tu mascota y empieza a domesticarla|r
    .tame 2163 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso cardo|r para domesticarlo|r
    .target Thistle Bear
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
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recolectar|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante en pronto. Puedes desaprenderla después|r
    >>|cRXP_WARN_Si prefieres comprar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_de la Casa de Subastas después, omite este paso|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recopilar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] |cRXP_WARN_y raramente en los|cRXP_PICK_ Cofres maltrechos|r para una misión de clase futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
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
    >>|cRXP_WARN_Usa|r |T134335:0|t[La esperanza de Tharnariun] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso cardo rabioso|r |cRXP_WARN_ .Se puede usar desde cualquier rango mientras selecciones como objetivo al oso|r
    >>|cRXP_WARN_==NO USES EL OBJETO DE MISIÓN SI NO HAY OSO CERCA==|r
    >>|cRXP_WARN_¡Puedes desperdiciar la trampa y hacer que la misión sea imposible de completar! Si eso te sucede, tienes que volver a quien te dio la misión y pedirle otra trampa|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
    .goto Darkshore,38.90,53.59
    >>Corre hacia el borde del Campamento Fúrbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step << NightElf
    #xprate <1.5
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
    #xprate <1.5
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
    .accept 1001 >> Acepta la misión La caja mecánica 411
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
    .accept 1001 >> Acepta la misión La caja mecánica 411 << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .accept 1001 >> Acepta la misión La caja mecánica 411
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Entrega la misión Varado
    .accept 4681 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
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
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Viaja al final del muelle, luego salta al agua
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
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
    #season 0
    .goto Darkshore,36.096,44.931
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
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    #xprate <1.5
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
    #season 0
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
    .goto Darkshore,38.249,41.008
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target +Delfrum Flintbeard
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
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
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
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
    .goto Darkshore,37.45,40.50
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
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Amanecer de Plata|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #loop
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,41.960,28.616
    >>Haz clic en la |cRXP_PICK_Caja mecánica 411|r del suelo
    .turnin 1001 >> Entrega la misión La caja mecánica 411
    .accept 1002 >> Acepta la misión La caja mecánica 323
    .isQuestComplete 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.960,28.616
    >>Haz clic en la |cRXP_PICK_Caja mecánica 411|r del suelo
    .accept 1002 >> Acepta la misión La caja mecánica 323
    .isQuestTurnedIn 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Viaja hacia |cRXP_FRIENDLY_Asterion|r
step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
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
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 954
    .xp >16,1
--XX if you ding 16 from turnin, skip Bashal Aran qline
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
    #xprate >1.59
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
    >>|cRXP_WARN_No tienen reapariciones dinámicas. Omite este paso si no encuentras ningún|r |cRXP_ENEMY_Sátiro Deth'ryll|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    #xprate <1.59
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
step << NightElf/Dwarf Hunter
    #optional
    #xprate <1.5
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
    #label HCHunterEnd --hidden step for #include
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
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #xprate <1.5
    #completewith RedCrystal
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #xprate <1.5
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 50 más adelante|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #season 0
    #completewith LateTurtleStart
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 50 más adelante|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #season 0
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Entra en la cueva de la |cRXP_PICK_Piedra de lechúcico lunar|r
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Usa el|r |T132857:0|t[Polvo de luna Cenarion] |cRXP_WARN_en la |cRXP_PICK_Piedra de lechúcico lunar|r dentro de la cueva para invocar a |cRXP_ENEMY_Garraluna|r en la entrada de la cueva|r
    .timer 4,Cuerpo y corazón RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 0
    .goto Darkshore,43.09,45.55
    >>Mata a |cRXP_ENEMY_Garraluna|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    #season 0
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
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Cómprale hasta 40|r |T133918:0|t[Pargos de lodo boquilargos] |cRXP_WARN_. Vende toda tu otra comida de nivel 5 o inferior|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .target Laird
    .subzoneskip 442,1 --skip if you leave Auber
    .xp >15,1 << Warrior/Rogue
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid
    #optional
    #season 0
    .goto Darkshore,37.0,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_WARN_Cómprale hasta 40|r |T132815:0|t[Leche fría como el hielo] |cRXP_WARN_. Vende todo el resto de tu agua de nivel 5 o inferior|r
    .collect 1179,35 --Ice Cold Milk (35)
    .target Allyndia
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_WARN_Cómprale hasta 2000|r |T132382:0|t[Flechas afiladas] |cRXP_WARN_. Las necesitarás pronto para una sección de grindeo|r
    .collect 2515,2000 --Sharp Arrow (2000)
    .target Dalmond
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
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
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    #season 0
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 50 más adelante|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
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
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .goto 1439,37.703,43.393
    .subzone 442 >> Regresa a Auberdine
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4813,3 >> Entrega la misión Los trozos del interior
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_Equipa el|r |T135145:0|t[Bastón de roble]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acepta la misión Regreso a Nessa
    .target Laird
step << Druid
    #optional
    #xprate <1.5
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
    .xp 13+9500 >> Mata enemigos hasta alcanzar 9500+/11400xp
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .turnin 6001 >> Entrega la misión Cuerpo y corazón
    .accept 6121 >> Acepta la misión Nuevas lecciones
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .accept 6121 >> Acepta la misión Nuevas lecciones
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 6121 >> Entrega la misión Nuevas lecciones
    .accept 6122 >> Acepta la misión La fuente del envenenamiento
    .target Dendrite Starblaze
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #season 0
    #optional
    #completewith AmethStart
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    #season 0
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
step
    #optional
    #label HCHunterStart --hidden step for #include
step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #requires EarlyTreats3 << Druid --Season 2
    #completewith EarlyTurtleStart
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .subzoneskip 447
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #completewith Anaya
    #requires EarlyTreats3 << Druid --Season 2
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #label EarlyTurtleStart
    #requires EarlyTreats3 << Druid --Season 2
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
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
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #sticky
    #optional
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
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de reaparición diferentes en Ameth'Aran|r
    >>|cRXP_WARN_Si no la encuentras y quieres volver a intentarlo más tarde a costa de tener que matar más criaturas pronto, omite este paso|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #sticky
    #optional
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
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de reaparición diferentes en Ameth'Aran|r
    >>|cRXP_WARN_Quizás quieras agruparte con otros jugadores cercanos si no la encuentras. Pregunta en el canal General (/1) para formar grupo con cualquiera que también la esté buscando|r
    >>|cRXP_WARN_Si no la encuentras y quieres volver a intentarlo más tarde a costa de tener que matar más criaturas pronto, omite este paso|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #season 0
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
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
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
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Haz clic en |cRXP_PICK_La instauración de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.59
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 953 >> Entrega la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #optional
    #label HCHunterEndTwo --hidden step for #include
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #season 0
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
    #xprate <1.5
    #optional
    #loop
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
    >>Grindea a los |cRXP_ENEMY_Fúrbolgs|r en el campamento. |cRXP_WARN_Esta es un área de generación masiva|r lo que significa que el juego forzará reapariciones si suficientes enemigos están muertos. Esto lo convierte en un punto de farmeo |cRXP_WARN_EXTREMADAMENTE eficiente|r para la subida de nivel (xp/hr es comparable a hacer misiones)
    >>|cRXP_WARN_Completar este grindeo te permitirá hacer misiones en toda Costa Oscura más tarde sin tener que luchar contra enemigos de nivel superior|r
    >>Ten cuidado pues los |cRXP_ENEMY_Abrecaminos Bosque Negro|r |T132152:0|tUsan [Vapulear] y pueden golpearte hasta 3 veces a la vez
    >>|cRXP_ENEMY_Soplavientos Bosque Negro|r lanzan |T136022:0|t[Racha de viento] , un aturdimiento de rango cuerpo a cuerpo; |cRXP_WARN_aléjate del rango de combate cuerpo a cuerpo cuando lo estén lanzando|r para evitar ser aturdido
    .xp 15+11875 >> Mata enemigos hasta alcanzar 11875+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate <1.5
    #optional
    #loop
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
    >>Grindea a los |cRXP_ENEMY_Fúrbolgs|r en el campamento. |cRXP_WARN_Esta es un área de generación masiva|r lo que significa que el juego forzará reapariciones si suficientes enemigos están muertos. Esto lo convierte en un punto de farmeo |cRXP_WARN_EXTREMADAMENTE eficiente|r para la subida de nivel (xp/hr es comparable a hacer misiones)
    >>|cRXP_WARN_Completar este grindeo te permitirá hacer misiones en toda Costa Oscura más tarde sin tener que luchar contra enemigos de nivel superior|r
    >>Ten cuidado pues los |cRXP_ENEMY_Abrecaminos Bosque Negro|r |T132152:0|tUsan [Vapulear] y pueden golpearte hasta 3 veces a la vez
    >>|cRXP_ENEMY_Soplavientos Bosque Negro|r lanzan |T136022:0|t[Racha de viento] , un aturdimiento de rango cuerpo a cuerpo; |cRXP_WARN_aléjate del rango de combate cuerpo a cuerpo cuando lo estén lanzando|r para evitar ser aturdido
    .xp 15+11000 >> Mata enemigos hasta alcanzar 11000+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #xprate 1.49-1.59
    #optional
    #loop
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
    >>Grindea a los |cRXP_ENEMY_Fúrbolgs|r en el campamento. |cRXP_WARN_Esta es un área de generación masiva|r lo que significa que el juego forzará reapariciones si suficientes enemigos están muertos. Esto lo convierte en un punto de farmeo |cRXP_WARN_EXTREMADAMENTE eficiente|r para la subida de nivel (xp/hr es comparable a hacer misiones)
    >>|cRXP_WARN_Completar este grindeo te permitirá hacer misiones en toda Costa Oscura más tarde sin tener que luchar contra enemigos de nivel superior|r
    >>Ten cuidado pues los |cRXP_ENEMY_Abrecaminos Bosque Negro|r |T132152:0|tUsan [Vapulear] y pueden golpearte hasta 3 veces a la vez
    >>|cRXP_ENEMY_Soplavientos Bosque Negro|r lanzan |T136022:0|t[Racha de viento] , un aturdimiento de rango cuerpo a cuerpo; |cRXP_WARN_aléjate del rango de combate cuerpo a cuerpo cuando lo estén lanzando|r para evitar ser aturdido
    .xp 15+600 >> Mata enemigos hasta alcanzar 600+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate 1.49-1.59
    #optional
    #loop
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
    >>Grindea a los |cRXP_ENEMY_Fúrbolgs|r en el campamento. |cRXP_WARN_Esta es un área de generación masiva|r lo que significa que el juego forzará reapariciones si suficientes enemigos están muertos. Esto lo convierte en un punto de farmeo |cRXP_WARN_EXTREMADAMENTE eficiente|r para la subida de nivel (xp/hr es comparable a hacer misiones)
    >>|cRXP_WARN_Completar este grindeo te permitirá hacer misiones en toda Costa Oscura más tarde sin tener que luchar contra enemigos de nivel superior|r
    >>Ten cuidado pues los |cRXP_ENEMY_Abrecaminos Bosque Negro|r |T132152:0|tUsan [Vapulear] y pueden golpearte hasta 3 veces a la vez
    >>|cRXP_ENEMY_Soplavientos Bosque Negro|r lanzan |T136022:0|t[Racha de viento] , un aturdimiento de rango cuerpo a cuerpo; |cRXP_WARN_aléjate del rango de combate cuerpo a cuerpo cuando lo estén lanzando|r para evitar ser aturdido
    .xp 14+12210 >> Mata enemigos hasta alcanzar 12210+/12900xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
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
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4723 >> Entrega la misión Criatura marina varada << Warrior sod
    .target Gwennyth Bly'Leggonde
step
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    >>|cRXP_WARN_Es posible que necesites esperar a que termine su Roleplay si alguien más acaba de entregar la misión|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #season 0
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
    #season 0
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
step << !Hunter
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
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 958 >> Entrega la misión Las herramientas de los Altonato << !sod
    .turnin 4762 >> Entrega la misión El Río Fonroca << sod
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


----Start of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==¡TEN CUIDADO CON LA BARRA DE RESPIRACIÓN!|==|r
    >>|cRXP_WARN_Nada bajo el agua hacia el exterior de la parte trasera del barco|r
    >>|cRXP_WARN_En la ubicación de la flecha, presiona tu atajo de teclado "Interactuar con objetivo" para despojar el |cRXP_LOOT_Arcón del Amanecer de Plata|r del exterior del barco|r
    >>|cRXP_WARN_Si no quieres hacer esto, nada bajo el agua al piso inferior del barco y despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 50 más adelante|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
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
    #season 0
    .goto 1439,47.314,48.676
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los 2 grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    #season 0
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mata a los |cRXP_ENEMY_Volantones zancudos del bosque|r y a los |cRXP_ENEMY_Zancudos del bosques|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado, los|r |cRXP_ENEMY_Volantones zancudos del bosque|r |T132307:0|t[Huyen] |cRXP_WARN_al <30% de salud|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CrabTurtle
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4725 >> Acepta la misión Tortuga marina varada
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>|cRXP_WARN_Considera saltarte algunos de los|r |cRXP_ENEMY_Reptadores de arrecife|r |cRXP_WARN_de nivel 17 si consigues buenos despojos.|r |cRXP_WARN_No tienes que completar esta misión ahora|r
    >>Ten cuidado ya que pueden lanzar |T132155:0|t[Rotura muscular] un ataque instantáneo que inflige 30-55 de daño
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de ensayo vacío] |cRXP_WARN_en la base del Río Fonroca|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Sube por la rampa hacia la |cRXP_PICK_Caja mecánica 323|r
    .isQuestComplete 1002
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestComplete 1002
step
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Viaja hacia |cRXP_FRIENDLY_Balthule Golpesombra|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
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
#xprate <1.5 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
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
    #season 0 << !Warrior !Rogue
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
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
    #season 0 << !Warrior !Rogue
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
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Viaja a la Cueva del Río Fonroca
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>|cRXP_WARN_Usa la|r |T134776:0|t[Muestra vacía de Salto de Fonroca] |cRXP_WARN_en el agua en la entrada de la Cueva del Río Fonroca|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    #label CaveMushrooms
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
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
step << NightElf !Druid
    #softcore
    #optional
    #completewith CavetoAuber
    #season 0
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << skip --logout skip
    #hardcore << NightElf !Druid
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 0
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salta encima de la roca en el piso superior dentro de la cueva. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
step
    #hardcore << NightElf !Druid
    #completewith CavetoAuber
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #hardcore << NightElf !Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #requires MushroomLS
    #completewith CavetoAuber
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Viaja a Auberdine
step
    #label CliffspringEnd
    #season 0
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto Darkshore,37.70,40.70
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .turnin 6122 >> Entrega la misión La fuente del envenenamiento << Druid
    .accept 6123 >> Acepta la misión Reunir los ingredientes del remedio << Druid
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178 << Druid
step << Druid
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .turnin 6122 >> Entrega la misión La fuente del envenenamiento
    .accept 6123 >> Acepta la misión Reunir los ingredientes del remedio
    .target Alanndarian Nightsong
step << !NightElf
    #xprate <1.5
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step << !NightElf
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto Darkshore,37.70,43.39
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_ya que deberías intentar guardar una|r |T135641:0|t[Daga] |cRXP_WARN_para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r << Rogue
    .turnin 4813 >> Entrega la misión Los trozos del interior
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    #season 0
    >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step << NightElf !Druid
    .goto 1439,36.767,44.285
    #season 0
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acepta la misión Regreso a Nessa
    .isQuestAvailable 6343
    .target Laird
step
    #optional
    .goto Darkshore,36.096,44.931
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #season 0
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    #season 0
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
    #season 0
    #completewith DruidLesson
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
step << Druid
    #optional
    #season 0
    #label DruidLesson
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .accept 26 >> Acepta la misión Una lección que aprender
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >> Abandona la misión El prospector despistado para aceptar la misión ¿Problemas en Costa Oscura?
step << Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .accept 730 >> Acepta la misión ¿Problemas en Costa Oscura?
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
    #season 0
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 26 >> Entrega la misión Una lección que aprender
    .accept 29 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>Nada al Lago Elune'ara
    >>Abre el |cRXP_PICK_Adorno contenedor|r. Despójalo para obtener un |T134125:0|t[Adorno de altar]
    >>|cRXP_WARN_Puede aparecer en diferentes ubicaciones bajo el agua|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    #season 0
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el árbol del Santuario de Remulos|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    #season 0
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Entrega la misión La prueba del lago
    .accept 272 >> Acepta la misión La prueba del león marino
    .target Tajarri
step << Druid
    #optional
    #season 0
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore


----End of Druid Quest section----


]])

----End of Darkshore Part 1----
----Start of Darkshore Part 2----
----Hunters stay in Darkshore/Ashenvale and Grind, 2x skips Redridge----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 16-19 Costa Oscura
#next 19-20 Montañas Crestagrana;20-21 Costa Oscura/Vallefresno << !Hunter
#next 19-21 Costa Oscura/Vallefresno << Hunter

step << NightElf !Druid
    #optional
    #completewith PortalDarn
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
    .zoneskip Teldrassil
step << NightElf !Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
step << NightElf !Druid
    #completewith next
    #season 0
    #label PortalDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << NightElf Warrior
    .goto Darnassus,58.72,34.92
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arias'ta Rugefilo|r
    .trainer >> Aprende tus hechizos de clase
    .target Arias'ta Bladesinger
step << NightElf Warrior
    .goto Darnassus,57.56,46.72
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .train 2567 >> Aprende el uso de Arrojadizas
    .target Ilyenia Moonfire
step << NightElf Hunter
    #completewith start
    #season 0
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Aprende tus hechizos de clase
    .target Jocaste
step << NightElf Hunter
    #completewith start
    #season 0
    #label RecruveReinforced
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_WARN_si puedes permitírtelo. Si no, compra un|r |T135490:0|t[Arco reforzado]
    >>|cRXP_WARN_Abastécete de|r |T132382:0|t[Flechas afiladas]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135490:0|t[Arco reforzado]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
step << NightElf Rogue
    >>Entra en el Enclave Cenarion
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    .trainer >> Aprende tus hechizos de clase
    .target Syurna
step << NightElf !Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >> Abandona la misión El prospector despistado para aceptar la misión ¿Problemas en Costa Oscura?
step << NightElf !Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .accept 730 >> Acepta la misión ¿Problemas en Costa Oscura?
    .target Chief Archaeologist Greywhisker
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jandria|r
    .trainer >> Aprende tus hechizos de clase
    .target Jandria
step << NightElf !Druid
    #label start
    #season 0
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHaz clic en el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step << NightElf
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 730 >> Entrega la misión ¿Problemas en Costa Oscura?
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto Darkshore,37.78,44.06
    #season 0
    .use 12346 >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en el|r |cRXP_PICK_Pozo lunar de Auberdine|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 0
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
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de reaparición diferentes en Ameth'Aran|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #season 0
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
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de reaparición diferentes en Ameth'Aran|r
    >>|cRXP_WARN_Quizás quieras agruparte con otros jugadores cercanos si no la encuentras. Pregunta en el canal General (/1) para formar grupo con cualquiera que también la esté buscando|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CompleteFangs
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #season 0
    #loop
    .waypoint Darkshore,39.03,67.32,0
    .waypoint Darkshore,42.54,67.76,0
    .waypoint Darkshore,39.99,78.46,0
    .waypoint Darkshore,39.03,67.32,70,0
    .waypoint Darkshore,42.54,67.76,70,0
    .waypoint Darkshore,39.99,78.46,70,0
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r en el sur de Costa Oscura
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Instantáneo Cuerpo a cuerpo: Reduce toda la regeneración de salud en un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #xprate <1.5
    #sticky
    #label earthroot
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mientras haces misiones|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    #xprate <1.5
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Despoja los |cRXP_LOOT_Hongos lunares|r del suelo de las cuevas
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    #season 0
    .goto 1439,43.555,76.293,80 >> Viaja al Páramo de los Ancianos
step
    #label OnuGrove
    #season 0
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 952 >> Entrega la misión El Páramo de los Ancianos << NightElf
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    #completewith MasterG
    #season 0
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>Ten cuidado ya que pueden lanzar |T132090:0|t[Aprovechar debilidad] un ataque de puñalada por la espalda que inflige 20-40 de daño si les das la espalda
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,38.60,80.50,0
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>Ten cuidado ya que lanzan |T132152:0|t[Devastar] un ataque instantáneo infligiendo 20-40 de daño y |cRXP_WARN_derribándote durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.390,80.563
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isQuestComplete 1003
step
    #label MasterG
    #season 0
    .goto Darkshore,38.54,86.05,100 >> Viaja a La Espada del Maestro
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    #season 0
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 0
    .goto 1439,38.537,86.050
    >>Descubre La Espada del Maestro
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    #season 0
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
step
    .goto 1439,38.660,87.305
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    #season 0
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    #season 0
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Elimina la |T134715:0|t[Ampolla de adivinación] de tu inventario, ya que ya no se necesita
step
    #optional
    #season 0
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>Ten cuidado ya que pueden lanzar |T132090:0|t[Aprovechar debilidad] un ataque de puñalada por la espalda que inflige 20-40 de daño si les das la espalda
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>Ten cuidado ya que lanzan |T132152:0|t[Devastar] un ataque instantáneo infligiendo 20-40 de daño y |cRXP_WARN_derribándote durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Acepta la misión Las reliquias de Mathystra
    .target Onu
step << Hunter
    #optional
    #season 0
    .goto Darkshore,38.54,86.05
    .xp 17 >> Mata enemigos hasta subir al nivel 17
step << Hunter
    #sticky
    #season 0
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Puede que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .target Prospector Remtravel
step << Hunter
    .goto Darkshore,35.72,83.69
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r. Esto iniciará una escolta
    .accept 731,1 >> Acepta la misión El prospector despistado
    >>|cRXP_WARN_Esta misión es MUY difícil. Puedes omitir este paso y volver al nivel 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    #season 0
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Puedes omitir este paso y volver al nivel 19|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    #xprate <1.5
    #season 0
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r
step
    #completewith CompleteThistleBears
    #season 0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>Ten cuidado, ya que los |cRXP_ENEMY_Reptadores de arrecife|r pueden lanzar |T132155:0|t[Rotura muscular] un ataque instantáneo que causa 30-55 de daño
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Ten cuidado con |cRXP_ENEMY_Cazamareas Brumagris|r pueden lanzar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] mientras luchan cuerpo a cuerpo dejando un daño en el tiempo que inflige 13 p. de daño cada 3 s durante 30 s
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    #label TurtleSouth
	#xprate <1.5
    #season 0
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Ten cuidado con |cRXP_ENEMY_Cazamareas Brumagris|r pueden lanzar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] mientras luchan cuerpo a cuerpo dejando un daño en el tiempo que inflige 13 p. de daño cada 3 s durante 30 s
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step << !Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step << Druid
    #optional
    #season 0
    >>|cRXP_WARN_Termina de recolectar la |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] y raramente en|r |cRXP_PICK_Cofres maltrechos|r
    >>|cRXP_WARN_Si te rindes y no encuentras suficientes, omite este paso|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
    #season 0
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
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
    #season 0
    .goto 1439,35.968,70.807
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4728 >> Acepta la misión Criatura marina varada
step << Druid
    #label Southcrabs
    #season 0
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    #season 0
    .goto Moonglade,52.53,40.57
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    #season 0
    .goto Moonglade,48.11,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Vuela a Costa Oscura
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter
    #label Southcrabs
    #season 0
    #completewith CleansingTharnariun
    .subzone 442 >> Viaja a Auberdine
step
    #optional
    #completewith next
    #season 0
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step
    #optional
    #season 0
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    >>|cRXP_WARN_Es posible que necesites esperar a que termine su Roleplay si alguien más acaba de entregar la misión|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #season 0
    #completewith CleansingTharnariun
    .abandon 963 >> Abandona la misión Un amor eterno
step
    #xprate <1.5
    #season 0
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
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto Darkshore,36.8,44.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r y |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Vende y reabastece comida y agua|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4740 >> Entrega la misión SE BUSCA: ¡Viscoso!
    .target Sentinel Glynda Nal'Shea
step
    #label CleansingTharnariun
    #season 0
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Reabastece munición|r
    .target Dalmond
step << Druid
    #xprate <1.5
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .turnin 6123 >> Entrega la misión Reunir los ingredientes del remedio
    .accept 6124 >> Acepta la misión Curar la dolencia
    .isQuestComplete 6123
step << Druid
    #xprate <1.5
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 6124 >> Acepta la misión Curar la dolencia
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6123
step << Druid
    #optional
    #season 0
    #completewith Buzzbox323End
    .abandon 6123 >> Abandona la misión Reunir los ingredientes del remedio
step << Druid
    #xprate <1.5
    #optional
    #season 0
    #completewith Buzzbox323End
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    >>|cRXP_WARN_Usa el|r |T132801:0|t[Bálsamo animal curativo] |cRXP_WARN_en|r |cRXP_ENEMY_Ciervo enfermo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .isQuestAvailable 1138
step << Druid
    #xprate <1.5
    #season 0
    #sticky
    #label SicklyDeers
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .waypoint Darkshore,49.7,33.2,40,0
    .waypoint Darkshore,43.4,25.1,40,0
    .waypoint Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Usa el|r |T132801:0|t[Bálsamo animal curativo] |cRXP_WARN_en|r |cRXP_ENEMY_Ciervo enfermo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
    .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abre las |cRXP_PICK_Provisiones de grano de los Bosque Negro|r. Despójalas para obtener |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado, ya que los |cRXP_ENEMY_Cachorros cardo|r pueden lanzar|r |T132152:0|t[Devastar]|cRXP_WARN_, un ataque cuerpo a cuerpo instantáneo que te aturde durante 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
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
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
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
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Usa el|r |T134712:0|t[Cuenco de purificación lleno] |cRXP_WARN_en la |cRXP_PICK_Fogata|r para invocar a|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corrupción de los Bosque Negro RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Mata a |cRXP_ENEMY_Xabraxxis|r. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que cae en el suelo. Despójala para obtener el |cRXP_LOOT_Dije de corrupción|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #xprate <1.5
    #label CompleteFangs
    .goto Darkshore,52.6,33.6
    .xp 18 >> Mata enemigos hasta subir al nivel 18
step << Hunter
    #label CompleteFangs
    #season 0
    .goto Darkshore,52.6,33.6
    .xp 18.75 >> Sube al nivel 18 + 75%
    >>Asegúrate de que el tiempo de recarga de tu Piedra de hogar sea <10 min
    >>Omite este paso si el área está demasiado concurrida
step
    #label LateStalkerFangs
    #xprate <1.5 --<< !NightElf/Hunter
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
    #xprate <1.5 --<< !NightElf/Hunter
    #label Buzzbox323End
    #requires SicklyDeers << Druid --xprate <1.5
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
	#xprate >1.49 << Hunter/Druid
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
step
    #xprate >1.59
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >> Mata enemigos hasta alcanzar 15000+/19400xp
    .mob Dark Strand Fanatic
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #season 0
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
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
    .goto Darkshore,56.10,16.88,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Mata |cRXP_ENEMY_Oráculos Brumagris|r y |cRXP_ENEMY_Cazamareas Brumagris|r. Despójalos para obtener la |cRXP_LOOT_Mitad de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>Ten cuidado con |cRXP_ENEMY_Cazamareas Brumagris|r pueden lanzar |T136016:0|t[|cRXP_FRIENDLY_Veneno|r] mientras luchan cuerpo a cuerpo dejando un daño en el tiempo que inflige 13 p. de daño cada 3 s durante 30 s
    >>|cRXP_WARN_Puedes cortar la línea de visión (LoS) de las|cRXP_ENEMY_  |T136048:0|t[Descargas de relámpagos] |rde los|r Oráculos Niebla Gris|cRXP_WARN_ usando el barco hundido para evitar recibir su daño|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Mata |cRXP_ENEMY_Zancudos del bosque gigantes|r. Despójalos para obtener la |cRXP_LOOT_Parte superior de la llave de Gelkak|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #xprate <1.59
    #label NorthStalkerPelts
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r y a las |cRXP_ENEMY_Matriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>|cRXP_WARN_Ten cuidado con las |cRXP_ENEMY_Matriarcas Acechalunas|r. Siempre atacan con un |cRXP_ENEMY_Cachorro Acechalunas|r a su lado|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r pueden lanzar |T132090:0|t[Aprovechar debilidad] un ataque por la espalda infligiendo 20-40 de daño si les das la espalda
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue
    #season 0
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Empieza a buscar grupo para La venganza de Gyromast/|r|cRXP_ENEMY_El Trillomajareitor 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Empieza a buscar grupo para La venganza de Gyromast/|r|cRXP_ENEMY_El Trillomajareitor 4100|r << Warrior/Paladin/Rogue
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
    .isOnQuest 2078 << Warrior/Paladin/Rogue
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
    >>|cRXP_WARN_Intenta hacer esta misión si puedes ya que te ahorrarás tiempo después porque ofrece|r |T134797:0|t[Elixires de Respiración acuática] |cRXP_WARN_para misiones submarinas después|r << !Druid !Warlock
    >>|cRXP_WARN_Usa|r |T136100:0|t[Raíces enredadoras] |cRXP_WARN_en él cuando se vuelva hostil, luego crea distancia y kitea usando hechizos de lanzamiento instantáneo|r << Druid
    >>|cRXP_WARN_Si no puedes matar a |cRXP_ENEMY_El Trillomajareitor 4100|r, omite este paso|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Haz clic aquí para una guía en video|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue
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
    #xprate <1.5
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
step << !NightElf !Dwarf Hunter !Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Viaja a Auberdine
    .cooldown item,6948,<0
step << !NightElf !Dwarf Hunter !Druid
    #xprate <1.59
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>0,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4727 >> Acepta la misión Tortuga marina varada
step << Druid
    #xprate <1.5
    #label DeerComplete
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .goto Darkshore,49.7,33.2,40,0
    .goto Darkshore,43.4,25.1,40,0
    .goto Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Usa el|r |T132801:0|t[Bálsamo animal curativo] |cRXP_WARN_en|r |cRXP_ENEMY_Ciervo enfermo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Nada hacia mar adentro|r
    >>Abre el |cRXP_PICK_Arcón extraño|r. Despójalo para obtener el |cRXP_LOOT_Medio colgante de Agilidad acuática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshore 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Elimina la |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r de tu inventario, ya que ya no se necesita
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Borra la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r de tu inventario ya que ya no la necesitas
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Borra la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r de tu inventario ya que ya no la necesitas
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compra un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_y una|r |T135435:0|t[Madera simple] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto es para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_mientras estés en el barco pronto|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
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
step
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Entrega la misión El maestro perdido
    .target Terenthis
    .isQuestTurnedIn 986
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Si equipas la|r |T133762:0|t[Capa de Acechalunas encantada]|cRXP_WARN_, asegúrate de guardar tu capa actual para después ya que la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_se pierde al entregar una misión posterior|r
    .equip 15,5387 >>|cRXP_WARN_Equipa la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_Si es mejor que tu Capa actual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
    .isQuestComplete 1138
step
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde

----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of 2x Non-Deadmines Training/Class q section----



step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >> Viaja al embarcadero del barco del Puerto de Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #label DarkshoreNoDMCook1
    #requires TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #requires DarkshoreNoDMCook1
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los|r |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r |cRXP_WARN_y|r |T134059:0|t[Especias suaves] |cRXP_WARN_en|r |T132834:0|t[Huevos a las finas hierbas]
    .usespell 2550
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .dungeon !DM
step << Warrior/Paladin
    #xprate >1.59
    #ah
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Sube el nivel de tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Puerto Menethil si es necesario|r << Warrior/Paladin/Rogue
    >>|cRXP_WARN_Si tienes un arma muy buena en tu inventario que puedas equipar pronto, omite este paso|r
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #ssf << Paladin/Warrior
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Sube el nivel de tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Puerto Menethil si es necesario|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin
    #ah
    #xprate >1.59
    #optional
    #label PalWarSkip20
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r en el Puerto de Menethil
    .vendor 1441 >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    >>|cRXP_WARN_Si no hay una, no te preocupes ya que irás a la Casa de Subastas más tarde|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << Warrior/Paladin
    #ssf
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r dentro
    >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    >>|cRXP_BUY_Si no hay una, compra un|r |T135280:0|t[Dalle dacio] |cRXP_BUY_si puedes pagarlo|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equipa la|r |T135329:0|t[Espada de verdugo]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << !NightElf Warrior/Paladin/Mage/Warlock/!NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Salta del final del muelle y nada hacia el punto marcado de la ruta
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utiliza el servicio automático de personaje atascado para ir directamente a Forjaz. Tendrás que cerrar sesión en el lugar, luego navega al menú de ayuda en otro personaje (alternativamente, pega el enlace de desatasco a continuación en tu navegador), luego desplázate hacia abajo hasta autoayuda. Haz clic en tu personaje y muévelo. Si no puedes desatascarlo, omite este paso y nada a lo largo de las montañas hacia Páramos de Poniente
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Haz clic aquí para ver el vídeo de referencia
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Haz clic aquí para abrir el enlace al servicio de personaje atascado
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM




----Start of NE Warrior and Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
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
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Corre por la costa y dirígete hacia la Colina del Centinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Corre hacia Ventormenta
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Rogue
    .train 202 >> Aprende Espadas de 2 manos << Warrior
    .target Woo Ping
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Ironforge
    .dungeon !DM




----End of NE Warrior Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Buliwyf Petramano|r dentro
    .train 197 >> Aprende Hachas de 2 manos
    .train 199 >> Aprende Mazas de 2 manos
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional << NightElf
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Cómprale una|r |T135280:0|t[Dalle dacio] |cRXP_BUY_o busca en la Casa de Subastas algo mejor/más barato|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brenwyn Wintersteel
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    #completewith DeeprunDM
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Viaja hacia |cRXP_FRIENDLY_Bilban Cálculo|r
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step <<Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .isOnQuest 968
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Viaja hacia |cRXP_FRIENDLY_Ginny Largamora|r dentro
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ginny Largamora|r dentro
    >>|cRXP_BUY_Compra hasta 4|r |T134419:0|t[Runas de teletransporte] |cRXP_BUY_a esta vendedora|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon !DM
step << Mage
    #xprate >1.59
    #label MilstaffNoDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milstaff Ojotrueno|r
    .train 3562 >> Aprende |T135763:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
    .dungeon !DM
step << Paladin
    #xprate >1.59
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .trainer >> Aprende tus hechizos de clase
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .dungeon !DM
step << skip --logout skip Mage
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima del pilar que está sobre |cRXP_FRIENDLY_Bink|r, luego camina ligeramente al este de ella hacia la posición de la flecha. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Camina sobre la cama, luego salta sobre la parte superior de la estantería. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima de la cabeza del Grifo. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    #label DeeprunNoDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    >>|cRXP_WARN_Necesitarás que tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_sea 80+ para una misión más adelante|r << Rogue !Dwarf
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia Ventormenta
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Billibub Cogspinner
    .zoneskip Darkshore << Warrior/Paladin
    .bronzetube
    .train 201,1 << NightElf Rogue --1h swords not trained
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Aprende|r |T132282:0|t[Emboscada] |cRXP_WARN_si tienes dinero extra y una|r |T135641:0|t[Daga] |cRXP_WARN_equipado o en tu inventario. Te ahorrará tiempo más tarde|r
    .train 8676 >> Aprende |T132282:0|t[Emboscada]
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T132320:0|t[Sigilo]|cRXP_WARN_,|r |T133644:0|t[Robar]|cRXP_WARN_, y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T133644:0|t[Robar]|cRXP_WARN_y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión del dinero en los siguientes pasos. Solo compra los hechizos esenciales. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de regresar a Humedales|r
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que la necesitarás más tarde|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión del dinero en los siguientes pasos. Solo compra los hechizos esenciales. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de regresar a Humedales|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Viaja hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r dentro de IV:7 en el piso de arriba
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << NightElf Rogue/Mage/Warlock
    #xprate >1.59 << !Hunter
    #season 1 << Rogue sod
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage
    .train 202 >> Aprende Espadas de 2 manos << Warrior
    .target Woo Ping
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipa la|r |T135329:0|t[Espada de verdugo]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Cómprale una|r |T135280:0|t[Dalle dacio] |cRXP_BUY_o busca en la Casa de Subastas algo mejor/más barato|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .zoneskip Stormwind City,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Cómprale un|r |T135342:0|t[Kris] |cRXP_BUY_o revisa la Casa de Subastas por algo mejor o más barato|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión de dinero en los próximos pasos. Solo compra una daga si no tienes dinero. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de volver a Humedales|r
    .collect 2209,2 --Kris (2)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Cómprale un|r |T135342:0|t[Kris] |cRXP_BUY_si te lo puedes permitir|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión de dinero en los próximos pasos. Solo compra una daga si no tienes dinero. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de volver a Humedales|r
    .collect 2209,1 --Kris (2)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipa el|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM



----Start of 2x Non-Deadmines Rogue Class q section----



step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << Dwarf
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << !Human
    .fly Westfall >> Vuela a Páramos de Poniente << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela << !Human
    .fly Redridge >> Vuela a Montañas Crestagrana << Human
    .target Thor
    .dungeon !DM
step << Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto de la Torre de Azora
    .accept 94 >> Acepta la misión Un ojo vigilante
    .target Theocritus
    .dungeon !DM
    .xp <20,1
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Chef Breanna|r dentro
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r en la planta de arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .accept 89 >> Acepta la misión El puente sempiterno
    .target Foreman Oslow
    .xp 21.4,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #sticky
    #completewith next
    .goto Redridge Mountains,39.6,33.2,0
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Puedes matar algunos gnolls por el camino al Molino de Alther. Completarás este objetivo en el camino de regreso
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >> Dirígete al Molino de Alther
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Colócate en el punto marcado de la ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Arcones de prácticas|r de una vez sin tener que mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,39.6,33.2
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Termina matando |cRXP_WARN_gnolls|r para obtener las partes del puente
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .turnin 89 >> Entrega la misión El puente sempiterno
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Entrega la misión Molino de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Elimina el |T134328:0|t[Certificado de Ratería] de tu inventario, ya que ya no es necesario
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >> Asegúrate de tener al menos 14k de experiencia en el nivel 21 antes de irte de Crestagrana. Si aún no has llegado, considera hacer la misión |cRXP_ENEMY_El collar de Hilary|r de |cRXP_FRIENDLY_Shawn|r o la misión |cRXP_ENEMY_Las herramientas perdidas|r del |cRXP_FRIENDLY_Supervisor Olento|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana << !Human
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo puedes omitir este paso y pedirles que lo eliminen por ti más tarde|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
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
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue !sod
    .turnin 135 >> Entrega la misión La hermandad de los Defias
--  .accept 141 >> Accept The Defias Brotherhood
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jasper Vil|r en la planta baja del edificio
    >>Compra componentes para elaborar |T132273:0|t[|cRXP_FRIENDLY_Veneno instantáneo|r] y |T132331:0|t[|cRXP_FRIENDLY_Esfumarse|r] a este vendedor
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>Abre tu libro de hechizos y busca |T136242:0|t[|cRXP_FRIENDLY_Venenos|r] la habilidad de la pestaña general. Ábrela y fabrica 20 Venenos Instantáneos. |cRXP_WARN_Recuerda mantenerlos aplicados a ambas armas durante el combate|r
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión del dinero en los siguientes pasos. Solo compra los hechizos esenciales. Necesitarás 75 platas para obtener una runa después de un par de misiones en Los Humedales|r
    >>|cRXP_WARN_Aprende|r |T132331:0|t[Esfumarse] y |T132320:0|t[Sigilo](rango 2) La necesitarás para desbloquear |T236270:0|t[Brebaje letal] pronto
    .train 1856 >> Aprende |T132331:0|t[Esfumarse]
    .train 1785 >> Aprende |T132320:0|t[Sigilo](rango 2)
    .target Osborne the Night Man
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Warlock
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    .vendor 1312 >>|cRXP_BUY_Cómprale una|r |T135469:0|t[Varita Alba] |cRXP_BUY_si puedes permitírtelo|r
    >>|cRXP_BUY_Alternativamente, compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_de la Casa de Subastas si es más barato que 52 platas 47 cobres|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Compra una|r |T135469:0|t[Varita Alba] |cRXP_BUY_a esta vendedora|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipa la|r |T135469:0|t[Varita Alba]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    .vendor >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Tormento (Rango 2)] |cRXP_BUY_a esta vendedora|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDMEnd
    #requires Torment2NoDM
    .train 20317 >>|cRXP_WARN_Usa el|r |T133738:0|t[Grimorio Tormento (Rango 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Sube por la Torre de los Magos. Cruza por el Portal Verde
    .goto Stormwind City,39.681,79.538,15 >>Viaja hacia |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
    .target Larimaine Purdue
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #season 1 >> Pícaro
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .zoneskip Ironforge << Warrior
    .zoneskip Darkshore << Warrior
    .target Argos Nightwhisper
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar hacia el Puerto de Menethil. |cRXP_WARN_O usa un ghetto hearth desde las Mazmorras si está en recarga|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Entra en Las Mazmorras de Ventormenta|r
    >>|cRXP_WARN_Ya dentro:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Haz clic aquí para copiar + pegar esta macro en el chat para hacer un ghetto hearth de regreso a Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Si no puedes hacer esto, vuelve a Auberdine|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith NEWarRogNoDMIFPP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #label NEWarRogNoDMNoFP1
    #completewith NEWarRogNoDMIFPP
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    .zone Ironforge >> Toma el Tranvía Subterráneo a Forjaz
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #requires NEWarRogNoDMNoFP1
    #label NEWarRogNoDMNoFP2
    #completewith NEWarRogNoDMIFPP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .bronzetube
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP2
    #label NEWarRogNoDMNoFP3
    #completewith NEWarRogNoDMIFPP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Buliwyf Petramano|r dentro
    .train 197 >> Aprende Hachas de 2 manos
    .train 199 >> Aprende Mazas de 2 manos
    .target Buliwyf Stonehand
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP3
    #label NEWarRogNoDMNoFP4
    #completewith NEWarRogNoDMIFPP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Daga arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP4
    #label NEWarRogNoDMNoFP5
    #completewith NEWarRogNoDMIFPP
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Daga arrojadiza pesada]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #label NEWarRogNoDMIFPP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .isOnQuest 968
    .dungeon !DM



----End of 2x Non-Deadmines Training/Class q section----
----Start of 2x Non-Deadmines (Darnassus) training section----

step << Mage/Warlock/Rogue
    #xprate >1.59
    #label NoDMStockadeEnd
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Entra en Las Mazmorras de Ventormenta|r
    >>|cRXP_WARN_Ya dentro:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Haz clic aquí para copiar + pegar esta macro en el chat para hacer un ghetto hearth de regreso a Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Si no puedes hacer esto, vuelve a Auberdine|r
    .zoneskip Teldrassil << Warrior
    .zoneskip Darnassus << Warrior
    .zoneskip Ironforge
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Menethil >> Vuela a Los Humedales
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >> Viaja al Puerto de Menethil
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Viaja al muelle del barco de Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Sube tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Auberdine si es necesario|r << Warrior/Paladin/Rogue
    .zone Darkshore >> Toma el barco a Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << !Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .cooldown item,6948,>0,1
    .dungeon !DM << !Dwarf/!Hunter



----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----




step << Dwarf Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >> Grindea hasta que el tiempo de reutilización de tu Piedra de hogar sea menos de 6 minutos. Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Dwarf Hunter
    #xprate <1.59
    #hardcore
    #optional
    #completewith next
    +Grindea hasta que tu cooldown de Piedra de Hogar sea menos de 9 minutos luego corre de regreso a Auberdine
step << !NightElf !Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << !NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Elimina la |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r de tu inventario, ya que ya no se necesita
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Borra la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Borra la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << !NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << !NightElf
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Entrega la misión El maestro perdido
    .accept 993 >> Acepta la misión El maestro perdido
    .target Terenthis
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Si equipas la|r |T133762:0|t[Capa de Acechalunas encantada]|cRXP_WARN_, asegúrate de guardar tu capa actual para después ya que la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_se pierde al entregar una misión posterior|r
    .equip 15,5387 >>|cRXP_WARN_Equipa la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_Si es mejor que tu Capa actual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter
    #xprate <1.59
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >> Viaja al muelle del barco de Darnassus
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter
    #xprate <1.59
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
step << Dwarf Hunter
    #xprate <1.59
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Toma el barco hacia Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Consigue la ruta de vuelo de Teldrassil
    .target Vesprystus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #completewith next
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Aprende tus hechizos de clase
    .target Jocaste
    .dungeon !DM
step << Dwarf Hunter
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Aprende el uso de Arcos
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a esta vendedora|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #xprate <1.59
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter
    #xprate <1.59
    #optional
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .accept 942 >> Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #xprate <1.59
    #optional
	#completewith MoongladeTrain
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #xprate <1.5
    .goto Moonglade,56.2,30.4
    >>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 6124 >> Entrega la misión Curar la dolencia
    .accept 6125 >> Acepta la misión Poder contra el veneno
    .target Dendrite Starblaze
    .isQuestTurnedIn 6123
step << Druid
    #xprate <1.59
    #label MoongladeTrain
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step << NightElf/Dwarf Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Viaja a Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .cooldown item,6948,>0,1
step
    #xprate <1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12342 >> Elimina la |T134059:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r de tu inventario, ya que ya no se necesita
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12343 >> Borra la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12341 >> Borra la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << NightElf Hunter
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Abastécete de |T132382:0|t[Flechas afiladas]
    .target Dalmond
step << NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << NightElf
    #xprate <1.59
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Entrega la misión El maestro perdido
    .accept 993 >> Acepta la misión El maestro perdido
    .target Terenthis




----End of <1.59x Turnin section----




step << NightElf
    #optional
    >>|cRXP_WARN_Si equipas la|r |T133762:0|t[Capa de Acechalunas encantada]|cRXP_WARN_, asegúrate de guardar tu capa actual para después ya que la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_se pierde al entregar una misión posterior|r
    .equip 15,5387 >>|cRXP_WARN_Equipa la|r |T133762:0|t[Capa de Acechalunas encantada] |cRXP_WARN_Si es mejor que tu Capa actual|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

----Start of Hunter Deadmines/All 2x Deadmines Section----
step
    #xprate <1.59 << !Hunter
    #label TravelMenethilDMBoat
    #completewith MenethilDMBoat
    .goto 1439,32.432,43.744,15 >> Viaja al embarcadero del barco del Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #label DarkshoreDMCook1
    #requires TravelMenethilDMBoat
    #completewith MenethilDMBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #requires DarkshoreDMCook1
    #completewith DarnDMBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los|r |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r |cRXP_WARN_y|r |T134059:0|t[Especias suaves] |cRXP_WARN_en|r |T132834:0|t[Huevos a las finas hierbas]
    .usespell 2550
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Ahora viajarás a Las Minas de la Muerte|r
    >>|cRXP_WARN_Sube el nivel de tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Puerto Menethil si es necesario|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << Paladin/Warrior
    #ah
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    >>|cRXP_WARN_Alternativamente, puedes verificar la Casa de Subastas pronto para algo mejor o más barato|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior
    #ssf
    #optional
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brak Durnad|r dentro
    >>|cRXP_BUY_Cómprale una|r |T135329:0|t[Espada de verdugo] |cRXP_BUY_(si está disponible y tienes dinero)|r
    >>|cRXP_BUY_Si no hay una, compra un|r |T135280:0|t[Dalle dacio] |cRXP_BUY_si puedes pagarlo|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equipa la|r |T135329:0|t[Espada de verdugo]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Salta del final del muelle y nada hacia el punto marcado de la ruta
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utiliza el servicio automático de personaje atascado para ir directamente a Forjaz. Tendrás que cerrar sesión en el lugar, luego navega al menú de ayuda en otro personaje (alternativamente, pega el enlace de desatasco a continuación en tu navegador), luego desplázate hacia abajo hasta autoayuda. Haz clic en tu personaje y muévelo. Si no puedes desatascarlo, omite este paso y nada a lo largo de las montañas hacia Páramos de Poniente
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Haz clic aquí para ver el vídeo de referencia
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Haz clic aquí para abrir el enlace al servicio de personaje atascado
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM




----Start of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative section----



step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
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
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Corre por la costa y dirígete hacia la Colina del Centinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Corre hacia Ventormenta
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Buliwyf Petramano|r dentro
    .train 197 >> Aprende Hachas de 2 manos << Warrior
    .train 199 >> Aprende Mazas de 2 manos << Warrior
    .train 266 >> Aprende Armas de Fuego << Hunter
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Viaja hacia |cRXP_FRIENDLY_Ginny Largamora|r dentro
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ginny Largamora|r dentro
    >>|cRXP_BUY_Compra hasta 4|r |T134419:0|t[Runas de teletransporte] |cRXP_BUY_a esta vendedora|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milstaff Ojotrueno|r
    .train 3562 >> Aprende |T135757:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip Mage/Priest
    #xprate >1.59
    #optional
    #requires MilstaffDM << Mage
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima del pilar que está sobre |cRXP_FRIENDLY_Bink|r, luego camina ligeramente al este de ella hacia la posición de la flecha. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor 6382 >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorios] |cRXP_BUY_para tus mascotas si lo deseas|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Camina sobre la cama, luego salta sobre la parte superior de la estantería. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Camina sobre la cama, luego salta sobre la parte superior de la estantería. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima de la cabeza del Grifo. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    #label DeeprunDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    >>|cRXP_WARN_Necesitarás que tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_sea 80+ para una misión más adelante|r << Rogue !Dwarf
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia Ventormenta
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept +168 >> Acepta la misión Recolección de recuerdos
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karrina Mekenda|r dentro
    .trainer 2879 >> Entrena los hechizos de tu mascota
    .target Karrina Mekenda
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer 5515 >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r dentro
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .target Wilder Thistlenettle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Aprende|r |T132282:0|t[Emboscada] |cRXP_WARN_si tienes dinero extra y una|r |T135641:0|t[Daga] |cRXP_WARN_equipado o en tu inventario. Te ahorrará tiempo más tarde|r
    .train 8676 >> Aprende |T132282:0|t[Emboscada]
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T132320:0|t[Sigilo]|cRXP_WARN_,|r |T133644:0|t[Robar]|cRXP_WARN_, y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T133644:0|t[Robar]|cRXP_WARN_y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que la necesitarás más tarde|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Viaja hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r dentro de IV:7 en el piso de arriba
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage/Druid/Priest
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135329:0|t[Espada de verdugo]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Cómprale una|r |T135324:0|t[Tizona] |cRXP_BUY_o verifica la Casa de subastas si hay algo mejor/más barato|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Cómprale una|r |T135324:0|t[Tizona] |cRXP_BUY_si puedes permitírtelo|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r. Te dará el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r]
    .use 6776 >>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r] para iniciar la misión|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Entrega la misión Escrito sobre valor
    .accept 1650 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Cómprale una|r |T135280:0|t[Dalle dacio] |cRXP_BUY_o busca en la Casa de Subastas algo mejor/más barato|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    .vendor 1312 >>|cRXP_BUY_Cómprale una|r |T135469:0|t[Varita Alba] |cRXP_BUY_si puedes permitírtelo|r
    >>|cRXP_BUY_Alternativamente, compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_de la Casa de Subastas si es más barato que 52 platas 47 cobres|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Compra una|r |T135469:0|t[Varita Alba] |cRXP_BUY_a esta vendedora|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135469:0|t[Varita Alba]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    .vendor >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Tormento (Rango 2)] |cRXP_BUY_a esta vendedora|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_Usa el|r |T133738:0|t[Grimorio Tormento (Rango 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Sube por la Torre de los Magos. Cruza por el Portal Verde
    .goto Stormwind City,39.681,79.538,15 >>Viaja hacia |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
    .target Larimaine Purdue
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sheldras Árbol Lunar|r
    .train 6756 >> Aprende tus hechizos de clase
    .target Sheldras Moontree
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>Entra en El Carcaj Vacío dentro del anillo medio del Distrito de Mercaderes
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ah
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Cómprale un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_o verifica la Casa de Subastas por algo mejor/más barato|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana y Páramos de Poniente pronto << Paladin
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << !Paladin !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de aceite] << Paladin
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 << Paladin -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregar misiones más rápido en Montañas Crestagrana y Páramos de Poniente pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana y Páramos de Poniente pronto << !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de aceite]
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << !Human
    .fly Westfall >> Vuela a Páramos de Poniente << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela << !Human
    .fly Redridge >> Vuela a Montañas Crestagrana << Human/Warlock
    .target Thor
    .zoneskip Westfall,1
    .dungeon DM
step << Human
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto de la Torre de Azora
    .accept 94 >> Acepta la misión Un ojo vigilante
    .target Theocritus
    .dungeon DM
    .xp <20,1
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Chef Breanna|r dentro
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r en la planta de arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Colócate en el punto marcado de la ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Arcones de prácticas|r de una vez sin tener que mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Entrega la misión Molino de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Elimina el |T134328:0|t[Certificado de Ratería] de tu inventario, ya que ya no es necesario
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana << !Human !Warlock
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo puedes omitir este paso y pedirles que lo eliminen por ti más tarde|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
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
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 135 >> Entrega la misión La hermandad de los Defias
    .accept 141 >> Acepta la misión La hermandad de los Defias
    .turnin 2359 >> Entrega la misión La torre de Klaven << Rogue
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +Forma un grupo para Minas de la Muerte
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 141 >> Entrega la misión La hermandad de los Defias
    .accept 142 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Viaja a Arroyo de la Luna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mata al |cRXP_ENEMY_Mensajero Defias|r. Despójalo para obtener |cRXP_LOOT_Un mensaje misterioso|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Mensajero Defias|r aparece en Arroyo de la Luna. Camina por el camino al norte de Arroyo de la Luna, hacia la Mina de la Costa del Oro y la Mina de Jango. Si no lo ves por el camino, espéralo a que aparezca en Arroyo de la Luna|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 142 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Traidor de los Defias|r
    >>|cRXP_WARN_Es posible que debas esperar a que |cRXP_FRIENDLY_El Traidor de los Defias|r aparezca si no está ahí|r
    >>|cRXP_WARN_Si ya has reunido un grupo, asegúrate de que tu grupo también haya entregado la misión anterior primero antes de comenzar la escolta|r
    .accept 155 >> Acepta la misión La hermandad de los Defias
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>Escolta a |cRXP_FRIENDLY_El Traidor de los Defias|r a Las Minas de la Muerte
    >>|cRXP_WARN_Permanece junto a |cRXP_FRIENDLY_El Traidor de los Defias|r en todo momento. Prepárate para luchar contra |cRXP_ENEMY_Saqueadores Defias|r y |cRXP_ENEMY_Despojadores Defias|r al llegar a Arroyo de la Luna|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 155 >> Entrega la misión La hermandad de los Defias
    .accept 166 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .accept 214 >> Acepta la misión Pañuelos rojos de seda
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
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
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entra a la Ladronera de los Defias con tu grupo
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_También puedes completar esto dentro de Minas de la Muerte|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    >>|cRXP_WARN_Pregunta a tu grupo si pueden quedarse un momento para ayudarte con la escolta de |cRXP_FRIENDLY_Daphne Fontana|r exclusiva de paladín dentro de poco (si es posible)|r << Paladin
    .subzone 920 >>Sal de Minas de la Muerte por la salida trasera al este de |cRXP_ENEMY_Edwin VanCleef|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >> Viaja hacia |cRXP_FRIENDLY_Daphne Fontana|r en su campo
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daphne Fontana|r en su campo para iniciar su escolta
    >>|cRXP_WARN_Patrulla alrededor un poco por su campo|r
    >>|cRXP_WARN_Ten cuidado ya que esto puede ser ligeramente difícil. Te enfrentarás a 3 oleadas de 3, luego 4, luego 5 nivel 17-18 |cRXP_ENEMY_Asaltantes Defias|r
    .turnin 1650 >>Entrega la misión Escrito sobre valor
    .accept 1651,1 >>Acepta la misión Escrito sobre valor
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >> HAZ CLIC AQUÍ para una guía en vídeo
    .target Daphne Stilwell
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>Protege a |cRXP_FRIENDLY_Daphne Fontana|r
    >>|cRXP_WARN_Si tú o |cRXP_FRIENDLY_Daphne Fontana|r morís, la misión fracasará y tendrás que intentarlo de nuevo|r
    >>|cRXP_WARN_Ten cuidado ya que esto puede ser ligeramente difícil. Te enfrentarás a 3 oleadas de 3, luego 4, luego 5 nivel 17-18 |cRXP_ENEMY_Asaltantes Defias|r
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daphne Fontana|r
    >>|cRXP_WARN_Patrulla alrededor un poco por su campo|r
    .turnin 1651 >>Entrega la misión Escrito sobre valor
    .accept 1652 >>Acepta la misión Escrito sobre valor
    .target Daphne Stilwell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Viaja al Faro de Poniente
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .accept 103 >> Acepta la misión Guardián de la Llama
    .turnin 103 >> Entrega la misión Guardián de la Llama
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mata a |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener su |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Viejo Ojosombrío|r |cRXP_WARN_patrulla de arriba a abajo por Playa Larga. Si no lo puedes encontrar, omite este paso|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 104 >> Entrega la misión La amenaza costera
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >> Abandona la misión Guardián de la Llama
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entra en la Ladronera de los Defias solo
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>Mata a los |cRXP_ENEMY_Defias|r fuera de la Instancia de Minas de la Muerte. Despójalos de sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_Si no hay más |cRXP_ENEMY_Defias|r dentro de Minas de la Muerte, mátalos fuera en su lugar|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >> Abandona la misión La carta sin enviar. La harás más tarde
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Lanza |T135763:0|t[Teletransporte a: Ventormenta]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Elsharin
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <22,1
    .dungeon DM
--XX Not adding one to check xp after turnins, waste of time to do that/take tram and train etc
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Entrega la misión Escrito sobre valor
    .accept 1653 >>Acepta la misión La prueba de rectitud
    .target Duthorian Rall
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19835 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .train 8103 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .train 1856 >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .train 6192 >> Aprende tus hechizos de clase
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r dentro
    .turnin 167 >> Entrega la misión Oh, hermano...
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Entrega la misión Escrito sobre valor
    .accept 1653 >>Acepta la misión La prueba de rectitud
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19835 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .train 8103 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .train 1856 >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .train 6192 >> Aprende tus hechizos de clase
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Lanza |T135763:0|t[Teletransporte a: Ventormenta]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r en lo alto de la Torre
    .train 2138 >> Aprende tus hechizos de clase
    .target Elsharin
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8926 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    .zone Ironforge >> Toma el Tranvía Subterráneo a Forjaz
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .bronzetube
    .dungeon DM
step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #requires DeeprunDMNoFP2
    #label DeeprunDMNoFP3
    #completewith NEIFFP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Buliwyf Petramano|r dentro
    .train 197 >> Aprende Hachas de 2 manos << Warrior
    .train 199 >> Aprende Mazas de 2 manos << Warrior
    .train 266 >> Aprende Armas de Fuego << Hunter
    .target Buliwyf Stonehand
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Daga arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Daga arrojadiza pesada]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore
    .dungeon DM




----End of Hunter/All 2x Deadmines section----
----Start of <1.59x Redridge Transition----






step << !Hunter
--XX NightElf
    #xprate <1.59
    .goto Darkshore,37.45,40.50
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
--XX NightElf
    #xprate <1.59
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
--ZXCV
step << !Hunter
    #xprate <1.59
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439,32.432,43.744,15 >> Viaja al embarcadero del barco del Puerto de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
step << !Hunter
    #xprate <1.59
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #xprate <1.59
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
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #xprate <1.59
    #label MenethilRRBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Sube el nivel de tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Puerto Menethil si es necesario|r << Rogue/Warrior/Paladin
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << !NightElf !Hunter
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step << !NightElf !Hunter
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir



----Start of <1.59x Night Elf Wetlands->IF Transition----



step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Acepta la misión Piel de crocolisco joven
step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step << !Hunter NightElf
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step << !Hunter NightElf !Warrior
    #xprate <1.59
    #completewith crocs
    >>Mata a los |cRXP_ENEMY_Crocoliscos jóvenes de Los Humedales|r. Despójalos para obtener su |cRXP_LOOT_Piel de crocolisco joven|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1--ignore if level 18 or below
step << !Hunter NightElf
    #xprate <1.59
    #completewith next
    .goto Wetlands,49.91,39.36,50 >> Viaja al este hacia |cRXP_FRIENDLY_Eina Pillapedra|r
step << !Hunter NightElf
    #xprate <1.59
    #label crocs
    .goto Wetlands,49.91,39.36
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eina Pillapedra|r
    .accept 469 >> Acepta la misión Entrega cotidiana
step << !Hunter NightElf !Warrior
    #xprate <1.59
    .goto Wetlands,53.2,41.3,55,0
    .goto Wetlands,58.5,50.8,55,0
    .goto Wetlands,62.1,61.4,55,0
    .goto Wetlands,64.0,72.2
    >>Mata a los |cRXP_ENEMY_Crocoliscos jóvenes de Los Humedales|r. Despójalos para obtener su |cRXP_LOOT_Piel de crocolisco joven|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1
step << skip --logout skip !Hunter NightElf
    #xprate 1.49-1.59
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Ve a la cueva en la base de la presa en el este de Los Humedales
	.zone Loch Modan >> Desconéctate encima de las setas en el fondo de la cueva.
    >>Cuando vuelvas a conectarte, esto te teletransportará a Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_HAZ CLIC AQUÍ para ver una referencia|r
step << !Hunter NightElf
    #xprate <1.5
    #completewith next
    .goto Wetlands,53.14,70.38,30,0
    .goto Wetlands,48.32,67.07,35,0
    .goto Wetlands,50.14,72.10,30,0
    .goto Loch Modan,25.4,10.6,30 >> Vuela a Loch Modan
    .zone Loch Modan >> |cRXP_WARN_Mantente en el camino principal para evitar enemigos|r
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ingeniero jefe Hinderweir VII|r
    .accept 250 >> Acepta la misión Se aproxima una oscura amenaza
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,56.05,13.24
    >>Haz clic en la |cRXP_PICK_Barrica sospechosa|r
    .turnin 250 >> Entrega la misión Se aproxima una oscura amenaza
    .accept 199 >> Acepta la misión Se aproxima una oscura amenaza
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ingeniero jefe Hinderweir VII|r
    .turnin 199 >> Entrega la misión Se aproxima una oscura amenaza
step << !Hunter NightElf
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,21.30,68.60,40,0
    .goto Loch Modan,19.11,62.11,25,0
    .goto Dun Morogh,86.04,51.05,20 >> Viaja a Dun Morogh
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step << !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,55.13,34.91
    .zone Ironforge >> Viaja a Forjaz
step << skip --logout skip !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Dirígete a la cueva de los troggs al oeste y desconecta encima de la máquina perforadora cerca de la entrada para realizar un logout skip que te teletransportará a Forjaz
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> HAZ CLIC AQUÍ para referencia
step << !Hunter NightElf
    #xprate <1.59
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden



----End of <1.59x Night Elf Wetlands->IF Transition----



step << skip --logout skip !Hunter
    #xprate <1.59
    #completewith next
    #optional
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >> |cRXP_WARN_Realiza un Logout Skip saltando encima de una de las cabezas de grifo, desconectando y volviendo a entrar|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
step << !Hunter
    #xprate <1.59
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Cortallave Volopiñón|r no tiene uno|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << !Hunter
    #xprate <1.59
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Entra en el Tranvía Subterráneo. Toma el tranvía a Ventormenta
    >>|cRXP_WARN_Sube tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras esperas el tranvía|r
    >>Tu|cRXP_WARN_ |T135966:0|t[Primeros auxilios] |rdebe ser 80 para una misión a nivel 24|cRXP_WARN_ << Rogue !Dwarf




----End of <1.59x Redridge Transition----




]])

----Start of <1.59x Redridge----
----2x and ALL Hunters stay in Darkshore/Ashen and grind----

RXPGuides.RegisterGuide([[
#xprate <1.59
#classic
#tbc
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 19-20 Montañas Crestagrana
#next 20-21 Costa Oscura/Vallefresno

step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Billibub Volopiñón|r no tiene uno|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
    .dungeon DM
step << !NightElf
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
    .isOnQuest 1338
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .target Wilder Thistlenettle
    .dungeon DM
step << !NightElf
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
    .isQuestComplete 399
--XX Westfall 1x only
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Paladin/Priest !NightElf
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    #label PalTrainer
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest !NightElf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Compra una|r |T135139:0|t[Varita ardiente] |cRXP_WARN_si es una mejora|r
    >>|cRXP_WARN_Es importante comprar una varita que no haga daño de sombra. Tendrás que enfrentarte a enemigos resistentes al daño de sombra más tarde|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Asegúrate de entrenar|r |T136058:0|t[Forzar cerraduras] |cRXP_WARN_también, ya que lo necesitarás pronto para la misión de clase de pícaro|r
    .trainer >> Aprende tus hechizos de clase
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra en el cuartel general de IV:7. Sube las escaleras y dirígete hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior !NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage/Druid
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Entrega la misión Escrito sobre divinidad
    .target Stephanie Turner
    .accept 1644 >> Acepta la misión Escrito sobre divinidad
    .turnin 1644 >> Entrega la misión Escrito sobre divinidad
    >>Necesitarás 10|cRXP_WARN_ |T132889:0|t[Paño de lino]|r
--  .accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T135342:0|t[Kris] |cRXP_BUY_o algo mejor de la Casa de Subastas|r
    >>|cRXP_WARN_Equípalo cuando llegues al nivel 19|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
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
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << !Human !Warlock
    #completewith start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .goto StormwindClassic,66.27,62.12
    .fp Stormwind >> Consigue la Ruta de Vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Sal de Ventormenta
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
    .zoneskip Westfall
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64,-1
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r o |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Thor
    .target Dungar Longdrink
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Viaja a Páramos de Poniente
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
step << Gnome Warlock
#xprate >1.49
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Vuela a Crestagrana
    .target Thor
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << NightElf Warrior/NightElf Priest
    #completewith next
    .goto Elwynn Forest,41.08,65.76,25 >> Viaja a Villadorada << Warrior
    .goto Elwynn Forest,43.17,65.70,15 >> Viaja a Villadorada << Priest
step << NightElf Warrior
    .goto Elwynn Forest,41.08,65.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << NightElf Priest
    >>Viaja a la Posada. Sube las escaleras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josetta|r
    .goto Elwynn Forest,43.17,65.70,12,0
    .goto Elwynn Forest,43.80,66.47,8,0
    .goto Elwynn Forest,43.28,65.72
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Josetta
step << !Human !Warlock
    #xprate >1.49 << !NightElf
    .xp <20,1
    >>Corre a la Torre de Azora
    .goto Elwynn Forest,65.20,69.80
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Acepta la misión Un ojo vigilante
step << !NightElf
.dungeon !DM
    #xprate <1.5 << !Human
    #completewith next
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >>Vuela a Montañas Crestagrana
    .target Dungar Longdrink
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    #completewith next
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step << NightElf
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .target Deputy Feldon
    .accept 246 >> Acepta la misión Evaluar la amenaza
step
.dungeon DM
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
step
.dungeon DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Acepta la misión Mensajero a Ventormenta
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Acepta la misión El precio de unas herraduras
step
.dungeon DM
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step
.dungeon DM
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .turnin 135 >> Entrega la misión La hermandad de los Defias
    .accept 141 >> Acepta la misión La hermandad de los Defias
    .target Master Mathias Shaw
step
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 141 >> Entrega la misión La hermandad de los Defias
    .accept 142 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Viaja a Arroyo de la Luna
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mata al |cRXP_ENEMY_Mensajero Defias|r. Despójalo para obtener |cRXP_LOOT_Un mensaje misterioso|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Mensajero Defias|r aparece en Arroyo de la Luna. Camina por el camino al norte de Arroyo de la Luna, hacia la Mina de la Costa del Oro y la Mina de Jango. Si no lo ves por el camino, espéralo a que aparezca en Arroyo de la Luna|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 142 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Traidor de los Defias|r
    >>|cRXP_WARN_Es posible que debas esperar a que |cRXP_FRIENDLY_El Traidor de los Defias|r aparezca si no está ahí|r
    .accept 155 >> Acepta la misión La hermandad de los Defias
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Escolta a |cRXP_FRIENDLY_El Traidor de los Defias|r a Las Minas de la Muerte
    >>|cRXP_WARN_¡Permanece junto a |cRXP_FRIENDLY_El Traidor de los Defias|r en todo momento! Prepárate para luchar contra |cRXP_ENEMY_Los Defias|r al llegar a Arroyo de la Luna|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 155 >> Entrega la misión La hermandad de los Defias
    .accept 166 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .accept 214 >> Acepta la misión Pañuelos rojos de seda
    .goto Westfall,56.67,47.35
    .target Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Ahora deberías buscar un grupo para Las Minas de la Muerte
    >>Grindea gnolls mientras armas un grupo para Las Minas de la Muerte
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Viaja a Las Minas de la Muerte
step
.dungeon DM
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    >>|cRXP_WARN_Puedes completar esta misión después de entrar en la Mazmorra|r
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
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
step
.dungeon DM
    #completewith DMend
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    >>|cRXP_WARN_Usa |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r] para iniciar la misión|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Acepta la misión La carta sin enviar
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Viaja a Colina del Centinela
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r y la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin -214 >> Entrega la misión Pañuelos rojos de seda
    .target +Scout Riell
    .goto Westfall,56.67,47.35
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step
.dungeon DM
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Entrega la misión Mensajero a Ventormenta
    .accept 121 >> Acepta la misión Mensajero a Ventormenta
    .target General Marcus Jonathan
step << Mage
.dungeon DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Viaja a la Torre de los Magos
step << Mage
.dungeon DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
	.xp <20,1
    .target Larimaine Purdue
step << Warlock
.dungeon DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
.dungeon DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
.dungeon DM
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
    .xp <20,1
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
.dungeon DM
    #season 2
    #completewith next
    +|cRXP_WARN_Deberías prepararte para cambiar a|r |T132276:0|t[Feral] |cRXP_WARN_en lugar de usar habilidades de|r |T136096:0|t[Equilibrio] |cRXP_WARN_una vez que consigas las runas de|r |T132135:0|t[Destrozar] |cRXP_WARN_y|r |T236167:0|t[Rugido salvaje]
step << Druid
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sheldras Árbol Lunar|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Aprende tus hechizos de clase
    .train 768 >> Aprende |T132115:0|t[Forma felina]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r. Te dará el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Entrega la misión Escrito sobre valor
    .accept 1650 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
.dungeon DM
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Entrega la misión La carta sin enviar
    .accept 389 >> Acepta la misión Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r y |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 167 >> Entrega la misión Oh, hermano...
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .target +Wilder Thistlenettle
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Rogue
.dungeon DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
.dungeon DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Compra una|r |T135324:0|t[Tizona] |cRXP_WARN_y equipala al nivel 21|r
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Compra una|r |T135324:0|t[Tizona] |cRXP_WARN_y equipala al nivel 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_WARN_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_WARN_si tienes suficiente dinero. Equípalo al nivel 21|r
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_WARN_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_WARN_si tienes suficiente dinero. Equípalo al nivel 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celador Thelagua|r
    .turnin 389 >> Entrega la misión Bazil Thredd
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
.dungeon DM
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Sal de Ventormenta. Viaja a Villorada
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .turnin 118 >> Entrega la misión El precio de unas herraduras
    .accept 119 >> Acepta la misión Regresa junto a Verner
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 118
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .accept 119 >> Acepta la misión Regresa junto a Verner
    .xp <20,1
step
.dungeon DM
    #completewith next
    .subzone 91 >> Viaja a la Torre de Azora. Sube la torre
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto
    .accept 94 >> Acepta la misión Un ojo vigilante
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alba Estrellaclara|r
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134850:0|t|T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Alba Estrellaclara|r |cRXP_BUY_tiene artículos de suministro limitado tales como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminos] |cRXP_BUY_y|r |T134830:0|t[Pociones] |cRXP_BUY_que también deberías comprar si están disponibles|r << Warrior/Rogue
    .target Alba Estrellaclara
    .subzoneskip 91,1
step
.dungeon DM
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana

step
.dungeon DM
    #xprate <1.5
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step
.dungeon DM
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Acepta la misión La amenaza de los Roca Negra
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Acepta la misión Las herramientas perdidas
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Acepta la misión El precio de unas herraduras
step
.dungeon DM
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Entrega la misión Regresa junto a Verner
    .accept 124 >> Acepta la misión El aullido de los gnolls
step
.dungeon DM
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Entrega la misión Regresa junto a Verner
    .accept 124 >> Acepta la misión El aullido de los gnolls
    .accept 122 >> Acepta la misión Escamas de barriga
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Entrega la misión Mensajero a Ventormenta
    .accept 121 >> Acepta la misión Mensajero a Ventormenta
step
.dungeon !DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Acepta la misión Mensajero a Ventormenta
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Acepta la misión Pescado a la venta
step
#xprate <1.5
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .accept 129 >> Acepta la misión Una comida gratis
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r arriba
	.target Wiley the Black
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .isOnQuest 65
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >> Acepta la misión Una visita poco grata
step << Warlock
    .goto Redridge Mountains,15.68,49.30
    >>Mata a |cRXP_ENEMY_Panzallena|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Kitea a |cRXP_ENEMY_Panzallena|r de vuelta a Villa del Lago para que los |cRXP_FRIENDLY_Guardias|r te ayuden a matar a|r |cRXP_ENEMY_Panzallena|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Puedes omitir este paso y volver más tarde.|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_Haz clic aquí para ver una guía en vídeo|r
    .mob Bellygrub
step << Warlock
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Entrega la misión Una visita poco grata
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Acepta la misión El collar de Hilary
step
    >>|cRXP_WARN_Salta al Lago|r
    >>Abre el |cRXP_PICK_Barro centelleante|r. Despójalo para obtener el |cRXP_LOOT_Collar de Hilary|r
    >>|cRXP_WARN_Tiene múltiples ubicaciones de aparición en el Lago|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Entrega la misión El collar de Hilary
step
    #softcore
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #xprate <1.5
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
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Acepta la misión Gnolls invasores
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Entrega la misión Una comida gratis
    .accept 130 >> Acepta la misión Una visita al herborista
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Entrega la misión Gnolls invasores
    .accept 246 >> Acepta la misión Evaluar la amenaza
step
    #xprate <1.5
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Mata a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener sus |cRXP_LOOT_Carnes de araña crujiente|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #xprate <1.5
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>Mata a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Furtivos de Crestagrana|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    .goto Redridge Mountains,49.0,70.0
    >>Mata a los |cRXP_ENEMY_Rompeolas múrloc|r y a los |cRXP_ENEMY_Clamamareas menor múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Aletas|r y |cRXP_LOOT_Pez luna|r
	>>|cRXP_WARN_Ten en cuenta que esta zona tiene una reaparición hiperrápida (hyperspawn) , lo que significa que los |cRXP_ENEMY_Múrlocs|r reaparecen rápidamente|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>|cRXP_WARN_Omite este paso si no estás viendo ninguno|r |cRXP_ENEMY_Cóndor temible|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #label orcs
    >>Mata a los |cRXP_ENEMY_Brutos Roca Negra|r y a los |cRXP_ENEMY_Avanzados Roca Negras|r. Despójalos para obtener sus |cRXP_LOOT_Hachas|r
	>>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Avanzados Roca Negra|r lanzarán |T132149:0|t[Red] sobre ti|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Mata a los |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Salta al Lago|r
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
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
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto Redridge Mountains,33.50,48.97,150 >> Viaja a Villa del Lago
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Entrega la misión La amenaza de los Roca Negra
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Entrega la misión Las herramientas perdidas
    .accept 89 >> Acepta la misión El puente sempiterno
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Entrega la misión Pescado a la venta
    .accept 150 >> Acepta la misión Cazadores furtivos
    .turnin 150 >> Entrega la misión Cazadores furtivos
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Entrega la misión Pescado a la venta
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Entrega la misión Una visita al herborista
    .accept 131 >> Acepta la misión Un ramo de narcisos
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Entrega la misión Un ramo de narcisos
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Entrega la misión Molino de Alther
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Entrega la misión El collar de Hilary
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Destruye el |T134328:0|t[Certificado de Ratería]. No lo necesitas
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Entrega la misión Evaluar la amenaza
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20 >> Sube de nivel matando enemigos hasta llegar al nivel 20
step << Rogue
.dungeon DM
    #softcore
    .isOnQuest 2360
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana << !Human
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
step
.dungeon !DM << Rogue
    #completewith InRR
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana << !Human !Warlock
    .fly Stormwind >> Vuela a la Ciudad de Ventormenta
step << Rogue
.dungeon !DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Compra una|r |T135324:0|t[Tizona] |cRXP_WARN_y equipala al nivel 21|r
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Compra una|r |T135324:0|t[Tizona] |cRXP_WARN_y equipala al nivel 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon !DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_WARN_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_WARN_si tienes suficiente dinero. Equípalo al nivel 21|r
    >>|cRXP_WARN_Compra algo en la Casa de Subastas si hay algo más barato/mejor|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_WARN_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_WARN_si tienes suficiente dinero. Equípalo al nivel 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
.dungeon !DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
.dungeon !DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1716 >> Acepta la misión Devoradora de almas
    .target Gakin the Darkbinder
step << Mage
.dungeon !DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Viaja a la Torre de los Magos
step << Mage
.dungeon !DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Mage
.dungeon !DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
    .dungeon !DM
step << Druid
.dungeon !DM
    #season 2
    #completewith next
    +|cRXP_WARN_Deberías prepararte para cambiar a|r |T132276:0|t[Feral] |cRXP_WARN_en lugar de usar habilidades de|r |T136096:0|t[Equilibrio] |cRXP_WARN_una vez que consigas las runas de|r |T132135:0|t[Destrozar] |cRXP_WARN_y|r |T236167:0|t[Rugido salvaje]
step << Druid
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sheldras Árbol Lunar|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Aprende tus hechizos de clase
    .train 768 >> Aprende |T132115:0|t[Forma felina]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon !DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r. Te dará el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Entrega la misión Escrito sobre valor
    .accept 1650 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step << Rogue
.dungeon !DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Rogue
.dungeon !DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Viaja a Páramos de Poniente
    >>Vuela allí si ya tienes la Ruta de Vuelo de Páramos de Poniente
    .isOnQuest 2360
step << NightElf Rogue
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Consigue la ruta de vuelo de Páramos de Poniente
    .target Thor
    .isOnQuest 2360
step << !NightElf Rogue
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo puedes omitir este paso y pedirles que lo eliminen por ti|r
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
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
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
    .goto Westfall,56.55,52.64
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
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
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
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Entrega la misión Mensajero a Ventormenta
    .accept 121 >> Acepta la misión Mensajero a Ventormenta
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >> Viaja a Villadorada
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
	.target Smith Argus
    .turnin 118 >> Entrega la misión El precio de unas herraduras
    .accept 119 >> Acepta la misión Regresa junto a Verner
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> Viaja a la Torre de Azora. Sube la torre
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto
    .accept 94 >> Acepta la misión Un ojo vigilante
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    .zone Redridge Mountains >>Viaja a Montañas Crestagrana
    .fly Redridge >> Vuela a Crestagrana
    >>|cRXP_WARN_Si estás en Villadorada será más rápido volar desde Ventormenta|r
	>>|cRXP_WARN_Si estás en la Torre de Azora simplemente corre a Montañas Crestagrana|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Entrega la misión Regresa junto a Verner
    .accept 124 >> Acepta la misión El aullido de los gnolls
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Acepta la misión Escamas de barriga
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magistrado Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Entrega la misión Mensajero a Ventormenta
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Entrega la misión El collar de Hilary
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de embarcadero Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Entrega la misión Pescado a la venta
    .accept 150 >> Acepta la misión Cazadores furtivos
    .turnin 150 >> Entrega la misión Cazadores furtivos
step
#optional
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Entrega la misión Una visita al herborista
    .accept 131 >> Acepta la misión Un ramo de narcisos
step
    #xprate <1.2
	#completewith next
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #xprate <1.5
    >>Mata a los |cRXP_ENEMY_Gran dentosangre|r. Despójalos para obtener sus |cRXP_LOOT_Morros de gran Dentosangre|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que despojes, ya que los puedes usar para subir|r |T133971:0|t[Cocina] |cRXP_WARN_al 50, lo cual es necesario para Bosque del Ocaso más adelante|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
    #xprate <1.2
	#completewith next
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
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
    #xprate <1.2
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Mata a las |cRXP_ENEMY_Crías de dragón Negro|r. Despójalas para obtener sus |cRXP_LOOT_Escamas|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_camina por dentro de la Posada|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Entrega la misión Un ramo de narcisos
step
    #xprate <1.2
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_Sube tu|r |T133971:0|t[Cocina] |cRXP_WARN_usando|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que farmeaste anteriormente. Necesitas nivel 50 de habilidad de|r |T133971:0|t[Cocina]
    +|cRXP_WARN_Si necesitas más|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_viaja hacia el oeste cerca de|r |cRXP_ENEMY_Panzallena|r |cRXP_WARN_y mata más|r |cRXP_ENEMY_Gran dentosangre|r
    .skill cooking,50,1
    .mob Great Goretusk
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Entrega la misión El aullido de los gnolls
    .turnin 122 >> Entrega la misión Escamas de barriga
step
    #xprate >1.0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verner Osbien|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Entrega la misión El aullido de los gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Entrega la misión El puente sempiterno
]])

----End of <1.59x Redridge----
----Start of Hunter-only Darkshore/Ashen (Needs to be merged)----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
#season 0
<< Alliance Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 19-21 Costa Oscura/Vallefresno
#next RestedXP Alianza 20-30\21-23 Vallefresno/Sierra Espolón

step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon DM
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
    #xprate >1.49
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
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    #xprate >1.49
    #label SeaCreatureEnd
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r
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
    >>|cRXP_WARN_Esta es una misión cronometrada, tienes que escoltarlo todo el camino a Vallefresno en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
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
    .goto Darkshore,35.72,83.69
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
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #xprate <1.5
    #optional
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r
step
    #xprate <1.5
    #optional
    .goto 1439,31.229,85.564
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
	#xprate <1.5
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>Ten cuidado ya que lanzan |T132152:0|t[Devastar] un ataque instantáneo infligiendo 20-40 de daño y |cRXP_WARN_derribándote durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5
    .goto Darkshore,41.389,80.565
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isOnQuest 1003
step
    #xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Limpia a los fúrbolg cerca de la cueva antes de hablar con él|r
    .turnin 993 >> Entrega la misión El maestro perdido
    .accept 994 >> Acepta la misión Escaparse por la fuerza
    .target Volcor
    .isOnQuest 993
step
    #xprate <1.5
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Limpia a los fúrbolg cerca de la cueva antes de hablar con él|r
    .accept 994 >> Acepta la misión Escaparse por la fuerza
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate >1.59
    #optional
    #completewith Escaped
    .goto Darkshore,39.2,43.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Selarin|r si está disponible
    .accept 990 >> Acepta la misión El camino de Vallefresno
    .target Sentinel Selarin
step
	#xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Entrega la misión El maestro perdido
    .accept 995 >> Acepta la misión Escaparse furtivamente
    .target Volcor
    .isOnQuest 993
step
	#xprate >1.49
    #optional
    #label Escaped
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .accept 995 >> Acepta la misión Escaparse furtivamente
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate <1.5
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
	#xprate >1.49
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 995,1 --Help Volcor escape the cave (1)
    .isQuestTurnedIn 993
step
    #xprate >1.49
    #optional
    #completewith tower
    .equip 15 >>|cRXP_WARN_Vuelve a equipar tu anterior|r |T133762:0|t[Capa]
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
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
    >>|cRXP_WARN_Esta es una misión cronometrada, tienes que escoltarlo todo el camino a Vallefresno en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
step
    #sticky
    #completewith Kerlonian
    >>Mata y saquea a los |cRXP_WARN_Corredores Garraespectro|r que encuentres mientras haces misiones. Guarda los |T133970:0|t[|cRXP_LOOT_Costillares de lobo magro|r] que obtengas. Necesitarás 10 para una misión de cocina más tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label Kerlonian
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r hasta Atalaya de Maestra en Vallefresno|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Entrega la misión El despertar
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >> Acepta la misión La Torre de Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .xp <20,1
step
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Mata a los |cRXP_ENEMY_Cultores de la Facción Oscura|r, |cRXP_ENEMY_Adeptos de la Facción Oscura|r, |cRXP_ENEMY_Déspotas de la Facción Oscura|r y |cRXP_ENEMY_Excavadores de la Facción Oscura|r. Despójalos para obtener su |cRXP_LOOT_Gema de alma resplandeciente|r
    >>Sé paciente, este objeto tiene una baja tasa de caída
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
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Sigue matando a los |cRXP_ENEMY_miembros de la Facción Oscura|r hasta que tengas suficiente experiencia para alcanzar el nivel 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Mata enemigos hasta subir al nivel 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acepta la misión Cabello de Bathran
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
    #sticky
    #completewith Astranaar
    >>Mata y saquea a los |cRXP_WARN_Corredores Garraespectro|r que encuentres mientras haces misiones. Guarda los |T133970:0|t[|cRXP_LOOT_Costillares de lobo magro|r] que obtengas. Necesitarás 10 para una misión de cocina más tarde
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >> Entrega la misión La fuga de Therylune
    .isQuestComplete 945
step << Hunter
    #xprate <1.59
    .goto 1440/1,522.900,2716.100,30 >> Sube por la rampa hacia el noroeste
step
    #xprate <1.59
    #completewith Astranaar
    >>Guarda hasta 6 |cRXP_LOOT_Patas pegajosas de araña|r despojadas de las |cRXP_ENEMY_Arañas|r de la zona para más tarde
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #xprate <1.59
    #sticky
    .goto Ashenvale,17.976,60.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Aprende las habilidades de tu mascota
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    #xprate <1.59
    .goto Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Aprende tus habilidades de clase
    .train 5118 >> Aprende |T132242:0|t[Aspecto del guepardo]
    .target Alenndaar Lapidaar
step
    #label Astranaar
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Acepta la misión Estar de guardia en Espolón
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Acepta la misión Viaje a Cima del Espolón
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Acepta la misión La limpieza de Raene
    .accept 1054 >> Acepta la misión Matanza selectiva
step
    #label HCHunterNoHS --hidden step for #include
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    #xprate <1.59
    .goto Ashenvale,36.6,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Compra comida y agua si es necesario|r
    .target Maliynn
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
step << Hunter
    #xprate <1.59
    .goto Ashenvale,34.8,50.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haljan Roblezón|r
    .vendor >> |cRXP_BUY_Reabastécete de munición si es necesario|r
    .target Haljan Oakheart
step
    #xprate <1.59
    #completewith ElunesTear
    >>Guarda hasta 6 |cRXP_LOOT_Patas pegajosas de araña|r despojadas de las |cRXP_ENEMY_Arañas|r de la zona. Las necesitarás para una misión más tarde
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #xprate <1.59
    .goto Ashenvale,46.37,46.38
    >>Despoja la |cRXP_LOOT_Lágrima de Elune|r del suelo
    .complete 1033,1
step
    #xprate <1.59
    #label ElunesTear
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Entrega la misión Lágrima de Elune
    .timer 17,Lágrima de Elune "Roleplay"
    .accept 1034 >> Acepta la misión Las Ruinas del Polvo Estelar
step
    #xprate <1.59
    .goto Ashenvale,33.30,67.79
    >>Despoja los |cRXP_PICK_Arbustos cubiertos de polvo estelar|r para obtener el |cRXP_LOOT_Puñado de Polvo estelar|r
    >>|cRXP_WARN_Sus puntos de aparición están dispersos por toda la isla|r
    .complete 1034,1
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Ve a la base de la montaña
    .goto Ashenvale,31.21,61.60,15 >>Corre directamente al norte mientras escalas la montaña
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,27.50,60.76,8 >> Sube a la colina junto al árbol grande a la derecha de la entrada del Santuario de la Escara
    >>Salta sobre la raíz del árbol y mantente cerca del lado derecho para evitar atraer la atención de enemigos
step
    #xprate <1.5
    .goto Ashenvale,25.27,60.68
    >>Mata a |cRXP_ENEMY_Ilkrud Magthrull|r. Despójalo para obtener su |cRXP_LOOT_Escrito|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_lanzará|r |T136221:0|t[Guardianes de Ilkrud] |cRXP_WARN_que es un lanzamiento de 5 segundos e invocará 2 Abisarios. Detén este lanzamiento si puedes|r
    >>|cRXP_WARN_Despeja una ruta de salida si es necesario para poder reiniciar los enemigos junto con la |cRXP_ENEMY_Súcubo|r si es necesario. Puedes omitir esto y hacerlo al nivel 23 si lo deseas|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Haz clic aquí para ver la referencia en vídeo|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    #xprate <1.5
    .isQuestComplete 973
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 973 >> Entrega la misión La Torre de Althalaxx
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate <1.59
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
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acepta la misión La estatuilla antigua
step
    #xprate <1.59
    #completewith nagas
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    >>|cRXP_WARN_No te desvíes para completar esto aún|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    #xprate <1.59
    .goto Ashenvale,14.20,20.64
    >>Despoja la |cRXP_LOOT_Estatuilla antigua|r del suelo
    .complete 1007,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Entrega la misión La estatuilla antigua
    .timer 22,La estatuilla antigua Roleplay
    .accept 1009 >> Acepta la misión Ruuzel
step
    #xprate <1.59
    .goto Ashenvale,6.528,13.361
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
    #xprate <1.59
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Mata a |cRXP_ENEMY_Ruuzel|r. Despójala para obtener el |cRXP_LOOT_Anillo de Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrulla la isla con un |cRXP_ENEMY_Mirmidón Colafuria|r y |cRXP_ENEMY_Bruja de mar Colafuria|r. Mata uno de ellos y luego reinícialos si es necesario|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_es una criatura rara que también puede soltar el |cRXP_LOOT_Anillo de Zoram|r si la ves|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    #xprate <1.59
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
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Entrega la misión Ruuzel
step
    #xprate <1.59
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
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver de Teronis|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >> Entrega la misión La limpieza de Raene
    .accept 1023 >> Acepta la misión La limpieza de Raene
step
    #sticky
    #completewith GlowingGem
    >>Guarda cualquier |T134304:0|t[Aleta de múrloc] que puedas despojar. Necesitarás 8 para una misión más tarde
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    #xprate <1.59
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Mata a los |cRXP_ENEMY_Múrlocs Gapo Salino|r. Despójalos para obtener la |cRXP_LOOT_Gema resplandeciente|r
    >>|cRXP_WARN_Ten cuidado porque los |cRXP_ENEMY_Oráculos|r pueden curarse y lanzar un hechizo de choque instantáneo de 90 de daño cada pocos segundos|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter
    #xprate <1.59
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
step << !Dwarf/!Hunter
    #xprate <1.59
    #softcore
    #completewith next
    .deathskip >> Muere en la orilla oriental del lago y resucita en Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    #hardcore
    #completewith next
    .goto Ashenvale,34.40,48.00,200 >> Viaja a Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Vuela a Costa Oscura
    .target Daelyshia
step
    #xprate <1.59
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    #xprate <1.59
    #completewith end
    .vendor >> Reaprovisionar/Reabastecimiento
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Entrega la misión Escaparse furtivamente
    .target Terenthis
    .isOnQuest 995
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Entrega la misión Escaparse por la fuerza
    .target Terenthis
    .isOnQuest 994
step
    #xprate <1.59
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Entrega la misión Criatura marina varada
    .turnin 4731 >> Entrega la misión Tortuga marina varada
    .turnin 4732 >> Entrega la misión Tortuga marina varada
    .turnin 4733 >> Entrega la misión Criatura marina varada
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
	.target Caylais Moonfeather
step
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Aprende tus hechizos de clase
    .xp <22,1
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garryeth|r
    .goto Darnassus,40.0,42.2
    .bankdeposit 5996,1468,2251,1015 >> Deposita los siguientes objetos en tu banco
    .target Garryeth
    >>|T134797:0|t[Elixir de respiración acuática] --5996
    >>|T134304:0|t[Aletas de múrloc] --1468
    >>|T134321:0|t[Patas pegajosas de araña] --2251
    >>|T133970:0|t[Costillar de lobo magro] --1015
step << Dwarf Hunter
    #xprate <1.59
-- #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Aprende el uso de Arcos
    .train 227 >> Aprende el uso de Bastones
    .target Ilyenia Moonfire
    .dungeon DM
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
    .isOnQuest 741
step
    #optional
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >> Acepta la misión El prospector despistado
    .isQuestTurnedIn 741
step << !Dwarf/!Hunter
    #xprate <1.59
    #label end
    .hs >> Usa tu Piedra de hogar para ir a Astranaar
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter
    #xprate <1.59
    #label end
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Vuela a Vallefresno
    .target Vesprystus
    .zoneskip Ashenvale
]])


----End of Hunter-only Darkshore/Ashen (Needs to be merged)----


RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0
#version 1
<< Alliance !Hunter
#season 0
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 20-21 Costa Oscura/Vallefresno
#next Alianza 20-30\21-23 Espolón/Vallefresno;RestedXP Alianza 20-30\21-22 Vallefresno SoD


step << Druid
    #xprate <1.59
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #xprate <1.59
    .goto Moonglade,52.53,40.57
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step
    #xprate <1.59
    #optional
    #completewith TheryluneE
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
step
    .goto Darkshore,37.21,44.22
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    #xprate <1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
    .isOnQuest 3765
--  .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gershala Susurro Nocturno|r
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
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
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>Ten cuidado ya que lanzan |T132152:0|t[Devastar] un ataque instantáneo infligiendo 20-40 de daño y |cRXP_WARN_derribándote durante 2 segundos|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Viaja al Páramo de los Ancianos
step
    #xprate >1.49
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 951 >> Entrega la misión Las reliquias de Mathystra
    .target Onu
    .isQuestComplete 951
step
    #xprate >1.49
    #label OnuGrove
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 948 >> Entrega la misión Onus
    .target Onu
    .isOnQuest 948
step
    #xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Entrega la misión El maestro perdido
    .accept 995 >> Acepta la misión Escaparse furtivamente
    .timer 20,Escaparse furtivamente Roleplay
    .target Volcor
    .isOnQuest 993
step
    #xprate >1.49
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .accept 995 >> Acepta la misión Escaparse furtivamente
    .timer 20,Escaparse furtivamente Roleplay
    .target Volcor
    .isQuestTurnedIn 993
step
    #xprate >1.49
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 995,1 --Help Volcor escape the cave (1)
    .isOnQuest 995
step
    #xprate >1.49
    #optional
    #completewith Murkdeep
    .equip 15 >>|cRXP_WARN_Vuelve a equipar tu anterior|r |T133762:0|t[Capa]
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    #xprate <1.5
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 952 >> Entrega la misión El Páramo de los Ancianos << NightElf
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    #xprate <1.5
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >> Viaja a La Espada del Maestro
    .subzoneskip 449
    .isOnQuest 944
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
    #xprate <1.5
    #optional
    .goto Darkshore,38.54,86.05
    >>Descubre La Espada del Maestro
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #xprate <1.5
    #completewith next
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    #xprate <1.5
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    #xprate <1.5
    .goto 1439,38.537,86.050
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therylune|r. Esto iniciará una escolta
    >>|cRXP_WARN_Omite este paso si ella no está allí|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Acompaña a |cRXP_FRIENDLY_Therylune|r fuera de La Espada del Maestro|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith prospectorEscort
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>Ten cuidado ya que lanzan |T132152:0|t[Devastar] un ataque instantáneo infligiendo 20-40 de daño y |cRXP_WARN_derribándote durante 2 segundos|r
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
    .goto Darkshore,35.72,83.69
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
    #xprate <1.5
    #optional
    #completewith Murkdeep
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
    #xprate >1.49
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
    #xprate >1.49
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
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r
step
    #xprate <1.5
    .goto 1439,31.229,85.564
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
    #xprate <1.5
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
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
    #xprate <1.5
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
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Mata a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludos|r
    >>Ten cuidado ya que lanzan |T132152:0|t[Devastar] un ataque instantáneo infligiendo 20-40 de daño y |cRXP_WARN_derribándote durante 2 segundos|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto Darkshore,41.389,80.565
    >>Haz clic en la |cRXP_PICK_Caja mecánica 525|r del suelo
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .isOnQuest 1003
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 951 >> Entrega la misión Las reliquias de Mathystra
    .target Onu
    .isQuestComplete 951
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .target Onu
step
    #xprate <1.5
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    >>|cRXP_WARN_Esta es una misión cronometrada, tienes que escoltarlo todo el camino a Vallefresno en 20 minutos|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
step
    #xprate <1.5
    .goto Darkshore,44.38,76.30
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
#xprate <1.5
    #completewith volcorEnd
    .goto Ashenvale,27.26,35.58
    +|cRXP_FRIENDLY_Kerlonian|r te seguirá y ocasionalmente te ayudará en combate. |cRXP_WARN_Asegúrate de no perderlo ya que dejará de moverse cuando se duerma. Tienes 25 minutos para llegar a Vallefresno y completar esta misión|r
    .use 13536 >> |cRXP_WARN_Usa el|r |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] |cRXP_WARN_siempre que |cRXP_FRIENDLY_Kerlonian|r se quede dormido mientras estás a su lado para despertarlo|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .isOnQuest 5321
step
#xprate <1.5
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Viaja hacia |cRXP_FRIENDLY_Volcor|r en la cueva
    .isOnQuest 993
step
#xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Entrega la misión El maestro perdido
    .accept 995 >> Acepta la misión Escaparse furtivamente
    .timer 20,Escaparse furtivamente Roleplay
    .target Volcor
step
#xprate <1.5
    #label volcorEnd
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 995,1
    .isOnQuest 995
step -- adjusted to heading there straight from southern most beached sea creature
#xprate >1.49
    #completewith tower
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,25.77,14.55
step
#xprate <1.50
    #completewith tower
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
step
#xprate <1.5
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r hasta Atalaya de Maestra en Vallefresno|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Entrega la misión El despertar
    .isQuestComplete 5321
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>Habla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .turnin 78088 >> Entrega la misión Un Artefacto extraño
    .accept 78089 >> Acepta la misión Consejo en Ventormenta
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step << Paladin
    #season 2
    #label tower
    #optional
    .goto Ashenvale,26.19,38.69
    >>Habla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .accept 78089 >> Acepta la misión Consejo en Ventormenta
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step << !Warlock
    #season 0,1 << Paladin
	#xprate >1.49
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    #season 0,1 << Paladin
	#xprate <1.5 << !Warlock
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
    .accept 970 >> Acepta la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    #xprate <1.59
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .xp <20,1
step
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Mata a los |cRXP_ENEMY_Cultores de la Facción Oscura|r y a los |cRXP_ENEMY_Adeptos de la Facción Oscura|r. Despójalos para obtener la |cRXP_LOOT_Gema de alma resplandeciente|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Sigue matando a los |cRXP_ENEMY_miembros de la Facción Oscura|r hasta que tengas suficiente experiencia para alcanzar el nivel 20
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    #xprate <1.59
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Entrega la misión La Torre de Althalaxx
    .accept 973 >> Acepta la misión La Torre de Althalaxx
step
    #xprate <1.59
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Mata enemigos hasta subir al nivel 20
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .accept 1010 >> Acepta la misión Cabello de Bathran
    .target Orendil Broadleaf
step
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    >>|cRXP_WARN_Asegúrate de tener|r |T134916:0|t[Buscar hierbas] |cRXP_WARN_activado para verlas en el minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Se ven como pequeños sacos marrones y pueden estar parcialmente enterrados en el suelo. Pueden ser difíciles de ver|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
    .target Orendil Broadleaf
step
    #xprate >1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >> Entrega la misión La fuga de Therylune
    .isQuestComplete 945
step
    #optional
    #completewith TZS
    .subzone 415 >> Viaja a Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shindrell Fuegoveloz|r
    .accept 1008 >> Acepta la misión La Ensenada de Zoram
    .target Shindrell Swiftfire
step
    #xprate <1.59
    .goto Ashenvale,34.89,49.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Thenysil|r
    .accept 1070 >> Acepta la misión Estar de guardia en Espolón
    .target Sentinel Thenysil
step
    #xprate <1.59
    .goto Ashenvale,35.76,49.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Acepta la misión Viaje a Cima del Espolón
    .target Faldreas Goeth'Shael
step
    #xprate <1.59
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raene Correlobo|r
    .accept 991 >> Acepta la misión La limpieza de Raene
    .accept 1054 >> Acepta la misión Matanza selectiva
    .target Raene Wolfrunner
step << !Warlock
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home 415 >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
    .timer 24,Cura de Orendil RP
    .accept 1033 >> Acepta la misión Lágrima de Elune
]])
