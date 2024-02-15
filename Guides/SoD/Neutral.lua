RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs << Warrior
#subgroup Chest << Hunter
#name Consumed by Rage - 25 (Wetlands) << Warrior
#name Aspect of the Lion - 25 (Wetlands) << Hunter

step
    #season 2
    #completewith next
    .zone Wetlands >>Travel to the Wetlands
step
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >> Enter the Thelgen Rock cave
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step
    #season 2
    .goto Wetlands,47.24,65.34
    >>Kill |cRXP_ENEMY_Carrodin|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Consuming Rage|r] << Warrior
    >>Kill |cRXP_ENEMY_Carrodin|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Aspect of the Lion|r] << Hunter
    .collect 210573,1 << Warrior --Rune of Consuming Rage (1)
    .collect 211205,1 << Hunter --Rune of Aspect of the Lion (1)
    .mob Carrodin
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Consuming Rage|r] |cRXP_WARN_to train|r |T136088:0|t[Consumed by Rage]
    .use 210573
    .itemcount 210573,1
step << Hunter
    #season 2
    .train 410115 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Aspect of the Lion|r] |cRXP_WARN_to train|r |T132185:0|t[Aspect of the Lion]
    .use 211205
    .itemcount 211205,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
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
    #completewith next
    .zone Western Plaguelands >>Travel to Western Plaguelands
step
    #season 2
    .goto Western Plaguelands,59.4,84.5
    >>Open the |cRXP_PICK_Rusty Safe|r in the water for |T134419:0|t[|cRXP_FRIENDLY_Rune of Venom|r]
    .collect 210322,1 --Rune of Venom (1)
    .train 400102,1
step
    #season 2
    .train 400102 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Venom|r]
    .use 210322
    .itemcount 210322,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
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
    .train 424988 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shiving|r]
    .use 210252
    .itemcount 210252,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
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
    .equip 18,210534 >> |cRXP_WARN_Equip the|r |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    >>|cRXP_WARN_Cast|r |T136085:0|t[Regrowth] |cRXP_WARN_or|r |T136041:0|t[Healing Touch] |cRXP_WARN_on 10 different friendly Beasts such as Hunter Pets/Druids in Bear Form/Shamans in Ghost Wolf|r << Horde
    >>|cRXP_WARN_Cast|r |T136085:0|t[Regrowth] |cRXP_WARN_or|r |T136041:0|t[Healing Touch] |cRXP_WARN_on 10 different friendly Beasts such as Hunter Pets or Druids in Bear Form|r << Alliance
    .train 410021 >> |cRXP_WARN_Use the|r |T134233:0|t[|cRXP_FRIENDLY_Idol of the Wild|r] |cRXP_WARN_to train|r |T132143:0|t[Wild Strikes]
    .itemcount 210534,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
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
#group RestedXP Rune & Books Guide
#subgroup Chest << Priest/Hunter/Druid/Warrior/Shaman
#subgroup Legs << Warlock/Paladin
#subgroup Gloves << Mage/Rogue
#name Serendipity - 25 (Ratchet) << Priest
#name Lone Wolf - 25 (Ratchet) << Hunter
#name Survival of the Fittest - 25 (Ratchet) << Druid
#name Warbringer - 25 (Ratchet) << Warrior
#name Dual Wield Specialization - 25 (Ratchet) << Shaman
#name Demonic Pact - 25 (Ratchet) << Warlock
#name Divine Sacrifice - 25 (Ratchet) << Paladin
#name Rewind Time - 25 (Ratchet) << Mage
#name Main Gauche - 25 (Ratchet) << Rogue
#next Crusader Strike - 4 (Elwynn Forest) << Human Paladin
#next Crusader Strike - 4 (Dun Morogh) << Dwarf Paladin
#next Lava Burst - 25 (Hillsbrad Foothills) << Shaman

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
    #loop
    .goto Stonetalon Mountains,71.04,49.03,50,0
    .goto Stonetalon Mountains,72.59,53.21,50,0
    .goto Stonetalon Mountains,70.63,55.47,50,0
    .goto Stonetalon Mountains,70.04,55.12,50,0
    .goto Stonetalon Mountains,67.53,57.65,50,0
    .goto Stonetalon Mountains,59.95,55.51,50,0
    .goto Stonetalon Mountains,62.35,52.73,50,0
    .goto Stonetalon Mountains,66.91,47.82,50,0
    .goto Stonetalon Mountains,67.31,46.39,50,0
    .goto Stonetalon Mountains,68.76,47.95,50,0
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    >>Kill |cRXP_ENEMY_Venture Co. Light Shredders|r, |cRXP_ENEMY_XT:4|r, and |cRXP_ENEMY_XT:9|r. Use the |T133870:0|t[Shredder Autosalvage Unit] on their corpse to loot them for a 66% chance of a |cRXP_LOOT_Shredder Turbocharger|r
    .collect 210146,16
    .use 210147
    .mob Venture Co. Light Shredder
    .mob XT:4
    .mob XT:9
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
    #loop
    .goto Stonetalon Mountains,71.04,49.03,50,0
    .goto Stonetalon Mountains,72.59,53.21,50,0
    .goto Stonetalon Mountains,70.63,55.47,50,0
    .goto Stonetalon Mountains,70.04,55.12,50,0
    .goto Stonetalon Mountains,67.53,57.65,50,0
    .goto Stonetalon Mountains,59.95,55.51,50,0
    .goto Stonetalon Mountains,62.35,52.73,50,0
    .goto Stonetalon Mountains,66.91,47.82,50,0
    .goto Stonetalon Mountains,67.31,46.39,50,0
    .goto Stonetalon Mountains,68.76,47.95,50,0
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
    >>Kill |cRXP_ENEMY_Venture Co. Light Shredders|r, |cRXP_ENEMY_XT:4|r, and |cRXP_ENEMY_XT:9|r. Use the |T133870:0|t[Shredder Autosalvage Unit] on their corpse to loot them for a 66% chance of a |cRXP_LOOT_Shredder Turbocharger|r
    .collect 210146,16
    .use 210147
    .mob Venture Co. Light Shredder
    .mob XT:4
    .mob XT:9
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r and wait for the roleplay
    .goto The Barrens,61.8,39.4
    .turnin 78625 >>Turn in Fish Oil
    .turnin 78266 >>Turn in Dark Iron Ordinance
    .turnin 78267 >>Turn in Shredder Turbochargers
    .target Grizzby
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r
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
    .train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
    .train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
    .train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
    .train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
    .train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
    .target Grizzby
