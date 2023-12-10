RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Haunt - 3 (Elwynn Forest)
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
#group RestedXP Rune Guide
#subgroup Gloves
#name Haunt - 1 (Dun Morogh)

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .collect 205230,1 -- Rune of Haunting (1)
step << Warlock
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .use 205230
    .itemcount 205230,1
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Haunt - 2 (Durotar)


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Nartok|r
    .accept 77586 >>Accept Stolen Power
    .target Nartok
step
    #season 2
    .goto Durotar,43.27,69.51
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok

    ]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Haunt - 2 (Tirisfal)


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maximillion|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maximillion|r
    .turnin 77672 >>Turn in The Lost Rune
    .target Maximillion


    ]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Soul Siphon - 13 (Durotar)

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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Darmak Bloodhowl|r
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
#group RestedXP Rune Guide
#subgroup Chest
#name Soul Siphon - 9 (Tirisfal Glades)

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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Denton Bleakway|r in Undercity
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
#group RestedXP Rune Guide
#subgroup Chest
#name Demonic Tactics - 4 (Tirisfal Glades)

step
    #completewith next
    .zone Tirisfal Glades >>Travel to the Tirisfal Glades
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the |cFF00FF25Dead Acolyte|r. Open |T133625:0|t[Acolyte's Knapsack]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Rupert Boch|r upstairs in the inn.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Carentin Halgar|r in Undercity
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
#group RestedXP Rune Guide
#subgroup Legs
#name Demonic Grace - 8 (Durotar)

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
#group RestedXP Rune Guide
#subgroup Legs
#name Demonic Grace - 8 (Tirisfal Glades)

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>Kill |cRXP_ENEMY_Darkhounds|r. Loot them for the |T133726:0|t[Wolf Jawbone]
    .collect 204907,1
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
    >>Kill |cRXP_ENEMY_Darkhounds|r. Loot them for the |T133726:0|t[Wolf Jawbone]
    .collect 204907,1
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
#group RestedXP Rune Guide
-- #subgroup Chest << Mage
#subgroup Gloves << Warlock
-- #name Burnout - 8 (Tirisfal Glades) << Mage
#name Chaos Bolt - 8 (Tirisfal Glades) << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>Buy a (or multiple) |T135933:0|t[Comprehensive Charm] from a Reagent Vendor
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
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a Reagent Vendor to use the item << Mage
    .train 403925 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r] |cRXP_WARN_to train|r |T236291:0|t[Chaos Bolt]  << Warlock
    .train 401759 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] |cRXP_WARN_to train|r |T236207:0|t[Burnout] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Lake of Fire - 25 (Hillsbrad Foothills)

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
    >>Look for |cRXP_FRIENDLY_Zixil|r. He patrolls between Tarren Mill and Southshore. Buy the |T133709:0|t[Demolition Explosives] from him |cRXP_WARN_for 5 gold|r
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
#group RestedXP Rune Guide
#subgroup Legs
#name Incinerate - 22 (Redrige Mountains)

step
    #completewith next
    .zone Redrige Mountains >>Travel to the Redrige Mountains
step
    .train 416015,1
    >>Kill |cRXP_ENEMY_Incinerator Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r]
    .collect 211477,1
    .mob Incinerator Gar'im
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r] |cRXP_WARN_to train|r |T135789:0|t[Incinerate]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Master Channeler - 12 (The Barrens)

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
#group RestedXP Rune Guide
#subgroup Chest
#name Master Channeler - 14 (Silverpine Forest)

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
#group RestedXP Rune Guide
#subgroup Gloves
#name Shadow Bolt Volley - 16 (The Barrens)

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
    .goto The Barrents,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r] |cRXP_WARN_to train|r |T136195:0|t[Shadow Bolt Volley]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Shadow Bolt Volley - 18 (Silverpine Forest)

step
    #completewith next
    .zone Silverpine Forest >>Travel to the Silverpine Forest
step
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
