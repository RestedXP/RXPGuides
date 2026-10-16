if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Quêtes journalières
#subgroup Quêtes quotidiennes du Métier
#wotlk
#cata
#name Joaillerie

step
	.goto Dalaran,40.67,35.35
	>> Pour commencer les quêtes quotidiennes de Joaillerie, vous devez d'abord terminer la quête Terminer la livraison, qui vous demande d'apporter un |cRXP_FRIENDLY_Chalcedony|r à |cRXP_LOOT_Timothy Jones|r à Dalaran
	.collect 36923,1 --Chalcedony (1)
	.isQuestAvailable 13041
	.target Timothy Jones
step
	>>Parlez à |cRXP_FRIENDLY_Timothy Jones|r
    .goto Dalaran,40.67,35.35
    .accept 13041 >>Acceptez la quête Terminer la livraison
	.complete 13041,1 --Chalcedony (1)
    .turnin 13041 >>Rendez la quête Terminer la livraison
	.isQuestAvailable 13041
step
	.goto Dalaran,40.67,35.35
	.daily 12958,12959,12960,12961,12962,12963 >> Parlez à |cRXP_FRIENDLY_Timothy Jones|r à Dalaran. Il a 1 sur 6 quêtes quotidiennes de Joaillerie. Acceptez celle qui est disponible
	>>Cargaison: Amulette en jade de sang -- 12958
	>>Livraison : Figurine luminescente en ivoire -- 12959
	>>Livraison : Broche du soleil pernicieux -- 12960
	>>Livraison : Figurine complexe en os -- 12961
	>>Livraison : Relique de l'armure éclatante -- 12962
	>>Cargaison: Bibelot du soleil changeant -- 12963
	.target Timothy Jones
-- Quest: Shipment: Blood Jade Amulet -- 12958
step
	#completewith Amulet
	>>Collectez un |cRXP_LOOT_Dark Jade|r et une |cRXP_LOOT_Pierre de sang|r puis combinez-les avec un |cRXP_LOOT_Vrykul Amulet|r
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
	>>Tuez |cRXP_ENEMY_Valkyrion Aspirants|r dans les Pics Foudroyés pour obtenir le |cRXP_LOOT_Vrykul Amulet|r
	.collect 41989,1 --Vrykul Amulet (1)
	.isOnQuest 12958
	.mob Valkyrion Aspirant
step
	#label Amulet
	.use 41989 >>Utilisez le |cRXP_LOOT_Vrykul Amulet|r dans vos sacs pour combiner le |cRXP_LOOT_Dark Jade|r et la |cRXP_LOOT_Pierre de sang|r afin de créer une |cRXP_LOOT_Amulette en jade de sang|r
	.complete 12958,1 --Blood Jade Amulet (1)
	.isOnQuest 12958
step << Mage
	.zone Dalaran >> Téléportez-vous à Dalaran
step
	>>Parlez à |cRXP_FRIENDLY_Timothy Jones|r à Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12958 >>Rendez la quête Cargaison: Amulette en jade de sang
	.isQuestComplete 12958
	.target Timothy Jones

