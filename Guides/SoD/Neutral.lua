local _,addon = ...
if addon.GetSeason() ~= 2 then return end
if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs << Warrior
#subgroup Chest << Hunter
#name Carrodin Runes
#displayname Consumed by Rage - 25 (Wetlands) << Warrior
#displayname Cobra Slayer - 25 (Wetlands) << Hunter
#title Consumed by Rage << Warrior
#title Cobra Slayer << Hunter

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
    >>Kill |cRXP_ENEMY_Carrodin|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Cobra Slayer|r] << Hunter
    .collect 210573,1 << Warrior --Rune of Consuming Rage (1)
    .collect 211205,1 << Hunter --Rune of Aspect of Cobra Slayer (1)
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
    .train 410115 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Cobra Slayer|r] |cRXP_WARN_to train|r |T136040:0|t[Cobra Slayer]
    .use 211205
    .itemcount 211205,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Envenom - 25 (Hillsbrad)
#title Envenom


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
#name Cutthroat - 25 (Duskwood)
#title Cutthroat

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
    .train 424988 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shiving|r] to train |T236280:0|t[Cutthroat]
    .use 210252
    .itemcount 210252,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Wild Strikes - 14 (Stonetalon Mountains)
#title Wild Strikes

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
#title Starsurge

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
#subgroup Gloves << Rogue
#subgroup Bracers << Mage
#name Grizzby Runes
#displayname Serendipity - 25 (The Barrens) << Priest
#displayname Lone Wolf - 25 (The Barrens) << Hunter
#displayname Survival of the Fittest - 25 (The Barrens) << Druid
#displayname Warbringer - 25 (The Barrens) << Warrior
#displayname Dual Wield Specialization - 25 (The Barrens) << Shaman
#displayname Demonic Pact - 25 (The Barrens) << Warlock
#displayname Divine Sacrifice - 25 (The Barrens) << Paladin
#displayname Rewind Time - 25 (The Barrens) << Mage
#displayname Main Gauche - 25 (The Barrens) << Rogue
#next Crusader Strike - 4 (Elwynn Forest) << Human Paladin
#next Crusader Strike - 4 (Dun Morogh) << Dwarf Paladin
#next Lava Burst - 25 (Hillsbrad Foothills) << Shaman
#title Serendipity << Priest
#title Lone Wolf << Hunter
#title Survival of the Fittest << Druid
#title Warbringer << Warrior
#title Dual Wield Specialization << Shaman
#title Demonic Pact << Warlock
#title Divine Sacrifice << Paladin
#title Rewind Time << Mage
#title Main Gauche << Rogue

<< SoD

step
    #completewith next
    .zone The Barrens >>Travel to Ratchet in The Barrens. |cRXP_WARN_You will need 3 gold to buy the rune|r
step
    .goto The Barrens,61.8,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
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
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
#subgroup Chest << Shaman/Rogue
#subgroup Legs << Mage/Warlock/Hunter
#subgroup Gloves << Paladin/Warrior/Priest/Druid
#name Waylaid Runes
#displayname Mind Sear - 25 (Reputation) << Priest
#displayname Serpent Spread - 25 (Reputation) << Hunter
#displayname Skull Bash - 25 (Reputation) << Druid
#displayname Single-Minded Fury - 25 (Reputation) << Warrior
#displayname Healing Rain - 25 (Reputation) << Shaman
#displayname Everlasting Affliction - 25 (Reputation) << Warlock
#displayname Beacon of Light - 25 (Reputation) << Paladin
#displayname Arcane Surge - 25 (Reputation) << Mage
#displayname Just a Flesh Wound - 25 (Reputation) << Rogue
#next Divine Sacrifice - 25 (Azeroth) << Paladin
#title Mind Sear << Priest
#title Serpent Spread << Hunter
#title Skull Bash << Druid
#title Single-Minded Fury << Warrior
#title Healing Rain << Shaman
#title Everlasting Affliction << Warlock
#title Beacon of Light << Paladin
#title Arcane Surge << Mage
#title Just a Flesh Wound << Rogue

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
#title Wild Growth

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
#name Duskwood Lich Runes
#displayname Flagellation - 25 (Duskwood) << Warrior
#displayname Mass Regeneration - 25 (Duskwood) << Mage
#title Flagellation << Warrior
#title Mass Regeneration << Mage

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
    .cast 426182 >> Click the |cRXP_PICK_Slumbering Bones|r on the small throne|r
    >>|cRXP_WARN_This will summon a level 25 elite|r |cRXP_ENEMY_Awakened Lich|r
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
#title Raging Blow

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
    .collect 209874,1,78134,1 -- Dragonslayer's Lance (1)
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
    .collect 209873,1,78133,1 -- Dragonslayer's Shield (1)
    .train 425444,1
step << Warrior
    #completewith next
    .subzone 209,2 >> Find a group and enter Shadowfang Keep
step << Warrior
    >>Open the |cRXP_PICK_Discarded Helm|r. Loot it for the |cRXP_LOOT_Dragonslayer's Helm|r
    >>|cRXP_WARN_This is found on a bench behind|r |cRXP_ENEMY_Commander Springvale|r
    .collect 209872,1,78132,1 -- Dragonslayer's Helm (1)
    .train 425444,1
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
    .use 210015
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Strength of Soul - 22 (Ashenvale)
#title Strength of Soul

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
#subgroup Bracers
#name Power Word: Barrier - 22 (Redridge Mountains)
#title Power Word: Barrier

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
#title Circle of Healing

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
#title Cobra Strikes


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
#name Kill Shot - 25 (Multiple Zones)
#title Kill Shot

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
    .train 410111 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Kill Command|r] |cRXP_WARN_to train|r |T236174:0|t[Kill Shot]
    .use 209852
    .itemcount 209852,1


]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune & Books Guide
<< SoD
#subgroup Chest << Shaman
#subgroup Belt << Warrior/Hunter/Mage/Paladin
#subgroup Boots << Warlock/Priest/Rogue/Druid
#name Dark Rider Runes
#displayname Spirit of the Redeemer - 40 (Azeroth) << Priest
#displayname Melee Specialist - 40 (Azeroth) << Hunter
#displayname King of the Jungle - 40 (Azeroth) << Druid
#displayname Precise Timing - 40 (Azeroth) << Warrior
#displayname Two-Handed Mastery - 40 (Azeroth) << Shaman
#displayname Demonic Knowledge - 40 (Azeroth) << Warlock
#displayname Infusion of Light - 40 (Azeroth) << Paladin
#displayname Missile Barrage - 40 (Azeroth) << Mage
#displayname Waylay - 40 (Azeroth) << Rogue
#title Spirit of the Redeemer << Priest
#title Melee Specialist << Hunter
#title King of the Jungle << Druid
#title Precise Timing << Warrior
#title Two-Handed Mastery << Shaman
#title Demonic Knowledge << Warlock
#title Infusion of Light << Paladin
#title Missile Barrage << Mage
#title Waylay << Rogue

step
    #completewith Sigil
    +|cRXP_WARN_Before attemping to acquire this rune it is strongly advised you look for a group. You must kill a level 41 elite 7 times total|r
step
    #completewith next
    .zone Deadwind Pass >>Travel to the Deadwind Pass
step
    #label Sigil
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dalaran Agent|r to receive |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r]
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
    .equip 13 >> |cRXP_WARN_Equip|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r]
    .use 216941
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
    .goto Deadwind Pass,45.04,28.88
    .aura 438288 >> |cRXP_WARN_Travel to the arrow location. As you approach you will receive the|r |T237534:0|t[Dark Presence] |cRXP_WARN_buff|r
    >>|cRXP_WARN_YOU MUST ALSO BE DISMOUNTED TO RECIEVE THE BUFF!|r
    >>|cRXP_WARN_Ensure you have|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_equiped|r
    .use 216941
    .itemcount 216945,<1
step
    #completewith next
    .goto Deadwind Pass,45.04,28.88
    .cast 438305 >> |cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dark Rider|r
    .use 216941
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
    .goto Deadwind Pass,45.04,28.88
    >>Kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |cRXP_LOOT_Curious Dalaran Relic|r
    .use 216941
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
    .goto Swamp of Sorrows,69,28
    .aura 438288 >> |cRXP_WARN_Travel to the arrow location. As you approach you will receive the|r |T237534:0|t[Dark Presence] |cRXP_WARN_buff|r
    >>|cRXP_WARN_YOU MUST ALSO BE DISMOUNTED TO RECIEVE THE BUFF!|r
    >>|cRXP_WARN_Ensure you have|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_equiped|r
    .use 216941
    .itemcount 216948,<1
