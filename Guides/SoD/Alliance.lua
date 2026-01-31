if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Lacerate - 12 (Darkshore) << Druid
#name Beast Mastery - 12 (Darkshore) << Hunter
#title Lacerate << Druid
#title Beast Mastery << Hunter

step << Druid/Hunter
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r. Loot them for their |T237270:0|t[|cRXP_LOOT_Crab Treats|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .goto Darkshore,35.8,55.6
    .use 209027 >> |cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Crab Treats|r] |cRXP_WARN_on a |cRXP_ENEMY_Young Reef Crawler|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] << Druid
    .use 209027 >> |cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Crab Treats|r] |cRXP_WARN_on a |cRXP_ENEMY_Young Reef Crawler|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] << Hunter
    .collect 208687,1 << Druid -- Rune of Lacerate (1)
    .collect 208701,1 << Hunter -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .train 416049 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] |cRXP_WARN_to train|r |T132131:0|t[Lacerate] << Druid
    .use 208687 << Druid
    .itemcount 208687,1 << Druid
    .train 410110 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] |cRXP_WARN_to train|r |T132270:0|t[Beast Mastery] << Hunter
    .use 208701 << Hunter
    .itemcount 208701,1 << Hunter
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Mangle - 8 (Teldrassil) << Druid
#name Explosive Shot - 8 (Teldrassil) << Hunter
#title Mangle << Druid
#title Explosive Shot << Hunter

step
    +|cRXP_WARN_You should be at least level 8 in order to acquire|r |T133816:0|t[Engrave Gloves - Mangle] |cRXP_WARN_in Teldrassil alone|r << Druid
    +|cRXP_WARN_You should be at least level 8 in order to acquire|r |T133816:0|t[Engrave Gloves - Explosive Shot] |cRXP_WARN_in Teldrassil alone|r << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .xp >8,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >> Travel to Teldrassil
    .subzoneskip 262
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,44.197,58.040
    .subzone 262 >> Enter the Ban'ethil Barrow Den
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,44.064,58.196,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,45.118,57.701,20 >> Travel towards |cRXP_ENEMY_Rageclaw|r inside
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #loop
    #label Rune
    .line 1438,45.055,57.739,45.008,58.055,45.091,58.386,45.256,58.538,45.492,58.609,45.668,58.356,45.702,57.980,45.604,57.699,45.370,57.566,45.161,57.638,45.118,57.701
    .goto 1438,45.055,57.739,12,0
    .goto 1438,45.008,58.055,12,0
    .goto 1438,45.091,58.386,12,0
    .goto 1438,45.256,58.538,12,0
    .goto 1438,45.492,58.609,12,0
    .goto 1438,45.668,58.356,12,0
    .goto 1438,45.702,57.980,12,0
    .goto 1438,45.604,57.699,12,0
    .goto 1438,45.370,57.566,12,0
    .goto 1438,45.161,57.638,12,0
    .goto 1438,45.118,57.701,12,0
    >>Kill |cRXP_ENEMY_Rageclaw|r on the bottom floor inside. Loot him for the |T136061:0|t|cRXP_LOOT_[Idol of Ursine Rage]|r << Druid
    >>Kill |cRXP_ENEMY_Rageclaw|r on the bottom floor inside. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Explosive Shot]|r << Hunter
    .collect 206954,1 << Druid -- Idol of Ursine Rage (1)
    .collect 206169,1 << Hunter -- Rune of Explosive Shot (1)
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .unitscan Rageclaw
step << Hunter
    .train 410123 >> |cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Explosive Shot]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Explosive Shot]
    .use 206169
    .itemcount 206169,1
step << Druid
    .equip 18,206954 >> |cRXP_WARN_Equip the|r |T136061:0|t|cRXP_LOOT_[Idol of Ursine Rage]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #loop
    .goto 1438,44.731,57.355,0
    .goto 1438,44.254,59.083,0
    .goto 1438,44.064,58.196,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.064,58.196,15,0
    .aura 414824 >>|cRXP_WARN_While in|r |T132276:0|t[Bear Form]|cRXP_WARN_, maintain 50 or more Rage for 60 seconds|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid
    .train 410025 >>|cRXP_WARN_Use the|r |T136061:0|t|cRXP_LOOT_[Idol of Ursine Rage]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Mangle]
    .use 206954
    .aura -414824
    .train 410025,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Warrior SoD/Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest << Rogue/Priest
#subgroup Legs << Warrior
#name Slaughter from the Shadows - 8 (Teldrassil) << Rogue
#name Furious Thunder - 8 (Teldrassil) << Warrior
#name Void Plague - 8 (Teldrassil) << Priest
#title Slaughter from the Shadows << Rogue
#title Furious Thunder << Warrior
#title Void Plague << Priest

step
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> Enter the Ban'ethil Barrow Den
    .train 424992,1 << Rogue
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step << Rogue
    .goto Teldrassil,44.155,61.182
    >>Open the |cRXP_PICK_Gnarlpine Stash|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    >>|cRXP_WARN_Note: The |cRXP_PICK_Gnarlpine Stash|r spawns somewhere randomly within the Ban'ethil Barrows|r
    .collect 203993 -- Rune of Slaughter (1)
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r] |cRXP_WARN_to train|r |T236280:0|t[Slaughter from the Shadows]
    .use 203993
step << Warrior
    .goto Teldrassil,44.401,60.655
    >>Open the |cRXP_PICK_Gnarlpine Cache|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    >>|cRXP_WARN_Note: The |cRXP_PICK_Gnarlpine Cache|r can have multiple spawn locations within the Ban'ethil Barrows|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] |cRXP_WARN_to train|r |T136048:0|t[Furious Thunder]
    .use 204809
step << Priest
    .goto Teldrassil,44.401,60.655
    >>Open the |cRXP_PICK_Gnarlpine Cache|r. Loot it for a |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    >>|cRXP_WARN_Note: The |cRXP_PICK_Gnarlpine Cache|r can have multiple spawn locations within the Ban'ethil Barrows|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves << Rogue
#subgroup Legs << Priest
#name Mutilate - 8 (Teldrassil) << Rogue
#name Shared Pain - 8 (Teldrassil) << Priest
#title Mutilate << Rogue
#title Shared Pain << Priest

step << Rogue/Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Travel to Fel Rock
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue/Priest
    .goto Teldrassil,51.2,50.6
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] << Rogue
    >>Kill |cRXP_ENEMY_Lord Melenas|r. Loot him for the |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] << Priest
    >>|cRXP_ENEMY_Lord Melenas|r |cRXP_WARN_may be located in many different spawn locations throughout Fel Rock|r
    .collect 203990,1 << Rogue
    .collect 205945,1 << Priest
    .unitscan Lord Melenas
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue
    .train 400094 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step << Priest
    .train 402854 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of an Imprisoned Savior|r] |cRXP_WARN_to train|r |T136160:0|t[Shared Pain]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, a moonwell, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205945
    .itemcount 205945,1
]])
