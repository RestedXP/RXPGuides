RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Overload - 3 (Durotar)


    --Rune of Overload

step << !Tauren
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .target Shikrik
step
    .loop 25,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>Kill |cFFFF5722Scorpid Workers|r. Loot them for |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step 
    .loop 25,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>Continue to kill |cFFFF5722Scorpid Workers|r and obtain 10 stacks of |T237556:0|t[Building Inspiration] as they deal nature damage to you
    .cast 402265 >>Use the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r] once you have 10 stacks
    .mob Scorpid Worker
    .use 206381
    .train 410094,1
step << !Tauren
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .turnin 77587 >>Turn in Icons of Power << Troll Shaman
    .turnin 77585 >>Turn in Icons of Power << Orc Shaman
    .target Shikrik


    ]])

    
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Overload - 3 (Mulgore)


    --Rune of Overload

step << Tauren
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .accept 77652 >>Accept Icons of Power
    .target Meela Dawnstrider
step
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
    .train 410094,1
step
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>Continue to kill |cRXP_ENEMY_Bristleback Shamans|r and obtain 10 stacks of |T237556:0|t[Building Inspiration] as they deal nature damage to you
    .cast 402265 >>Use the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r] once you have 10 stacks
    .use 206381
    .mob Bristleback Shaman
    .train 410094,1
step << Tauren
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Turn in Icons of Power
    .target Meela Dawnstrider


    ]])

    
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Shield Mastery - 6 (Durotar)


    --Rune of Shield Mastery

step
    .goto Durotar,39.43,50.07,0
    .goto Durotar,50.91,51.61,0
    .goto Durotar,56.50,46.68,0
    .goto Durotar,39.43,50.07,50,0
    .goto Durotar,50.91,51.61,50,0
    .goto Durotar,56.50,46.68,50,0
    .goto Durotar,59.00,58.00
    >>Click the |cRXP_PICK_Galvanic Totem|r to obtain |T134918:0|t[|cRXP_FRIENDLY_Galvanic Icon|r]
    >>|cRXP_WARN_Follow the waypoint arrow for known spawn locations|r
    .collect 206386,1 --Galvanic Totem (1)
    .train 410098,1
step
    >>Kill mobs with |T136048:0|t[Lightning Bolt] and obtain 10 stacks of |T237556:0|t[Building Inspiration]
    .cast 402265 >>Use the |T134918:0|t[|cRXP_FRIENDLY_Galvanic Icon|r] once you have 10 stacks
    .use 206386
    .train 410098,1

    ]])

    
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Shield Mastery - 6 (Mulgore)


    --Rune of Shield Mastery

step
    #loop
    .goto Mulgore,41.99,43.49,0
    .goto Mulgore,43.87,48.32,0
    .goto Mulgore,37.50,52.50,0 --XX UNCONFIRMED
    .goto Mulgore,41.65,55.98,0
    .goto Mulgore,38.43,72.00,0
    .goto Mulgore,36.72,68.09,0
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,64.06,55.75,0
    .goto Mulgore,56.23,64.28,0
    .goto Mulgore,56.60,70.13,0
    .goto Mulgore,67.23,66.17,0
    .goto Mulgore,62.30,22.94,0
    .goto Mulgore,44.94,11.30,0
    .goto Mulgore,30.50,25.98,0
    .goto Mulgore,41.99,43.49,20,0
    .goto Mulgore,43.87,48.32,20,0
    .goto Mulgore,37.50,52.50,20,0 --XX UNCONFIRMED
    .goto Mulgore,41.65,55.98,20,0
    .goto Mulgore,38.43,72.00,20,0
    .goto Mulgore,36.72,68.09,20,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75,20,0
    .goto Mulgore,56.23,64.28,20,0
    .goto Mulgore,56.60,70.13,20,0
    .goto Mulgore,67.23,66.17,20,0
    .goto Mulgore,62.30,22.94,20,0
    .goto Mulgore,44.94,11.30,20,0
    .goto Mulgore,30.50,25.98,20,0
    >>Click the |cRXP_PICK_Galvanic Icon|r Totem. Loot it for the |T134918:0|t|cRXP_LOOT_[Galvanic Icon]|r
    >>|cRXP_WARN_The |cRXP_PICK_Galvanic Icon|r has at least 13 spawnpoints, with at least 2 up at a time. It despawns <2 minutes after being looted|r
    >>|cRXP_WARN_It makes a|r |T136051:0|t[Lightning Shield] |cRXP_WARN_sound every 5 minutes if you're within 1000 yards, and shows a Lightning Strike on its location if you're within 300 yards and facing it|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