step
    #completewith next
    .goto Swamp of Sorrows,69,28
    .cast 438305 >> |cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dark Rider|r
    .use 216941
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
    .goto Swamp of Sorrows,69,28
    >>Kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |cRXP_LOOT_Odd Dalaran Relic|r
    .use 216941
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
    .goto Duskwood,23,47
    .aura 438288 >> |cRXP_WARN_Travel to the arrow location. As you approach you will receive the|r |T237534:0|t[Dark Presence] |cRXP_WARN_buff|r
    >>|cRXP_WARN_YOU MUST ALSO BE DISMOUNTED TO RECIEVE THE BUFF!|r
    >>|cRXP_WARN_Ensure you have|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_equiped|r
    .use 216941
    .itemcount 216946,<1
step
    #completewith next
    .goto Duskwood,23,47
    .cast 438305 >> |cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dark Rider|r
    .use 216941
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
    .goto Duskwood,23,47
    >>Kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |cRXP_LOOT_Glittering Dalaran Relic|r
    .use 216941
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
    .goto Badlands,58,54
    .aura 438288 >> |cRXP_WARN_Travel to the arrow location. As you approach you will receive the|r |T237534:0|t[Dark Presence] |cRXP_WARN_buff|r
    >>|cRXP_WARN_YOU MUST ALSO BE DISMOUNTED TO RECIEVE THE BUFF!|r
    >>|cRXP_WARN_Ensure you have|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_equiped|r
    .use 216941
    .itemcount 216951,<1
step
    #completewith next
    .goto Badlands,58,54
    .cast 438305 >> |cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dark Rider|r
    .use 216941
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
    .goto Badlands,58,54
    >>Kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |cRXP_LOOT_Slippery Dalaran Relic|r
    .use 216941
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
    .goto Arathi Highlands,60,40
    .aura 438288 >> |cRXP_WARN_Travel to the arrow location. As you approach you will receive the|r |T237534:0|t[Dark Presence] |cRXP_WARN_buff|r
    >>|cRXP_WARN_YOU MUST ALSO BE DISMOUNTED TO RECIEVE THE BUFF!|r
    >>|cRXP_WARN_Ensure you have|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_equiped|r
    .use 216941
    .itemcount 216947,<1
step
    #completewith next
    .goto Arathi Highlands,60,40
    .cast 438305 >> |cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dark Rider|r
    .use 216941
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
    .goto Arathi Highlands,60,40
    >>Kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |cRXP_LOOT_Whirring Dalaran Relic|r
    .use 216941
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
    .goto The Barrens,52,36
    .aura 438288 >> |cRXP_WARN_Travel to the arrow location. As you approach you will receive the|r |T237534:0|t[Dark Presence] |cRXP_WARN_buff|r
    >>|cRXP_WARN_YOU MUST ALSO BE DISMOUNTED TO RECIEVE THE BUFF!|r
    >>|cRXP_WARN_Ensure you have|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_equiped|r
    .use 216941
    .itemcount 216949,<1
step
    #completewith next
    .goto The Barrens,52,36
    .cast 438305 >> |cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dark Rider|r
    .use 216941
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
    .goto The Barrens,52,36
    >>Kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |cRXP_LOOT_Heavy Dalaran Relic|r
    .use 216941
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
    .goto Desolace,65,25
    .aura 438288 >> |cRXP_WARN_Travel to the arrow location. As you approach you will receive the|r |T237534:0|t[Dark Presence] |cRXP_WARN_buff|r
    >>|cRXP_WARN_YOU MUST ALSO BE DISMOUNTED TO RECIEVE THE BUFF!|r
    >>|cRXP_WARN_Ensure you have|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_equiped|r
    .use 216941
    .itemcount 216950,<1
step
    #completewith next
    .goto Desolace,65,25
    .cast 438305 >> |cRXP_WARN_Use|r |T338784:0|t[|cRXP_FRIENDLY_Ariden's Sigil|r] |cRXP_WARN_to reveal the|r |cRXP_ENEMY_Dark Rider|r
    .use 216941
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
    .goto Desolace,65,25
    >>Kill the |cRXP_ENEMY_Dark Rider|r. Loot him for the |cRXP_LOOT_Creepy Dalaran Relic|r
    .use 216941
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
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dalaran Agent|r
    .turnin 80147 >>Turn in Curious Dalaran Relic
    .turnin 80149 >>Turn in Curious Dalaran Relic
    .turnin 80098 >>Turn in Curious Dalaran Relic
    .turnin 80152 >>Turn in Curious Dalaran Relic
    .turnin 80148 >>Turn in Curious Dalaran Relic
    .turnin 80150 >>Turn in Curious Dalaran Relic
    .turnin 80151 >>Turn in Curious Dalaran Relic
    .turnin 80120 >>Turn in A Service to Dalaran
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
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T135791:0|t[|cRXP_FRIENDLY_Luminous Epiphany|r] << Priest
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Infusions|r] << Paladin
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Missile Barrage|r] << Mage
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Close Combat|r] << Hunter
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle King|r] << Druid
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ruthless Precision|r] << Warrior
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Forbidden Knowledge|r] << Warlock
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assailant|r] << Rogue
    >>Open the |T133666:0|t[|cRXP_FRIENDLY_Supply Bag|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Two-Handed Mastery|r] << Shaman
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
    .train 425312 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Luminous Epiphany|r] |cRXP_WARN_to train|r |T132864:0|t[Spirit of the Redeemer] << Priest
    .train 426180 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Infusions|r] |cRXP_WARN_to train|r |T236254:0|t[Infusion of Light] << Paladin
    .train 401763 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Missile Barrage|r] |cRXP_WARN_to train|r |T236221:0|t[Missile Barrage] << Mage
    .train 416086 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Close Combat|r] |cRXP_WARN_to train|r |T132394:0|t[Melee Specialist] << Hunter
    .train 424765 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle King|r] |cRXP_WARN_to train|r |T236159:0|t[King of the Jungle] << Druid
    .train 416005 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ruthless Precision|r] |cRXP_WARN_to train|r |T134377:0|t[Precise Timing] << Warrior
    .train 416014 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Forbidden Knowledge|r] |cRXP_WARN_to train|r |T136172:0|t[Demonic Knowledge] << Warlock
    .train 415926 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assailant|r] |cRXP_WARN_to train|r |T236286:0|t[Waylay] << Rogue
    .train 436368 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Two-Handed Mastery|r] |cRXP_WARN_to train|r |T135145:0|t[Two-Handed Mastery] << Shaman
]])

RXPGuides.RegisterGuide([[

#classic
<< SoD
#group RestedXP Rune & Books Guide
#subgroup Belt << Druid/Priest/Rogue/Warlock
#subgroup Boots << Mage/Shaman/Hunter/Paladin/Warrior
#name Desolace Chain Runes
#displayname Mind Spike - 35 (Azeroth) << Priest
#displayname Trap Launcher - 35 (Azeroth) << Hunter
#displayname Eclipse - 35 (Azeroth) << Druid
#displayname Enraged Regeneration - 35 (Azeroth) << Warrior
#displayname Ancestral Awakening - 35 (Azeroth) << Shaman
#displayname Shadow and Flame - 35 (Azeroth) << Warlock
#displayname The Art of War - 35 (Azeroth) << Paladin
#displayname Brain Freeze - 35 (Azeroth) << Mage
#displayname Poisoned Knife - 35 (Azeroth) << Rogue
#title Mind Spike << Priest
#title Trap Launcher << Hunter
#title Eclipse << Druid
#title Enraged Regeneration << Warrior
#title Ancestral Awakening << Shaman
#title Shadow and Flame << Warlock
#title The Art of War << Paladin
#title Brain Freeze << Mage
#title Poisoned Knife << Rogue

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
    >>Click the |cRXP_PICK_Extinguished Campfire|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nixxrax Fillamug|r
    >>|cRXP_BUY_Buy a|r |T132790:0|t[Cherry Grog]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1,79236,1
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
    .goto Wetlands,58.320,6.927
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
step << NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r to receive |cRXP_LOOT_Illari's Key|r
    .complete 79242,1 --Found Illari Duskfeather
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,2
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    #completewith next
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r. You will have to fight her after
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip 215655,1,1,1
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>Kill |cRXP_ENEMY_Illari Duskfeather|r. Open the |cRXP_PICK_Dropped Pouch|r she drops on the ground. Loot it for |cRXP_LOOT_Illari's Key|r
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,1
    .mob Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip
    .target Illari Duskfeather
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
    .goto Arathi Highlands,94.154,69.266
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
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] << Priest
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] << Paladin
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] << Mage
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r] << Hunter
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] << Druid
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] << Warrior
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] << Warlock
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] << Rogue
    >>Open the |T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box|r] for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestral Awakening|r] << Shaman
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
    .train 431663 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] |cRXP_WARN_to train|r |T136181:0|t[Mind Spike] << Priest
    .train 416031 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r] |cRXP_WARN_to train|r |T236246:0|t[The Art of War] << Paladin
    .train 401752 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Brain Freeze|r] |cRXP_WARN_to train|r |T236206:0|t[Brain Freeze] << Mage
    .train 410118 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r] |cRXP_WARN_to train|r |T133882:0|t[Trap Launcher] << Hunter
    .train 410029 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse|r] |cRXP_WARN_to train|r |T236151:0|t[Eclipse] << Druid
    .train 403467 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r] |cRXP_WARN_to train|r |T132345:0|t[Enraged Regeneration] << Warrior
    .train 426452 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness|r] |cRXP_WARN_to train|r |T135823:0|t[Shadow and Flame] << Warlock
    .train 425102 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Poisoned Blade|r] |cRXP_WARN_to train|r |T236270:0|t[Poisoned Knife] << Rogue
    .train 425883 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestral Awakening|r] |cRXP_WARN_to train|r |T237571:0|t[Ancestral Awakening] << Shaman
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
step
    .goto 1417,89.536,78.149
    .cast 6477 >>Enter the |cRXP_PICK_Rowboat|r in the water to get back to Arathi
    .subzoneskip 308,1
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Guide
#subgroup Spell Books
#name Spell Book Runes