step << Paladin
    +Congratulations! You have acquired all |T134419:0|t|cRXP_LOOT_[Runes]|r currently available.
    .train 409999,3 --Beacon of Light
    .train 410001,3 --Hand of Reckoning
    .train 410002,3 --Crusader Strike
    .train 410008,3 --Avenger's Shield
    .train 410010,3 --Divine Sacrifice
    .train 410011,3 --Inspiration Exemplar
    .train 410014,3 --Divine Storm
    .train 410015,3 --Seal of Martyrdom
    .train 416037,3 --Exorcist
    .train 425618,3 --Horn of Lordaeron
    .train 425619,3 --Aegis
    .train 425621,3 --Rebuke
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
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
    .reputation 2587,friendly << Horde
    .reputation 2586,friendly << Alliance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Supply Officer|r in the nearest city
    .goto Orgrimmar,51.6,64.6,-1 << Horde
    .goto Thunder Bluff,39.8,53.4,-1 << Horde
    .goto Undercity,64.6,38.2,-1 << Horde
    .goto Stormwind City,55.0,61.6,-1 << Alliance
    .goto Ironforge,24.6,67.2,-1 << Alliance
    .goto Darnassus,60.0,56.4,-1 << Alliance
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
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Wild Growth - 25 (Multiple Zones)

step << Druid
    #completewith next
    .zone Ashenvale >> Travel to Ashenvale
step << Druid
    .goto Ashenvale,86.963,43.159
    >>Click the |cRXP_PICK_Owl Statue|r to begin the event
    >>|cRXP_WARN_You will need to defeat 3 waves of 2 mobs at a time ranging from levels 23-25|r
    >>|cRXP_WARN_Ensure the |cRXP_FRIENDLY_Summoned Wisp|r does not die. It is not possible to heal it, however it will heal to full between waves|r
    >>After defeating all waves, loot the |cRXP_PICK_Gift of the Wisp|r on the ground
    .collect 210044,1 -- Symbol of the First Owl (1)
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
    .aura 424310 >> Click the |cRXP_PICK_Owl Statue|r to gain the |T132150:0|t[Eyes of the Owl] buff
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
    .collect 210043,2 -- Symbol of the Second Owl (1)
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
    .collect 210026,3 -- Symbol of the Third Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Teleport to Moonglade
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Teleport to Moonglade
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .accept 78229 >> Accept Trial of The Owls
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
#group RestedXP Rune & Books Guide
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
#group RestedXP Rune & Books Guide
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
#group RestedXP Rune & Books Guide
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
#group RestedXP Rune & Books Guide
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
#group RestedXP Rune & Books Guide
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

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Cobra Strikes - 25 (Hillsbrad Foothills)


    --Rune of Cobra Strikes