step
    >>Kill mobs with |T136048:0|t[Lightning Bolt] and obtain 10 stacks of |T237556:0|t[Building Inspiration]
    .cast 402265 >>Use the |T134918:0|t[|cRXP_FRIENDLY_Galvanic Icon|r] once you have 10 stacks
    .use 206386
    .train 410098,1

    ]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Ancestral Guidance - 6 (Durotar)


    --Rune of Ancestral Guidance

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r inside Kolkar Crag
    >>|cRXP_WARN_Another players needs to click the portal. Loot the|r |cRXP_FRIENDLY_Adventurer's Spirit|r |cRXP_WARN_afterwards for|r |T237571:0|t[|cRXP_FRIENDLY_Echo of the Ancestors|r]
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
step
    .cast 402265 >>Use the |T237571:0|t[|cRXP_FRIENDLY_Echo of the Ancestors|r]
    .use 210589
    .train 410099,1

    ]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Ancestral Guidance - 10 (Mulgore)


    --Rune of Ancestral Guidance

step
    #completewith next
    .goto Mulgore,61.51,47.29,20 >> Travel to The Venture Co. Mine
step
    #completewith next
    .goto Mulgore,60.39,33.54,20 >> Go through the Venture Co. Mine. Travel toward the |cRXP_FRIENDLY_Adventurer's Spirit|r
step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r outside of the Venture Co. Mine
    >>|cRXP_WARN_Another player needs to click the portal. Loot the|r |cRXP_FRIENDLY_Adventurer's Spirit|r |cRXP_WARN_afterwards for|r |T237571:0|t[|cRXP_FRIENDLY_Echo of the Ancestors|r]
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
step
    .cast 402265 >>Use the |T237571:0|t[|cRXP_FRIENDLY_Echo of the Ancestors|r]
    .use 210589
    .train 410099,1
    ]])
    


RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Molten Blast - 10 (Durotar)


    --Rune of Molten Blast

step
    #completewith next
    +|cRXP_WARN_Make sure you have trained |T135813:0|t[Flame Shock]!|r
step
    .goto Durotar,58.70,45.54
    >>Cast |T135813:0|t[Flame Shock] on the |cRXP_ENEMY_Frozen Makrura|r east of Razor Hill. Loot him for |T134918:0|t[|cRXP_FRIENDLY_Sulfurous Icon|r]
    >>|cRXP_WARN_You need to group up with Shamans/Warlocks/Mages. At least 5 sources of fire damage debuffs need to be applied on the|r |cRXP_ENEMY_Frozen Makrura|r |cRXP_WARN_for the ice to melt!|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
step
    .goto Durotar,57.21,44.01,60,0
    .goto Durotar,55.19,48.96
    >>Kill mobs with |T136026:0|t[Earth Shock] and obtain 10 stacks of |T237556:0|t[Building Inspiration]
    .cast 402265 >>Use the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r] once you have 10 stacks
    .use 206388
    .train 425344,1


    ]])

    
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Molten Blast - 8 (Mulgore)


    --Rune of Molten Blast

step
    .goto Mulgore,32.16,48.75,40,0
    .goto Mulgore,31.27,49.21
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |T134237:0|t[|cRXP_LOOT_Artifact Storage Key|r]
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step
    .goto Mulgore,31.56,49.54
    >>Open the |cRXP_PICK_Artifact Storage|r. Loot it for the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step
    .goto Mulgore,32.16,48.75,40,0
    .goto Mulgore,31.27,49.21
    >>Kill mobs with |T136026:0|t[Earth Shock] and obtain 10 stacks of |T237556:0|t[Building Inspiration]
    .cast 402265 >>Use the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r] once you have 10 stacks
    .use 206388
    .train 425344,1


    ]])

    
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Lava Lash - 10 (Mulgore)


    --Rune of Lava Lash

step
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r in Thunder Bluff
    >>|cRXP_WARN_He is stealthed behind the bag vendor|r
    .accept 76156 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
