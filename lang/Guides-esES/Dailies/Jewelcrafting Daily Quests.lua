if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Misiones diarias de Rasganorte
#subgroup Misiones diarias de profesión
#wotlk
#cata
#name Joyería

step
	.goto Dalaran,40.67,35.35
	>> Para comenzar las misiones diarias de Joyería, primero debes completar la misión Acabar el envío, que requiere que lleves a |cRXP_FRIENDLY_Timothy Jones|r en Dalaran una |cRXP_LOOT_Chalcedony|r
	.collect 36923,1 --Chalcedony (1)
	.isQuestAvailable 13041
	.target Timothy Jones
step
	>>Habla con |cRXP_FRIENDLY_Timothy Jones|r
    .goto Dalaran,40.67,35.35
    .accept 13041 >>Acepta la misión Acabar el envío
	.complete 13041,1 --Chalcedony (1)
    .turnin 13041 >>Entrega la misión Acabar el envío
	.isQuestAvailable 13041
step
	.goto Dalaran,40.67,35.35
	.daily 12958,12959,12960,12961,12962,12963 >> Habla con |cRXP_FRIENDLY_Timothy Jones|r en Dalaran. Tiene 1 de 6 misiones diarias de Joyería. Acepta la que esté disponible
	>>Cargamento: Amuleto de jade de sangre -- 12958
	>>Envío: figurilla de marfil resplandeciente -- 12959
	>>Envío: broche de sol maligno -- 12960
	>>Envío: figurilla de hueso intrincada -- 12961
	>>Envío: reliquia de armadura brillante -- 12962
	>>Cargamento: Bibelot de sol cambiante -- 12963
	.target Timothy Jones
-- Quest: Shipment: Blood Jade Amulet -- 12958
step
	#completewith Amulet
	>>Recoge un |cRXP_LOOT_Dark Jade|r y una |cRXP_LOOT_Sangrita|r y luego combina con un |cRXP_LOOT_Vrykul Amulet|r
	.collect 36932,1 --Dark Jade (1)
	.collect 36917,1 --Bloodstone (1)
	.isOnQuest 12958
step
	.goto TheStormPeaks,22.50,59.67,60,0
	.goto TheStormPeaks,23.46,59.89,60,0
	.goto TheStormPeaks,25.31,59.98,60,0
	.goto TheStormPeaks,26.29,59.11,60,0
	.goto TheStormPeaks,27.57,60.98,60,0
	.goto TheStormPeaks,26.10,62.50
	>>Mata a los |cRXP_ENEMY_Valkyrion Aspirants|r en Las Cumbres Tormentosas para obtener el |cRXP_LOOT_Vrykul Amulet|r
	.collect 41989,1 --Vrykul Amulet (1)
	.isOnQuest 12958
	.mob Valkyrion Aspirant
step
	#label Amulet
	.use 41989 >>Usa el |cRXP_LOOT_Vrykul Amulet|r en tu inventario para combinar el |cRXP_LOOT_Dark Jade|r y la |cRXP_LOOT_Bloodstone|r para crear un |cRXP_LOOT_Amuleto de jade de sangre|r
	.complete 12958,1 --Blood Jade Amulet (1)
	.isOnQuest 12958
step << Mage
	.zone Dalaran >> Teletranspórtate a Dalaran
step
	>>Habla con |cRXP_FRIENDLY_Timothy Jones|r en Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12958 >>Entrega la misión Envío: amuleto de jade de sangre
	.isQuestComplete 12958
	.target Timothy Jones