step
    #season 2
    #completewith next
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills (e.g. from Undercity through Silverpine Forest) << Horde
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills (e.g. head North from Wetlands) << Alliance
step
    #season 2
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Look for |cRXP_FRIENDLY_Zixil|r. He patrolls between Tarren Mill and Southshore. Buy the |T134041:0|t[Freshwater Snapper Bait] from him
    .collect 210410,1 --Freshwater Snapper Bait (1)
    .target Zixil
    .train 425759,1
step
    #season 2
    .goto Hillsbrad Foothills,61.05,33.36
    .use 210410 >>Use the |T134041:0|t[Freshwater Snapper Bait] on the boat in the middle of the pond
    >>Kill |cRXP_ENEMY_Koartul|r (25 elite) as he spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Cobra Strikes|r]
    .collect 210596,1 --Rune of Cobra Strikes (1)
    .mob Koartul
    .train 425759,1
step
    #season 2
    .train 425759 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Cobra Strikes|r] |cRXP_WARN_to train|r |T236177:0|t[Cobra Strikes]
    .use 210596
    .itemcount 210596,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Kill Command - 25 (Multiple Zones)

step
    #completewith WyvernWrangling
    >>|cRXP_BUY_Buy a|r |T135144:0|t[Greater Magic Wand] |cRXP_BUY_from the auction house|r
    .collect 11288,1 --Greater Magic Wand (1)
    .train 410111,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Start looking for a group for Wailing Caverns|r
step
    #season 2
    #completewith next
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >> Enter Wailing Caverns
step
    #season 2
    >>Kill |cRXP_ENEMY_Mutanus the Devourer|r. Loot him for |T132775:0|t[|cRXP_LOOT_Hypnotic Crystal|r]
    .collect 209838,1 --Hypnotic Crystal (1)
    .mob Mutanus the Devourer
    .train 410111,1
step
    #season 2
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
step
    #season 2
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    .goto Ashenvale,35.75,32.01
    >>Kill |cRXP_ENEMY_Thistlefur Shamans|r. Loot them for |T237004:0|t[|cRXP_LOOT_Wild Magic Essence|r]
    .collect 209841,1 --Wild Magic Essence (1)
    .mob Thistlefur Shaman
    .train 410111,1
step
    #season 2
    .use 209841 >>Use the |T237004:0|t[|cRXP_LOOT_Wild Magic Essence|r] to create |T237489:0|t[|cRXP_LOOT_Gnarled Wand of Wild Magic|r]
    .collect 209840,1 --Gnarled Wand of Wild Magic (1)
    .train 410111,1
step
    #season 2
    #completewith WyvernWrangling
    .zone Stonetalon Mountains >>Travel to Stonetalon Mountains
step
    #season 2
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jixo Madrocket|r in Stonetalon Mountains
    .accept 78114 >>Accept Wild Wyvern Wrangling
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    #label WyvernWrangling
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jixo Madrocket|r
    .turnin 78114 >>Turn in Wild Wyvern Wrangling
    .accept 78121 >>Accept Wrangling a Wild Wyvern
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .goto Stonetalon Mountains,60.70,62.33
    >>Stay with |cRXP_FRIENDLY_Jixo Madrocket|r and watch him tame a |cRXP_ENEMY_Wyvern|r
    .turnin 78121 >>Turn in Wrangling a Wild Wyvern
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .train 410111 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Kill Command|r] |cRXP_WARN_to train|r |T132176:0|t[Kill Command]
    .use 209852
    .itemcount 209852,1


]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest << Shaman
#subgroup Belt << Warrior/Hunter/Mage/Paladin
#subgroup Boots << Warlock/Priest/Rogue/Druid
#name Spirit of the Redeemer - 40 (Deadwind Pass) << Priest
#name Melee Specialist - 40 (Deadwind Pass) << Hunter
#name King of the Jungle - 40 (Deadwind Pass) << Druid
#name Precise Timing - 40 (Deadwind Pass) << Warrior
#name Two-Handed Mastery - 40 (Deadwind Pass) << Shaman
#name Demonic Knowledge - 40 (Deadwind Pass) << Warlock
#name Infusion of Light - 40 (Deadwind Pass) << Paladin
#name Missile Barrage - 40 (Deadwind Pass) << Mage
#name Waylay - 40 (Deadwind Pass) << Rogue