step
    #completewith next
    .subzone 360 >>Travel to the Venture Co. Mine
step
    #loop
    .goto Mulgore,62.51,40.42,0
    .goto Mulgore,63.73,44.00,15,0
    .goto Mulgore,62.87,42.80,15,0
    .goto Mulgore,62.51,40.42,15,0
    .goto Mulgore,60.66,38.85,15,0
    .goto Mulgore,61.67,37.90,15,0
    >>Loot the |cRXP_PICK_Blasting Supplies|r for |cRXP_LOOT_Seaforium Mining Charges|r
    .complete 76156,1 --Seaforium Mining Charge (5)
step
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    .turnin 76156 >>Turn in Stalk With The Earthmother
    .accept 76160 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
step
    #loop
    .goto Mulgore,37.18,12.34,0
    .goto Mulgore,38.01,10.21,20,0
    .goto Mulgore,37.18,12.34,20,0
    .goto Mulgore,36.22,11.42,20,0
    .goto Mulgore,36.65,13.26,20,0
    >>Loot |T133944:0|t[|cRXP_LOOT_Windfury Cones|r] from the ground
    .collect 206170,8 --Windfury Cone (8)
    .train 410104,1
step
    .use 206176 >>Use |T133748:0|t[Mortar and Pestle] to create |T133213:0|t[|cRXP_LOOT_Pine Salve|r] 
    .complete 76160,1 --Pine Salve (1)
step
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    .turnin 76160 >>Turn in Stalk With The Earthmother
    .accept 76240 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
step
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T133894:0|t[Raw Brilliant Smallfish] |cRXP_BUY_from the Auction House|r
    .collect 6291,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
step
    #ssf
    .goto Thunder Bluff,56.13,46.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Train |T136245:0|t[Fishing]
    .target Kah Mistrunner
    .train 410104,1
step
    #ssf
    .goto Thunder Bluff,55.77,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Buy a|r |T132932:0|t[Fishing Pole] |cRXP_BUY_and|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_from her|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
step
    #ssf
    .goto Thunder Bluff,41.39,57.03
    >>Start fishing until you get a |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r] 
    .collect 6291,1 --Raw Brilliant Smallfish (1)
    .use 6256
    .use 6529
    .train 410104,1
step
    .goto Thunder Bluff,39.44,66.38
    .use 206344 >>Use the |T132147:0|t[Knife Set] to create |T134007:0|t[|cRXP_LOOT_Fish Chunks|r] 
    .complete 76240,1 --Fish Chunks (1)
step
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    .turnin 76240 >>Turn in Stalk With The Earthmother
    .target Boarton Shadetotem


    ]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Shamanistic Rage - 25 (Stonetalon Mountains)

step
    #completewith next
    .zone Stonetalon Mountains >>Travel to the Stonetalon Mountains
step
    .train 425343,1
    >>Kill the |cRXP_ENEMY_Primordial Anomaly|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Primordial Fury|r]
    *|cRXP_WARN_It will only receive normal damage from a specific elemental school. Look at its debuffs to see which elemental school it will take damage from.|r
    .goto Stonetalon Mountains,32.6,67.6
    .collect 210811,1
    .mob Primordial Anomaly
step
    .use 210811
    .itemcount 210811,1
    .train 425343 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Primordial Fury|r] |cRXP_WARN_to train|r |T136088:0|t[Shamanistic Rage]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Lava Burst - 25 (Hillsbrad Foothills)

step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to the Hillsbrad Foothills
step
    >>Kill the |cRXP_ENEMY_Mudsnout Shamans|r. Loot them for the |T134920:0|t[|cRXP_FRIENDLY_Kajanic Icon|r]
    .goto Hillsbrad Foothills,63.8,59.6
    .collect 206387,1
    .mob Mudsnout Shaman
step
    .equip 18,206387 >>Equip the |T134920:0|t[|cRXP_FRIENDLY_Kajanic Icon|r]
step
    .aura 408828,5+ >>Now you have to take damage from laval 5 times. |cRXP_WARN_An easy way is to go into the Ragefire Chasm dungeon and jump into the lava|r