-- Quest: Shipment: Glowing Ivory Figurine -- 12959
step
	#completewith Ivory
	>>Collectez un |cRXP_LOOT_Chalcedony|r et un |cRXP_LOOT_Shadow Cristal|r puis combinez-les avec un |cRXP_LOOT_Northern Ivory|r
	.collect 36923,1 --Chalcedony (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12959
step
	.goto Dragonblight,67.00,31.04,60,0
	.goto Dragonblight,65.94,36.65,60,0
	.goto Dragonblight,65.00,45.69,60,0
	.goto Dragonblight,56.41,48.12
	>>Tuez |cRXP_FRIENDLY_Emaciated Mammoths|r à la Désolation des dragons pour le |cRXP_LOOT_Northern Ivory|r
	.collect 42104,1 --Northern Ivory (1)
	.isOnQuest 12959
	.mob Emaciated Mammoth
	.mob Emaciated Mammoth Calf
	.mob Emaciated Mammoth Bull
step
	#label Ivory
	.use 42104 >>Utilisez le |cRXP_LOOT_Northern Ivory|r dans vos sacs pour combiner le |cRXP_LOOT_Chalcedony|r et le |cRXP_LOOT_Shadow Cristal|r afin de créer une |cRXP_LOOT_Figurine luminescente en ivoire|r
	.complete 12959,1 --Glowing Ivory Figurine (1)
	.isOnQuest 12959
step << Mage
	.zone Dalaran >> Téléportez-vous à Dalaran
step
	>>Parlez à |cRXP_FRIENDLY_Timothy Jones|r à Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12959 >>Rendez la quête Livraison : Figurine luminescente en ivoire
	.isQuestComplete 12959
	.target Timothy Jones

-- Quest: Shipment: Wicked Sun Brooch -- 12960
step
	#completewith Brooch
	>>Collectez une |cRXP_LOOT_Huge Citrine|r et un |cRXP_LOOT_Sun Cristal|r puis combinez-les avec une |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 36929,1 --Huge Citrine (1)
	.collect 36920,1 --Sun Crystal (1)
	.isOnQuest 12960
step
	.goto TheStormPeaks,26.82,66.90,40,0
	.goto TheStormPeaks,26.13,66.93,30,0
	.goto TheStormPeaks,26.00,67.60,20,0
	.goto TheStormPeaks,26.82,66.90
	>>Entrez dans la grotte de Souffle de Bor dans les Pics Foudroyés à cet endroit. Tuez |cRXP_FRIENDLY_Stormforged Dwarves|r pour obtenir la |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 42105,1 --Iron Dwarf Brooch (1)
	.isOnQuest 12960
step
	#label Brooch
	.use 42105 >>Utilisez la |cRXP_LOOT_Iron Dwarf Brooch|r dans vos sacs pour combiner la |cRXP_LOOT_Huge Citrine|r et le |cRXP_LOOT_Sun Cristal|r afin de créer une |cRXP_LOOT_Broche du soleil pernicieux|r
	.complete 12960,1 --Wicked Sun Brooch (1)
	.isOnQuest 12960
step << Mage
	.zone Dalaran >> Téléportez-vous à Dalaran
step
	>>Parlez à |cRXP_FRIENDLY_Timothy Jones|r à Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12960 >>Rendez la quête Livraison : Broche du soleil pernicieux
	.isQuestComplete 12960
	.target Timothy Jones

-- Quest: Shipment: Intricate Bone Figurine -- 12961
step
	#completewith Figurine
	>>Collectez un |cRXP_LOOT_Sun Cristal|r et un |cRXP_LOOT_Dark Jade|r puis combinez-les avec un |cRXP_LOOT_Proto Dragon Os|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36932,1 --Dark Jade (1)
	.isOnQuest 12961
step
	.goto TheStormPeaks,45.77,67.09,60,0
	.goto TheStormPeaks,43.80,64.03,70,0
	.goto TheStormPeaks,45.80,62.52
	>>Tuez |cRXP_ENEMY_Stormpeak Proto Drakes|r dans les Pics Foudroyés pour obtenir le |cRXP_LOOT_Proto Dragon Os|r
	.collect 42106,1 --Proto Dragon Bone (1)
	.isOnQuest 12961
	.mob Stormpeak Wyrm
	.mob Stormpeak Hatchling
step
	#label Figurine
	.use 42106 >>Utilisez le |cRXP_LOOT_Proto Dragon Os|r dans vos sacs pour combiner le |cRXP_LOOT_Sun Cristal|r et le |cRXP_LOOT_Dark Jade|r afin de créer une |cRXP_LOOT_Figurine complexe en os|r
	.complete 12961,1 --Intricate Bone Figurine (1)
	.isOnQuest 12961
step << Mage
	.zone Dalaran >> Téléportez-vous à Dalaran
step
	>>Parlez à |cRXP_FRIENDLY_Timothy Jones|r à Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12961 >>Rendez la quête Livraison : Figurine complexe en os
	.isQuestComplete 12961
	.target Timothy Jones
-- Quest: Shipment: Bright Armor Relic -- 12962
step
	#completewith Relic
	>>Collectez une |cRXP_LOOT_Pierre de sang|r et une |cRXP_LOOT_Huge Citrine|r puis combinez-les avec un |cRXP_LOOT_Elemental Armure Débris|r
	.collect 36917,1 --Bloodstone (1)
	.collect 36929,1 --Huge Citrine (1)
	.isOnQuest 12962
step
	.goto Dragonblight,57.83,14.22,50,0
	.goto Dragonblight,58.62,16.39,50,0
	.goto Dragonblight,54.77,19.10
	>>Tuez |cRXP_ENEMY_Crystalline Ice Elementals|r dans la Désolation des dragons pour obtenir un |cRXP_LOOT_Elemental Armure Débris|r
	.collect 42107,1 --Elemental Armor Scrap (1)
	.isOnQuest 12962
	.mob Crystalline Ice Elemental
step
	#label Relic
	.use 42107 >>Utilisez l'|cRXP_LOOT_Elemental Armure Débris|r dans vos sacs pour combiner la |cRXP_LOOT_Pierre de sang|r et la |cRXP_LOOT_Huge Citrine|r afin de créer une |cRXP_LOOT_Relique de l'armure éclatante|r
	.complete 12962,1 --Bright Armor Relic (1)
	.isOnQuest 12962
step << Mage
	.zone Dalaran >> Téléportez-vous à Dalaran
step
	>>Parlez à |cRXP_FRIENDLY_Timothy Jones|r à Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12962 >>Rendez la quête Livraison : Relique de l'armure éclatante
	.isQuestComplete 12962
	.target Timothy Jones

-- Quest: Shipment: Shifting Sun Curio -- 12963
step
	#completewith Curio
	>>Collectez un |cRXP_LOOT_Sun Cristal|r et un |cRXP_LOOT_Shadow Cristal|r puis combinez-les avec un |cRXP_LOOT_Scourge Bibelot|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12963
step
	.goto Icecrown,70.77,68.13,50,0
	.goto Icecrown,68.66,68.07
	>>Tuez |cRXP_ENEMY_Hulking Abominations|r ou |cRXP_ENEMY_Malefic Necromancers|r à la Couronne de glace pour obtenir le |cRXP_LOOT_Scourge Bibelot|r
	.collect 42108,1 --Scourge Curio (1)
	.isOnQuest 12963
	.mob Hulking Abominations
	.mob Malefic Necromancer
step
	#label Curio
	.use 42108 >>Utilisez le |cRXP_LOOT_Scourge Bibelot|r dans vos sacs pour combiner le |cRXP_LOOT_Sun Cristal|r et le |cRXP_LOOT_Shadow Cristal|r afin de créer un |cRXP_LOOT_Bibelot du soleil changeant|r
	.complete 12963,1 --Shifting Sun Curio (1)
	.isOnQuest 12963
step << Mage
	.zone Dalaran >> Téléportez-vous à Dalaran
step
	>>Parlez à |cRXP_FRIENDLY_Timothy Jones|r à Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12963 >>Rendez la quête Livraison : Relique de l'armure éclatante
	.isQuestComplete 12963
	.target Timothy Jones
step
	+Vous avez terminé les quêtes quotidiennes de Joaillerie pour aujourd'hui
]])