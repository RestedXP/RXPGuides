RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Consumed by Rage - 25 (Wetlands)

step << Warrior
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >> Enter the Thelgen Rock cave
    .train 425446,1
step << Warrior
    #season 2
    .goto Wetlands,47.0,64.0
    >>Kill |cRXP_ENEMY_Carrodin|r. Loot it for the |T136088:0|t[|cRXP_FRIENDLY_Rune of Consuming Rage|r]
    .collect 210573,1 -- Rune of Consuming Rage (1)
    .mob Carrodin
    .train 425446,1
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_Use the|r |T136088:0|t[|cRXP_FRIENDLY_Rune of Consuming Rage|r] |cRXP_WARN_to train|r |T136088:0|t[Consumed by Rage]
    .use 210573
    .itemcount 210573,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Envenom - 25 (Hillsbrad)


    --Rune of Envenom

step
    #season 2
    #completewith next
	.goto Hillsbrad Foothills,76.72,46.22,60 >> Travel to Durnholde Keep
step
    #season 2
    .goto Hillsbrad Foothills,80.2,39.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris Legace|r
    >>|cRXP_BUY_Buy|r |T133469:0|t[Hot Tip] |cRXP_BUY_from her|r
    .collect 210330,1 --Hot Tip (1)
    .target Kris Legace
    .train 400102,1
step
    #season 2
    .use 210330 >>Open the |T133469:0|t[Hot Tip]
    .collect 210323,1 --Safe Combination (1)
    .collect 210329,1 --Hillsbrad Treasure Map (1)
    .train 400102,1
step
    #season 2
    .goto Western Plaguelands,59.4,84.5
    >>Open the |cRXP_PICK_Rusty Safe|r in the water for |T134419:0|t[|cRXP_FRIENDLY_Rune of Envenom|r]
    .collect 210322,1 --Rune of Envenom (1)
    .train 400102,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Envenom|r]
    .use 210322
    .train 400102,1

    ]])


RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Shiv - 25 (Duskwood)


    --Rune of Shiving

step
    #season 2
    .goto Duskwood,81.24,71.86
    >>Open the |cRXP_PICK_Offering Box|r in the Tranquil Gardens Cemetary for an |T133343:0|t[|cRXP_LOOT_Engraved Silver Ring|r]
    .collect 210251,1 --Engraved Silver Ring (1)
    .train 424988,1
step
    #season 2
    .goto Duskwood,48.5,79.9
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Defias Night Runners|r for an |T133345:0|t[|cRXP_LOOT_Engraved Gold Ring|r]
    .collect 210250,1 --Engraved Gold Ring (1)
    .mob Defias Night Runner
    .train 424988,1
step
    #season 2
    #completewith next
    .goto Duskwood,19.9,44.6,60,0 >>Travel to the Raven Hill Statue
step
    #season 2
    .goto Duskwood,19.9,44.6
    .use 210250 >> Equip both rings and type /kneel at the Statue to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Shiving|r]
    .use 210251
    .collect 210252,1 --Rune of Shiving (1)
    .train 424988,1
step
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shiving|r]
    .use 210252
    .train 424988,1

    ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Wild Strikes - 14 (Stonetalon Mountains)

step << Druid
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>Kill |cRXP_ENEMY_Grimtotems|r. Loot them for the |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    .train 410021 >> |cRXP_WARN_Use the|r |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r] |cRXP_WARN_to train|r |T132143:0|t[Wild Strikes]
    .use 210534
    .itemcount 210534,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Starsurge - 25 (Wetlands)

step << Druid
    #completewith next
    +|cRXP_WARN_It is possible to do this at level 1 however you will have to die a lot for it|r
    .train 424718,1
step << Druid
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grugimdern|r
    >>|cRXP_WARN_He will give you a|r |T134052:0|t[|cRXP_LOOT_Marshroom|r]
    .collect 210499,1 -- Marshroom (1)
    .skipgossip
    .target Grugimdern
    .train 424718,1
step << Druid
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_Use the|r |T134052:0|t[|cRXP_LOOT_Marshroom|r] |cRXP_WARN_to eat it|r
    .use 210499
    .train 424718,1
step << Druid
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vodyanoi|r
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    .train 424718 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Stars|r] |cRXP_WARN_to train|r |T135730:0|t[Starsurge]
    .use 210500
    .itemcount 210500,1
]])