step
    #completewith next
    .zone Deadwind Pass >>Travel to the Deadwind Pass
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dalaran Agent|r to get |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r]
    *|cRXP_WARN_Recommendation: Getting the rune is faster/easier in a raid.|r
    .goto Deadwind Pass,52.09,34.12
    .skipgossip 218920,1
    .collect 216941,1
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    *|cRXP_WARN_Make sure that you have the |T237534:0|t[Dark Presence] buff before using the trinket|r
    >>Use |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] at the waypoint location and kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |T236511:0|t[Curious Dalaran Relic]
    .use 216941
    .goto Deadwind Pass,43,29
    .collect 216945,1
    .mob Dark Rider
step
    #completewith next
    .zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    *|cRXP_WARN_Make sure that you have the |T237534:0|t[Dark Presence] buff before using the trinket|r
    >>Use |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] at the waypoint location and kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |T236879:0|t[Odd Dalaran Relic]
    .use 216941
    .goto Swamp of Sorrows,69,28
    .collect 216948,1
    .mob Dark Rider
step
    #completewith next
    .zone Duskwood >>Travel to Duskwood
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    *|cRXP_WARN_Make sure that you have the |T237534:0|t[Dark Presence] buff before using the trinket|r
    >>Use |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] at the waypoint location and kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |T237244:0|t[Glittering Dalaran Relic]
    .use 216941
    .goto Duskwood,23,47
    .collect 216946,1
    .mob Dark Rider
step
    #completewith next
    .zone Badlands >>Travel to Badlands
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    *|cRXP_WARN_Make sure that you have the |T237534:0|t[Dark Presence] buff before using the trinket|r
    >>Use |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] at the waypoint location and kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |T237309:0|t[Slippery Dalaran Relic]
    .use 216941
    .goto Badlands,58,54
    .collect 216951,1
    .mob Dark Rider
step
    #completewith next
    .zone Arathi Highlands >>Travel to Arathi Highlands
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    *|cRXP_WARN_Make sure that you have the |T237534:0|t[Dark Presence] buff before using the trinket|r
    >>Use |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] at the waypoint location and kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |T305162:0|t[Whirring Dalaran Relic]
    .use 216941
    .goto Arathi Highlands,60,40
    .collect 216947,1
    .mob Dark Rider

step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    *|cRXP_WARN_Make sure that you have the |T237534:0|t[Dark Presence] buff before using the trinket|r
    >>Use |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] at the waypoint location and kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |T133509:0|t[Heavy Dalaran Relic]
    .use 216941
    .goto The Barrens,52,36
    .collect 216949,1
    .mob Dark Rider
step
    #completewith next
    .zone Desolace >>Travel to Desolace
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    *|cRXP_WARN_Make sure that you have the |T237534:0|t[Dark Presence] buff before using the trinket|r
    >>Use |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] at the waypoint location and kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |T338485:0|t[Creepy Dalaran Relic]
    .use 216941
    .goto Desolace,65,25
    .collect 216950,1
    .mob Dark Rider
step
    #completewith next
    .zone Deadwind Pass >>Travel to the Deadwind Pass
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dalaran Agent|r
    .turnin 80147 >>Turn in Curious Dalaran Relic
    .turnin 80149 >>Turn in Curious Dalaran Relic
    .turnin 80098 >>Turn in Curious Dalaran Relic
    .turnin 80152 >>Turn in Curious Dalaran Relic
    .turnin 80148 >>Turn in Curious Dalaran Relic
    .turnin 80150 >>Turn in Curious Dalaran Relic
    .turnin 80151 >>Turn in Curious Dalaran Relic
    .turnin 80120 >>Turn in A Service to Dalaran
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] for the rune
    .use 217014
    .collect 213144,1 << Priest
    .collect 213130,1 << Paladin
    .collect 213112,1 << Mage
    .collect 213124,1 << Hunter
    .collect 213118,1 << Druid
    .collect 213104,1 << Warrior
    .collect 213100,1 << Warlock
    .collect 213137,1 << Rogue
    .collect 216606,1 << Shaman
