if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Beruf Täglich Quests
#wotlk
#cata
#name Juwelierskunst

step
	.goto Dalaran,40.67,35.35
	>> Um mit den täglichen Juwelierskunst-Quests zu beginnen, müsst ihr zuerst die Quest Die Lieferung abfertigen abschließen, die erfordert, dass ihr |cRXP_FRIENDLY_Timothy Jones|r in Dalaran |cRXP_LOOT_Chalcedony|r bringt
	.collect 36923,1 --Chalcedony (1)
	.isQuestAvailable 13041
	.target Timothy Jones
step
	>>Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r
    .goto Dalaran,40.67,35.35
    .accept 13041 >>Akzeptiert die Quest Die Lieferung abfertigen
	.complete 13041,1 --Chalcedony (1)
    .turnin 13041 >>Gebt die Quest Die Lieferung abfertigen ab
	.isQuestAvailable 13041
step
	.goto Dalaran,40.67,35.35
	.daily 12958,12959,12960,12961,12962,12963 >> Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r in Dalaran. Er hat 1 von 6 täglichen Juwelierskunst-Quests. Akzeptiert welche gerade verfügbar ist
	>>Lieferung: Blutrotes Nephritamulett -- 12958
	>>Lieferung: Leuchtende Elfenbeinfigur -- 12959
	>>Lieferung: Tückische Sonnenbrosche -- 12960
	>>Lieferung: Aufwändige Knochenfigur -- 12961
	>>Lieferung: Helles Rüstungsrelikt -- 12962
	>>Lieferung: Veränderliche Sonnenkuriosität -- 12963
	.target Timothy Jones
-- Quest: Shipment: Blood Jade Amulet -- 12958
step
	#completewith Amulet
	>>Sammelt |cRXP_LOOT_Dunkel Jade|r und |cRXP_LOOT_Blutstein|r ein und kombiniert sie dann mit |cRXP_LOOT_Vrykul Amulet|r
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
	>>Tötet |cRXP_ENEMY_Valkyrion Aspirants|r in Sturmgipfel für |cRXP_LOOT_Vrykul Amulet|r
	.collect 41989,1 --Vrykul Amulet (1)
	.isOnQuest 12958
	.mob Valkyrion Aspirant
step
	#label Amulet
	.use 41989 >>Benutzt |cRXP_LOOT_Vrykul Amulet|r in den Taschen von Euch, um |cRXP_LOOT_Dunkel Jade|r und |cRXP_LOOT_Blutstein|r zu kombinieren, um |cRXP_LOOT_Blutrotes Nephritamulett|r zu erschaffen
	.complete 12958,1 --Blood Jade Amulet (1)
	.isOnQuest 12958
step << Mage
	.zone Dalaran >> Nach Dalaran teleportieren
step
	>>Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12958 >>Gebt die Quest Lieferung: Blutrotes Nephritamulett ab
	.isQuestComplete 12958
	.target Timothy Jones