#displayname Expanded Intellect (Stormwind) << Alliance Mage
#displayname Expanded Intellect (Orgrimmar) << Horde Mage
#title Expanded Intellect << Mage
#displayname Aspect of the Viper/Heart of the Lion (Stormwind) << Alliance Hunter
#displayname Aspect of the Viper/Heart of the Lion (Orgrimmar) << Horde Hunter
#title Aspect of the Viper/Heart of the Lion << Hunter
#displayname Soul Harvesting/Portal of Summoning/Fel Armor (Stormwind) << Alliance Warlock
#displayname Soul Harvesting/Portal of Summoning/Fel Armor (Orgrimmar) << Horde Warlock
#title Soul Harvesting/Portal of Summoning/Fel Armor << Warlock
#displayname Redirect/Occult Poison/Numbing Poison/Sebacious Poison/Atrophic Poison (Stormwind) << Alliance Rogue
#displayname Redirect/Occult Poison/Numbing Poison/Sebacious Poison/Atrophic Poison (Orgrimmar) << Horde Rogue
#title Redirect/Occult Poison/Numbing Poison/Sebacious Poison/Atrophic Poison << Rogue
#displayname Shadowfiend/Increased Fortitude (Stormwind) << Alliance Priest
#displayname Shadowfiend/Increased Fortitude (Orgrimmar) << Horde Priest
#title Shadowfiend/Increased Fortitude << Priest
#displayname Enhanced Restoration/Revive/Deeper Wilds (Stormwind) << Alliance Druid
#displayname Enhanced Restoration/Revive/Deeper Wilds (Orgrimmar) << Horde Druid
#title Enhanced Restoration/Revive/Deeper Wilds << Druid
#displayname Commanding Shout/Meathook (Stormwind) << Alliance Warrior
#displayname Commanding Shout/Meathook (Orgrimmar) << Horde Warrior
#title Commanding Shout/Meathook << Warrior
#displayname Testament of the Exorcist/Enhanced Blessings (Stormwind) << Paladin
#title Testament of the Exorcist/Enhanced Blessings << Paladin
#displayname Totemic Projection/Shamanistic Rage (Orgrimmar) << Shaman
#title Totemic Projection/Shamanistic Rage << Shaman

step
    #completewith BuyBook
    >>|cRXP_WARN_Skill Books can now bought with gold from Stormwind instead of having to run Scarlet Monastery for them.|r << Alliance
    >>|cRXP_WARN_Skill Books can now bought with gold from Orgrimmar instead of having to run Scarlet Monastery for them.|r << Horde
    .zone Stormwind City >> Travel to Stormwind << Alliance
    .zone Orgrimmar >> Travel to Orgrimmar << Horde
step << Alliance
    #optional
    #completewith next
    .goto Stormwind City,70.347,27.208,15,0
    .goto Stormwind City,72.005,21.542,20 >> Travel to the Stormwind Keep
