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
#subgroup Legs << Warlock/Paladin
#subgroup Gloves << Mage/Rogue
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

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Wild Growth - 25 (Multiple Zones)

step << Druid
    #completewith next
    .zone Moonglade >> Teleport to Moonglade
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .accept 78229 >> Accept Trial of The Owls
    .target Loganaar
    .train 410028,1
step << Druid
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
step << Druid
    .goto Ashenvale,86.963,43.159
    >>Click the |cRXP_PICK_Owl Statue|r to begin the event
    >>|cRXP_WARN_You will need to defeat 3 waves of 2 mobs at a time ranging from levels 23-25|r
    >>|cRXP_WARN_Ensure the |cRXP_FRIENDLY_Summoned Wisp|r does not die. It is not possible to heal it, however it will heal to full between waves|r
    >>After defeating all waves, loot the |cRXP_PICK_Gift of the Wisp|r on the ground
    .complete 78229,1 -- Symbol of the First Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .goto Duskwood,46.91,58.76,50,0
    .goto Duskwood,45.13,58.26,25,0
    .goto Duskwood,49.520,33.851
    .subzone 856 >> Travel to the Twilight Grove in Duskwood
    .train 410028,1
step << Druid
    .goto Duskwood,49.520,33.851
    +Click the |cRXP_PICK_Owl Statue|r to gain the |T132150:0|t[Eyes of the Owl] buff
    .aura 424310
    .train 410028,1
step << Druid
    .goto Duskwood,45.13,58.26
    #completewith next
    +Exit the Twilight Grove
    .subzoneskip 856,1
    .train 410028,1
step << Druid
    .goto Duskwood,65.2,34.8,65,0
    .goto Duskwood,60.6,25.8,65,0
    .goto Duskwood,66.0,23.6,65,0
    .goto Duskwood,68.0,31.6,65,0
    .goto Duskwood,65.2,34.8
    >>Kill |cRXP_ENEMY_Agon|r. Loot it for the |cRXP_LOOT_Symbol of the Second Owl|r
    >>|cRXP_ENEMY_Agon|r |cRXP_WARN_patrols around slightly|r
    >>|cRXP_WARN_You must have the|r |T132150:0|t[Eyes of the Owl] |cRXP_WARN_buff to see|r |cRXP_ENEMY_Agon|r
    .complete 78229,2 -- Symbol of the Second Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Hillsbrad Foothills >> Travel to Hillsbrad Foothills
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,36.914,76.142
    .goto Hillsbrad Foothills,54.424,82.016,0
    +Click the |cRXP_PICK_Twin Owl Statue|r to gain the |T237178:0|t[Twin Owl Aura] buff
    >>|cRXP_WARN_You have 1 min 40 sec to get to the other small island and click the other|r |cRXP_PICK_Twin Owl Statue|r
    >>|cRXP_WARN_Ensure you use|r |T132112:0|t[Aquatic Form]
    >>|cRXP_WARN_The other island is marked on your map|r
    .aura 424181
    .aura 424182
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,54.424,82.016
    >>Swim to the other island. Click the |cRXP_PICK_Twin Owl Statue|r within 1 min 40 sec
    >>|cRXP_WARN_Ensure you use|r |T132112:0|t[Aquatic Form]
    >>|cRXP_WARN_If you fail and lose the buff, click this |cRXP_PICK_Twin Owl Statue|r and return to the island you just came from|r
    .complete 78229,3 -- Symbol of the Third Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Teleport to Moonglade
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .turnin 78229 >> Turn in Trial of The Owls
    .target Loganaar
    .train 410028,1
step << Druid
    .train 410028 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wild Growth|r] |cRXP_WARN_to train|r |T236153:0|t[Wild Growth]
    .use 210137
    .itemcount 210137,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Mage SoD
#group RestedXP Rune Guide
#subgroup Chest << Warrior
#subgroup Legs << Mage
#name Flagellation - 25 (Duskwood) << Warrior
#name Mass Regeneration - 25 (Duskwood) << Mage

step << Warrior/Mage
    #completewith next
    .goto Duskwood,23.630,34.888,15 >> Enter the north eastern crypt
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,26.115,30.863
    >>Open the |cRXP_PICK_Dusty Coffer|r. Loot it for the |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r]
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,15.602,38.621,15 >> Exit this crypt and head down into the western crypt
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,18.140,37.940
    .cast 426182 >> |cRXP_WARN_Use the|r |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r] |cRXP_WARN_on the |cRXP_PICK_Slumbering Bones|r on the throne|r
    .use 210568 >>|cRXP_WARN_This will summon a level 25 elite|r |cRXP_ENEMY_Awakened Lich|r
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,18.140,37.940
    >>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] << Warrior
    >>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] << Mage
    >>|cRXP_WARN_If someone else is there killing the |cRXP_ENEMY_Awakened Lich|r you can also help them and you will still be able to loot it|r
    .collect 210569,1 << Warrior -- Rune of Flagellation (1)
    .collect 211514,1 << Mage -- Spell Notes: Mass Regeneration (1)
    .mob Awakened Lich
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior
    .train 416050 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] |cRXP_WARN_to train|r |T133495:0|t[Flagellation]
    .use 210569
    .itemcount 210569,1
    .train 403480,1