step
    .itemcount 213144,1 << Priest
    .itemcount 213130,1 << Paladin
    .itemcount 213112,1 << Mage
    .itemcount 213124,1 << Hunter
    .itemcount 213118,1 << Druid
    .itemcount 213104,1 << Warrior
    .itemcount 213100,1 << Warlock
    .itemcount 213137,1 << Rogue
    .itemcount 216606,1 << Shaman
    .use 213144 << Priest
    .use 213130 << Paladin
    .use 213112 << Mage
    .use 213124 << Hunter
    .use 213118 << Druid
    .use 213104 << Warrior
    .use 213100 << Warlock
    .use 213137 << Rogue
    .use 216606 << Shaman
    .train 425312 >>Use the |T135791:0|t[|cRXP_FRIENDLY_Luminous Epiphany|r] to learn |T132864:0|t[Spirit of the Redeemer] << Priest
    .train 426180 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Infusion|r] to learn |T236254:0|t[Infusion of Light] << Paladin
    .train 401763 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Missile Barrage|r] to learn |T236221:0|t[Missile Barrage] << Mage
    .train 416086 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Close Combat|r] to learn |T132394:0|t[Melee Specialist] << Hunter
    .train 424765 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle King|r] to learn |T236159:0|t[King of the Jungle] << Druid
    .train 416005 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ruthless Precision|r] to learn |T134377:0|t[Precise Timing] << Warrior
    .train 416014 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Forbidden Knowledge|r] to learn |T136172:0|t[Demonic Knowledge] << Warlock
    .train 415926 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assailant|r] to learn |T236286:0|t[Waylay] << Rogue
    .train 436368 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Two-Handed Mastery|r] to learn |T135145:0|t[Two-Handed Mastery] << Shaman
]])

