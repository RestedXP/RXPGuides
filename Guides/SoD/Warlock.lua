RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Haunt - 3 (Elwynn Forest)
#title Haunt

step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>Open the |cRXP_PICK_Defias Stashbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .collect 205230,1 -- Rune of Haunting (1)
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .use 205230
    .itemcount 205230,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Haunt - 1 (Dun Morogh)
#title Haunt

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r on the ground. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Haunting]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    .train 403919 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Haunting]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Haunt]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Haunt - 2 (Durotar)
#title Haunt


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Accept Stolen Power
    .target Nartok
step
    #season 2
    .goto Durotar,42.99,54.43
    >>Loot the |cRXP_PICK_Waterlogged Stashbox|r for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r] inside the cave
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .use 205230
    .train 403919,1
step << Orc
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Haunt - 2 (Tirisfal)
#title Haunt


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Accept The Lost Rune
    .target Maximillion
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Loot the |cRXP_PICK_Lost Stache|r inside the cave for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .use 205230
    .train 403919,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Turn in The Lost Rune
    .target Maximillion


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Soul Siphon - 13 (Durotar)
#title Soul Siphon

step
    #completewith next
    .zone Durotar >>Travel to Durotar
step
    .train 403920,1
    .goto Durotar,48.60,15.28
    .collect 205020,1 >>Use |T136163:0|t[Drain Soul] on a critter to get a |T134095:0|t[Pure Soul Shard]
step
    --Wowhead npc 3203 also possible, maybe better?
    .train 403920,1
    >>Use |T136163:0|t[Drain Soul] on |cRXP_ENEMY_Gazz'uz|r (inside the cave) to get a |T134085:0|t[Tainted Soul Shard]. |cRXP_WARN_You don't have to kill him and can drain him from below|r
    .goto Durotar,51.47,9.73
    .collect 205019,1
    .mob Gazz'uz
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darmak Bloodhowl|r
    .goto Durotar,54.6,41.6
    .collect 205022,1
    .skipgossip 208226,1
    .target Darmak Bloodhowl
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r] |cRXP_WARN_to train|r |T136169:0|t[Soul Siphon]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Soul Siphon - 9 (Tirisfal Glades)
#title Soul Siphon

step
    #completewith next
    .zone Tirisfal Glades >>Travel to the Tirisfal Glades
step
    #completewith next
    .train 403920,1
    .collect 205020,1 >>Use |T136163:0|t[Drain Soul] on a critter to get a |T134095:0|t[Pure Soul Shard]
step
    .train 403920,1
    >>Use |T136163:0|t[Drain Soul] on |cRXP_ENEMY_Maggot Eye|r to get a |T134085:0|t[Tainted Soul Shard]. |cRXP_WARN_You don't have to kill him.|r
    .goto Tirisfal Glades,58.6,31.6
    .collect 205019,1
    .mob Maggot Eye
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denton Bleakway|r in Undercity
    .goto Undercity,84.2,25.8
    .collect 205022,1
    .skipgossip 208682,1
    .target Denton Bleakway
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r] |cRXP_WARN_to train|r |T136169:0|t[Soul Siphon]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Demonic Tactics - 4 (Tirisfal Glades)
#title Demonic Tactics

step
    #completewith next
    .zone Tirisfal Glades >>Travel to the Tirisfal Glades
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the |cRXP_FRIENDLY_Dead Acolyte|r. Open |T133625:0|t[Acolyte's Knapsack]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert Boch|r upstairs in the inn.
    .goto Tirisfal Glades,61.6,52.4
    .collect 205182,1
    .skipgossip 2127,2
    .target Rupert Boch
step
    .train 416009,1
    >>Use the |T133447:0|t[Powerless Artifact] next to the rune stone. |cRXP_WARN_Afterwards you have 10 minutes to get to Undercity (look at your debuff)|r
    .goto Tirisfal Glades,76.61,44.87
    .use 205182
    .collect 205183,1
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carentin Halgar|r in Undercity
    .goto Undercity,85.0,25.6
    .collect 205215,1
    .skipgossip 5675,1
    .target Carendin Halgar
step
    .use 205215
    .itemcount 205215,1
    .train 416009 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Tactics|r] |cRXP_WARN_to train|r |T136150:0|t[Demonic Tactics]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Demonic Grace - 8 (Durotar)