step
    #label BuyBook
    .goto Stormwind City,74.182,7.465 << Alliance
    .goto Orgrimmar,38.923,38.398 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor Lonetree|r << Horde
    >>|cRXP_WARN_Note: |T133736:0|t|cRXP_LOOT_[Tome of Expanded Intellect]|r requires level 25 to use|r << Mage
    >>|cRXP_WARN_Note: |T133733:0|t|cRXP_LOOT_[Grimoire of Soul Harvesting]|r and |T133733:0|t|cRXP_LOOT_[Grimoire of Portal of Summoning]|r require level 25 to use|r << Warlock
    >>|cRXP_WARN_Note: |T133733:0|t|cRXP_LOOT_[Grimoire of Fel Armor]|r requires level 50 to use|r << Warlock
    >>|cRXP_WARN_Note: |T133745:0|t|cRXP_LOOT_[Testament of the Exorcist]|r and |T133745:0|t|cRXP_LOOT_[Testament of Martyrdom]|r requires level 10 to use|r << Paladin
    >>|cRXP_WARN_Note: |T133745:0|t|cRXP_LOOT_[Testament of Enhanced Blessings]|r requires level 25 to use|r << Paladin
    >>|cRXP_WARN_Note: |T133739:0|t|cRXP_LOOT_[Treatise on the Heart of the Lion]|r requires level 10 to use|r << Hunter
    >>|cRXP_WARN_Note: |T133739:0|t|cRXP_LOOT_[Treatise on Aspect of the Viper]|r requires level 25 to use|r << Hunter
    >>|cRXP_WARN_Note: |T133735:0|t|cRXP_LOOT_[Manual of Redirect]|r requires level 25 to use|r << Rogue
    >>|cRXP_WARN_Note: |T133735:0|t|cRXP_LOOT_[Manual of Occult Poison]|r requires level 54 to use|r << Rogue
    >>|cRXP_WARN_Note: |T133735:0|t|cRXP_LOOT_[Manual of Numbing Poison]|r, |cRXP_LOOT_[Manual of Sebacious Poison]|r and |cRXP_LOOT_[Manual of Atrophic Poison]|r requires level 60 to use|r << Rogue
    >>|cRXP_WARN_Note: |T237162:0|t|cRXP_LOOT_[Scroll of Shadowfiend]|r and |T237162:0|t|cRXP_LOOT_[Scroll of Increased Fortitude]|r require level 25 to use|r << Priest
    >>|cRXP_WARN_Note: |T134914:0|t|cRXP_LOOT_[Leaflet of Deeper Wilds]|r|cRXP_WARN_,|r |T134914:0|t|cRXP_LOOT_[Leaflet of Enhanced Restoration]|r |cRXP_WARN_and |T134914:0|t|cRXP_LOOT_[Leaflet of Revive]|r require level 25 to use|r << Druid
    >>|cRXP_WARN_Note: |T133741:0|t|cRXP_LOOT_[Handbook of Commanding Shout]|r requires level 25 to use|r << Warrior
    >>|cRXP_WARN_Note: |T133741:0|t|cRXP_LOOT_[Handbook of Meathook]|r requires level 40 to use|r << Warrior
    >>|cRXP_WARN_Note: |T133747:0|t|cRXP_LOOT_[Revelation of Shamanistic Rage]|r requires level 10 to use|r << Shaman
    >>|cRXP_WARN_Note: |T133747:0|t|cRXP_LOOT_[Revelation of Totemic Projection]|r requires level 25 to use|r << Shaman
    .train 438040 >>|cRXP_WARN_Buy and use the|r |T133735:0|t|cRXP_LOOT_[Manual of Redirect]|r |cRXP_WARN_to learn|r |T135425:0|t[Redirect] << Rogue
    .train 458822 >>|cRXP_WARN_Buy and use the|r |T133735:0|t|cRXP_LOOT_[Manual of Occult Poison]|r |cRXP_WARN_to learn|r |T135935:0|t[Occult Poison I] << Rogue
    .train 438040 >>|cRXP_WARN_Buy and use the|r |T133735:0|t|cRXP_LOOT_[Manual of Numbing Poison]|r |cRXP_WARN_to learn|r |T132098:0|t[Numbing Poison] << Rogue
    .train 439500 >>|cRXP_WARN_Buy and use the|r |T133735:0|t|cRXP_LOOT_[Manual of Sebacious Poison]|r |cRXP_WARN_to learn|r |T132108:0|t[Sebacious Poison] << Rogue
    .train 438040 >>|cRXP_WARN_Buy and use the|r |T133735:0|t|cRXP_LOOT_[Manual of Atrophic Poison]|r |cRXP_WARN_to learn|r |T132100:0|t[Atrophic Poison] << Rogue
    .train 436949 >>|cRXP_WARN_Buy and use the|r |T133736:0|t|cRXP_LOOT_[Tome of Expanded Intellect]|r |cRXP_WARN_to learn|r |T236513:0|t[Expanded Intellect] << Mage
    .train 436956 >>|cRXP_WARN_Buy and use the|r |T134914:0|t|cRXP_LOOT_[Leaflet of Deeper Wilds]|r |cRXP_WARN_to learn|r |T132124:0|t[Deeper Wilds] << Druid
    .train 417123 >>|cRXP_WARN_Buy and use the|r |T134914:0|t|cRXP_LOOT_[Leaflet of Enhanced Restoration]|r |cRXP_WARN_to learn|r |T136073:0|t[Enhanced Restoration] << Druid
    .train 437138 >>|cRXP_WARN_Buy and use the|r |T134914:0|t|cRXP_LOOT_[Leaflet of Revive]|r |cRXP_WARN_to learn|r |T132132:0|t[Revive] << Druid
    .train 409580 >>|cRXP_WARN_Buy and use the|r |T133739:0|t|cRXP_LOOT_[Treatise on the Heart of the Lion]|r |cRXP_WARN_to learn|r |T132185:0|t[Heart of the Lion] << Hunter
    .train 415423 >>|cRXP_WARN_Buy and use the|r |T133739:0|t|cRXP_LOOT_[Treatise on Aspect of the Viper]|r |cRXP_WARN_to learn|r |T132160:0|t[Aspect of the Viper] << Hunter
    .train 415076 >>|cRXP_WARN_Buy and use the|r |T133745:0|t|cRXP_LOOT_[Testament of the Exorcist]|r |cRXP_WARN_to learn|r |T135956:0|t[Exorcist] << Paladin
    .train 407798 >>|cRXP_WARN_Buy and use the|r |T133745:0|t|cRXP_LOOT_[Testament of Martyrdom]|r |cRXP_WARN_to learn|r |T135961:0|t[Seal of Martyrdom] << Paladin
    .train 435984 >>|cRXP_WARN_Buy and use the|r |T133745:0|t|cRXP_LOOT_[Testament of Enhanced Blessings]|r |cRXP_WARN_to learn|r |T236248:0|t[Enhanced Blessings] << Paladin
    .train 401977 >>|cRXP_WARN_Buy and use the|r |T237162:0|t|cRXP_LOOT_[Scroll of Shadowfiend]|r |cRXP_WARN_to learn|r |T136199:0|t[Shadowfiend] << Priest
    .train 436951 >>|cRXP_WARN_Buy and use the|r |T237162:0|t|cRXP_LOOT_[Scroll of Increased Fortitude]|r |cRXP_WARN_to learn|r |T237543:0|t[Increased Fortitude] << Priest
    .train 437032 >>|cRXP_WARN_Buy and use the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Soul Harvesting]|r |cRXP_WARN_to learn|r |T132851:0|t[Soul Harvesting] << Warlock
    .train 437169 >>|cRXP_WARN_Buy and use the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Portal of Summoning]|r |cRXP_WARN_to learn|r |T134423:0|t[Portal of Summoning] << Warlock
    .train 403619 >>|cRXP_WARN_Buy and use the|r |T133733:0|t|cRXP_LOOT_[Grimoire of Fel Armor]|r |cRXP_WARN_to learn|r |T136156:0|t[Fel Armor] << Warlock
    .train 403215 >>|cRXP_WARN_Buy and use the|r |T133741:0|t|cRXP_LOOT_[Handbook of Commanding Shout]|r |cRXP_WARN_to learn|r |T132351:0|t[Commanding Shout] << Warrior
    .train 403228 >>|cRXP_WARN_Buy and use the|r |T133741:0|t|cRXP_LOOT_[Handbook of Meathook]|r |cRXP_WARN_to learn|r |T132507:0|t[Meathook] << Warrior
    .train 425336 >>|cRXP_WARN_Buy and use the|r |T133747:0|t|cRXP_LOOT_[Revelation of Shamanistic Rage]|r |cRXP_WARN_to learn|r |T136088:0|t[Shamanistic Rage] << Shaman
    .train 437009 >>|cRXP_WARN_Buy and use the|r |T133747:0|t|cRXP_LOOT_[Revelation of Totemic Projection]|r |cRXP_WARN_to learn|r |T310733:0|t[Totemic Projection] << Shaman
    .use 216738 << Rogue -- Manual of Redirect
    .use 226396 << Rogue -- Manual of Occult Poison
    .use 226394 << Rogue -- Manual of Atrophic Poison
    .use 226397 << Rogue -- Manual of Sebacious Poison
    .use 226395 << Rogue -- Manual of Numbing Poison
    .use 216740 << Mage -- Tome of Expanded Intellect
    .use 216744 << Priest -- Scroll of Increased Fortitude
    .use 216745 << Priest -- Scroll of Shadowfiend
    .use 216746 << Warrior -- Handbook of Commanding Shout
    .use 226403 << Warrior -- Handbook of Meathook
    .use 216747 << Warlock -- Grimoire of Soul Harvesting
    .use 216748 << Warlock -- Grimoire of Portal of Summoning
    .use 403619 << Warlock -- Grimoire of Fel Armor
    .use 216764 << Druid -- Leaflet of Deeper Wilds
    .use 216767 << Druid -- Leaflet of Revive
    .use 216768 << Paladin -- Testament of Enhanced Blessings
    .use 226400 << Paladin -- Testament of the Exorcist
    .use 226398 << Paladin -- Testament of Martyrdom
    .use 216769 << Shaman -- Revelation of Totemic Projection
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .use 216770 << Hunter -- Treatise on Aspect of the Viper
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 216771 << Druid -- Leaflet of Enhanced Restoration
    .target Milton Sheaf << Alliance
    .target Zor Lonetree << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Bugcatcher Runes
#displayname Wyvern Strike - 35 (Azeroth) << Hunter
#displayname Survival Instincts - 35 (Azeroth) << Druid
#title Wyvern Strike << Hunter
#title Survival Instincts << Druid

step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r
    >>|cRXP_BUY_Buy a|r |T133653:0|t[Entomology Starter Kit]
    .collect 213565,1 --Entomology Starter Kit (1x)
    .target Amaryllis Webb
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Open the |T133653:0|t[Entomology Starter Kit]
    .use 213565
    .collect 213562,1 --Bug Catching Net (1x)
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    >>|cRXP_WARN_Use the|r |T134325:0|t[Bug Catching Net] |cRXP_WARN_on a|r |cRXP_ENEMY_Arbor Tarantula|r
    >>|cRXP_WARN_They're found on top of tree stumps|r
    .use 213562
    .collect 213566,1 --Arbor Tarantula Specimen (1x)
    .mob Arbor Tarantula
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Arathi Highlands >>Travel to Arathi Highlands
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Arathi Highlands,54.0,38.6,0
    .goto Arathi Highlands,57.0,39.8,0
    .goto Arathi Highlands,59.6,57.0,0
    .goto Arathi Highlands,61.2,55.6,0
    .goto Arathi Highlands,54.0,38.6,20,0
    .goto Arathi Highlands,57.0,39.8,20,0
    .goto Arathi Highlands,59.6,57.0,20,0
    .goto Arathi Highlands,61.2,55.6,20,0
    .goto Arathi Highlands,62.6,56.0,20,0
    >>|cRXP_WARN_Use the|r |T134325:0|t[Bug Catching Net] |cRXP_WARN_on a|r |cRXP_ENEMY_Hay Weevil|r
    >>|cRXP_WARN_These can be found at any of the farms including inside of the barns|r
    .use 213562
    .collect 213568,1 --Hay Weevil Specimen (1x)
    .mob Hay Weevil
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Desolace >>Travel to Desolace
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Desolace,53.0,59.0,0
    .goto Desolace,50.0,55.8,30,0
    .goto Desolace,53.0,59.0,30,0
    .goto Desolace,54.0,62.6,30,0
    >>|cRXP_WARN_Use the|r |T134325:0|t[Bug Catching Net] |cRXP_WARN_on a|r |cRXP_ENEMY_Flesh Picker|r
    >>|cRXP_WARN_These are found at the Kodo Graveyard|r
    .use 213562
    .collect 213567,1 --Flesh Picker Specimen (1x)
    .mob Flesh Picker
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Invigoration|r] << Hunter
    >>Talk to |cRXP_FRIENDLY_Amaryllis Webb|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Instinct|r] << Druid
    .collect 213125,1 << Hunter --Rune of Invigoration (1x)
    .collect 213119,1 << Druid --Rune of Instinct (1x)
    .skipgossip 217412,1
    .target Amaryllis Webb