step << Mage
    .train 416050 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] |cRXP_WARN_to train|r |T132870:0|t[Mass Regeneration]
    .use 211514
    .itemcount 211514,1
    .train 415939,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Raging Blow - 25 (Multiple Zones)

step << Warrior
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alonso|r
    .accept 78132 >> Accept Dragonslayer's Helm
    .accept 78134 >> Accept Dragonslayer's Lance
    .accept 78133 >> Accept Dragonslayer's Shield
    .target Alonso
    .train 425444,1 
step << Warrior
    #completewith next
    .goto Wetlands,49.40,16.98
    .subzone 205 >> Travel to Dun Modr in Wetlands
    .train 425444,1
step << Warrior
    .goto Wetlands,46.92,17.53,15,0
    .goto Wetlands,46.553,18.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dark Iron Entrepreneur|r inside of the building
    >>|cRXP_WARN_You may need to corpse run a couple times to get to him|r
    >>|cRXP_BUY_Buy a|r |T135130:0|t[Dragonslayer's Lance] |cRXP_BUY_it costs 75 silver|r
    .complete 78134,1 -- Dragonslayer's Lance (1)
    .target Dark Iron Entrepreneur
    .train 425444,1
step << Warrior
    #completewith next
    .goto Redridge Mountains,69.928,55.814
    .subzone 2099 >> Travel to Stonewatch Keep in Redridge Mountains
    .train 425444,1
step << Warrior
    .goto Redridge Mountains,69.928,55.814
    >>Click the |cRXP_PICK_Wall-Mounted Shield|r. Loot it for the |cRXP_LOOT_Dragonslayer's Shield|r
    >>|cRXP_WARN_This is inside of the main keep upstairs behind |cRXP_ENEMY_Gath'Ilzogg|r who is a level 26 elite|r
    >>|cRXP_WARN_You will need to kill |cRXP_ENEMY_Gath'Ilzogg|r or have him be engaged by someone else in order to loot it. Ensure you have a party before going in|r
    .complete 78133,1 -- Dragonslayer's Shield (1)
    .train 425444,1
step << Warrior
    #completewith next
    .subzone 209,2 >> Find a group and enter Shadowfang Keep
step << Warrior
    >>Open the |cRXP_PICK_Discarded Helm|r. Loot it for the |cRXP_LOOT_Dragonslayer's Helm|r
    >>|cRXP_WARN_This is found on a bench behind|r |cRXP_ENEMY_Commander Springvale|r
    .complete 78132,1 -- Dragonslayer's Helm (1)
    .train 425444,1
step << Warrior
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alonso|r
    .turnin 78132 >> Turn In Dragonslayer's Helm
    .turnin 78134 >> Turn In Dragonslayer's Lance
    .turnin 78133 >> Turn In Dragonslayer's Shield
    .target Alonso
    .train 425444,1 
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alonso|r
    .accept 78144 >> Accept Alonso the Dragonslayer
    .target Alonso
    .train 425444,1 
step << Warrior
    .goto Ashenvale,42.029,68.999
    >>Kill the |cRXP_ENEMY_Green Dragon Whelp|r
    .complete 78144,1 -- Accompany Alonso to slay the dragon.
    .target Alonso
    .mob Green Dragon Whelp
    .train 425444,1 
step << Warrior
    .goto Ashenvale,42.053,69.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alonso|r
    .turnin 78144 >> Turn in Alonso the Dragonslayer
    .target Alonso
    .train 425444,1
step << Warrior
    .train 425444 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Raging Blow|r] |cRXP_WARN_to train|r |T132215:0|t[Raging Blow]
    .use 210569
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Strength of Soul - 22 (Ashenvale)

step << Priest
    .goto Ashenvale,32.0,43.0,65,0
    .goto Ashenvale,33.6,38.8,65,0
    .goto Ashenvale,37.6,34.0
    >>Kill |cRXP_ENEMY_Thistlefur Totemics|r and |cRXP_ENEMY_Thistlefur Shaman|r. Loot them for the |T135736:0|t[Primal Insight]
    .collect 211534,1 -- Primal Insight (1)
    .mob Thistlefur Totemic
    .mob Thistlefur Shaman
    .train 415997,1
