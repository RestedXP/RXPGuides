RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Overload - 3 (Durotar)


    --Rune of Overload

step << !Tauren
    #season 2
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shikrik|r
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .target Shikrik
step
    #season 2
    .loop 25,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>Kill |cFFFF5722Scorpid Workers|r. Loot them for |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step 
    #season 2
    .loop 25,Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
    >>Continue to kill |cFFFF5722Scorpid Workers|r and obtain 10 stacks of |T237556:0|t[Building Inspiration] as they deal nature damage to you
    .cast 402265 >>Use the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r] once you have 10 stacks
    .mob Scorpid Worker
    .use 206381
    .train 410094,1
step << !Tauren
    #season 2
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .accept 77652 >>Accept Icons of Power
    .target Meela Dawnstrider
step
    #season 2
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
    #season 2
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
    #season 2
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
    #season 2
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
    #season 2
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
    #season 2
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75
    >>Click the |cRXP_PICK_Galvanic Totem|r to obtain |T134918:0|t[|cRXP_FRIENDLY_Galvanic Icon|r]
    >>|cRXP_WARN_Follow the waypoint arrow for the two known spawn locations|r
    .collect 206386,1 --Galvanic Totem (1)
    .train 410098,1
step
    #season 2
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
    #season 2
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r inside Kolkar Crag
    >>|cRXP_WARN_Another players needs to click the portal. Loot the|r |cRXP_FRIENDLY_Adventurer's Spirit|r |cRXP_WARN_afterwards for|r |T237571:0|t[|cRXP_FRIENDLY_Echo of the Ancestors|r]
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
step
    #season 2
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
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r outside of the Venture Co. Mine
    >>|cRXP_WARN_Another players needs to click the portal. Loot the|r |cRXP_FRIENDLY_Adventurer's Spirit|r |cRXP_WARN_afterwards for|r |T237571:0|t[|cRXP_FRIENDLY_Echo of the Ancestors|r]
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
step
    #season 2
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
    #season 2
    #completewith next
    +|cRXP_WARN_Make sure you have trained |T135813:0|t[Flame Shock]!|r
step
    #season 2
    .goto Durotar,58.70,45.54
    >>Cast |T135813:0|t[Flame Shock] on the |cRXP_ENEMY_Frozen Makrura|r east of Razor Hill. Loot him for |T134918:0|t[|cRXP_FRIENDLY_Sulfurous Icon|r]
    >>|cRXP_WARN_You need to group up with Shamans/Warlocks/Mages. At least 5 sources of fire damage debuffs need to be applied on the|r |cRXP_ENEMY_Frozen Makrura|r |cRXP_WARN_for the ice to melt!|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
step
    #season 2
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
    #season 2
    .goto Mulgore,32.16,48.75,40,0
    .goto Mulgore,31.27,49.21
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |T134237:0|t[|cRXP_LOOT_Artifact Storage Key|r]
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step
    #season 2
    .goto Mulgore,31.57,49.54
    >>Open the |cRXP_PICK_Artifact Storage|r for |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step
    #season 2
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
    #season 2
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r in Thunder Bluff
    >>|cRXP_WARN_He is stealthed behind the bag vendor|r
    .accept 76156 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
step
    #season 2
    #completewith next
    .subzone 360 >>Travel to the Venture Co. Mine
step
    #season 2
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
    #season 2
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    .turnin 76156 >>Turn in Stalk With The Earthmother
    .accept 76160 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
step
    #season 2
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
    #season 2
    .use 206176 >>Use |T133748:0|t[Mortar and Pestle] to create |T133213:0|t[|cRXP_LOOT_Pine Salve|r] 
    .complete 76160,1 --Pine Salve (1)
step
    #season 2
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    .turnin 76160 >>Turn in Stalk With The Earthmother
    .accept 76240 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
step
    #season 2
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T133894:0|t[Raw Brilliant Smallfish] |cRXP_BUY_from the Auction House|r
    .collect 6291,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
step
    #season 2
    #ssf
    .goto Thunder Bluff,56.13,46.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Train |T136245:0|t[Fishing]
    .target Kah Mistrunner
    .train 410104,1
step
    #season 2
    #ssf
    .goto Thunder Bluff,55.77,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Buy a|r |T132932:0|t[Fishing Pole] |cRXP_BUY_and|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_from her|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
step
    #season 2
    #ssf
    .goto Thunder Bluff,41.39,57.03
    >>Start fishing until you get a |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r] 
    .collect 6291,1 --Raw Brilliant Smallfish (1)
    .use 6256
    .use 6529
    .train 410104,1
step
    #season 2
    .goto Thunder Bluff,39.44,66.38
    .use 206344 >>Use the |T132147:0|t[Knife Set] to create |T134007:0|t[|cRXP_LOOT_Fish Chunks|r] 
    .complete 76240,1 --Fish Chunks (1)
step
    #season 2
    .goto Thunder Bluff,39.44,66.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    .turnin 76240 >>Turn in Stalk With The Earthmother
    .target Boarton Shadetotem


    ]])