step
    .train 416089 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Invigoration|r] |cRXP_WARN_to train|r |T135125:0|t[Wyvern Strike] << Hunter
    .train 410027 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Instinct|r] |cRXP_WARN_to train|r |T132266:0|t[Survival Instincts] << Druid
    .use 213125 << Hunter
    .use 213119 << Druid
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Guide
#subgroup Extras
#subweight -1
#name Cozy Sleeping Bag - 14
#title Cozy Sleeping Bag

step
    #optional
    +|cRXP_WARN_You must be at least level 14 before you can begin the quest for the|r |T133662:0|t[|cRXP_LOOT_Cozy Sleeping Bag|r]
    .xp >14,1
step << Alliance
    #completewith next
    .zone Westfall >> Travel to Westfall
step << Alliance
    .goto Westfall,37.413,50.701
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground
    .accept 79008 >> Accept ...and that note you found
step << Alliance
    #completewith next
    .zone The Barrens >> Travel to The Barrens
step << Alliance
    .goto The Barrens,46.361,73.904
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground
    .turnin 79008 >> Turn in ...and that note you found
    .accept 79192 >> Accept Stepping Stones
step << Horde
    #completewith next
    .zone The Barrens >> Travel to The Barrens
step << Horde
    .goto The Barrens,46.361,73.904
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground
    .accept 79007 >> Accept ...and that note you found
step << Horde
    #completewith next
    .zone Westfall >> Travel to Westfall
step << Horde
    .goto Westfall,37.413,50.701
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground
    .turnin 79007 >> Turn in ...and that note you found
    .accept 79192 >> Accept Stepping Stones
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >> Travel up and along the dirt path north of Sun Rock Retreat
step
    .goto Stonetalon Mountains,40.748,52.576
    >>Click the |cRXP_PICK_Pocket Litter|r on the box
    .turnin 79192 >> Turn in Stepping Stones
    .accept 79980 >> Accept Scramble
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >> Follow the path through the mountains
step
    .goto Stonetalon Mountains,39.614,49.783
    >>Click the |cRXP_PICK_Mound of Dirt|r on the ground
    .turnin 79980 >> Turn in Scramble
    .accept 79974 >> Accept Wet Job
step
    #completewith next
    .zone Loch Modan >> Travel to Loch Modan
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.4,12.9,8 >> |cRXP_WARN_Make your way onto the Loch Modan Dam wall and carefully drop down onto the ledge in the center of the Dam. Follow the arrow|r
step
    .goto Loch Modan,49.421,12.917
    >>Click the |cRXP_PICK_Carved Figurine|r on the ledge
    .turnin 79974 >> Turn in Wet Job
    .accept 79975 >> Accept Eagle's Fist
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >> Travel to Thoradin's Wall at the Arathi Highlands/Hillsbrad Foothills zone border
step
    #completewith next
    .goto Arathi Highlands,24.132,21.470,7 >> Climb up the cart and make your way up along the wall
step
    .goto Arathi Highlands,22.466,24.127
    >>Click the |cRXP_PICK_Messenger Bag|r hanging on the wall
    .turnin 79975 >> Turn in Eagle's Fist
    .accept 79976 >> Accept This Must Be The Place
step
    .goto Arathi Highlands,22.466,24.127
    >>Click the |cRXP_PICK_Hastily Rolled-Up Satchel|r on the ground
    .turnin 79976 >> Turn in This Must Be The Place
step
    +|cRXP_WARN_It is strongly adivsed you save your|r |T134057:0|t[|cRXP_LOOT_Student Fodder|r] |cRXP_WARN_for higher levels before consuming them. Each use of|r |T134057:0|t[|cRXP_LOOT_Student Fodder|r] |cRXP_WARN_adds 20% rested experience to your character, therefore it is more efficient to use at higher levels|r
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet <<Druid/Shaman/Warrior
#subgroup Bracers <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#name Emerald Wardens Runes
#displayname Molten Armor <<Mage
#displayname Gore <<Druid
#displayname T.N.T. <<Hunter
#displayname Improved Hammer of Wrath <<Paladin
#displayname Void Zone <<Priest
#displayname Cut to the Chase <<Rogue
#displayname Burn <<Shaman
#displayname Unstable Affliction <<Warlock
#displayname Shield Mastery <<Warrior

step
    +|cRXP_WARN_Go to any of the zones listed below. At the marked locations in each respecive one you will find an NPC from a new faction,|r |cRXP_FRIENDLY_The Emerald Wardens|r.
    >>Duskwood
    >>Ashenvale
    >>Feralas
    >>The Hinterlands
    .zoneskip Duskwood
    .zoneskip Ashenvale
    .zoneskip Feralas
    .zoneskip The Hinterlands
step
    >>Look for a Quartermaster of |cRXP_FRIENDLY_The Emerald Wardens|r in the marked location and buy your rune from them
    .goto Duskwood,45.6,51.2,-1
    .goto Ashenvale,89.6,40.6,-1
    .goto Feralas,48.6,12.6,-1
    .goto The Hinterlands,61.4,34.6,-1
    .target Quartermaster Falinar
    .target Quartermaster Kyleen
    .target Quartermaster Valdane
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alclarity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
step
    .train 431705 >>|cRXP_WARN_Use the|r |T135791:0|t[|cRXP_FRIENDLY_Nihilist Epiphany|r] |cRXP_WARN_to train|r |T132886:0|t[Void Zone] << Priest
    .train 429308 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Molten Armor|r] |cRXP_WARN_to train|r |T132221:0|t[Molten Armor] << Mage
    .train 431747 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Affliction|r] |cRXP_WARN_to train|r |T136228:0|t[Unstable Affliction] << Warlock
    .train 416066 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Burn|r] |cRXP_WARN_to train|r |T135822:0|t[Burn] << Shaman
    .train 410098 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Protector|r] |cRXP_WARN_to train|r |T132359:0|t[Shield Mastery] << Warrior
    .train 432297 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Alclarity|r] |cRXP_WARN_to train|r |T236269:0|t[Cut to the Chase] << Rogue
    .train 431611 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Detonation|r] |cRXP_WARN_to train|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Bloodshed|r] |cRXP_WARN_to train|r |T304501:0|t[Gore] << Druid
    .train 429261 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hammer|r] |cRXP_WARN_to train|r |T236262:0|t[Improved Hammer of Wrath] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221511 << Warrior --Rune of the Protector
    .use 221512 << Rogue --Rune of Alclarity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer

]])


RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#subgroup Bracers <<Druid/Shaman/Warrior
#name Wild Offering Runes
#displayname Advanced Warding - 40 (Azeroth) <<Mage
#displayname Lock and Load - 40 (Azeroth) <<Hunter
#displayname Improved Sanctuary - 40 (Azeroth) <<Paladin
#displayname Divine Aegis - 40 (Azeroth) <<Priest
#displayname Combat Potency - 40 (Azeroth) <<Rogue
#displayname Riptide - 40 (Azeroth) <<Shaman
#displayname Vengeance - 40 (Azeroth) <<Warlock
#displayname Sword and Board - 40 (Azeroth) <<Warrior
#displayname Improved Frenzied Regeneration - 40 (Azeroth) <<Druid

step
    #completewith next
    .zone Felwood >>Travel to Felwood
step
    .goto Felwood,51.6,82.0
    >>Talk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r near the Emerald Sanctuary
    .accept 82043 >>Accept The Wild Gods
    .target Shadowtooth Emissary
step
    #optional
    #completewith next
    .goto The Hinterlands,66.27,65.13,0
    >>|cRXP_WARN_In order to complete this quest you will need one person with a|r |T134799:0|t|cRXP_LOOT_Wildwshiper Draught|r |cRXP_WARN_in bags. It drops from the elite trolls in Jintha'alor in the Hinterlands. Only get it if no one in your Razorfen Downs party has it|r
    .collect 221261,1 --Wildwhisper Draught
step
    .goto The Barrens,45.5,92.4
    >>Look for a group for Razorfen Downs. You will need to clear up the spiral to the end boss |cRXP_ENEMY_Amnennar the Coldbringer|r and kill him. Afterward one person from the group has to use their |T134799:0|t|cRXP_LOOT_Wildwshiper Draught|r to summon a ghostly |cRXP_FRIENDLY_Spirit of Agamaggan|r. Speak to him to turn in the quest and receive a followup
    .turnin 82043 >>Turn in The Wild Gods
    .accept 82044 >>Accept The Wild Gods
    .target Spirit of Agamaggan
    .mob Amnennar the Coldbringer
    .use 221261