-- Quest: Shipment: Glowing Ivory Figurine -- 12959
step
	#completewith Ivory
	>>Recoge una |cRXP_LOOT_Chalcedony|r y un |cRXP_LOOT_Shadow Cristal|r y luego combina con un |cRXP_LOOT_Northern Ivory|r
	.collect 36923,1 --Chalcedony (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12959
step
	.goto Dragonblight,67.00,31.04,60,0
	.goto Dragonblight,65.94,36.65,60,0
	.goto Dragonblight,65.00,45.69,60,0
	.goto Dragonblight,56.41,48.12
	>>Mata a los |cRXP_FRIENDLY_Emaciated Mammoths|r en Cementerio de Dragones para obtener el |cRXP_LOOT_Northern Ivory|r
	.collect 42104,1 --Northern Ivory (1)
	.isOnQuest 12959
	.mob Emaciated Mammoth
	.mob Emaciated Mammoth Calf
	.mob Emaciated Mammoth Bull
step
	#label Ivory
	.use 42104 >>Usa el |cRXP_LOOT_Northern Ivory|r en tu inventario para combinar la |cRXP_LOOT_Chalcedony|r y un |cRXP_LOOT_Shadow Cristal|r para crear una |cRXP_LOOT_Figurilla de marfil resplandeciente|r
	.complete 12959,1 --Glowing Ivory Figurine (1)
	.isOnQuest 12959
step << Mage
	.zone Dalaran >> Teletranspórtate a Dalaran
step
	>>Habla con |cRXP_FRIENDLY_Timothy Jones|r en Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12959 >>Entrega la misión Envío: figurilla de marfil resplandeciente
	.isQuestComplete 12959
	.target Timothy Jones

-- Quest: Shipment: Wicked Sun Brooch -- 12960
step
	#completewith Brooch
	>>Recoge un |cRXP_LOOT_Huge Citrine|r y un |cRXP_LOOT_Sun Cristal|r y luego combina con un |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 36929,1 --Huge Citrine (1)
	.collect 36920,1 --Sun Crystal (1)
	.isOnQuest 12960
step
	.goto TheStormPeaks,26.82,66.90,40,0
	.goto TheStormPeaks,26.13,66.93,30,0
	.goto TheStormPeaks,26.00,67.60,20,0
	.goto TheStormPeaks,26.82,66.90
	>>Entra en la cueva del Aliento de Bor en Las Cumbres Tormentosas. Mata a los |cRXP_FRIENDLY_Stormforged Dwarves|r para obtener el |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 42105,1 --Iron Dwarf Brooch (1)
	.isOnQuest 12960
step
	#label Brooch
	.use 42105 >>Usa el |cRXP_LOOT_Iron Dwarf Brooch|r en tu inventario para combinar el |cRXP_LOOT_Huge Citrine|r y el |cRXP_LOOT_Sun Cristal|r para crear un |cRXP_LOOT_Broche de sol maligno|r
	.complete 12960,1 --Wicked Sun Brooch (1)
	.isOnQuest 12960
step << Mage
	.zone Dalaran >> Teletranspórtate a Dalaran
step
	>>Habla con |cRXP_FRIENDLY_Timothy Jones|r en Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12960 >>Entrega la misión Envío: broche de sol maligno
	.isQuestComplete 12960
	.target Timothy Jones

-- Quest: Shipment: Intricate Bone Figurine -- 12961
step
	#completewith Figurine
	>>Recoge un |cRXP_LOOT_Sun Cristal|r y un |cRXP_LOOT_Dark Jade|r y luego combina con un |cRXP_LOOT_Proto Dragón Hueso|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36932,1 --Dark Jade (1)
	.isOnQuest 12961
step
	.goto TheStormPeaks,45.77,67.09,60,0
	.goto TheStormPeaks,43.80,64.03,70,0
	.goto TheStormPeaks,45.80,62.52
	>>Mata a los |cRXP_ENEMY_Stormpeak Proto Drakes|r en Las Cumbres Tormentosas para obtener el |cRXP_LOOT_Proto Dragón Hueso|r
	.collect 42106,1 --Proto Dragon Bone (1)
	.isOnQuest 12961
	.mob Stormpeak Wyrm
	.mob Stormpeak Hatchling
step
	#label Figurine
	.use 42106 >>Usa el |cRXP_LOOT_Proto Dragón Hueso|r en tu inventario para combinar el |cRXP_LOOT_Sun Cristal|r y el |cRXP_LOOT_Dark Jade|r para crear una |cRXP_LOOT_Figurilla de hueso intrincada|r
	.complete 12961,1 --Intricate Bone Figurine (1)
	.isOnQuest 12961
step << Mage
	.zone Dalaran >> Teletranspórtate a Dalaran
step
	>>Habla con |cRXP_FRIENDLY_Timothy Jones|r en Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12961 >>Entrega la misión Envío: figurilla de hueso intrincada
	.isQuestComplete 12961
	.target Timothy Jones
-- Quest: Shipment: Bright Armor Relic -- 12962
step
	#completewith Relic
	>>Recoge una |cRXP_LOOT_Sangrita|r y un |cRXP_LOOT_Huge Citrine|r y luego combina con un |cRXP_LOOT_Elemental Armadura Chatarra|r
	.collect 36917,1 --Bloodstone (1)
	.collect 36929,1 --Huge Citrine (1)
	.isOnQuest 12962
step
	.goto Dragonblight,57.83,14.22,50,0
	.goto Dragonblight,58.62,16.39,50,0
	.goto Dragonblight,54.77,19.10
	>>Mata a los |cRXP_ENEMY_Crystalline Ice Elementals|r en Cementerio de Dragones para obtener la |cRXP_LOOT_Elemental Armadura Chatarra|r
	.collect 42107,1 --Elemental Armor Scrap (1)
	.isOnQuest 12962
	.mob Crystalline Ice Elemental
step
	#label Relic
	.use 42107 >>Usa la |cRXP_LOOT_Elemental Armadura Chatarra|r en tu inventario para combinar la |cRXP_LOOT_Bloodstone|r y un |cRXP_LOOT_Huge Citrine|r para crear una |cRXP_LOOT_Reliquia de armadura brillante|r
	.complete 12962,1 --Bright Armor Relic (1)
	.isOnQuest 12962
step << Mage
	.zone Dalaran >> Teletranspórtate a Dalaran
step
	>>Habla con |cRXP_FRIENDLY_Timothy Jones|r en Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12962 >>Entrega la misión Envío: reliquia de armadura brillante
	.isQuestComplete 12962
	.target Timothy Jones

-- Quest: Shipment: Shifting Sun Curio -- 12963
step
	#completewith Curio
	>>Recoge un |cRXP_LOOT_Sun Cristal|r y un |cRXP_LOOT_Shadow Cristal|r y luego combina con una |cRXP_LOOT_Scourge Singularidad|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12963
step
	.goto Icecrown,70.77,68.13,50,0
	.goto Icecrown,68.66,68.07
	>>Mata a los |cRXP_ENEMY_Hulking Abominations|r o a los |cRXP_ENEMY_Malefic Necromancers|r en Corona de Hielo para obtener la |cRXP_LOOT_Scourge Singularidad|r
	.collect 42108,1 --Scourge Curio (1)
	.isOnQuest 12963
	.mob Hulking Abominations
	.mob Malefic Necromancer
step
	#label Curio
	.use 42108 >>Usa la |cRXP_LOOT_Scourge Singularidad|r en tu inventario para combinar el |cRXP_LOOT_Sun Cristal|r y un |cRXP_LOOT_Shadow Cristal|r para crear una |cRXP_LOOT_Bibelot de sol cambiante|r
	.complete 12963,1 --Shifting Sun Curio (1)
	.isOnQuest 12963
step << Mage
	.zone Dalaran >> Teletranspórtate a Dalaran
step
	>>Habla con |cRXP_FRIENDLY_Timothy Jones|r en Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12963 >>Entrega la misión Envío: reliquia de armadura brillante
	.isQuestComplete 12963
	.target Timothy Jones
step
	+Has terminado la misión diaria de Joyería de hoy
]])