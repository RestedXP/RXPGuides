if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Profissão
#wotlk
#cata
#name Joalheria

step
	.goto Dalaran,40.67,35.35
	>>Para começar as missões diárias de Joalheria, você deve primeiro completar a missão Toque final na encomenda, que requer que você traga |cRXP_FRIENDLY_Timothy Jones|r em Dalaran um |cRXP_LOOT_Chalcedony|r
	.collect 36923,1 --Chalcedony (1)
	.isQuestAvailable 13041
	.target Timothy Jones
step
	>>Fale com |cRXP_FRIENDLY_Timothy Jones|r
    .goto Dalaran,40.67,35.35
    .accept 13041 >>Aceite Toque Final na Encomenda
	.complete 13041,1 --Chalcedony (1)
    .turnin 13041 >>Entregue Toque Final na Encomenda
	.isQuestAvailable 13041
step
	.goto Dalaran,40.67,35.35
	.daily 12958,12959,12960,12961,12962,12963 >>Fale com |cRXP_FRIENDLY_Timothy Jones|r em Dalaran. Ele tem 1 de 6 missões diárias de Joalheria. Aceite qual for disponível
	>>Carregamento: Amuleto de Jade Sangrento -- 12958
	>>Remessa: Estatueta de Mármore Faiscante -- 12959
	>>Remessa: Broche Solar Perverso -- 12960
	>>Remessa: Estatueta de Osso Intrincada -- 12961
	>>Remessa: Relíquia de Armadura Brilhante -- 12962
	>>Carregamento: Antiguidade Solar Cambiante -- 12963
	.target Timothy Jones
-- Quest: Shipment: Blood Jade Amulet -- 12958
step
	#completewith Amulet
	>>Colete a |cRXP_LOOT_Dark Jade|r e a |cRXP_LOOT_Pedra-sangrenta|r e depois combine com um |cRXP_LOOT_Vrykul Amulet|r
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
	>>Mate os |cRXP_ENEMY_Valkyrion Aspirants|r em Picos Tempestuosos para obter o |cRXP_LOOT_Vrykul Amulet|r
	.collect 41989,1 --Vrykul Amulet (1)
	.isOnQuest 12958
	.mob Valkyrion Aspirant
step
	#label Amulet
	.use 41989 >>Usar o |cRXP_LOOT_Vrykul Amulet|r na mochila para combinar o |cRXP_LOOT_Dark Jade|r e a |cRXP_LOOT_Pedra-sangrenta|r e criar um |cRXP_LOOT_Amuleto de Jade Sangrento|r
	.complete 12958,1 --Blood Jade Amulet (1)
	.isOnQuest 12958
step << Mage
	.zone Dalaran >>Vá para Dalaran
step
	>>Fale com |cRXP_FRIENDLY_Timothy Jones|r em Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12958 >>Entregue Carregamento: Amuleto de Jade Sangrento
	.isQuestComplete 12958
	.target Timothy Jones

