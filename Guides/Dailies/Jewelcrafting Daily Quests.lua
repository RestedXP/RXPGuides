local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Profession Daily Quests
#wotlk
#cata
#name Jewelcrafting

step
	.goto Dalaran,40.67,35.35
	>> To begin the Jewelcrafting daily quests you must first complete the quest Finish the Shipment which requires you to bring |cRXP_FRIENDLY_Timothy Jones|r in Dalaran a |cRXP_LOOT_Chalcedony|r
	.collect 36923,1 --Chalcedony (1)
	.isQuestAvailable 13041
	.target Timothy Jones
step
	>>Talk to |cRXP_FRIENDLY_Timothy Jones|r
    .goto Dalaran,40.67,35.35
    .accept 13041 >>Accept Finish the Shipment
	.complete 13041,1 --Chalcedony (1)
    .turnin 13041 >>Turn in Finish the Shipment
	.isQuestAvailable 13041
step
	.goto Dalaran,40.67,35.35
	.daily 12958,12959,12960,12961,12962,12963 >> Talk to |cRXP_FRIENDLY_Timothy Jones|r in Dalaran. He has 1 out of 6 daily Jewelcrafting quests. Accept whichever is available
	>>Shipment: Blood Jade Amulet -- 12958
	>>Shipment: Glowing Ivory Figurine -- 12959
	>>Shipment: Wicked Sun Brooch -- 12960
	>>Shipment: Intricate Bone Figurine -- 12961
	>>Shipment: Bright Armor Relic -- 12962
	>>Shipment: Shifting Sun Curio -- 12963
	.target Timothy Jones
-- Quest: Shipment: Blood Jade Amulet -- 12958
step
	#completewith Amulet
	>>Collect a |cRXP_LOOT_Dark Jade|r and a |cRXP_LOOT_Bloodstone|r and then combine with a |cRXP_LOOT_Vrykul Amulet|r
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
	>>Kill |cRXP_ENEMY_Valkyrion Aspirants|r in The Storm Peaks for the |cRXP_LOOT_Vrykul Amulet|r
	.collect 41989,1 --Vrykul Amulet (1)
	.isOnQuest 12958
	.mob Valkyrion Aspirant
step
	#label Amulet
	.use 41989 >>Use the |cRXP_LOOT_Vrykul Amulet|r in your bags to combine the |cRXP_LOOT_Dark Jade|r and |cRXP_LOOT_Bloodstone|r to create a |cRXP_LOOT_Blood Jade Amulet|r
	.complete 12958,1 --Blood Jade Amulet (1)
	.isOnQuest 12958
step << Mage
	.zone Dalaran >> Teleport to Dalaran
step
	>>Talk to |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12958 >>Turn in Shipment: Blood Jade Amulet
	.isQuestComplete 12958
	.target Timothy Jones