step
    .use 206387
    .itemcount 206387,1
    .train 410095 >>|cRXP_WARN_Use the|r |T134920:0|t[|cRXP_FRIENDLY_Kajanic Icon|r] |cRXP_WARN_to train|r |T237582:0|t[Lava Burst]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Way of Earth - 15 (The Barrens)

step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>Use |T136075:0|t[Purge] on the |cRXP_ENEMY_Desert Mirage|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Earthen Rune|r]
    *|cRXP_WARN_It's a green ghost which patrolls around. Use the RestedXP target macro to find it faster.|r
    .collect 208758,1 -- Earthen Rune (1)
    .train 410107,1
    .mob Desert Mirage
step
    .use 208758
    .itemcount 208758,1
    .train 410107 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Earthen Rune|r] |cRXP_WARN_to train|r |T136025:0|t[Way of Earth]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Way of Earth - 15 (Silverpine Forest)

step
    #completewith next
    .zone Silverpine Forest >>Travel to the Silverpine Forest
step
    .train 410107,1
    >>Kill |cRXP_ENEMY_Rot Hide Mystics|r. Loot them for the |T136008:0|t[|cRXP_FRIENDLY_Rot Totem|r]
    .goto Silverpine Forest,45.4,20.2
    .collect 210253,1
    .mob Rot Hide Mystic
step
    .train 410107,1
    >>Use the |T136008:0|t[|cRXP_FRIENDLY_Rot Totem|r]. |cRXP_WARN_It will summon a level 15 elite|r. Kill the |cRXP_ENEMY_Decayed Elemental|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Earthen Rune|r]
    .collect 208758,1 -- Earthen Rune (1)
    .goto Silverpine Forest,45.4,20.2
    .mob Decayed Elemental
step
    .use 208758
    .itemcount 208758,1
    .train 410107 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Earthen Rune|r] |cRXP_WARN_to train|r |T136025:0|t[Way of Earth]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Earthshield - 25 (Azeroth)

step
    #completewith next
    .zone Blackfathom Deeps >>Travel to Blackfathom Deeps
step
    .isOnQuest 6922
    >>Kill |cRXP_ENEMY_Baron Aquanis|r in the Blackfathom Deeps Raid and loot him for the |cRXP_LOOT_|T136222:0|t[Strange Water Globe]|r |cRXP_WARN_this step will require a 10 player raid group.|r
    .collect 16782,1
    .mob Baron Aquanis
step
    >>Use |T136222:0|t|cRXP_FRIENDLY_[Strange Water Globe]||r to start the quest.
    .accept 6922 >>Accept Baron Aquanis
    .use 16782
step
    .goto Ashenvale,11.6,34.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Turnin Baron Aquanis
    .accept 78506 >>Accept Elemental Distress
    .target Je'neu Sancrea
step
    #loop
    .goto Ashenvale,47.6,67.4,20,0
    .goto Ashenvale,46.6,71.6,20,0
    .goto Ashenvale,51.6,72.6,20,0
    .goto Ashenvale,52.0,69.4,20,0
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r and loot them for |T132844:0|t|cRXP_LOOT_[Mote of Torrential Rage]|r
    .complete 78506,3
    .mob Befouled Water Elemental
step
    #completewith next
    .zone Stonetalon Mountains >>Travel to Stonetalon Mountains
step
    #loop
    .goto Stonetalon Mountains,45.6,44.6,20,0
    .goto Stonetalon Mountains,44.0,39.8,20,0
    .goto Stonetalon Mountains,37.6,50.2,20,0
    .goto Stonetalon Mountains,34.6,60.6,20,0
    >>Kill |cRXP_ENEMY_Rogue Flame Spirits|r and loot them for |T132839:0|t|cRXP_LOOT_[Mote of Infernal Rage]|r
    .complete 78506,2
    .mob Rogue Flame Spirit
step
    #loop
    .goto Stonetalon Mountains,29.8,60.6,20,0
    .goto Stonetalon Mountains,29.2,68.8,20,0
    .goto Stonetalon Mountains,32.6,68.8,20,0
    .goto Stonetalon Mountains,36.6,66.6,20,0
    >>Kill |cRXP_ENEMY_Enraged Stone Spirit|r, |cRXP_ENEMY_Furious Stone Spirit|r and loot them for |T132838:0|t|cRXP_LOOT_[Mote of Seismic Rage]|r |cRXP_WARN_be careful of dangerous enemies in the area.|r
    .complete 78506,1
    .mob Enraged Stone Spirit
    .mob Furious Stone Spirit