step
    >>You have now received an |T237378:0|t|cRXP_LOOT_Agamaggan's Roar|r. This item can be used in specific areas in |cRXP_PICK_Blackrock Depths|r, |cRXP_PICK_Zul'farrak|r and |cRXP_PICK_Maraudon|r in order to summon a new |cRXP_ENEMY_Delirious Ancient|r boss which always drops one |T132119:0|t|cRXP_LOOT_Wild Offering|r on kill. Collect 3 of those in order to complete the quest. |T132119:0|t|cRXP_LOOT_Wild Offerings|r are also used as a currency to purchase very powerful items from the |cRXP_FRIENDLY_Shadowtooth Emissary|r so you might want to farm more than just the 3 for your rune
    >>|cRXP_WARN_In|r |cRXP_FRIENDLY_Zul'farrak|r |cRXP_WARN_kill any 3 bosses and you will be able to spawn a|r |cRXP_ENEMY_Delirious Ancient|r |cRXP_WARN_near the Ghaz'rilla pool|r
    >>|cRXP_WARN_In|r |cRXP_FRIENDLY_Maraudon|r |cRXP_WARN_kill|r |cRXP_ENEMY_Princess Theradras|r |cRXP_WARN_and you will be able to spawn a|r |cRXP_ENEMY_Delirious Ancient|r |cRXP_WARN_in her arena|r
    >>|cRXP_WARN_In|r |cRXP_FRIENDLY_Blackrock Depths|r |cRXP_WARN_kill|r |cRXP_ENEMY_High Interrogator Gerstahn|r, |cRXP_ENEMY_Houndmaster Grebmar|r |cRXP_WARN_and complete|r |cRXP_ENEMY_the Arena|r |cRXP_WARN_event. Afterward you will be able to spawn a|r |cRXP_ENEMY_Delirious Ancient|r |cRXP_WARN_on the Dark Iron Highway (road to Bael'gar)|r
    >>|cRXP_WARN_TIP:|r The offerings can be collected in a raid and you can run the same dungeon repeatedly. Currently the fastest way to farm them is to |cRXP_WARN_join a 10 man raid|r and run either |cRXP_WARN_repeat Maraudon Princess or Zul'farrak runs|r
    .complete 82044,1 --Wild Offering 3/3
    .use 221418
    .mob Delirious Ancient
step
    #optional
    #completewith next
    .zone Felwood >>Return to Felwood
step
    .goto Felwood,51.6,82.0
    >>Talk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r near the Emerald Sanctuary
    .turnin 82044 >>Turn in The Wild Gods
    .target Shadowtooth Emissary
step
    .train 431650 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T237539:0|t[Divine Aegis] << Priest
    .train 431461 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T132091:0|t[Improved Frenzied Regeneration] << Druid
    .train 401754 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T135733:0|t[Advanced Warding] << Mage
    .train 416085 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T236185:0|t[Lock and Load] << Hunter
    .train 429247 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T135925:0|t[Improved Sanctuary] << Paladin
    .train 432293 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T135673:0|t[Combat Potency] << Rogue
    .train 410105 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T252995:0|t[Riptide] << Shaman
    .train 426470 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T236299:0|t[Vengeance] << Warlock
    .train 427082 >>|cRXP_WARN_Use the|r |T236160:0|t[|cRXP_FRIENDLY_Hyjal's Wisdom|r] item you received |cRXP_WARN_to train|r |T236315:0|t[Sword and Board] << Warrior
    .use 222962 --Hyjal's Wisdom
]])

RXPGuides.RegisterGuide([[
<<Warlock/Priest/Mage/Paladin
<< SoD
#classic
#group RestedXP Rune & Books Guide
#subgroup Helmet <<Warlock
#subgroup Bracers <<Paladin/Priest/Mage
#name Ley Crystal Runes
#displayname Displacement - 45 (Azeroth) <<Mage
#displayname Purifying Power - 45 (Azeroth) <<Paladin
#displayname Despair - 45 (Azeroth) <<Priest
#displayname Backdraft - 45 (Azeroth) <<Warlock

step
    #optional
    #completewith next
    >>|cRXP_WARN_In order to find this rune you will need to get 4|r |T134938:0|t|cRXP_LOOT_Scrolls of Geomancy|r |cRXP_WARN_and channel one into four Ley Crystals in various zones in the world to spawn the|r |cRXP_ENEMY_Enraged Leywalkers|r. |cRXP_WARN_Alternatively you can party up with other mages who have the scroll or warlocks with|r |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragments|r << Mage
    >>|cRXP_WARN_In order to find this rune you will need to get 4|r |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragments|r |cRXP_WARN_from your|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] |cRXP_WARN_expeditions and channel one into four Ley Crystals in various zones in the world to spawn the|r |cRXP_ENEMY_Enraged Leywalkers|r. |cRXP_WARN_Alternatively you can party up with other warlocks who have the fragment or mages with |r |T134938:0|t|cRXP_LOOT_Scrolls of Geomancy|r << Warlock
    +|cRXP_WARN_In order to find this rune you will need to party up with a warlock with|r |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragments|r |cRXP_WARN_or a mage with|r |T134938:0|t|cRXP_LOOT_Scrolls of Geomancy|r |cRXP_WARN_to summon the needed mobs. You can't summon them by yourself|r << Priest/Paladin
    .collect 223171,4 << Mage
    .collect 223168,4 << Warlock

step
    >>Go to each of the Ley Crystals marked on your map and use your |T134938:0|t|cRXP_LOOT_Scroll of Geomancy|r on them or have someone in your party do it to summon an |cRXP_ENEMY_Enraged Leywalker|r. Defeat it and loot for its |cRXP_LOOT_Leycryst|r. This can be done in any order << Mage
    >>Go to each of the Ley Crystals marked on your map and use your |T132842:0|t|cRXP_FRIENDLY_Worldcore Fragment|r on them or have someone in your party do it to summon an |cRXP_ENEMY_Enraged Leywalker|r. Defeat it and loot for its |cRXP_LOOT_Leycryst|r. This can be done in any order << Warlock
    >>Go to each of the Ley Crystals marked on your map and have the warlock or mage in your group summon an |cRXP_ENEMY_Enraged Leywalker|r. Defeat it and loot for it's |cRXP_LOOT_Leycryst|r. This can be done in any order << Priest/Paladin
    .goto Azshara,22.0,79.0,-1
    .goto Feralas,57.0,60.0,-1
    .goto The Hinterlands,48.0,59.0,-1
    .goto Searing Gorge,55,65,-1
    .collect 221318,1 >>|T237193:0|t|cRXP_LOOT_Azshara Leycryst|r from |cRXP_PICK_Azshara|r near The Forlorn Ridge
    .collect 221317,1 >>|T237189:0|t|cRXP_LOOT_Feralas Leycryst|r from |cRXP_PICK_Feralas|r in the High Wilderness
    .collect 221319,1 >>|T237192:0|t|cRXP_LOOT_Blackrock Leycryst|r from southern |cRXP_PICK_Searing Gorge|r
    .collect 221320,1 >>|T237191:0|t|cRXP_LOOT_Hinterlands Leycryst|r from |cRXP_PICK_The Hinterlands|r north of Altar of Zul
    .mob Enraged Leywalker
    .train 429309,1 << Mage
    .train 431745,1 << Warlock
    .train 429255,1 << Paladin
    .train 431673,1 << Priest
step
    .train 429309 >> |cRXP_WARN_Use any of the four crystals you collected to combine them and learn|r |T132171:0|t[Displacement] << Mage
    .train 431745 >> |cRXP_WARN_Use any of the four crystals you collected to combine them and learn|r |T236290:0|t[Backdraft] << Warlock
    .train 429255 >> |cRXP_WARN_Use any of the four crystals you collected to combine them and learn|r |T135950:0|t[Purifying Power] << Paladin
    .train 431673 >> |cRXP_WARN_Use any of the four crystals you collected to combine them and learn|r |T237555:0|t[Despair] << Priest
    .use 221318 --Azshara Leycryst
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD/Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#title Mental Dexterity << Shaman
#title Pain and Suffering << Priest
#name Mental Dexterity - 43 (Tanaris) << Shaman
#name Pain and Suffering - 43 (Tanaris) << Priest

-- Mental Dexterity/Pain and Suffering
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Travel to Tanaris
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    #completewith next
    >>Kill |cRXP_ENEMY_Wastewander Shadow Mages|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,59.8,24.0,35,0
    .goto Tanaris,65.6,32.2,35,0
    .goto Tanaris,62.4,33.2,30,0
    >>Kill |cRXP_ENEMY_Wastewander Thieves|r. Loot them for the |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r]
    .collect 221549,1
    .mob Wastewander Thief
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,58.4,38.6,40,0
    .goto Tanaris,60.3,23.4,40,0
    .goto Tanaris,66.2,35.0,40,0
    >>Kill |cRXP_ENEMY_Wastewander Shadow Mages|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Use the|r |T134329:0|t[Wastewander Cipher] |cRXP_WARN_to receive|r |T237018:0|t[Deciphered Warlock Notes]
    .goto Tanaris,58.0,36.0
    .use 221549
    .collect 221545,1
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Stand on top of the|r "Cryptic Scroll of Summoning". |cRXP_WARN_Use the|r |T237018:0|t[Deciphered Warlock Notes] |cRXP_WARN_while standing on top of the scroll|r.
    >>Kill the |cRXP_ENEMY_Enraged Voidwalker|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mental Dexterity|r] << Shaman
    >>Kill the |cRXP_ENEMY_Enraged Voidwalker|r. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r] << Priest
    .collect 220610,1 << Shaman
    .collect 221979,1 << Priest