#title Demonic Grace

step
    #completewith DemonicGraceDurotarTome
    .zone Durotar >>Travel to Durotar
step
    #completewith DemonicGraceDurotarSkull
    >>Kill |cRXP_ENEMY_Makrura|r. Loot them for the |T133571:0|t[Makrura Legs]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    #label DemonicGraceDurotarTome
    >>Kill the |cRXP_ENEMY_Hexed Trolls|r and the |cRXP_ENEMY_Voodoo Trolls|r. Loot them for the |T133733:0|t[Ominous Tome]
    .goto Durotar,67.2,85.6
    .collect 207731,1
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #label DemonicGraceDurotarSkull
    >>Kill the |cRXP_ENEMY_Kul Tiran Humans|r. Loot them for the |T133730:0|t[Kul Tiran Skull]
    .goto Durotar,58.6,56.0
    .collect 207733,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #loop
    .goto Durotar,61.0,43.0,50,0
    .goto Durotar,60.8,70.6,50,0
    .goto Durotar,51.6,84.6,50,0
    .goto Durotar,60.8,70.6,50,0
    >>Kill |cRXP_ENEMY_Makrura|r. Loot them for the |T133571:0|t[Makrura Legs]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    .train 425477,1
    *|cRXP_WARN_CAREFUL: Others can tag your demon which means that you would have to farm the reagents again|r
    >>Enter the Sewers. Use the |T133733:0|t[Ominous Tome] at the Summoning Circle. Kill |cRXP_WARN_THE ELITE (maybe look for help)|r |cRXP_ENEMY_Soboz|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .goto Durotar,67.45,87.83
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r] |cRXP_WARN_to train|r |T236293:0|t[Demonic Grace]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Demonic Grace - 8 (Tirisfal Glades)
#title Demonic Grace

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>Kill |cRXP_ENEMY_Darkhounds|r. Loot them for the |T133726:0|t[Hound Jawbone]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesTome
    >>Kill the |cRXP_ENEMY_Darkeye Bonecasters|r. Loot them for the |T133733:0|t[Ominous Tome]
    .goto Tirisfal Glades,47.6,36.4
    .collect 207974,1
    .mob Darkeye Bonecaster
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesBlood
    >>Kill the |cRXP_ENEMY_Rot Hides|r. Loot them for the |T133730:0|t[Gnoll Blood]
    .goto Tirisfal Glades,58.6,34.6
    .collect 204906,1
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .train 425477,1
    #loop
    .goto Tirisfal Glades,73.4,52.8,50,0
    .goto Tirisfal Glades,59.4,60.2,50,0
    .goto Tirisfal Glades,44.4,58.4,50,0
    .goto Tirisfal Glades,42.0,43.0,50,0
    >>Kill |cRXP_ENEMY_Darkhounds|r. Loot them for the |T133726:0|t[Hound Jawbone]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    *|cRXP_WARN_CAREFUL: Others can tag your demon which means that you would have to farm the reagents again|r
    >>Enter the Sewers. Use the |T133733:0|t[Ominous Tome] at the Summoning Circle. Kill |cRXP_WARN_THE ELITE (maybe look for help)|r |cRXP_ENEMY_Soboz|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .goto Undercity,15.1,31.3,20,0
    .goto Undercity,24.11,41.59
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r] |cRXP_WARN_to train|r |T236293:0|t[Demonic Grace]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
-- #subgroup Chest << Mage
#subgroup Gloves << Warlock
-- #name Burnout - 8 (Tirisfal Glades) << Mage
#name Chaos Bolt - 8 (Tirisfal Glades) << Warlock
#title Chaos Bolt << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>Buy a (or multiple) |T135933:0|t[Comprehension Charm] from a Reagent Vendor
    .collect 211779,1
