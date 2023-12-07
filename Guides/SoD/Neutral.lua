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

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Priest/Hunter/Druid/Warrior/Shaman
#subgroup Legs << Warlock
#subgroup Gloves << Mage/Rogue/Paladin
#name Serendipity - 25 (Ratchet) << Priest
#name Lone Wolf - 25 (Ratchet) << Hunter
#name Survival of the Fittest - 25 (Ratchet) << Druid
#name Warbringer - 25 (Ratchet) << Warrior
#name Dual Wield - 25 (Ratchet) << Shaman
#name Demonic Pact - 25 (Ratchet) << Warlock
#name Divine Sacrifice - 25 (Ratchet) << Paladin
#name Rewind Time - 25 (Ratchet) << Mage
#name Main Gauche - 25 (Ratchet) << Rogue
#next Divine Storm - 25 (Darkshore) << Paladin

<< SoD

step << Horde
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith next
    >>OPTIONAL: Buy 24x |T134844:0|t[Fish Oil] and 20x |T133710:0|t[Dark Iron Ordinance]
    *|cRXP_WARN_Keep in mind that you need at least 5 gold to see the quests|r
    .collect 17058,24
    .collect 210138,20
step << Horde
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    >>Buy at least 30x |T133870:0|t[Shredder Autosalvage Units]
    *If you have the gold you can also just directly buy the 16 |T133001:0|t[Shredder Turbocharger]
    .goto Orgrimmar,55.69,62.86
    .collect 210147,30
step << Alliance
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith next
    >>OPTIONAL: Buy 24x |T134844:0|t[Fish Oil] and 20x |T133710:0|t[Dark Iron Ordinance]
    *|cRXP_WARN_Keep in mind that you need at least 5 gold to see the quests|r
    .collect 17058,24
    .collect 210138,20
step << Alliance
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    >>Buy about 35x |T133870:0|t[Shredder Autosalvage Units]
    *If you have the gold you can also just directly buy the 16x |T133001:0|t[Shredder Turbocharger]
    .goto Ironforge,24.2,74.5,-1
    .goto Stormwind City,61.1,70.7,-1
    .collect 210147,30
step << Horde
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith next
    .goto Stonetalon Mountains,66.6,55.5
    .zone Stonetalon Mountains >>Travel to Stonetalon Mountains
step << Horde
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    >>Kill the |cRXP_ENEMY_Venture Co. Light Shredders|r. Use the |T133870:0|t[Shredder Autosalvage Unit] on the corpse for the |cRXP_LOOT_Turbochargers|r
    .goto Stonetalon Mountains,66.6,55.5
    .collect 210146,16
    .use 210147
    .mob Venture Co. Light Shredder
step << Horde
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith RuneRatchetDarkIronOrdinance
    .goto Wetlands,49.6,17.4
    .zone Wetlands >>Take the zeppelin in Orgrimmar to Tirisfal and go to Wetlands. Start looking for a group to farm the |T133710:0|t[Dark Iron Ordinance]
step << Alliance
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith RuneRatchetDarkIronOrdinance
    .goto Wetlands,49.6,17.4
    .zone Wetlands >>Travel to Wetlands. Start looking for a group to farm the |T133710:0|t[Dark Iron Ordinance]
step
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #label RuneRatchetDarkIronOrdinance
    #loop
    .goto Wetlands,48.6,16.0,40,0
    .goto Wetlands,60.6,25.8,40,0
    >>Kill the elite |cRXP_ENEMY_Dark Iron Dwarves|r. Loot them for the |cRXP_LOOT_Iron Ordinances|r
    *|cRXP_WARN_They drop for everyone in your group|r
    .collect 210138,20
    .mob Dark Iron Dwarf
    .mob Dark Iron Bombardier
step
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    >>Kill the |cRXP_ENEMY_Blue Gill Oracles|r. Loot them for the |cRXP_LOOT_Fish Oil|r
    .goto Wetlands,16.6,32.2
    .collect 17058,24
    .mob Blue Gill Oracle
step << Alliance
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith next
    .goto Stonetalon Mountains,66.6,55.5
    .zone Stonetalon Mountains >>Travel to Stonetalon Mountains (e.g. take the boat to Dustwallow Marsh -> fly to Ratchet or directly to Stonetalon Mountains)
step << Alliance
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    >>Kill the |cRXP_ENEMY_Venture Co. Light Shredders|r. Use the |T133870:0|t[Shredder Autosalvage Unit] on the corpse for the |cRXP_LOOT_Turbochargers|r
    .goto Stonetalon Mountains,66.6,55.5
    .collect 210146,16
    .use 210147
    .mob Venture Co. Light Shredder