step
    .itemcount 220610,1 << Shaman
    .itemcount 221979,1 << Priest
    .use 220610 << Shaman
    .use 221979 << Priest
    .train 416055 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mental Dexterity|r] |cRXP_WARN_to learn|r |T136055:0|t[Mental Dexterity] << Shaman
    .train 415991 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r] |cRXP_WARN_to learn|r |T237567:0|t[Pain and Suffering] << Priest
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD/Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Ranged Weapon Specialization
#name Ranged Weapon Specialization - 58 (Eastern Plaguelands)

step
    #completewith rangeSpec
    .zone Eastern Plaguelands >>Travel to Eastern Plaguelands
step << Horde
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Loot the red book next to |cRXP_FRIENDLY_Nathanos Blightcaller|r. Its outside the house, to the left of the door. It contains the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ranged Weapon Specialization|r]
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step << Alliance
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Loot the red book next to |cRXP_ENEMY_Nathanos Blightcaller|r. Its outside the house, to the left of the door. It contains the |T134419:0|t[|cRXP_FRIENDLY_Rune of Ranged Weapon Specialization|r]
    >>|cRXP_WARN_If there's someone nearby ask them to pull|r |cRXP_ENEMY_Nathanos Blightcaller|r |cRXP_WARN_away for a while while you safely loot the rune|r
    >>|cRXP_WARN_If there's no one nearby you can die to|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_and then respawn while standing inside the house and outside of his line of sight. Then loot the book from inside the house either by using the interact key or angling your camera so you can click it|r << Warrior/Rogue
    >>|cRXP_WARN_If there's no one nearby set your pet to|r |T136106:0|t[Stay] |cRXP_WARN_a decent distance away from|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_then send a pet|r |T132152:0|t[Attack] |cRXP_WARN_command to aggro him onto your pet. Once he's targetting your pet set your pet to|r |T132311:0|t[Passive], |cRXP_WARN_this will make your pet return to it's Stay position. Walk next to the book and use |T132293:0|t[Feign Death] to drop combat and loot the rune|r << Hunter
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step
    .train 453692 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Ranged Weapon Specialization|r] |cRXP_WARN_to learn|r |T135490:0|t[Ranged Weapon Specialization]
    .use 226410
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD/Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Holy Specialization
#name Holy Specialization - 60 (Eastern Plaguelands)

step
    #completewith next
    >>|cRXP_WARN_Getting this rune will require you to fight mobs in an elite area. It's possible to do solo but if you're lower level or not very geared consider looking for someone to help you|r
    .zone Eastern Plaguelands >> Travel to Eastern Plaguelands
step
    >>|cRXP_WARN_You can get this rune at the same time as|r |T135883:0|t[|cRXP_FRIENDLY_Binding Heal|r] |cRXP_WARN_if you progress that questline first. Go to the|r |T135883:0|t[|cRXP_FRIENDLY_Binding Heal|r] |cRXP_WARN_rune guide if you'd rather get both runes at the same time|r << Priest
    .goto Eastern Plaguelands,77.5,81.7,50 >> Travel to Tyr's Hand, |cRXP_WARN_keep in mind that this is an elite area|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Head to the library wing of the building marked on your map and look for a book located on top of a bookshelf. Loot it for the rune. Keep in mind you can't loot it in combat|r
    >>|cRXP_WARN_You can either clear all mobs in the room or die next to the book and release in a spot thats out of line of sight of mobs to loot the rune without having to kill anything|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Holy Specialization|r] to train |T237537:0|t[Holy Specialization]
    .train 453702,1
    .itemcount 226418,1
    .use 226418
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Druid SoD/Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Arcane Specialization
#name Arcane Specialization - 60 (Western Plaguelands)

step
    #completewith next
    >>|cRXP_WARN_Getting this rune will require you to fight mobs in an elite area. It's possible to do solo but if you're lower level or not very geared consider looking for someone to help you|r
    .zone Western Plaguelands >> Travel to Western Plaguelands
step
    .goto Western Plaguelands,48.7,22.4,50 >> Travel to Hearthglen, |cRXP_WARN_keep in mind that this is an elite area|r
step
    .goto Western Plaguelands,47.3,13.6
    >>|cRXP_WARN_Head to the top of the tower marked on your map. Look for a red book laying in a corner next to a bookshelf, it's guarded by a|r |cRXP_ENEMY_Scarlet Priest|r. |cRXP_WARN_Loot it for the rune|r
    .collect 226413,1 --Rune of Arcane Specialization
    .train 453702,1
step
    #completewith next
    .train 453695 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Arcane Specialization|r] to train |T132849:0|t[Arcane Specialization]
    .train 453695,1
    .itemcount 226413,1
    .use 226413
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Paladin SoD/Warrior SoD/Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Axe Specialization
#name Axe Specialization - 58 (Burning Steppes)

step
    #completewith next
    .zone Burning Steppes >> Travel to Burning Steppes
step
    .goto Burning Steppes,40.3,34.9,100 >> Travel to the Blackrock Stronghold
step
    .goto Burning Steppes,39.9,34.1
    >>|cRXP_WARN_Enter the Stronghold and look for a red book laying in the location marked on your map. Loot it for the rune|r
    .collect 226407,1 --Rune of Axe Specialization
step
    #completewith next
    .train 453688 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Axe Specialization|r] to train |T132394:0|t[Axe Specialization]
    .itemcount 226407,1
    .use 226407
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Warrior SoD/Shaman SoD/Mage SoD/Priest SoD/Rogue SoD/Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Dagger Specialization
#name Dagger Specialization - 60 (Silithus)

step
    #completewith next
    .zone Burning Steppes >> Travel to Silithus
step
    .goto Silithus,20,85,50 >> Travel to the south of the zone to a tent near the gates of Ahn'Qiraj
step
    .goto Silithus,20,85
    >>|cRXP_WARN_Enter the tent and look for a red book laying in the location marked on your map. Loot it for the rune|r
    .collect 226409,1 --Rune of Dagger Specialization
step
    #completewith next
    .train 453690 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Dagger Specialization|r] to train |T135641:0|t[Dagger Specialization]
    .itemcount 226409,1
    .use 226409
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Warrior SoD/Shaman SoD/Rogue SoD/Warlock SoD/Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Defense Specialization
#name Defense Specialization - 60 (Blackrock Mountain)

step
    #completewith next
    .zone 25 >> Travel to the Blackrock Mountain either through Searing Gorge or the Burning Steppes
step
    .goto 1415/0,-1232.500,-7612.600,20 >> Travel to the east side of the molten span circle untill you find a doorway leading to a path to the Lower Blackrock Spire
step
    .goto 1415/0,-1294.200,-7574.700,5 >> Travel up the path and enter the first side room to your right. |cRXP_WARN_You might have to kill elite mobs standing in your way as you cannot loot the book while in combat|r
step
    .goto 1415/0,-1302.100,-7583.400
    >>|cRXP_WARN_Look for a red book laying on the ground in this room. It can spawn in multiple locations. Loot it for the rune|r
    .collect 226694,1 --Rune of Defense Specialization
step
    #completewith next
    .train 459313 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Defense Specialization|r] to train |T134952:0|t[Defense Specialization]
    .itemcount 226694,1
    .use 226694
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Feral Combat Specialization
#name Feral Combat Specialization - 60 (Winterspring)

step
    #completewith next
    .zone Winterspring >> Travel to Winterspring
step
    .goto Winterspring,49.0,8.0,50 >> Head north to the Frostsaber Rock
step
    .goto Winterspring,49.0,8.0
    >>|cRXP_WARN_Look for a red book in the marked location. It might be guarded by two level 55-56|r |cRXP_ENEMY_Frostsabers|r |cRXP_WARN_Loot it for the rune|r
    .collect 226419,1 --Rune of Feral Combat Specialization