step
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 403925,1 << Warlock
    .train 401759,1 << Mage
    .goto Tirisfal Glades,66.3,40.0
    >>Free the |cRXP_ENEMY_Frozen Murloc|r |cRXP_WARN_by using fire spells|r. Loot him for |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] << Mage
    >>Free the |cRXP_ENEMY_Frozen Murloc|r |cRXP_WARN_by using fire spells|r. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r] << Warlock
    *|cRXP_WARN_At low levels you won't be able to free it alone, search for another Warlock of Mage|r
    .collect 205228,1 << Warlock
    .collect 203748,1 << Mage
    .mob Frozen Murloc
step
    .use 205228 << Warlock
    .use 203748 << Mage
    .itemcount 205228,1 << Warlock
    .itemcount 203748,1 << Mage
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a Reagent Vendor to use the item << Mage
    .train 403925 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r] |cRXP_WARN_to train|r |T236291:0|t[Chaos Bolt]  << Warlock
    .train 401759 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] |cRXP_WARN_to train|r |T236207:0|t[Burnout] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Lake of Fire - 25 (Hillsbrad Foothills)
#title Lake of Fire

step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills (e.g. from Undercity through Silverpine Forest) << Horde
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills (e.g. head North from Wetlands) << Alliance
step
    .train 403937,1
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Look for |cRXP_FRIENDLY_Zixil|r. He patrolls between Tarren Mill and Southshore. Buy the |T133709:0|t[Demolition Explosives] from him |cRXP_WARN_for 1 gold|r
    .collect 211487,1
    .target Zixil
step
    .train 403937,1
    >>Use the |T133709:0|t[Demolition Explosives] to destroy the |cRXP_PICK_Rubble|r. Loot the |cRXP_PICK_Storage Locker|r on the ground for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Fires Wake|r]
    .goto Hillsbrad Foothills,79.7,41.0
    .collect 211476,1
step
    .use 211476
    .itemcount 211476,1
    .train 403937 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Fires Wake|r] |cRXP_WARN_to train|r |T135826:0|t[Lake of Fire]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Incinerate - 22 (Redridge Mountains)
#title Incinerate

step
    #completewith next
    .zone Redridge Mountains >>Travel to the Redridge Mountains
step
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>Kill |cRXP_ENEMY_Incinerator Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r]
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r] |cRXP_WARN_to train|r |T135789:0|t[Incinerate]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Channeler - 12 (The Barrens)
#title Master Channeler

step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
step
    .train 403932,1
    >>|cRXP_WARN_Go to the Altar of Thorns|r. Cast |T136126:0|t[Life Tap] until you're almost dying. Then cast |T136168:0|t[Health Funnel] on your pet to die and get |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    *|cRXP_WARN_You will be revived immediately after dying|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Channeler - 14 (Silverpine Forest)
#title Master Channeler

step
    #completewith next
    .zone Silverpine Forest >>Travel to the Silverpine Forest
step
    .train 403932,1
    >>Enter the cave at the waypoint location. Use the |T136225:0|t[Curse of Recklessness] on the |cRXP_ENEMY_Sadistic Fiend|r. Kill it and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    .goto Silverpine Forest,56.6,46.4
    .collect 208750,1
    .mob Sadistic Fiend
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadow Bolt Volley - 16 (The Barrens)
#title Shadow Bolt Volley

step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
step
    .train 403936,1
    >>Use |T136163:0|t[Drain Soul] on |cRXP_ENEMY_Supervisor Lugwizzle|r (|cRXP_ENEMY_Overseer Glibby|r may also work) until you get the |T134105:0|t[Soul of Greed]
    *|cRXP_WARN_You don't need the tag|r
    .goto The Barrens,56.6,8.2
    .collect 208743,1
    .mob Supervisor Lugwizzle
    .mob Overseer Glibby