step
    .isOnQuest 78506
    >>Purchase |T134717:0|t[Elixir of Wisdom] and |T134797:0|t[Elixir of Water Breathing] from the Auction House or a player, |cRXP_WARN_alternatively craft it yourself if you are an alchemist.|r
    .collect 3383,1
    .collect 134797,1
step
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
step
    .goto Ashenvale,11.6,34.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78506 >>Turnin Elemental Distress
    .accept 78537 >>Accept Elixir of Insight
    .accept 78537 >>Turnin Elixir of Insight
    .accept 78561 >>Accept Elixir of Insight
    .target Je'neu Sancrea
step
    .goto 1440,11.41,33.08
    >>Use |T134791:0|t[Elixir of Insight] near the Bonfire to see a vision of a Quilboar
    .complete 78561,1
    .use 210712
step
    .goto Ashenvale,11.6,34.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78561 >>Turnin Elixir of Insight
    .accept 78575 >>Accept Hirzek
    .target Je'neu Sancrea
step
    #completewith next
    .zone The Barrens >>Travel to the Barrens
step
    .goto The Barrens,43.6, 79.0
    >>Kill |cRXP_ENEMY_Hirzek|r and loot him for |T135146:0|t|cRXP_LOOT_[Hirzek's Staff]|r |cRXP_WARN_If you have trouble killing it consider grouping up.|r
    .complete 78575,1 >>Accept Hirzek
    .mob Hirzek
    .mob Bound Elemental
step
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
step
    .goto Ashenvale,11.6,34.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78575 >>Turnin Hirzek
    .target Je'neu Sancrea
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Water Shield - 20 (The Barrens)

step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
step
    >>Kill the |cRXP_ENEMY_Kolkar Wrangler|r and |cRXP_ENEMY_Kolkar Stormer|r. Loot them for a |T134237:0|t[Kolkar Booty Key]
    .goto The Barrens,44.4,23.6
    .goto The Barrens,45.8,38.4,0
    .collect 5020,1
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    >>Loot one of the |cRXP_PICK_Kolkar's Booty|r for the |T135832:0|t[|cRXP_FRIENDLY_Tempest Icon|r]
    .collect 206382,1
    .goto The Barrens,43.0,23.5,-1
    .goto The Barrens,52.8,41.8,-1
    .goto The Barrens,44.3,37.7,-1
step
    .equip 206382,18 >>Equip the |T135832:0|t[|cRXP_FRIENDLY_Tempest Icon|r]
step
    .aura 408828,1+ >>Use |cRXP_WARN_3 spells with a different element, like Lightning Bolt, Frost Shock/Frostbrand Weapon Auto Attack and Flame Shock|r on 10 different enemies.
step
    .use 206382
    .itemcount 206382,1
    .train 410097 >>|cRXP_WARN_Use the|r |T135832:0|t[|cRXP_FRIENDLY_Tempest Icon|r] |cRXP_WARN_to train|r |T132315:0|t[Water Shield]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Water Shield - 20 (Silverpine Forest)

step
    #completewith next
    .zone Silverpine Forest >>Travel to Silverpine Forest
step
    >>Kill |cRXP_ENEMY_Grimson the Pale|r |cRXP_WARN_inside the cave|r. Loot him for the |T135832:0|t[|cRXP_FRIENDLY_Tempest Icon|r]
    .goto Silverpine Forest,57.4,44.8
    .collect 206382,1
    .mob Grimson the Pale
step
    .equip 206382,18 >>Equip the |T135832:0|t[|cRXP_FRIENDLY_Tempest Icon|r]
step
    .aura 408828,1+ >>Use |cRXP_WARN_3 spells with a different element, like Lightning Bolt, Frost Shock/Frostbrand Weapon Auto Attack and Flame Shock|r on 10 different enemies.
step
    .use 206382
    .itemcount 206382,1
    .train 410097 >>|cRXP_WARN_Use the|r |T135832:0|t[|cRXP_FRIENDLY_Tempest Icon|r] |cRXP_WARN_to train|r |T132315:0|t[Water Shield]
]])
