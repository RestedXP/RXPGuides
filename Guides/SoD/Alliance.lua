RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Lacerate - 12 (Darkshore) << Druid
#name Beast Mastery - 12 (Darkshore) << Hunter

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
#group RestedXP Rune Guide
#subgroup Gloves
#name Mangle - 8 (Teldrassil) << Druid
#name Explosive Shot - 8 (Teldrassil) << Hunter

step << Druid/Hunter
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> Enter the Ban'ethil Barrow Den
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    .goto Teldrassil,45.63,58.13
    >>Kill |cRXP_ENEMY_Rageclaw|r. Loot him for the |T136061:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r] << Druid
    >>Kill |cRXP_ENEMY_Rageclaw|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] << Hunter
    >>|cRXP_ENEMY_Rageclaw|r |cRXP_WARN_patrols throughout Ban'ethil Barrows|r
    .collect 206954,1 << Druid -- Idol of Ursine Rage (1)
    .collect 206169,1 << Hunter -- Rune of Explosive Shot (1)
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .unitscan Rageclaw
step << Hunter
    .train 410123 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] |cRXP_WARN_to train|r |T236178:0|t[Explosive Shot]
    .use 206169
    .itemcount 206169,1
step << Druid
    .equip 18,206954 >> |cRXP_WARN_Equip the|r |T136061:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    .train 410025 >>|cRXP_WARN_While in|r |T132276:0|t[Bear Form] |cRXP_WARN_maintain above 50 Rage for 60 seconds, then use the|r |T136061:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r] |cRXP_WARN_again to train|r |T132135:0|t[Mangle]
    .use 206954
    .itemcount 206954,1
]])