step
    .train 403936,1
    >>Click on the |cRXP_PICK_Hungry Idol|r to get the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]
    .goto The Barrens,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] |cRXP_WARN_to train|r |T136195:0|t[Shadow Bolt Volley]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadow Bolt Volley - 18 (Silverpine Forest)
#title Shadow Bolt Volley

step
    #completewith next
    .zone Silverpine Forest >>Travel to the Silverpine Forest
step
    .goto Silverpine Forest,60.38,74.37,40,0
    .goto Silverpine Forest,60.29,72.21,40,0
    .goto Silverpine Forest,59.38,70.54
    .train 403936,1
    >>Kill |cRXP_ENEMY_Ravenclaw Drudger|r and |cRXP_ENEMY_Ravenclaw Guardians|r |cRXP_WARN_inside the cave|r. Loot them for the |T236295:0|t[Tortured Soul]
    .collect 210713,1
    .mob Ravenclaw Drudger
    .mob Ravenclaw Guardian
step
    .train 403936,1
    >>Use |T136126:0|t[Life Tap] once and afterwards the |T236295:0|t[Tortured Soul]. Kill the |cRXP_ENEMY_Tortured Soul|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]
    .collect 208744,1
    .use 210713
    .cast 1455
    .mob Tortured Soul
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] |cRXP_WARN_to train|r |T136195:0|t[Shadow Bolt Volley]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Metamorphosis - 25
#title Metamorphosis

step
    #completewith WarlockRuneMetamorphosisA
    +|cRXP_WARN_It is recommended to do all these steps in a group. Some steps can be completed solo.|r
step
    #completewith next
    .zone Redridge Mountains >>Travel to the Redridge Mountains (e.g. take the boat from Ratchet to Booty Bay, run North) << Horde
    .zone Redridge Mountains >>Travel to the Redridge Mountains << Alliance
step
    #label WarlockRuneMetamorphosisA
    .train 403938,1
    >>Loot the |cRXP_PICK_Demonic Reliquary|r at the top of the tower to get the |T134337:0|t[Orb of Des]
    *|cRXP_WARN_Be careful as it's guarded by an elite. One way would be to get to the second floor, die, ress at the top and loot the chest while your Voidwalker tanks the mobs.|r
    .collect 210765,1
    .goto Redridge Mountains,80.2,49.5
step << Horde
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    *|cRXP_WARN_Skip this step if you're traveling through The Barrens|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Accept The Orb of Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Darkshore >>Travel to Darkshore (take the boat from Menethil Harbor) << Alliance
    .zone Darkshore >>Travel to Darkshore (walk through Ashenvale) << Horde
step
    .train 403938,1
    >>Loot the |cRXP_PICK_Bough of Altek|r at the top of the tower to get the |T135153:0|t[Bough of Altek]
    *|cRXP_WARN_Be careful. One way would be to die near it, jump up behind the bookcase, ress, (maybe fear the first caster that would attack you) and loot it.|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Accept The Orb of Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
step
    .train 403938,1
    >>Kill the |cRXP_ENEMY_Twilight Acolytes|r near the BFD raid entrance. Loot them for the |cRXP_LOOT_Soran'ruk Fragments|r
    *|cRXP_WARN_The |cRXP_WARN_Twilight Acolyte|r inside the raid before the 5th boss drop them as well|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step
    .train 403938,1
    >>Kill |cRXP_ENEMY_Shadowfang Darksouls|r inside the |cRXP_WARN_Shadowfang Keep dungeon (go right after |cRXP_ENEMY_Baron Silverlaine|r)|r. Loot them for the |cRXP_LOOT_Large Soran'ruk Fragment|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step
    #completewith next
    .zone The Barrens >>Travel to The Barrens
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>Turn in The Orb of Soran'ruk
    .accept 78680 >>Accept Rumors Abound
    .turnin 78680 >>Turn in Rumors Abound
    .accept 78681 >>Accept The Conjuring
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Travel to Ashenvale
step
    .train 403938,1
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>Kill the |cRXP_ENEMY_Demons|r in the area. Loot them for the |cRXP_LOOT_Blood of the Legion|r
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
step
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_If you're in a group of warlocks then the first warlock (the one who has a debuff) who turns in the quest has to get the killing blow of the |cRXP_ENEMY_Searing Infernal|r while standing inside the rune|r
step
    .train 403938,1
    >>Interact with the |cRXP_PICK_Dark Ritual Stone|r
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>Turn in The Conjuring
    .target Dark Ritual Stone
