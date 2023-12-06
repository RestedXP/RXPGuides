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