-- Quest: Shipment: Glowing Ivory Figurine -- 12959
step
	#completewith Ivory
	>>Colete a |cRXP_LOOT_Chalcedony|r e a |cRXP_LOOT_Shadow Cristal|r e depois combine com uma |cRXP_LOOT_Northern Ivory|r
	.collect 36923,1 --Chalcedony (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12959
step
	.goto Dragonblight,67.00,31.04,60,0
	.goto Dragonblight,65.94,36.65,60,0
	.goto Dragonblight,65.00,45.69,60,0
	.goto Dragonblight,56.41,48.12
	>>Abate os |cRXP_FRIENDLY_Emaciated Mammoths|r em Ermo das Serpes para o |cRXP_LOOT_Northern Ivory|r
	.collect 42104,1 --Northern Ivory (1)
	.isOnQuest 12959
	.mob Emaciated Mammoth
	.mob Emaciated Mammoth Calf
	.mob Emaciated Mammoth Bull
step
	#label Ivory
	.use 42104 >>Usar a |cRXP_LOOT_Northern Ivory|r na mochila para combinar a |cRXP_LOOT_Chalcedony|r e a |cRXP_LOOT_Shadow Cristal|r e criar uma |cRXP_LOOT_Estatueta de Mármore Faiscante|r
	.complete 12959,1 --Glowing Ivory Figurine (1)
	.isOnQuest 12959
step << Mage
	.zone Dalaran >>Vá para Dalaran
step
	>>Fale com |cRXP_FRIENDLY_Timothy Jones|r em Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12959 >>Entregue Remessa: Estatueta de Mármore Faiscante
	.isQuestComplete 12959
	.target Timothy Jones

-- Quest: Shipment: Wicked Sun Brooch -- 12960
step
	#completewith Brooch
	>>Colete a |cRXP_LOOT_Huge Citrine|r e a |cRXP_LOOT_Sun Cristal|r e depois combine com um |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 36929,1 --Huge Citrine (1)
	.collect 36920,1 --Sun Crystal (1)
	.isOnQuest 12960
step
	.goto TheStormPeaks,26.82,66.90,40,0
	.goto TheStormPeaks,26.13,66.93,30,0
	.goto TheStormPeaks,26.00,67.60,20,0
	.goto TheStormPeaks,26.82,66.90
	>>Entre na caverna Bor's Sopro em Picos Tempestuosos neste local. Mate os |cRXP_FRIENDLY_Stormforged Dwarves|r para obter o |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 42105,1 --Iron Dwarf Brooch (1)
	.isOnQuest 12960
step
	#label Brooch
	.use 42105 >>Usar o |cRXP_LOOT_Iron Dwarf Brooch|r na mochila para combinar a |cRXP_LOOT_Huge Citrine|r e a |cRXP_LOOT_Sun Cristal|r e criar um |cRXP_LOOT_Broche Solar Perverso|r
	.complete 12960,1 --Wicked Sun Brooch (1)
	.isOnQuest 12960
step << Mage
	.zone Dalaran >>Vá para Dalaran
step
	>>Fale com |cRXP_FRIENDLY_Timothy Jones|r em Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12960 >>Entregue Remessa: Broche Solar Perverso
	.isQuestComplete 12960
	.target Timothy Jones

-- Quest: Shipment: Intricate Bone Figurine -- 12961
step
	#completewith Figurine
	>>Colete a |cRXP_LOOT_Sun Cristal|r e a |cRXP_LOOT_Dark Jade|r e depois combine com um |cRXP_LOOT_Proto Dragão Osso|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36932,1 --Dark Jade (1)
	.isOnQuest 12961
step
	.goto TheStormPeaks,45.77,67.09,60,0
	.goto TheStormPeaks,43.80,64.03,70,0
	.goto TheStormPeaks,45.80,62.52
	>>Mate os |cRXP_ENEMY_Stormpeak Proto Drakes|r em Picos Tempestuosos para obter o |cRXP_LOOT_Proto Dragão Osso|r
	.collect 42106,1 --Proto Dragon Bone (1)
	.isOnQuest 12961
	.mob Stormpeak Wyrm
	.mob Stormpeak Hatchling
step
	#label Figurine
	.use 42106 >>Usar o |cRXP_LOOT_Proto Dragão Osso|r na mochila para combinar a |cRXP_LOOT_Sun Cristal|r e a |cRXP_LOOT_Dark Jade|r e criar uma |cRXP_LOOT_Estatueta de Osso Intrincada|r
	.complete 12961,1 --Intricate Bone Figurine (1)
	.isOnQuest 12961
step << Mage
	.zone Dalaran >>Vá para Dalaran
step
	>>Fale com |cRXP_FRIENDLY_Timothy Jones|r em Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12961 >>Entregue Remessa: Estatueta de Osso Intrincada
	.isQuestComplete 12961
	.target Timothy Jones
-- Quest: Shipment: Bright Armor Relic -- 12962
step
	#completewith Relic
	>>Colete a |cRXP_LOOT_Pedra-sangrenta|r e a |cRXP_LOOT_Huge Citrine|r e depois combine com um |cRXP_LOOT_Elemental Armadura Sucata|r
	.collect 36917,1 --Bloodstone (1)
	.collect 36929,1 --Huge Citrine (1)
	.isOnQuest 12962
step
	.goto Dragonblight,57.83,14.22,50,0
	.goto Dragonblight,58.62,16.39,50,0
	.goto Dragonblight,54.77,19.10
	>>Mate os |cRXP_ENEMY_Crystalline Ice Elementals|r em Ermo das Serpes para obter a |cRXP_LOOT_Elemental Armadura Sucata|r
	.collect 42107,1 --Elemental Armor Scrap (1)
	.isOnQuest 12962
	.mob Crystalline Ice Elemental
step
	#label Relic
	.use 42107 >>Usar a |cRXP_LOOT_Elemental Armadura Sucata|r na mochila para combinar a |cRXP_LOOT_Pedra-sangrenta|r e a |cRXP_LOOT_Huge Citrine|r e criar uma |cRXP_LOOT_Relíquia de Armadura Brilhante|r
	.complete 12962,1 --Bright Armor Relic (1)
	.isOnQuest 12962
step << Mage
	.zone Dalaran >>Vá para Dalaran
step
	>>Fale com |cRXP_FRIENDLY_Timothy Jones|r em Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12962 >>Entregue Remessa: Relíquia de Armadura Brilhante
	.isQuestComplete 12962
	.target Timothy Jones

-- Quest: Shipment: Shifting Sun Curio -- 12963
step
	#completewith Curio
	>>Colete a |cRXP_LOOT_Sun Cristal|r e a |cRXP_LOOT_Shadow Cristal|r e depois combine com um |cRXP_LOOT_Scourge Badulaque|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12963
step
	.goto Icecrown,70.77,68.13,50,0
	.goto Icecrown,68.66,68.07
	>>Mate os |cRXP_ENEMY_Hulking Abominations|r ou os |cRXP_ENEMY_Malefic Necromancers|r em Coroa de Gelo para obter a |cRXP_LOOT_Scourge Badulaque|r
	.collect 42108,1 --Scourge Curio (1)
	.isOnQuest 12963
	.mob Hulking Abominations
	.mob Malefic Necromancer
step
	#label Curio
	.use 42108 >>Usar a |cRXP_LOOT_Scourge Badulaque|r na mochila para combinar a |cRXP_LOOT_Sun Cristal|r e a |cRXP_LOOT_Shadow Cristal|r e criar uma |cRXP_LOOT_Antiguidade Solar Cambiante|r
	.complete 12963,1 --Shifting Sun Curio (1)
	.isOnQuest 12963
step << Mage
	.zone Dalaran >>Vá para Dalaran
step
	>>Fale com |cRXP_FRIENDLY_Timothy Jones|r em Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12963 >>Entregue Remessa: Relíquia de Armadura Brilhante
	.isQuestComplete 12963
	.target Timothy Jones
step
	+Você completou a Missão Diária de Joalheria de hoje
]])