step
    .train 403938,1
    #label WarlockRuneMetamorphosisB
    >>Kill the spawning |cRXP_ENEMY_Demons|r. |cRXP_WARN_Kill the |cRXP_ENEMY_Searing Infernal|r WHILE CHANNELING|r |T136163:0|t[Drain Soul] |cRXP_WARN_and WHILE STANDING INSIDE THE RUNE|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>Accept Mysterious Traveler
    .mob Searing Infernal
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r to get the |T134419:0|t[|cRXP_FRIENDLY_Rune of Metamorphosis|r]
    .goto The Barrens,49.2,57.2
    .turnin 78684 >>Turn in Mysterious Traveler
    .turnin 78702 >>Turn in Raszel Ander
    .collect 210980,1
    .target Doan Karhan
step
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Metamorphosis|r] |cRXP_WARN_to train|r |T237558:0|t[Metamorphosis]
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Channeler - 10 (Loch Modan)
#title Master Channeler

step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Look for |cRXP_FRIENDLY_Greishan Ironstove|r patroling on the road through Loch Modan. His patrol path is marked on your map|r
    >>|cRXP_BUY_Buy a|r |T237359:0|t[Malevolent Pie] |cRXP_BUY_from him|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Use the|r |T237359:0|t[Malevolent Pie] |cRXP_WARN_to eat it. Once the|r |T132108:0|t[Hellish Indigestion] |cRXP_WARN_debuff drops off you, you will receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Master Channeler - 15 (Darkshore)
#title Master Channeler

step << Warlock
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Soul Siphon - 10 (Dun Morogh)
#title Soul Siphon