step
    #completewith next
    .train 453703 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Feral Combat Specialization|r] to train |T132116:0|t[Feral Combat Specialization]
    .itemcount 226419,1
    .use 226419
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Mage SoD/Shaman SoD/Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Fire Specialization
#name Fire Specialization - 52 (Searing Gorge)

step
    #completewith next
    .zone Searing Gorge >> Travel to Searing Gorge
step
    .goto 1427/0,-1425.800,-6772.400,25 >> Enter the Slag Pits via the cave entrance marked on your map
step
    .goto 1427/0,-1306.900,-6642.800,25 >> Cross the bridge heading north
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Look for a red book on a bench behind|r |cRXP_ENEMY_Overseer Maltorius|r. |cRXP_WARN_Loot it for the rune. Keep in mind you can't do it while in combat|r
    >>|cRXP_WARN_If you're higher level you can loot it without pulling|r |cRXP_ENEMY_Overseer Maltorius|r |cRXP_WARN_if you hug the very edge of his balcony, if you can't do it try asking someone to pull him away as you loot the book or kill him and his guards|r
    >>|cRXP_WARN_As a Hunter you can pull him away with your pet then cast|r |T132293:0|t[Feign Death] |cRXP_WARN_while next to the book to drop combat and loot it. Make sure you pull the Overseer somewhere oustide of your line of sight or he might put you back in combat|r << Hunter
    .collect 226414,1 --Rune of Fire Specialization
step
    #completewith next
    .train 453696 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Fire Specialization|r] to train |T132847:0|t[Fire Specialization]
    .itemcount 226414,1
    .use 226414
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Druid SoD/Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Fist Weapon Specialization
#name Fist Weapon Specialization - 60 (Silithus)

step
    #completewith next
    .zone Silithus >> Travel to Silithus
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Look for a red book in the marked location. It's shrouded by twilight and might be a bit hard to see|r
    .collect 226411,1 --Rune of Fist Weapon Specialization
step
    #completewith next
    .train 453691 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Fist Weapon Specialization|r] to train |T133832:0|t[Fist Weapon Specialization]
    .itemcount 226411,1
    .use 226411
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Hunter SoD/Shaman SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Frost Specialization
#name Frost Specialization - 60 (Winterspring)

step
    #completewith next
    .zone Winterspring >> Travel to Winterspring
step
    .goto Winterspring,59.0,59.0,50 >> Head south to the Owlbeast Camp
step
    .goto Winterspring,59.0,59.0
    >>|cRXP_WARN_Look for a red book in the marked location. It might be guarded by a couple level 57-58|r |cRXP_ENEMY_Owlbeasts|r |cRXP_WARN_Loot it for the rune|r
    .collect 226415,1 --Rune of Frost Specialization
step
    #completewith next
    .train 453697 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frost Specialization|r] to train |T132852:0|t[Frost Specialization]
    .itemcount 226415,1
    .use 226415
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Rogue SoD/Shaman SoD/Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Nature Specialization
#name Nature Specialization - 56 (Felwood)

step
    #completewith next
    .zone Felwood >> Travel to Felwood
step
    .goto Felwood,63.42,7.71,50 >> Head north to Felpaw Village
step
    .goto Felwood,62.8,7.5
    >>|cRXP_WARN_Look for a red book in the marked location. It's in a camp next to|r |cRXP_ENEMY_Chieftain Bloodmaw|r |cRXP_WARN_Loot it for the rune|r
    .collect 226416,1 --Rune of Nature Specialization
step
    #completewith next
    .train 453698 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Nature Specialization|r] to train |T132848:0|t[Nature Specialization]
    .itemcount 226416,1
    .use 226416
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Rogue SoD/Shaman SoD/Paladin SoD/Priest SoD/Druid SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Mace Specialization
#name Mace Specialization - 60 (Wetlands)

step
    #completewith next
    .zone Wetlands >> Travel to Wetlands
step
    .goto 1437/0,-3451.700,-3450.800,25 >> Head east to the start of the path to Grim Batol
step
    .goto 1437/0,-3582.500,-4138.200,25 >> Follow the road up all the way to Grim Batol. |cRXP_WARN_Don't fight any of the red drakes on the way you can make it there without having to kill any of them|r
step
     .goto 1437/0,-3451.900,-4052.500
    >>|cRXP_WARN_Go up the path to the gate of Grim Batol. Look for a red book to the right side of the entrance. Loot it for the rune|r
    .collect 226408,1 --Rune of Mace Specialization
step
    #completewith next
    .train 453689 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mace Specialization|r] to train |T133038:0|t[Mace Specialization]
    .itemcount 226408,1
    .use 226408
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Warlock SoD/Shaman SoD/Mage SoD/Priest SoD/Druid SoD/Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Pole Weapon Specialization
#name Pole Weapon Specialization - 60 (Azshara)

step
    #completewith next
    .zone Azshara >> Travel to Azshara
step
    .goto Azshara,76.43,43.95,100 >> Head to the Temple of Arkkoran
step
    .goto Azshara,76.88,44.24
    >>|cRXP_WARN_Look for red book laying on a moonwell inside the temple. Loot it for the rune|r
    .collect 226412,1 --Rune of Pole Weapon Specialization
step
    #completewith next
    .train 453694 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Pole Weapon Specialization|r] to train |T135145:0|t[Pole Weapon Specialization]
    .itemcount 226412,1
    .use 226412
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD/Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Shadow Specialization
#name Shadow Specialization - 60 (Blasted Lands)

step
    #completewith next
    .zone Blasted Lands >> Travel to Blasted Lands
step
    .goto Blasted Lands,45.19,55.29,100 >> Head south to the Tainted Scar. |cRXP_WARN_You will have to traverse an elite area with a lot of CC immune high level mobs. You will most likely have to deathrun your way to the rune location|r
step
    .goto Blasted Lands,33.0,48.0
    >>|cRXP_WARN_Look for red book laying on an altar marked on your map. Loot it for the rune|r
    .collect 226417,1 --Rune of Shadow Specialization
step
    #completewith next
    .train 453700 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadow Specialization|r] to train |T132851:0|t[Shadow Specialization]
    .itemcount 226417,1
    .use 226417
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Paladin SoD/Mage SoD/Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Sword Specialization
#name Sword Specialization - 60 (Deadwind Pass)

step
    #completewith next
    .zone Deadwind Pass >> Travel to Deadwind Pass
step
    .goto Deadwind Pass,47.40,75.50 >> Head south to Karazhan
step
    .goto 1430/0,-2019.100,-11170.300,10 >> Enter the Master's Cellar
step
    .goto Deadwind Pass,43.06,74.58
    >>|cRXP_WARN_Enter the cave area and look for a red book in the location marked on your map. Loot it for the rune|r
    .collect 226406,1 --Rune of Sword Specialization
step
    #completewith next
    .train 453635 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Sword Specialization|r] to train |T132223:0|t[Sword Specialization]
    .itemcount 226406,1
    .use 226406
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Warlock SoD/Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Meditation Specialization
#name Meditation Specialization - 30 (Thousand Needles)

step
    #completewith next
    .zone Thousand Needles >> Travel to the Shimmering Flats in Thousand Needles
    >>The closest flight path to the rune location is Gadgetzan
step
    .goto Thousand Needles,80,77,10 >> Head inside the hut marked on your map
step
    .goto Thousand Needles,80,77
    >>|cRXP_WARN_Enter the hut and and look for a |cRXP_WARN_gray book|r laying on a shelf inside. Loot it for the rune|r
    .collect 231828,1 --Rune of Meditation Specialization
step
    .train 468763 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Meditation Specialization|r] to train |T135913:0|t[Meditation Specialization]
    .itemcount 231828,1
    .use 231828
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Priest SoD
#group RestedXP Rune & Books Guide
#subgroup Ring
#title Healing Specialization
#name Healing Specialization - 40 (Arathi Highlands)

step
    #completewith next
    .zone Arathi Highlands >> Travel to Arathi Highlands
step
    .goto Arathi Highlands,21.98,79.75,40 >> Head to Faldir's Cove, follow the path between the mountains and Stromgarde's southeastern wall
step
    .goto Arathi Highlands,35.2,79.1
    >>|cRXP_WARN_Head to the campfire next to |cRXP_FRIENDLY_Professor Phizzlethorpe|r look for a |cRXP_WARN_gray book|r laying on a box next to the campfire. Loot it for the rune|r
    .collect 231829,1 --Rune of Healing Specialization
    .target Professor Phizzlethorpe
step
    .train 468761 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Specialization|r] to train |T135913:0|t[Healing Specialization]
    .itemcount 231829,1
    .use 231829
]])