step << Horde
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith RuneRatchetGrizzby
    .goto The Barrens,61.8,39.4
    .zone The Barrens >>Travel to The Barrens (e.g. fly to Undercity from Hammerfall (Arathi Highlands) -> take the zeppelin to Orgrimmar)
step << Alliance
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #completewith RuneRatchetGrizzby
    .goto The Barrens,61.8,39.4
    .zone The Barrens >>Travel to The Barrens
step
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    #label RuneRatchetGrizzby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Grizzby|r and wait for the roleplay
    .goto The Barrens,61.8,39.4
    .turnin 78625 >>Turn in Fish Oil
    .turnin 78266 >>Turn in Dark Iron Ordinance
    .turnin 78267 >>Turn in Shredder Turbochargers
    .target Grizzby
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Grizzby|r
    .vendor
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
    .train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T253400:0|t[Divine Sacrifice] << Paladin
    .train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
    .train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
    .train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
    .train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train |r |T132147:0|t[Dual Wield Specialization] << Shaman
    .target Grizzby
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Shaman/Rogue
#subgroup Legs << Mage/Warlock/Hunter/Druid
#subgroup Gloves << Paladin/Warrior/Priest
#name Mind Sear - 25 (Reputation) << Priest
#name Serpent Spread - 25 (Reputation) << Hunter
#name Skull Bash - 25 (Reputation) << Druid
#name Single-Minded Fury - 25 (Reputation) << Warrior
#name Healing Rain - 25 (Reputation) << Shaman
#name Everlasting Affliction - 25 (Reputation) << Warlock
#name Beacon of Light - 25 (Reputation) << Paladin
#name Arcane Surge - 25 (Reputation) << Mage
#name Just a Flesh Wound - 25 (Reputation) << Rogue
#next Divine Sacrifice - 25 (Ratchet) << Paladin

<< SoD

--VV if (Reputation) name formatting removed, change in Paladin guide too

step
    >>Go out and find |T132765:0|t[Waylaid Supplies]. Then go back into a capital city and deliver them. If you want to get the reputation faster buy the required items in the AH to upgrade them.
    *|cRXP_WARN_You can farm lower level mobs until you hit Friendly. Afterwards you have to farm high level mobs (>=17).|r Chests in the open world have a 90%+ chance to drop one of those items.
    .reputation 2587,honored << Horde
    .reputation 2586,honored << Alliance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Supply Officer|r in the nearest city
    .goto Orgrimmar,51.6,64.6,-1 << Horde
    .goto Thunder Bluff,39.8,53.4,-1 << Horde
    .goto Undercity,64.6,38.2,-1 << Horde
    .goto Stormwind City,55.0,61.6,-1 << Alliance
    .goto Ironforge,24.6,67.2,-1 << Alliance
    .goto Darnassus,60.0,56.4,-1 << Alliance
    .vendor
    .use 211386 << Mage
    .use 211387 << Paladin
    .use 211392 << Warlock
    .use 211391 << Shaman
    .use 211385 << Hunter
    .use 211393 << Warrior
    .use 206002 << Druid
    .use 211390 << Rogue
    .use 205950 << Priest
    .train 415996 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Tenebrous Epiphany|r] |cRXP_WARN_to train|r |T237565:0|t[Mind Sear] << Priest
    .train 409999 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beckoning Light|r] |cRXP_WARN_to train|r |T236247:0|t[Beacon of Light] << Paladin
    .train 425171 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Arcane Surge|r] |cRXP_WARN_to train|r |T135734:0|t[Arcane Surge] << Mage
    .train 425760 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Serpent Spread|r] |cRXP_WARN_to train|r |T132209:0|t[Serpent Spread] << Hunter
    .train 416046 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Skull Bash|r] |cRXP_WARN_to train|r |T133732:0|t[Skull Bash] << Druid
    .train 416003 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Single-Minded Fury|r] |cRXP_WARN_to train|r |T134919:0|t[Single-Minded Fury] << Warrior
    .train 416008 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Everlasting Affliction|r] |cRXP_WARN_to train|r |T236296:0|t[Everlasting Affliction] << Warlock
    .train 400082 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Teasing|r] |cRXP_WARN_to train|r |T132284:0|t[Just a Flesh Wound] << Rogue
    .train 416057 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rain|r] |cRXP_WARN_to train|r |T136107:0|t[Healing Rain] << Shaman
    .target Elaine Compton << Alliance
    .target Tamelyn Aldridge << Alliance
    .target Macry Baker << Alliance
    .target Jornah << Horde
    .target Dokimi << Horde
    .target Gishah << Horde
]])