RXPGuides.RegisterGuide([[

#classic
#group RestedXP Rune & Books Guide
#subgroup Belt << Druid/Priest/Rogue/Warlock
#subgroup Boots << Mage/Shaman/Hunter/Paladin/Warrior
#name Mind Spike - 30 (Desolace) << Priest
#name Trap Launcher - 30 (Desolace) << Hunter
#name Eclipse - 30 (Desolace) << Druid
#name Enraged Regeneration - 30 (Desolace) << Warrior
#name Ancestral Awakening - 30 (Desolace) << Shaman
#name Shadow and Flame - 30 (Desolace) << Warlock
#name The Art of War - 30 (Desolace) << Paladin
#name Brain Freeze - 30 (Desolace) << Mage
#name Poisoned Knife - 30 (Desolace) << Rogue

step
    #completewith next
    .zone Desolace >>Travel to Desolace
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Extinguished Campfire|r
    .goto Desolace,47.532,54.605
    .accept 79229 >>Accept Highway Robbery
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .goto Desolace,62.314,38.965
    .turnin 79229 >>Turn in Highway Robbery
    .accept 79235 >>Accept On the Lam
    .target Bibbly F'utzbuckle
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale |cRXP_WARN_(Booty Bay)|r
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r in the Booty Bay inn
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79235 >>Turn in On the Lam
    .accept 79236 >>Accept Cherry for Your Thoughts?
    .target Tokal
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nixxrax Fillamug|r buy a |T132790:0|t[Cherry Grog]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1
    .target Nixxrax Fillamug
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79236 >>Turn in Cherry for Your Thoughts?
    .accept 79242 >>Accept No Honor Among Thieves
    .target Tokal
step
    #completewith next
    .zone Wetlands >>Travel to the Arathi Highlands/Wetlands zone border
step
    #optional
    #completewith next
    .goto Wetlands,58.320,6.927
--   .goto Arathi Highlands,89.52,77.91
    .cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .subzoneskip 308
step
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r for |T134236:0|t[Illari's Key] << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r << !NightElf
    >>Defeat her, then open the |cRXP_PICK_Dropped Pouch|r on the ground. Loot it for |T134236:0|t[Illari's Key] << !NightElf
    .skipgossip 215655,1 << !NightElf
    .skipgossip 215655,1,2,1 << NightElf
    .complete 79242,1 --Found Illari Duskfeather
    .complete 79242,2 --Illari's Key
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Click |cRXP_PICK_Illari's Loot Cache|r on the ground
    .goto Arathi Highlands,94.15,69.27
    .turnin 79242 >>Turn in No Honor Among Thieves
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Open the |T133876:0|t[Jewel-Encrusted Box] for the rune
    .collect 212552,1 << Priest
    .collect 212551,1 << Paladin
    .collect 208853,1 << Mage
    .collect 212549,1 << Hunter
    .collect 212548,1 << Druid
    .collect 212562,1 << Warrior
    .collect 212561,1 << Warlock
    .collect 212559,1 << Rogue
    .collect 212560,1 << Shaman
    .use 212553 --Jewel-Encrusted Box (1)
step
    .train 431663 >>Use the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] to learn |T136181:0|t[Mind Spike] << Priest
    .train 416031 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] to learn |T236246:0|t[The Art of War] << Paladin
    .train 401752 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] to learn |T236206:0|t[Brain Freeze] << Mage
    .train 410118 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r] to learn |T133882:0|t[Trap Launcher] << Hunter
    .train 410029 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] to learn |T236151:0|t[Eclipse] << Druid
    .train 403467 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] to learn |T132345:0|t[Enraged Regeneration] << Warrior
    .train 426452 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] to learn |T135823:0|t[Shadow and Flame] << Warlock
    .train 425102 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] to learn |T236270:0|t[Poisoned Blade] << Rogue
    .train 425883 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestral Awakening|r] to learn |T237571:0|t[Ancestral Awakening] << Shaman
    .use 212552 << Priest
    .use 212551 << Paladin
    .use 208853 << Mage
    .use 212549 << Hunter
    .use 212548 << Druid
    .use 212562 << Warrior
    .use 212561 << Warlock
    .use 212559 << Rogue
    .use 212560 << Shaman
    .itemcount 212552,1 << Priest
    .itemcount 212551,1 << Paladin
    .itemcount 208853,1 << Mage
    .itemcount 212549,1 << Hunter
    .itemcount 212548,1 << Druid
    .itemcount 212562,1 << Warrior
    .itemcount 212561,1 << Warlock
    .itemcount 212559,1 << Rogue
    .itemcount 212560,1 << Shaman
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Spell Books
#name Totemic Projection - 27-40 (Scarlet Monastery) << Shaman
#title Totemic Projection << Shaman
#name Expanded Intellect - 27-40 (Scarlet Monastery) << Mage
#title Expanded Intellect << Mage
#name Treatise on Aspect of the Viper - 27-40 (Scarlet Monastery) << Hunter
#title Treatise on Aspect of the Viper << Hunter
#name Soul Harvesting/Portal of Summoning - 27-40 (Scarlet Monastery) << Warlock
#title Soul Harvesting/Portal of Summoning << Warlock
#name Redirect - 27-40 (Scarlet Monastery) << Rogue
#title Redirect << Rogue
#name Shadowfiend/Increased Fortitude - 27-40 (Scarlet Monastery) << Priest
#title Shadowfiend/Increased Fortitude << Priest
#name Enhanced Blessings - 27-40 (Scarlet Monastery) << Paladin
#title Enhanced Blessings << Paladin
#name Enhanced Restoration/Revive/Deeper Wilds - 27-40 (Scarlet Monastery) << Druid
#title Enhanced Restoration/Revive/Deeper Wilds << Druid
#name Commanding Shout - 27-40 (Scarlet Monastery) << Warrior
#title Commanding Shout << Warrior

step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    #completewith Interrogator Vishas
    +The Skill Books can be acquired by mobs within Scarlet Monastery: Graveyard/Library. The following enemies have an increased chance to drop them: the first and last dungeon bosses, or the rare enemy, |cRXP_ENEMY_Ironspine|r. |cRXP_WARN_It is highly recommended to form a group of 5 players.|r