step << Warlock
    #completewith next
    >>|cRXP_WARN_Cast|r |T136163:0|t[Drain Soul] |cRXP_WARN_on any critter to receive a|r |T134095:0|t[|cRXP_LOOT_Pure Soul Shard|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,77.894,62.236
    >>Kill |cRXP_ENEMY_Captain Beld|r downstairs inside the building. Loot him for a |T134085:0|t[|cRXP_LOOT_Tainted Soul Shard|r]
    >>|cRXP_WARN_Ensure he dies while you also have|r |T136163:0|t[Drain Soul] |cRXP_WARN_on him|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Captain Beld
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Cast|r |T136163:0|t[Drain Soul] |cRXP_WARN_on any critter to receive a|r |T134095:0|t[|cRXP_LOOT_Pure Soul Shard|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,47.351,53.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaklik Voidtwist|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Gaklik Voidtwist
step << Warlock
    .train 403920 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r] |cRXP_WARN_to train|r |T136169:0|t[Soul Siphon]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Soul Siphon - 10 (Elwynn Forest)
#title Soul Siphon

step << Warlock
    #completewith next
    >>|cRXP_WARN_Cast|r |T136163:0|t[Drain Soul] |cRXP_WARN_on any critter to receive a|r |T134095:0|t[|cRXP_LOOT_Pure Soul Shard|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for a |T134085:0|t[|cRXP_LOOT_Tainted Soul Shard|r]
    >>|cRXP_WARN_Ensure he dies while you also have|r |T136163:0|t[Drain Soul] |cRXP_WARN_on him|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Hogger
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Cast|r |T136163:0|t[Drain Soul] |cRXP_WARN_on any critter to receive a|r |T134095:0|t[|cRXP_LOOT_Pure Soul Shard|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,44.093,66.315
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damien Kane|r in the basement of the inn to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Damien Kane
step << Warlock
    .train 403920 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r] |cRXP_WARN_to train|r |T136169:0|t[Soul Siphon]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Demonic Tactics - 1 (Elwynn Forest)
#title Demonic Tactics

step << Warlock
    .goto Elwynn Forest,56.743,57.650
    >>Loot the |cRXP_FRIENDLY_Dead Acolyte|r for the |T133625:0|t[|cRXP_LOOT_Acolyte's Knapsack|r]
    .collect 205364,1 -- Acolyte's Knapsack (1)
    .skipgossip
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    .use 205364 >>|cRXP_WARN_Use the|r |T133625:0|t[|cRXP_LOOT_Acolyte's Knapsack|r] |cRXP_WARN_to receive an|r |T133447:0|t[|cRXP_LOOT_Unidentified Artifact|r]
    .collect 205181,1 -- Unidentified Artifact (1)
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,44.390,66.242
    .gossipoption 109291 >>Talk to |cRXP_FRIENDLY_Maximillian Crowe|r in the Goldshire inn basement to receive the |T133447:0|t[|cRXP_LOOT_Powerless Artifact|r]
    .collect 205182,1 -- Powerless Artifact (1)
    .skipgossip
    .target Maximillian Crowe
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,56.743,57.650
    .cast 408755 >>|cRXP_WARN_Use the|r |T133447:0|t[|cRXP_LOOT_Powerless Artifact|r] |cRXP_WARN_at the |cRXP_FRIENDLY_Dead Acolyte's|r location to receive the|r |T136008:0|t[Blood Offering] |cRXP_WARN_debuff|r
    .use 205182
    .aura 408755
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Travel to Stormwind
    .train 416009,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
    .train 416009,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Tactics|r]
    .collect 205215,1 -- Rune of Tactics (1)
    .skipgossip
    .target Gakin the Darkbinder
    .train 416009,1
step << Warlock
    .train 416009 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Tactics|r] |cRXP_WARN_to train|r |T136150:0|t[Demonic Tactics]
    .use 205215
    .itemcount 205215,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Demonic Grace - 10 (Elwynn Forest)
#title Demonic Grace

step << Warlock
    .goto Elwynn Forest,61.6,53.8
    >>Kill |cRXP_ENEMY_Kobold Geomancers|r. Loot them for a |T133733:0|t[|cRXP_LOOT_Ominous Tome|r]
    .collect 204905,1 -- Ominous Tome (1)
    .mob Kobold Geomancer
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |cRXP_LOOT_Gnoll Blood|r
    .collect 204906,1 -- Gnoll Blood (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,35.6,61.0,60,0
    .goto Elwynn Forest,57.8,59.4
    >>Kill |cRXP_ENEMY_Mangy Wolves|r, |cRXP_ENEMY_Gray Forest Wolves|r and |cRXP_ENEMY_Prowlers|r. Loot them for a |cRXP_LOOT_Wolf Jawbone|r
    .collect 204907,1 -- Wolf Jawbone (1)
    .mob Mangy Wolf
    .mob Gray Forest Wolf
    .mob Prowler
    .train 425477,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Travel to Stormwind
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .cast 418065 >> |cRXP_WARN_Use the|r |T133733:0|t[|cRXP_LOOT_Ominous Tome|r] |cRXP_WARN_to call forth|r |cRXP_ENEMY_Soboz|r
    .use 204905
    .train 425477,1
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 204905 >> Kill |cRXP_ENEMY_Soboz|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r] |cRXP_WARN_to train|r |T236293:0|t[Demonic Grace]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Demonic Grace - 10 (Dun Morogh)
#title Demonic Grace

step << Warlock
    .goto Dun Morogh,22.8,50.6
    >>Kill |cRXP_ENEMY_Frostmane Shadowcasters|r. Loot them for a |T133733:0|t[|cRXP_LOOT_Ominous Tome|r]
    .collect 208139,1 -- Ominous Tome (1)
    .mob Frostmane Shadowcaster
    .train 425477,1
step << Warlock
    .loop 10,Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
    >>Kill |cRXP_ENEMY_Young Wendigos|r and |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Blood|r
    .collect 208140,1 -- Wendigo Blood (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 425477,1
step << Warlock
    .goto Dun Morogh,45.6,43.2,60,0
    .goto Dun Morogh,34.6,41.8
    >>Kill any |cRXP_ENEMY_Wolf|r in Dun Morogh. Loot them for their |cRXP_LOOT_Wolf Jawbone|r
    .collect 204907,1 -- Wolf Jawbone
    .mob Starving Winter Wolf
    .mob Winter Wolf
    .mob Snow Tracker Wolf
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .cast 418065 >> |cRXP_WARN_Use the|r |T133733:0|t[|cRXP_LOOT_Ominous Tome|r] |cRXP_WARN_to call forth|r |cRXP_ENEMY_Soboz|r
    .use 208139
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .use 204905 >> Kill |cRXP_ENEMY_Soboz|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r] |cRXP_WARN_to train|r |T236293:0|t[Demonic Grace]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadow Bolt Volley - 16 (Darkshore)
#title Shadow Bolt Volley

step << Warlock
    .goto Darkshore,56.8,27.6,60,0
    .goto Darkshore,57.6,26.0
    >>Kill |cRXP_ENEMY_Delmanis the Hated|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]
    .collect 208744,1 -- Rune of Shadowbolts (1)
    .unitscan Delmanis the Hated
    .train 403936,1
step << Warlock
    .train 403936 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] |cRXP_WARN_to train|r |T136195:0|t[Shadow Bolt Volley]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Chaos Bolt - 8 (Dun Morogh)