step << Priest
    .goto Ashenvale,38.002,29.528,40,0
    .goto Ashenvale,37.938,27.958,30,0
    .goto Ashenvale,38.819,27.160,30,0
    .goto Ashenvale,38.804,26.558
    >>|cRXP_WARN_Run up the giant tree next to the cave enterance. Follow the arrow carefully|r
    .use 211534 >>|cRXP_WARN_Use the|r |T135736:0|t[Primal Insight] |cRXP_WARN_when you are next to the two dreamcatchers on the tree to create the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Seven Visitors]|r
    .collect 211531,1 -- Prophecy of Seven Visitors (1)
    .train 415997,1
step << Priest
    >>You must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs << Alliance
    >>You must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs << Horde
    >>You must /kneel inside one of the following places: Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge << Human/Dwarf
    >>You must /kneel inside one of the following places: A moonwell, such as the one in Stormwind or the one in Darnassus << NightElf
    >>You must /kneel at any graveyard << Undead
    >>You must /kneel at any Loa Altar, such as the one in Sen'Jin Village or the one at the Crossroads in The Barrens << Troll
    >>In order to receive your second |T135934:0|t|T136057:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you << Alliance
    >>In order to receive your second |T237569:0|t|T136077:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you << Horde
    .train 415997 >> |cRXP_WARN_Once you have both|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Seven Visitors]|r |cRXP_WARN_to learn|r |T135911:0|t[Strength of Soul] << Alliance
    .train 415997 >> |cRXP_WARN_Once you have both|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Seven Visitors]|r |cRXP_WARN_to learn|r |T135911:0|t[Strength of Soul] << Horde
    .use 211531
    .itemcount 211531,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Power Word: Barrier - 22 (Redridge Mountains)

step << Priest
    #completewith next
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .train 425213,1
step << Priest
    .goto Redridge Mountains,67.2,53.6
    .goto Redridge Mountains,68.8,57.4
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a City Enthralled|r]
    >>|cRXP_ENEMY_Blackrock Shadowcasters|r |cRXP_WARN_are level 22-23 elites. Find a group for this|r
    .collect 211530,1 -- Prophecy of a City Enthralled (1)
    .mob Blackrock Shadowcaster
    .train 425213,1
step << Priest
    >>You must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs << Alliance
    >>You must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs << Horde
    >>You must /kneel inside one of the following places: Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge << Human/Dwarf
    >>You must /kneel inside one of the following places: A moonwell, such as the one in Stormwind or the one in Darnassus << NightElf
    >>You must /kneel at any graveyard << Undead
    >>You must /kneel at any Loa Altar, such as the one in Sen'Jin Village or the one at the Crossroads in The Barrens << Troll
    >>In order to receive your second |T135934:0|t|T136057:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you << Alliance
    >>In order to receive your second |T237569:0|t|T136077:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you << Horde
    .train 425213 >> |cRXP_WARN_Once you have both|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a City Enthralled|r] |cRXP_WARN_to learn|r |T253400:0|t[Power Word: Barrier] << Alliance
    .train 425213 >> |cRXP_WARN_Once you have both|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a City Enthralled|r] |cRXP_WARN_to learn|r |T253400:0|t[Power Word: Barrier] << Horde
    .use 211530
    .itemcount 211530,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Circle of Healing - 25 (Duskwood)

step << Priest
    .goto Duskwood,50.4,70.8,60,0
    .goto Duskwood,50.2,76.4
    >>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T135736:0|t[|cRXP_LOOT_Dark Insight|r] 
    .collect 211528,1 -- Dark Insight (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Night Enchanter
    .train 402859,1
step << Priest
    .goto Duskwood,91.11,30.58
    .use 211528 >> |cRXP_WARN_Use the|r |T135736:0|t[|cRXP_LOOT_Dark Insight|r] |cRXP_WARN_at the Secluded Grave behind the tower to receive the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Thousand Lights|r]
    .collect 211490,1 -- Prophecy of a Thousand Lights (1)
    .train 402859,1
step << Priest
    >>You must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs << Alliance
    >>You must now obtain two |T237569:0|t|T136077:0|t[Meditation] buffs << Horde
    >>You must /kneel inside one of the following places: Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge << Human/Dwarf
    >>You must /kneel inside one of the following places: A moonwell, such as the one in Stormwind or the one in Darnassus << NightElf
    >>You must /kneel at any graveyard << Undead
    >>You must /kneel at any Loa Altar, such as the one in Sen'Jin Village or the one at the Crossroads in The Barrens << Troll
    >>In order to receive your second |T135934:0|t|T136057:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you << Alliance
    >>In order to receive your second |T237569:0|t|T136077:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you << Horde
    .train 402859 >> |cRXP_WARN_Once you have both|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Thousand Lights]|r |cRXP_WARN_to learn|r |T135887:0|t[Circle of Healing] << Alliance
    .train 402859 >> |cRXP_WARN_Once you have both|r |T237569:0|t|T136077:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Thousand Lights]|r |cRXP_WARN_to learn|r |T135887:0|t[Circle of Healing] << Horde
    .use 211490
    .itemcount 211490,1
]])