step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >> Enter The Scarlet Monastery Dungeon: Graveyard
step
    .train 438040,1 << Rogue
    .train 436949,1 << Mage
    .train 436956,1 << Druid
    .train 417123,1 << Druid
    .train 437138,1 << Druid
    .train 415423,1 << Hunter
    .train 435984,1 << Paladin
    .train 401977,1 << Priest
    .train 436951,1 << Priest
    .train 437032,1 << Warlock
    .train 437169,1 << Warlock
    .train 403215,1 << Warrior
    .train 437009,1 << Shaman
    #label Interrogator Vishas
    >>Kill Bosses,Rares and monsters.Loot them for |cRXP_LOOT_Manual of Redirect|r |cRXP_WARN_This might require multiple runs.|r << Rogue
    >>Kill Bosses,Rares and monsters.Loot them for |cRXP_LOOT_Leaflet of Enhanced Restoration|r, |T134914:0|t|cRXP_LOOT_[Leaflet of Revive]|r and |T134914:0|t|cRXP_LOOT_[Leaflet of Deeper Wilds]|r |cRXP_WARN_This might require multiple runs.|r << Druid
    >>Kill Bosses,Rares and monsters.Loot them for |cRXP_LOOT_Treatise on Aspect of the Viper|r |cRXP_WARN_This might require multiple runs.|r << Hunter
    >>Kill Bosses,Rares and monsters.Loot them for |cRXP_LOOT_Tome of Expanded Intellect|r |cRXP_WARN_This might require multiple runs.|r << Mage
    >>Kill Bosses,Rares and monsters.Loot them for |T133745:0|t|cRXP_LOOT_[Testament of Enhanced Blessings]|r |cRXP_WARN_This might require multiple runs.|r << Paladin
    >>Kill Bosses,Rares and monsters.Loot them for |cRXP_LOOT_Scroll of Shadowfiend|r, |T237543:0|t[Increased Fortitude] |cRXP_WARN_This might require multiple runs.|r << Priest
    >>|cRXP_WARN_Additionally, click on the |cRXP_PICK_Tombstone|r near the Headless Horseman's spawn location to collect the |cRXP_LOOT_|T136222:0|t[Graveyard Echo]|r |cFFFF0000This is necessary for the Pain Suppression Rune. If you already have this rune, you can skip it|r. << Priest
    >>Kill Bosses,Rares and monsters.Loot them for |T133733:0|t|cRXP_LOOT_[Grimoire of Soul Harvesting]|r,|T133733:0|t|cRXP_LOOT_[Grimoire of Portal of Summoning]|r |cRXP_WARN_This might require multiple runs.|r << Warlock
    >>Kill Bosses,Rares and monsters.Loot them for |cRXP_LOOT_Rune of the Commander|r |cRXP_WARN_This might require multiple runs.|r << Warrior
    >>Kill Bosses,Rares and monsters.Loot them for |cRXP_LOOT_Rune of the Commander|r |cRXP_WARN_This might require multiple runs.|r << Shaman
    .link https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_Click here for a picture reference for the |T136222:0|t[Graveyard Echo]|r. << Priest
    .collect 216738,1 << Rogue -- Manual of Redirect
    .collect 216740,1 << Mage -- Tome of Expanded Intellect
    .collect 216744,1 << Priest -- Scroll of Increased Fortitude
    .collect 216745,1 << Priest -- Scroll of Shadowfiend
    .collect 215426,1 << Priest -- Graveyard Echo
    .collect 216746,1 << Warrior -- Handbook of Commanding Shout
    .collect 216747,1 << Warlock -- Grimoire of Soul Harvesting
    .collect 216748,1 << Warlock -- Grimoire of Portal of Summoning
    .collect 216764,1 << Druid -- Leaflet of Deeper Wilds
    .collect 216767,1 << Druid -- Leaflet of Revive
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 216769,1 << Shaman -- Revelation of Totemic Projection
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    .collect 216771,1 << Druid -- Leaflet of Enhanced Restoration
    .mob Interrogator Vishas
    .mob Bloodmage Thalnos
    .mob Ironspine
    .mob Houndmaster Loksey
    .mob Arcanist Doan