-- Quest: Shipment: Glowing Ivory Figurine -- 12959
step
	#completewith Ivory
	>>Collect a |cRXP_LOOT_Chalcedony|r and a |cRXP_LOOT_Shadow Crystal|r and then combine with a |cRXP_LOOT_Northern Ivory|r
	.collect 36923,1 --Chalcedony (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12959
step
	.goto Dragonblight,67.00,31.04,60,0
	.goto Dragonblight,65.94,36.65,60,0
	.goto Dragonblight,65.00,45.69,60,0
	.goto Dragonblight,56.41,48.12
	>>Kill |cRXP_FRIENDLY_Emaciated Mammoths|r in Dragonblight for the |cRXP_LOOT_Northern Ivory|r
	.collect 42104,1 --Northern Ivory (1)
	.isOnQuest 12959
	.mob Emaciated Mammoth
	.mob Emaciated Mammoth Calf
	.mob Emaciated Mammoth Bull
step
	#label Ivory
	.use 42104 >>Use the |cRXP_LOOT_Northern Ivory|r in your bags to combine the |cRXP_LOOT_Chalcedony|r and |cRXP_LOOT_Shadow Crystal|r to create a |cRXP_LOOT_Glowing Ivory Figurine|r
	.complete 12959,1 --Glowing Ivory Figurine (1)
	.isOnQuest 12959
step << Mage
	.zone Dalaran >> Teleport to Dalaran
step
	>>Talk to |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12959 >>Turn in Shipment: Glowing Ivory Figurine
	.isQuestComplete 12959
	.target Timothy Jones

-- Quest: Shipment: Wicked Sun Brooch -- 12960
step
	#completewith Brooch
	>>Collect a |cRXP_LOOT_Huge Citrine|r and a |cRXP_LOOT_Sun Crystal|r and then combine with a |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 36929,1 --Huge Citrine (1)
	.collect 36920,1 --Sun Crystal (1)
	.isOnQuest 12960
step
	.goto TheStormPeaks,26.82,66.90,40,0
	.goto TheStormPeaks,26.13,66.93,30,0
	.goto TheStormPeaks,26.00,67.60,20,0
	.goto TheStormPeaks,26.82,66.90
	>>Enter the Bor's Breath cave in The Storm Peaks at this location. Kill |cRXP_FRIENDLY_Stormforged Dwarves|r for the |cRXP_LOOT_Iron Dwarf Brooch|r
	.collect 42105,1 --Iron Dwarf Brooch (1)
	.isOnQuest 12960
step
	#label Brooch
	.use 42105 >>Use the |cRXP_LOOT_Iron Dwarf Brooch|r in your bags to combine the |cRXP_LOOT_Huge Citrine|r and |cRXP_LOOT_Sun Crystal|r to create a |cRXP_LOOT_Wicked Sun Brooch|r
	.complete 12960,1 --Wicked Sun Brooch (1)
	.isOnQuest 12960
step << Mage
	.zone Dalaran >> Teleport to Dalaran
step
	>>Talk to |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12960 >>Turn in Shipment: Wicked Sun Brooch
	.isQuestComplete 12960
	.target Timothy Jones

-- Quest: Shipment: Intricate Bone Figurine -- 12961
step
	#completewith Figurine
	>>Collect a |cRXP_LOOT_Sun Crystal|r and a |cRXP_LOOT_Dark Jade|r and then combine with a |cRXP_LOOT_Proto Dragon Bone|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36932,1 --Dark Jade (1)
	.isOnQuest 12961
step
	.goto TheStormPeaks,45.77,67.09,60,0
	.goto TheStormPeaks,43.80,64.03,70,0
	.goto TheStormPeaks,45.80,62.52
	>>Kill |cRXP_ENEMY_Stormpeak Proto Drakes|r in The Storm Peaks for the |cRXP_LOOT_Proto Dragon Bone|r
	.collect 42106,1 --Proto Dragon Bone (1)
	.isOnQuest 12961
	.mob Stormpeak Wyrm
	.mob Stormpeak Hatchling
step
	#label Figurine
	.use 42106 >>Use the |cRXP_LOOT_Proto Dragon Bone|r in your bags to combine the |cRXP_LOOT_Sun Crystal|r and |cRXP_LOOT_Dark Jade|r to create an |cRXP_LOOT_Intricate Bone Figurine|r
	.complete 12961,1 --Intricate Bone Figurine (1)
	.isOnQuest 12961
step << Mage
	.zone Dalaran >> Teleport to Dalaran
step
	>>Talk to |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12961 >>Turn in Shipment: Intricate Bone Figurine
	.isQuestComplete 12961
	.target Timothy Jones
-- Quest: Shipment: Bright Armor Relic -- 12962
step
	#completewith Relic
	>>Collect a |cRXP_LOOT_Bloodstone|r and a |cRXP_LOOT_Huge Citrine|r and then combine with an |cRXP_LOOT_Elemental Armor Scrap|r
	.collect 36917,1 --Bloodstone (1)
	.collect 36929,1 --Huge Citrine (1)
	.isOnQuest 12962
step
	.goto Dragonblight,57.83,14.22,50,0
	.goto Dragonblight,58.62,16.39,50,0
	.goto Dragonblight,54.77,19.10
	>>Kill |cRXP_ENEMY_Crystalline Ice Elementals|r in Dragonblight for the |cRXP_LOOT_Elemental Armor Scrap|r
	.collect 42107,1 --Elemental Armor Scrap (1)
	.isOnQuest 12962
	.mob Crystalline Ice Elemental
step
	#label Relic
	.use 42107 >>Use the |cRXP_LOOT_Elemental Armor Scrap|r in your bags to combine the |cRXP_LOOT_Bloodstone|r and |cRXP_LOOT_Huge Citrine|r to create a |cRXP_LOOT_Bright Armor Relic|r
	.complete 12962,1 --Bright Armor Relic (1)
	.isOnQuest 12962
step << Mage
	.zone Dalaran >> Teleport to Dalaran
step
	>>Talk to |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12962 >>Turn in Shipment: Bright Armor Relic
	.isQuestComplete 12962
	.target Timothy Jones

-- Quest: Shipment: Shifting Sun Curio -- 12963
step
	#completewith Curio
	>>Collect a |cRXP_LOOT_Sun Crystal|r and a |cRXP_LOOT_Shadow Crystal|r and then combine with a |cRXP_LOOT_Scourge Curio|r
	.collect 36920,1 --Sun Crystal (1)
	.collect 36926,1 --Shadow Crystal (1)
	.isOnQuest 12963
step
	.goto Icecrown,70.77,68.13,50,0
	.goto Icecrown,68.66,68.07
	>>Kill |cRXP_ENEMY_Hulking Abominations|r or |cRXP_ENEMY_Malefic Necromancers|r in Icecrown for the |cRXP_LOOT_Scourge Curio|r
	.collect 42108,1 --Scourge Curio (1)
	.isOnQuest 12963
	.mob Hulking Abominations
	.mob Malefic Necromancer
step
	#label Curio
	.use 42108 >>Use the |cRXP_LOOT_Scourge Curio|r in your bags to combine the |cRXP_LOOT_Sun Crystal|r and |cRXP_LOOT_Shadow Crystal|r to create a |cRXP_LOOT_Shifting Sun Curio|r
	.complete 12963,1 --Shifting Sun Curio (1)
	.isOnQuest 12963
step << Mage
	.zone Dalaran >> Teleport to Dalaran
step
	>>Talk to |cRXP_FRIENDLY_Timothy Jones|r in Dalaran
	.goto Dalaran,40.67,35.35
	.turnin 12963 >>Turn in Shipment: Bright Armor Relic
	.isQuestComplete 12963
	.target Timothy Jones
step
	+You have finished the Jewelcrafting Daily Quest for today
]])