-- Quest: Shipment: Glowing Ivory Figurine -- 12959
step
	#completewith Ivory
	>>Sammelt |cRXP_LOOT_Chalcedony|r und |cRXP_LOOT_Shadow Kristall|r ein und kombiniert sie dann mit |cRXP_LOOT_Northern Ivory|r
	.collect 36923,1 --Chalcedony (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12959
step
	.goto Dragonblight,67.00,31.04,60,0
	.goto Dragonblight,65.94,36.65,60,0
	.goto Dragonblight,65.00,45.69,60,0
	.goto Dragonblight,56.41,48.12
	>>Tötet |cRXP_FRIENDLY_Emaciated Mammoths|r in Drachenöde für |cRXP_LOOT_Northern Ivory|r
	.collect 42104,1 --Northern Ivory (1)
	.isOnQuest 12959
	.mob Emaciated Mammoth
	.mob Emaciated Mammoth Calf
	.mob Emaciated Mammoth Bull
step
	#label Ivory
	.use 42104 >>Benutzt |cRXP_LOOT_Northern Ivory|r in den Taschen von Euch, um |cRXP_LOOT_Chalcedony|r und |cRXP_LOOT_Schatten Kristall|r zu kombinieren, um |cRXP_LOOT_Leuchtende Elfenbeinfigur|r zu erschaffen
	.complete 12959,1 --Glowing Ivory Figurine (1)
	.isOnQuest 12959
step << Mage
	.zone Dalaran >> Nach Dalaran teleportieren
step
	>>Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12959 >>Gebt die Quest Lieferung: leuchtende Elfenbeinfigur ab
	.isQuestComplete 12959
	.target Timothy Jones

-- Quest: Shipment: Wicked Sun Brooch -- 12960
step
	#completewith Brooch
	>>Sammelt |cRXP_LOOT_Huge Citrine|r und |cRXP_LOOT_Sun Kristall|r ein und kombiniert sie dann mit |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 36929,1 --Huge Citrine (1)
	.collect 36920,1 --Sun Crystal (1)
	.isOnQuest 12960
step
	.goto TheStormPeaks,26.82,66.90,40,0
	.goto TheStormPeaks,26.13,66.93,30,0
	.goto TheStormPeaks,26.00,67.60,20,0
	.goto TheStormPeaks,26.82,66.90
	>>Betretet die Höhle 'Bors Atem' in Sturmgipfel an dieser Stelle. Tötet |cRXP_FRIENDLY_Stormforged Dwarves|r für |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 42105,1 --Iron Dwarf Brooch (1)
	.isOnQuest 12960
step
	#label Brooch
	.use 42105 >>Benutzt |cRXP_LOOT_Iron Dwarf Brooch|r in euren Taschen, um |cRXP_LOOT_Huge Citrine|r und |cRXP_LOOT_Sun Kristall|r zu kombinieren und eine |cRXP_LOOT_Tückische Sonnenbrosche|r zu erschaffen
	.complete 12960,1 --Wicked Sun Brooch (1)
	.isOnQuest 12960
step << Mage
	.zone Dalaran >> Nach Dalaran teleportieren
step
	>>Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12960 >>Gebt die Quest Lieferung: tückische Sonnenbrosche ab
	.isQuestComplete 12960
	.target Timothy Jones

-- Quest: Shipment: Intricate Bone Figurine -- 12961
step
	#completewith Figurine
	>>Sammelt |cRXP_LOOT_Sun Kristall|r und |cRXP_LOOT_Dark Jade|r ein und kombiniert sie dann mit |cRXP_LOOT_Proto Drache Knochen|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36932,1 --Dark Jade (1)
	.isOnQuest 12961
step
	.goto TheStormPeaks,45.77,67.09,60,0
	.goto TheStormPeaks,43.80,64.03,70,0
	.goto TheStormPeaks,45.80,62.52
	>>Tötet |cRXP_ENEMY_Stormpeak Proto Drakes|r in Sturmgipfel für |cRXP_LOOT_Proto Drache Knochen|r
	.collect 42106,1 --Proto Dragon Bone (1)
	.isOnQuest 12961
	.mob Stormpeak Wyrm
	.mob Stormpeak Hatchling
step
	#label Figurine
	.use 42106 >>Benutzt |cRXP_LOOT_Proto Drache Knochen|r in euren Taschen, um |cRXP_LOOT_Sun Kristall|r und |cRXP_LOOT_Dark Jade|r zu kombinieren und eine |cRXP_LOOT_Aufwändige Knochenfigur|r zu erschaffen
	.complete 12961,1 --Intricate Bone Figurine (1)
	.isOnQuest 12961
step << Mage
	.zone Dalaran >> Nach Dalaran teleportieren
step
	>>Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12961 >>Gebt die Quest Lieferung: aufwändige Knochenfigur ab
	.isQuestComplete 12961
	.target Timothy Jones
-- Quest: Shipment: Bright Armor Relic -- 12962
step
	#completewith Relic
	>>Sammelt |cRXP_LOOT_Blutstein|r und |cRXP_LOOT_Huge Citrine|r ein und kombiniert sie dann mit |cRXP_LOOT_Elemental Rüstung Verschrotten|r
	.collect 36917,1 --Bloodstone (1)
	.collect 36929,1 --Huge Citrine (1)
	.isOnQuest 12962
step
	.goto Dragonblight,57.83,14.22,50,0
	.goto Dragonblight,58.62,16.39,50,0
	.goto Dragonblight,54.77,19.10
	>>Tötet |cRXP_ENEMY_Crystalline Ice Elementals|r in Drachenöde für |cRXP_LOOT_Elemental Rüstung Verschrotten|r
	.collect 42107,1 --Elemental Armor Scrap (1)
	.isOnQuest 12962
	.mob Crystalline Ice Elemental
step
	#label Relic
	.use 42107 >>Benutzt |cRXP_LOOT_Elemental Rüstung Verschrotten|r in euren Taschen, um |cRXP_LOOT_Blutstein|r und |cRXP_LOOT_Huge Citrine|r zu kombinieren und ein |cRXP_LOOT_Helles Rüstungsrelikt|r zu erschaffen
	.complete 12962,1 --Bright Armor Relic (1)
	.isOnQuest 12962
step << Mage
	.zone Dalaran >> Nach Dalaran teleportieren
step
	>>Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12962 >>Gebt die Quest Lieferung: helles Rüstungsrelikt ab
	.isQuestComplete 12962
	.target Timothy Jones

-- Quest: Shipment: Shifting Sun Curio -- 12963
step
	#completewith Curio
	>>Sammelt |cRXP_LOOT_Sun Kristall|r und |cRXP_LOOT_Shadow Kristall|r ein und kombiniert sie dann mit |cRXP_LOOT_Scourge Kuriosität|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12963
step
	.goto Icecrown,70.77,68.13,50,0
	.goto Icecrown,68.66,68.07
	>>Tötet |cRXP_ENEMY_Hulking Abominations|r oder |cRXP_ENEMY_Malefic Necromancers|r in Eiskrone für |cRXP_LOOT_Scourge Kuriosität|r
	.collect 42108,1 --Scourge Curio (1)
	.isOnQuest 12963
	.mob Hulking Abominations
	.mob Malefic Necromancer
step
	#label Curio
	.use 42108 >>Benutzt |cRXP_LOOT_Scourge Kuriosität|r in euren Taschen, um |cRXP_LOOT_Sun Kristall|r und |cRXP_LOOT_Shadow Kristall|r zu kombinieren und eine |cRXP_LOOT_Veränderliche Sonnenkuriosität|r zu erschaffen
	.complete 12963,1 --Shifting Sun Curio (1)
	.isOnQuest 12963
step << Mage
	.zone Dalaran >> Nach Dalaran teleportieren
step
	>>Sprecht mit |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12963 >>Gebt die Quest Lieferung: helles Rüstungsrelikt ab
	.isQuestComplete 12963
	.target Timothy Jones
step
	+Ihr habt die tägliche Juwelierskunst-Quest für heute abgeschlossen
]])