#title Chaos Bolt

step << Warlock
    .goto Dun Morogh,69.365,58.302
    >>Kill the |cRXP_ENEMY_Frozen Trogg|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r]
    >>|cRXP_WARN_Note: In order to break the iceblock you must attack it with multiple fire spells in very fast succession|r
    >>|cRXP_WARN_Cast|r |T135817:0|t[Immolate] |cRXP_WARN_and use your Imp to also attack it. You will need the assistance of another Warlock or Mage to help break it|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Trogg
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r] |cRXP_WARN_to train|r |T236291:0|t[Chaos Bolt]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Chaos Bolt - 8 (Elwynn Forest)
#title Chaos Bolt

step << Warlock
    .goto Elwynn Forest,77.010,51.897
    >>Kill the |cRXP_ENEMY_Frozen Murloc|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r]
    >>|cRXP_WARN_Note: In order to break the iceblock you must attack it with multiple fire spells in very fast succession|r
    >>|cRXP_WARN_Cast|r |T135817:0|t[Immolate] |cRXP_WARN_and use your Imp to also attack it. You will need the assistance of another Warlock or Mage to help break it|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Murloc
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r] |cRXP_WARN_to train|r |T236291:0|t[Chaos Bolt]
    .use 208744
    .itemcount 208744,1
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warlock SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Belt
-- #name Grimoire of Synergy

-- Grimoire of Synergy


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Invocation - 35 (Arathi Highlands)
#title Invocation

-- Invocation

step
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_It is recommended you find additional party members for acquiring the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_as it requires killing elites in Stromgarde Keep|r
step
    .train 426443,1
    .zone Arathi Highlands >> Travel to Arathi Highlands
step
    .train 426443,1
    #completewith next
    .subzone 324 >> Travel to Stromgarde Keep 