step
    .train 438040 >>|cRXP_WARN_Use the|r |T133735:0|t|cRXP_LOOT_[Manual of Redirect]|r |cRXP_WARN_to learn|r |T135425:0|t[Redirect] << Rogue
    .train 436949 >>|cRXP_WARN_Use the|r |T133736:0|t|cRXP_LOOT_[Tome of Expanded Intellect]|r |cRXP_WARN_to learn|r |T236513:0|t[Expanded Intellect] << Mage
    .train 436956 >>|cRXP_WARN_Use the|r |T134914:0|t|cRXP_LOOT_[Leaflet of Deeper Wilds]|r |cRXP_WARN_to learn|r |T132124:0|t[Deeper Wilds] << Druid
    .train 417123 >>|cRXP_WARN_Use the|r |T134914:0|t|cRXP_LOOT_[Leaflet of Enhanced Restoration]|r |cRXP_WARN_to learn|r |T136073:0|t[Enhanced Restoration] << Druid
    .train 437138 >>|cRXP_WARN_Use the|r |T134914:0|t|cRXP_LOOT_[Leaflet of Revive]|r |cRXP_WARN_to learn|r |T132132:0|t[437138] << Druid
    .train 415423 >>|cRXP_WARN_Use the|r |T133739:0|t|cRXP_LOOT_[Treatise on Aspect of the Viper]|r |cRXP_WARN_to learn|r |T132160:0|t[Aspect of the Viper] << Hunter
    .train 435984 >>|cRXP_WARN_Use the|r |T133745:0|t|cRXP_LOOT_[Testament of Enhanced Blessings]|r |cRXP_WARN_to learn|r |T236248:0|t[Enhanced Blessings] << Paladin
    .train 415423 >>|cRXP_WARN_Use the|r |T237162:0|t|cRXP_LOOT_[Scroll of Shadowfiend]|r |cRXP_WARN_to learn|r |T136199:0|t[Shadowfiend] << Priest
    .train 436951 >>|cRXP_WARN_Use the|r |T237162:0|t|cRXP_LOOT_[Scroll of Increased Fortitude]|r |cRXP_WARN_to learn|r |T237543:0|t[Increased Fortitude] << Priest
    .train 437032 >>|cRXP_WARN_Use the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Soul Harvesting]|r |cRXP_WARN_to learn|r |T132851:0|t[Soul Harvesting] << Warlock
    .train 437169 >>|cRXP_WARN_Use the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Portal of Summoning]|r |cRXP_WARN_to learn|r |T134423:0|t[Portal of Summoning] << Warlock
    .train 403215 >>|cRXP_WARN_Use the|r |T133741:0|t|cRXP_LOOT_[Handbook of Commanding Shout]|r |cRXP_WARN_to learn|r |T132351:0|t[Commanding Shout] << Warrior
    .train 437009 >>|cRXP_WARN_Use the|r |T133747:0|t|cRXP_LOOT_[Revelation of Totemic Projection]|r |cRXP_WARN_to learn|r |T310733:0|t[Totemic Projection] << Shaman
    .use 216738 << Rogue -- Manual of Redirect
    .use 216740 << Mage -- Tome of Expanded Intellect
    .use 216744 << Priest -- Scroll of Increased Fortitude
    .use 216745 << Priest -- Scroll of Shadowfiend
    .use 216746 << Warrior -- Handbook of Commanding Shout
    .use 216747 << Warlock -- Grimoire of Soul Harvesting
    .use 216748 << Warlock -- Grimoire of Portal of Summoning
    .use 216764 << Druid -- Leaflet of Deeper Wilds
    .use 216767 << Druid -- Leaflet of Revive
    .use 216768 << Paladin -- Testament of Enhanced Blessings
    .use 216769 << Shaman -- Revelation of Totemic Projection
    .use 216770 << Hunter -- Treatise on Aspect of the Viper
    .use 216771 << Druid -- Leaflet of Enhanced Restoration
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Boots << Hunter
#subgroup Boots << Druid
#name Invigoration - 35 (Azeroth)
#title Invigoration

-- Invigoration

step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.0,54.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r and buy |T133653:0|t[Entomology Starter Kit] |cRXP_WARN_it will cost 50silver.|r
    .collect 213565,1
    .target Amaryllis Webb
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Open the |T133653:0|t[Entomology Starter Kit]
    .use 213565
    .collect 213562,1
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Use the |T134325:0|t[Bug Catching Net] on the |cRXP_ENEMY_Arbor Tarantula|r on the tree stump.
    .goto Stranglethorn Vale,44.6,19.8
    .use 213562
    .collect 213566,1
    .mob Arbor Tarantula
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Arathi Highlands >>Travel to Arathi Highlands
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Use the |T134325:0|t[Bug Catching Net] on a |cRXP_ENEMY_Hay Weevil|r
    .goto Arathi Highlands,30.7,28.7
    .use 213562
    .collect 213568,1
    .mob Hay Weevil
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Desolace >>Travel to Desolace
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Use the |T134325:0|t[Bug Catching Net] on a |cRXP_ENEMY_Flesh Picker|r
    .goto Desolace,51.2,59.9
    .use 213562
    .collect 213567,1
    .mob Flesh Picker
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
    .goto Swamp of Sorrows,25.0,54.2
    .train 410027 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r to acquire |T132266:0|t[Survival Instincts] << Druid
    .train 416089 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r to acquire |T236184:0|t[Invigoration] << Hunter
    .skipgossip 217412,1
    .target Amaryllis Webb
step
    .train 416089 >> Use the |T134419:0|t[Rune of Invigoration] to learn |T236184:0|t[Invigoration] << Hunter
    .train 410027 >> Use the |T134419:0|t[Rune of Survival] to learn |T132266:0|t[Survival Instincts] << Druid
]])