step
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>Kill |cRXP_ENEMY_Syndicate Conjurors|r. Loot them for their |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r]
    >>Kill a |cRXP_ENEMY_Voidwalker Minion|r while you are channelling |T136163:0|t[Drain Soul] on it to receive a |T132885:0|t[|cRXP_LOOT_Soul of the Void|r]
    .collect 213573,10
    .collect 213572,1
    .mob Syndicate Conjuror
    .mob Voidwalker Minion
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >> |cRXP_WARN_Enter the large house on the lower level of Stromgade Keep, and head up to the 2nd floor|r
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >> |cRXP_WARN_Use the|r |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r] |cRXP_WARN_up stairs next to the floating|r |cRXP_PICK_Void Prism|r |cRXP_WARN_to summon a level 36 elite |cRXP_ENEMY_Void Seeker|r
    .use 213573
step
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>Kill the |cRXP_ENEMY_Void Seeker|r. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r]
    .collect 213098,1
    .mob Void Seeker
step
    .train 426443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_LOOT_Rune of Invocation|r] |cRXP_WARN_to train|r |T136133:0|t[Invocation]
    .use 213098
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Dance of the Wicked - 35 (Desolace)
#title Dance of the Wicked

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Desolace >>Travel to Desolace
step
    .train 416017,1
    .goto Desolace,74.5,13.4
    >>Kill the |cRXP_ENEMY_Reckless Warlock|r in Desolace |cRXP_WARN_ Please note, this is a rare enemy and there's a chance it may not be present.|r Loot him |T236297:0|t[Brimstone Carving]
    .collect 213583,1
    .mob Reckless Warlock
    .unitscan Reckless Warlock
step
    .train 416017,1
    .cast 1949 >> Cast |T135818:0|t[Hellfire] to damage yourself below 70%. Afterwards |T236297:0|t[Brimstone Carving] will turn into the rune.
step
    .train 416017 >> Use the |T236295:0|t[Item] to learn |T236295:0|t[Dance of the Wicked]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Dance of the Wicked - 35 (Stranglethorn)
#title Dance of the Wicked

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Stranglethorn Vale>>Travel to Stranglethorn
step
    .train 416017,1
    .goto Stranglethorn Vale,31.2,47.4
    >>Kill the |cRXP_ENEMY_Reckless Warlock|r in Desolace |cRXP_WARN_ Please note, this is a rare enemy and there's a chance it may not be present.|r Loot him |T236297:0|t[Brimstone Carving]
    .collect 213583,1
    .unitscan Reckless Warlock
    .mob Reckless Warlock
step
    .train 416017,1
    .cast 1949 >> Cast |T135818:0|t[Hellfire] to damage yourself below 70%. Afterwards |T236297:0|t[Brimstone Carving] will turn into the rune.
step
    .train 416017 >> Use the |T236295:0|t[Item] to learn |T236295:0|t[Dance of the Wicked]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Shadowflame - 40 (Desolace)


-- Shadowflame

step
    .train 426467,1
    #completewith next
    .zone Desolace >>Travel to Desolace |cRXP_WARN_It is highly recommended to form a group of atleast 3 players.|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    .cast 434869 >> |cRXP_WARN_Click on the Altar to summon |cRXP_ENEMY_Seductress Ceeyna|r |cRXP_WARN_but make sure to use |T136121:0|t[Shadow Ward], |T136190:0|t[Sacrifice] and |T136160:0|t[Soul Link]|r beforehand|r |cFFFF0000 as you will receive a lot of damage during the channel and it cannot be healed.|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    >>Kill |cRXP_ENEMY_Seductress Ceeyna|r. Loot her for |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r]
    .collect 213101,1
    .mob Seductress Ceeyna
step
    .train 426467 >> Use |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r] to learn |T236302:0|t[Shadowflame]
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warlock SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Immolation Aura
-- for phase 3

-- Immolation Aura


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warlock SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Summon Felguard
-- for phase 3

-- Summon Felguard


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warlock SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Unstable Affliction
-- for phase 3

-- Unstable Affliction


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warlock SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Backdraft
-- for phase 3

-- Backdraft


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Warlock SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Pandemic
-- for phase 3

-- Pandemic


-- ]])
