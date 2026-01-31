if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadowstrike - 3 (Elwynn Forest)
#title Shadowstrike

step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_Open the |cRXP_PICK_Defias Stashbox|r on the ground. Loot it for the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r |cRXP_WARN_to learn|r |T132291:0|t[Shadowstrike]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadowstrike - 3 (Dun Morogh)
#title Shadowstrike

step
    #optional
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Enter the Frostmane Cave
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Travel towards the |cRXP_PICK_Frostmane Loot Cache|r inside
step
    .goto Dun Morogh,30.773,80.063
    >>Open the |cRXP_PICK_Frostmane Loot Cache|r on the ground inside. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    .train 400105 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadowstrike - 3 (Shadowglen)
#title Shadowstrike

step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_Make your way up the ramp on the Aldrassil tree, and jump onto the rooftop|r
    >>|cRXP_WARN_The |cRXP_PICK_Idol|r is found on top of the roof|r
    >>Open the |cRXP_PICK_Idol|r. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r
    >>|cRXP_WARN_If you are having difficulty jumping onto the roof, attempt to jump over the railing while running down the ramp you are on|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Quick Draw - 8 (Elwynn Forest)
#title Quick Draw

step << Rogue
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Riverpaw Outrunners|r and |cRXP_ENEMY_Riverpaw Runts|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kobold Miners|r and |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Defias|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_Note: This can also come from any other |cRXP_ENEMY_Defias|r member in Elwynn Forest|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for the |T134269:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_Note: This can also come from any other |cRXP_ENEMY_Murloc|r in Elwynn Forest|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Elwynn Treasure Map|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Use the|r |T134269:0|t[|cRXP_LOOT_Elwynn Treasure Map|r] |cRXP_WARN_at the arrow location. This will cause a |cRXP_PICK_Buried Treasure|r to pop up|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
step << Rogue
    #season 2
    >>Open the |cRXP_PICK_Buried Treasure|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Quick Draw - 8 (Dun Morogh)
#title Quick Draw

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Frostmane Trolls|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Headhunter
    .mob Frostmane Hideskinner
    .mob Frostmane Shadowcaster
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,26.0,41.8
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Leper Gnomes|r. Loot them for the |T134269:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Treasure Map|r]
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Use the|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Treasure Map|r] |cRXP_WARN_under the small bridge. This will cause a |cRXP_PICK_Buried Treasure|r to pop up|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>Open the |cRXP_PICK_Buried Treasure|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Quick Draw - 8 (Teldrassil)
#title Quick Draw

step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Travel to Fel Rock
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Kill |cRXP_ENEMY_Vicious Grell|r, |cRXP_ENEMY_Rascal Sprites|r and |cRXP_ENEMY_Shadow Sprites|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Kill |cRXP_ENEMY_Timberlings|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,46.8,54.6,60,0
    .goto Teldrassil,44.2,59.2
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Gnarlpine Furbolgs|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Teldrassil Treasure Map|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Take the purple portal to Rut'theran Village
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_Use the|r |T134269:0|t[|cRXP_LOOT_Teldrassil Treasure Map|r] |cRXP_WARN_inside the tree trunk at Rut'theran Village. This will cause a |cRXP_PICK_Buried Treasure|r to pop up|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>Open the |cRXP_PICK_Buried Treasure|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Slaughter from the Shadows - 1 (Elwynn Forest)
#title Slaughter from the Shadows

step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_Using the crates outside of the house, jump up on to the roof and run up behind the chimney|r
    >>Open the |cRXP_PICK_Rusty Lockbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r] |cRXP_WARN_to train|r |T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Slaughter from the Shadows - 1 (Dun Morogh)
#title Slaughter from the Shadows

step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Get onto the roof of the Kharanos Inn, then jump on top of the massive keg. Follow the arrow|r
    >>Open the |cRXP_PICK_Rusty Lockbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r] |cRXP_WARN_to train|r |T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Between the Eyes - 8 (Stormwind)
#title Between the Eyes

step << Rogue
    #season 2
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> Enter the Cut-Throat Alley in Stormwind City at the Dwarven District
    .train 400081,1
step << Rogue
    #season 2
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Head upstairs into the house|r
    >>Open the |cRXP_PICK_Dusty Chest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_Doing this will spawn two level 10 |cRXP_ENEMY_Cut-throat Muggers|r which will attack you|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Between the Eyes - 8 (Ironforge)
#title Between the Eyes

step << Rogue
    #season 2
    .goto Ironforge,51.913,13.383
    >>Open the |cRXP_PICK_Dusty Chest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_Doing this will spawn two level 10 |cRXP_ENEMY_Cut-throat Muggers|r which will attack you|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Between the Eyes - 8 (Teldrassil)
#title Between the Eyes

step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Gnarlpine Pathfinders|r and |cRXP_ENEMY_Gnarlpine Avengers|r. Loot them for a |T134241:0|t[|cRXP_LOOT_Gnarlpine Stash Key]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    .goto Teldrassil,37.836,82.588
    >>Open the |cRXP_PICK_Gnarlpine Stash|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Blade Dance - 10 (Westfall)
#title Blade Dance

step << Rogue
    #season 2
    .goto Westfall,48.27,46.91,60,0
    .goto Westfall,46.39,37.38,60,0
    .goto Westfall,48.27,46.91
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Defias|r throughout Westfall. Loot them for a |T133463:0|t[|cRXP_LOOT_Discreet Envelope]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 209031,1 -- Discreet Envelope (1)
    .mob Defias Trapper
    .mob Defias Smuggler
    .mob Defias Looter
    .train 400099,1
step << Rogue
    #season 2
    >>Open the |cRXP_PICK_Discreet Envelope|r. Loot it for the |T134237:0|t[|cRXP_LOOT_Equipment Stash Key]|r
    .collect 209030,1 -- Equipment Stash Key (1)
    .use 209031
    .itemcount 209031,1
    .train 400099,1
step << Rogue
    #season 2
    #map Westfall
    .goto 1415,40.805,80.235
    >>Head to the back enterance of the Deadmines
    >>Open the |cRXP_PICK_Equipment Stash|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r] |cRXP_WARN_to train|r |T132350:0|t[Blade Dance]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Blade Dance - 16 (Dun Morogh)
#title Blade Dance

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Dark Iron Spies|r. Loot them for a |T133875:0|t[|cRXP_LOOT_Dark Iron Lockbox]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208838,1 -- Dark Iron Lockbox (1)
    .mob Dark Iron Spy
    .train 400099,1
step << Rogue
    #season 2
    >>Open the |T133875:0|t[|cRXP_LOOT_Dark Iron Lockbox]|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]
    >>|cRXP_WARN_Note: You must have|r |T136058:0|t[Lockpicking] |cRXP_WARN_from your trainer to open it|r
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 208838,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r] |cRXP_WARN_to train|r |T132350:0|t[Blade Dance]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Blade Dance - 16 (Darkshore)
#title Blade Dance

step << Rogue
    #season 2
    #completewith learnBD
    .goto Darkshore,55.106,33.621,30 >> Enter the Cliffspring Naga cave
    .train 400099,1
step << Rogue
    #season 2
    .goto Darkshore,56.253,34.877
    >>Kill |cRXP_ENEMY_Stormscale Sirens|r and |cRXP_ENEMY_Stormscale Wave Rider|r. Loot them for a |T134242:0|t[|cRXP_LOOT_Cliffspring Key]|r
    .collect 211471,1 -- Cliffspring Key (1)
    .mob Stormscale Wave Rider
    .mob Stormscale Siren
    .train 400099,1
step << Rogue
    .goto Darkshore,56.253,34.877
    >>Open the |cRXP_PICK_Clliffspring Chest|r inside of the cave. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 211471,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r] |cRXP_WARN_to train|r |T132350:0|t[Blade Dance]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Mutilate - 5 (Elwynn Forest)
#title Mutilate

step << Rogue
    #season 2
    .goto Elwynn Forest,57.5,48.2
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Garrick Padfoot|r for |T134331:0|t[Cutty's Note]
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>Talk to |cRXP_FRIENDLY_Cutty|r just south of the Northshire Valley wall
    >>He will give you the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Mutilate - 8 (Dun Morogh)
#title Mutilate

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Dark Iron Spies|r. Loot them for |T134331:0|t[Blackrat's Note]
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208205,1 --Blackrat's Note (1)
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Talk to |cRXP_FRIENDLY_Blackrat|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Saber Slash - 12 (Westfall)
#title Saber Slash

step << Rogue
    #season 2
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Defias Scout|r for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .mob Defias Scout
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Saber Slash - 12 (Loch Modan)
#title Saber Slash

step << Rogue
    #season 2
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >> |cRXP_WARN_Make your way onto the Loch Modan dam wall and carefully drop down onto the ledge in the center of the dam. Follow the arrow|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>Open the |cRXP_PICK_Stonemason's Toolbox|r on the ledge. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >> Click the |cRXP_PICK_Escape Rope|r to return to the top
    .subzoneskip 146,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Saber Slash - 1 (Darkshore)
#title Saber Slash

step << Rogue
    #season 2
    #completewith next
    .goto Darkshore,32.80,37.72,20 >> Swim to the small island with the Lighthouse on it
    .train 424785,1
step << Rogue
    #season 2
    .goto Darkshore,32.729,37.093
    >>Open the |cRXP_PICK_Lighthouse Stash|r inside the tree trunk. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadowstrike - 2 (Durotar)
#title Shadowstrike


    --Rune of Shadowstrike

step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .accept 77592 >>Accept Atop the Cliffs << Troll
    .accept 77583 >>Accept Atop the Cliffs << Orc
    .target Rwag
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Open the |cRXP_PICK_Hidden Cache|r. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r
    >>|cRXP_WARN_Walk around past|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_and jump down to reach the chest|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 77592 >>Turn in Atop the Cliffs << Troll
    .turnin 77583 >>Turn in Atop the Cliffs << Orc
    .target Rwag
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Shadowstrike - 2 (Tirisfal)
#title Shadowstrike


    --Rune of Shadowstrike

step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .accept 77669 >>Accept The Scarlet Rune
    .target David Trias
step
    #season 2
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>Kill or pickpocket |cRXP_ENEMY_Scarlet Converts|r. Loot them for the |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .mob Scarlet Convert
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Turn in The Scarlet Rune
    .target David Trias
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Deadly Brew - 25 (Silverpine Forest)
#title Deadly Brew


    --Rune of Deadly Brew

step
    #season 2
    .goto Silverpine Forest,47.12,71.01
    >>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
    .accept 78261 >> Accept The Horn of Xelthos
step
    #season 2
    #completewith next
    .zone 209 >> Enter Shadowfang Keep
    >>|cRXP_WARN_You have to do the next part solo! Grouping up will prevent you from obtaining the keys you need|r
step << Horde
    #season 2
    .gossipoption 96495,1 >>Stealth past |cRXP_ENEMY_Rethilgore|r, talk to |cRXP_FRIENDLY_Deathstalker Adamant|r and |T132331:0|t[Vanish] aftwards. He will open the door for you
    .target Deathstalker Adamant
    .train 400080,1
step << Alliance
    #season 2
    .gossipoption 96494 >>Stealth past |cRXP_ENEMY_Rethilgore|r, talk to |cRXP_FRIENDLY_Sorcerer Ashcrombe|r and |T132331:0|t[Vanish] aftwards. He will open the door for you
    .target Sorcerer Ashcrombe
    .train 400080,1
step
    #season 2
    #completewith next
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
    >>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
step
    #season 2
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gefell|r for |T134244:0|t[|cRXP_LOOT_Brother's Half-Key|r]
    >>|cRXP_WARN_He is located above the dining hall on the second floor|r
    .collect 210212,1 --Brother's Half-Key (1)
    .mob Gefell
    .train 400080,1
step
    #season 2
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Gemela|r for |T134243:0|t[|cRXP_LOOT_Sister's Half-Key|r]
    >>|cRXP_WARN_She is located in the dining hall on the bottom floor|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
    .train 400080,1
step
    #season 2
    .use 210212 >>Return to the courtyard outside and enter the Stables. Combine the two keys for the |T237379:0|t[|cRXP_LOOT_Twin Key|r]
    .collect 210209,1 --Twin Key (1)
    .train 400080,1
step
    #season 2
    >>Open the |cRXP_PICK_Ornamented Chest|r in the stables for the |cRXP_LOOT_Horn of Xelthos|r
    .complete 78261,1 --Horn of Xelthos (1)
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest
    .turnin 78261 >> Turn in The Horn of Xelthos
step
    #season 2
    #completewith next
    +|cRXP_WARN_You now need to enter a capital city to receive mail from *C*|r
    .train 400080,1
step << Horde
    #season 2
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Fly to the Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400080,1
step << Alliance
    >>Run to Southshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Fly to Ironforge
    .target Darla Harris
    .train 400080,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Enter Ironforge. Check your mailbox for the letter from *C*. Skip this step if you're doing it in another major city|r << Alliance
    .train 400080,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Open your mailbox to read the mail from *C* once it has arrived. Fly back to Silverpine when you're ready|r << Horde
    +|cRXP_WARN_Open your mailbox to read the mail from *C* once it has arrived. Fly back to Southshore then make your way to Silverpine when you're ready|r << Alliance
step << Horde
    #season 2
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Fly to The Sepulcher
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Fly to Southshore
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Travel to Silverpine Forest
    .train 400080,1
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Click the |cRXP_PICK_Dead Drop|r in Silverpine Forest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
    .collect 203994,1 --Rune of Deadly Brew (1)
    .train 400080,1
step
    #season 2
    .train 400080 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Deadly Brew|r]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Quick Draw - 10 (Durotar)
#title Quick Draw


    --Rune of Quick Draw

step
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece|r]
    .collect 207109,1 --Top-Right Map Piece (1)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .train 400095,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r.  Loot them for |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece|r]
    .collect 207107,1 --Bottom-Right Map Piece (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 400095,1
step
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r. Loot them for |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece|r]
    .collect 207106,1 --Bottom-Left Map Piece (1)
    .mob Hexed Troll
    .mob Voodoo Troll
    .train 400095,1
step
    #completewith next
    .goto Durotar,55.12,10.10,60 >> Travel toward Skull Rock
step
    #season 2
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Burning Blade Orcs|r. Loot them for |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece|r]
    .collect 207108,1 --Top-Left Map Piece (1)
    .mob Burning Blade Thug
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .train 400095,1
step
    #season 2
    .use 207108 >>Use the |T134327:0|t[|cRXP_LOOT_Map Pieces|r] to create |T134269:0|t[|cRXP_LOOT_Durotar Treasure Map|r]
    .collect 207110,1 --Durotar Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Durotar,62.14,94.66
    .use 207110 >>Use the |T134269:0|t[|cRXP_LOOT_Durotar Treasure Map|r] on the southernmost Echo Island
    >>Loot the |cRXP_PICK_Buried Treasure|r chest that spawns for |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Quick Draw - 10 (Tirisfal)
#title Quick Draw


    --Rune of Quick Draw

step
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Tirisfal Farmers|r and |cRXP_ENEMY_Tirisfal Farmhands|r. Loot them for |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #season 2
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Scarlet Warriors|r. Loot them for |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece|r]
    >>|cRXP_WARN_Any of the Scarlet Humanoids in Tirisfal can drop the Map Piece|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Rot Hide Gnolls|r. Loot them for |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Kill or use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Murlocs|r. Loot them for |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #season 2
    .use 208036 >>Use the |T134327:0|t[|cRXP_LOOT_Map Pieces|r] to create |T134269:0|t[|cRXP_LOOT_Tirisfal Treasure Map|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>Use the |T134269:0|t[|cRXP_LOOT_Tirisfal Treasure Map|r] below the bridge
    >>Loot the |cRXP_PICK_Buried Treasure|r chest that spawns for |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Slaughter from the Shadows - 10 (Durotar)
#title Slaughter from the Shadows


    --Rune of Slaughter from the Shadows

step
    #completewith next
    .goto Durotar,54.25,27.64,40 >>Travel to the jump spot just east of Dustwind Cave
step
    #season 2
    .goto Durotar,54.25,27.64,40,0
    .goto Durotar,53.74,27.14
    >>Loot the |cRXP_PICK_Rusty Lockbox|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    >>|cRXP_WARN_You'll have to make a small jump to be able to reach the chest|r
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r] |cRXP_WARN_to train|r |T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Slaughter from the Shadows - 10 (Tirisfal)
#title Slaughter from the Shadows


    --Rune of Slaughter from the Shadows


step
    #season 2
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Travel to the crypt in Agamand Mills
step
    #season 2
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Kill |cRXP_ENEMY_Wailing Ancestors|r and |cRXP_ENEMY_Rotting Ancestors|r. Loot them for an |T134245:0|t[|cRXP_LOOT_Agamand Relic Coffer Key|r]
    >>|cRXP_WARN_Be careful! The mobs in this crypt respawn dynamically!|r
    .collect 208005,1 --Agamand Relic Coffer Key (1)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .train 42992,1
step
    #season 2
    .goto Tirisfal Glades,52.53,26.91
    >>Open the |cRXP_PICK_Relic Coffer|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r] |cRXP_WARN_to train|r |T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Mutilate - 8 (Tirisfal)
#title Mutilate


    --Rune of Mutilate

step
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Captain Perrine|r for a |T133385:0|t[|cRXP_LOOT_Scarlet Lieutenant Signet Ring|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step
    #season 2
    #completewith next
    .goto Tirisfal Glades,60.90,51.49,10 >>Travel to the Brill Town Hall
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Use the |T133385:0|t[|cRXP_LOOT_Scarlet Lieutenant Signet Ring|r] to create |T134328:0|t[|cRXP_LOOT_Forged Scarlet Memorandum|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamie Nore|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] from her
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Mutilate - 10 (Durotar)
#title Mutilate


    --Rune of Mutilate

step
    #season 2
    #completewith next
    .goto Durotar,53.18,29.15,50 >> Travel toward Dustwind Cave
step
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Burning Blade Thugs|r for |T134331:0|t[|cRXP_LOOT_Note from Ba'so|r]
    .collect 207098,1 --Note from Ba'so (1)
    .mob Burning Blade Thug
    .train 400094,1
step
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'so|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    >>|cRXP_WARN_He is stealthed!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Between the Eyes - 8 (Tirisfal)
#title Between the Eyes


    --Rune of Between the Eyes

step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Vile Fin Murlocs|r for |T134241:0|t[|cRXP_LOOT_Shipwreck Cache Key|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Loot the |cRXP_PICK_Shipwreck Cache|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Between the Eyes - 8 (Orgrimmar)
#title Between the Eyes


    --Rune of Between the Eyes

step
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Loot the |cRXP_PICK_Dusty Chest|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_It's located in The Drag on the upper floor|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Blade Dance - 15 (The Barrens)
#title Blade Dance


    --Rune of Blade Dance

step
    #season 2
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Southsea Brigands|r for |T132761:0|t[|cRXP_LOOT_Buccaneer's Matchbox|r]
    .collect 208768,1 --Buccaneer's Matchbox (1)
    .mob Southsea Brigand
    .train 400099,1
step
    #season 2
    .goto The Barrens,61.82,45.80
    >>Click the Powder Keg. Loot the |cRXP_PICK_Southsea Loot Stash|r that spawns for |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r]
    .collect 208771,1 --Rune of Blade Dance (1)
    .train 400099,1
step
    #season 2
    .train 400099 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blade Dance|r] |cRXP_WARN_to train|r |T132350:0|t[Blade Dance]
    .use 208771
    .itemcount 208771,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Saber Slash - 15 (The Barrens)
#title Saber Slash


    --Rune of Saber Slash

step
    #season 2
    #completewith next
    +|cRXP_WARN_Your lockpicking skill must be at least 80 to obtain this rune!|r
    .skill pick lock,>80,1
step
    #season 2
    .goto The Barrens,62.31,54.22
    >>Loot the |cRXP_PICK_Stable Hand's Trunk|r on top of the stable for |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_Run upward the hill and jump on top of the castle wall. From there you can jump on top of the stable|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r] |cRXP_WARN_to train|r |T132375:0|t[Saber Slash]
    .use 208772
    .itemcount 208772,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Saber Slash - 15 (Silverpine)
#title Saber Slash

    --Rune of Saber Slash

step
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Loot the |cRXP_PICK_Rusty Chest|r next to the Shadowfang Keep entrance for |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    >>|cRXP_WARN_Use|r |T132307:0|t[Sprint] |cRXP_WARN_and then jump from the bridge toward the chest|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r] |cRXP_WARN_to train|r |T132375:0|t[Saber Slash]
    .use 208772
    .itemcount 208772,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#title Shadowstep
#name Shadowstep - 30 (Silverpine Forest)

step
    #completewith next
    .zone Silverpine Forest >>Travel to Silverpine Forest
step
    .train 400101,1
    >>Click the |cRXP_PICK_Dead Drop|r chest on the ground
    .goto Silverpine Forest,47.114,70.974
    .accept 78676 >>Accept The Eye of Bhossca
step
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades to the Scarlet Monastery
step
    >>|cRXP_WARN_Open the|r |cRXP_PICK_Supply Locker|r |cRXP_WARN_inside the stable to get the|r |T132665:0|t[Scarlet Initiate's Uniform]
    .goto Tirisfal Glades,81.2,32.12
    .collect 210955,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.44,19.69,10,0
    .goto Eastern Kingdoms,47.73,19.39,5 >> Enter the Scarlet Monastery: |cRXP_WARN_Graveyard|r dungeon |cRXP_WARN_ALONE|r
step
    >>Use |T133644:0|t[Pick Pocket] on a |cRXP_ENEMY_Scarlet Scryer|r to get |T134241:0|t[Scryer's Key]
    >>|cRXP_WARN_Make use of|r |T132289:0|t[Distract] |cRXP_WARN_to avoid being detected|r
    .goto Eastern Kingdoms,47.73,19.39
    .collect 210963,1
    .mob Scarlet Scryer
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> Enter the Scarlet Monastery: |cRXP_WARN_Library|r dungeon |cRXP_WARN_ALONE|r
step
    #completewith next
    +|cRXP_WARN_Run to the hallway before the last boss|r
step
    >>Loot the |cRXP_PICK_Personal Letterbox|r on the left for the |T134331:0|t[|cRXP_LOOT_Confidential Message|r]
    .use 210955 >>|cRXP_WARN_Use the|r |T132665:0|t[Scarlet Initiate's Uniform] |cRXP_WARN_to make the NPCs neutral|r
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210967,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.73,19.39,5 >> Enter the Scarlet Monastery: |cRXP_WARN_Graveyard|r dungeon |cRXP_WARN_ALONE|r
step
    >>|cRXP_WARN_Go to the outside area inside the dungeon and look for a bench between two statues on the right and left walls|r
    *|cRXP_WARN_On both sides|r use /sit (doable while in stealth) on the benches until the emote |cRXP_WARN_"You hear the sound of stone moving"|r appears in chat.
    *Afterwards go to the Tomb next to |cRXP_WARN_the right wall|r and open the |cRXP_PICK_Stone Coffer|r for the |T134242:0|t[Reliquary Key]
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210968,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> Enter the Scarlet Monastery: |cRXP_WARN_Library|r dungeon |cRXP_WARN_ALONE|r
step
    #completewith next
    +|cRXP_WARN_Run to the "Gallery of Treasures"|r
step
    >>Loot the |cRXP_PICK_Padlocked Reliquary|r in the first room on the left for the |T134331:0|t[|cRXP_LOOT_Eye of Bhossca|r]
    .use 210955 >>|cRXP_WARN_Use the|r |T132665:0|t[Scarlet Initiate's Uniform] |cRXP_WARN_to make the NPCs neutral|r
    .goto Eastern Kingdoms,47.79,19.59
    .complete 78676,1 --1/1 Eye of Bhossca
    .train 400101,1
step
    #completewith next
    .zone Silverpine Forest >>Travel to Silverpine Forest
step
    .train 400101,1
    >>Click the |cRXP_PICK_Dead Drop|r chest on the ground
    .goto Silverpine Forest,47.1,71.1
    .turnin 78676 >>Turn in The Eye of Bhossca
step
    #completewith next
    +|cRXP_WARN_You now need to enter a capital city to receive mail from *C*|r
    .train 400101,1
step << Horde
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Fly to the Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400101,1
step << Alliance
    >>Run to Southshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Fly to Ironforge
    .target Darla Harris
    .train 400101,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Enter Undercity. Check your mailbox for the letter from *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Enter Ironforge. Check your mailbox for the letter from *C*. Skip this step if you're doing it in another major city|r << Alliance
    .train 400101,1
step
    #completewith next
    +|cRXP_WARN_Open your mailbox to read the mail from *C* once it has arrived. Fly back to Silverpine when you're ready|r << Horde
    +|cRXP_WARN_Open your mailbox to read the mail from *C* once it has arrived. Fly back to Southshore then make your way to Silverpine when you're ready|r << Alliance
step << Horde
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Fly to The Sepulcher
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Fly to Southshore
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Travel to Silverpine Forest
    .train 400101,1
step
    .goto Silverpine Forest,47.114,70.974
    >>Click the |cRXP_PICK_Dead Drop|r chest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstep|r]
    .collect 210979,1 --Rune of Shadowstep (1)
    .train 400101,1
step
    .train 400101 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstep|r] |cRXP_WARN_to learn|r |T132303:0|t[Shadowstep]
    .use 210979
    .itemcount 210979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Shuriken Toss - 30 (Swamp of Sorrows)
#title Shuriken Toss

step
    .train 400096,1
    .train 1842 >>|cRXP_WARN_You have to learn|r |T136162:0|t[Disarm Trap] |cRXP_WARN_before you can obtain|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r]
    .collect 5060,1 >>|cRXP_WARN_You also need|r |T134065:0|t[Thieves' Tools]
step
    #completewith next
    .zone Swamp of Sorrows >>Travel to Swamp of Sorrows
step
    .goto Swamp of Sorrows,41.48,29.97
    .train 400096,1
    .cast 1842 >>|cRXP_WARN_Cast|r |T136162:0|t[Disarm Trap] |cRXP_WARN_on the|r |cRXP_PICK_Dart Trap|r |cRXP_WARN_on the tree|r
step
    .goto Swamp of Sorrows,42.76,30.77
    >>Loot the |cRXP_PICK_Conspicuous Cache|r that spawned for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r]|r
    .collect 213139,1
step
    .itemcount 213139,1
    .use 213139
    .train 400096 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Assassin|r] |cRXP_WARN_to learn|r |T132330:0|t[Shuriken Toss]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Master of Subtlety - 34 (Stranglethorn Vale)
#title Master of Subtlety

step
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_You must level your|r |T136058:0|t[Lockpicking] |cRXP_WARN_to at least 125 to obtain the|r |T132299:0|t[Master of Subtlety] |cRXP_WARN_rune|r
step
    .train 425103,1
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale
step
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
    .train 425103,1
    #completewith next
    >>Cast |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>Open the |cRXP_PICK_Kurzen Supply Crate|r. Loot it for the |cRXP_LOOT_Kurzen Fighter's Uniform|r
    .collect 216617,1
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r for the |cRXP_LOOT_Compound Cage Key|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Exit the cave. Travel toward |cRXP_FRIENDLY_Wendel Mathers|r in the tower outside
step
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
    >>|cRXP_WARN_He has a respawn timer of around 3 minutes|r
    .destroy 216616 >> Hand the |cRXP_LOOT_Compound Cage Key|r to him
    .destroy 216617 >> Hand the |cRXP_LOOT_Kurzen Fighter's Uniform|r to him
    .skipgossip 218230,1
    .target Wendel Mathers
step
    .train 425103,1
    #completewith next
    .subzone 35 >>Travel to Booty Bay
step
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
    >>She will give you |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
step
    .train 425103,1
    .use 216618 >>Open |T133640:0|t[|cRXP_LOOT_Captain Aransas' Reward|r] to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] and |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r]
    >>|cRXP_WARN_Do NOT destroy|r |T338666:0|t[|cRXP_FRIENDLY_Jani's Charm|r] |cRXP_WARN_as it is used for gather future runes|r
    .collect 213136,1
step
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sublety|r] |cRXP_WARN_to train|r |T132299:0|t[Master of Subtlety]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#title Rolling with the Punches
#name Rolling with the Punches - 27 (Thousand Needles)


step
    #optional
    .train 400093,1
    .skill lockpicking,45 >>|cRXP_WARN_You must level your|r |T136058:0|t[Lockpicking] |cRXP_WARN_to at least 45 to obtain the|r |T134919:0|t[Rolling with the Punches] |cRXP_WARN_rune|r
step
    .train 400093,1
    #completewith next
    .zone Thousand Needles >>Travel to |cFFfa9602Thousand Needles|r
step
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >> Enter the large tent at Camp E'thok
step
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>Open the |cRXP_PICK_Sizable Stolen Strongbox|r. Loot it for the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]
    .collect 215451,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Large Strongbox|r] |cRXP_WARN_to unlock it|r
    .usespell 1804
    .use 215451
step
    .train 400093,1
    .use 215451 >> Open the |T132597:0|t[|cRXP_LOOT_Large Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]
    .collect 215452,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r] |cRXP_WARN_to unlock it|r
    .usespell 1804
    .use 215452
step
    .train 400093,1
    .use 215452 >> Open the |T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]. Loot it for the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]
    .collect 215453,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Cast|r |T136058:0|t[Pick Lock] |cRXP_WARN_on the|r |T132597:0|t[|cRXP_LOOT_Small Strongbox|r] |cRXP_WARN_to unlock it|r
    .usespell 1804
    .use 215453
step
    .train 400093,1
    .use 215453 >> Open the |T132597:0|t[|cRXP_LOOT_Small Strongbox|r]. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]
    .collect 213138,1
step
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r] |cRXP_WARN_to train|r |T134919:0|t[Rolling with the Punches]
]])

 RXPGuides.RegisterGuide([[
 #classic
 << Rogue SoD
 #group RestedXP Rune & Books Guide
 #subgroup Helmet
 #title Focused Attacks
 #name Focused Attacks - 34 (Hinterlands)

 step
    >>|cRXP_WARN_You will need|r |T136175:0|t[Blind] |cRXP_WARN_and|r |T133587:0|t[Blinding Powder] |cRXP_WARN_to obtain the|r |T236274:0|t[Focused Attacks] |cRXP_WARN_rune|r
    .train 2094 >>Train |T136175:0|t[Blind]
    .collect 5530,1 -- Blinding Powder 1/1
    .train 432291,1
step
    #completewith next
    .zone The Hinterlands >>Travel to |cFFfa9602The Hinterlands|r
step
    .goto The Hinterlands,72.76,52.91
    >>Cast |T136175:0|t[Blind] on the |cRXP_ENEMY_Vilebranch Mask|r, then loot the |cRXP_PICK_Treasure of the Bat|r chest for |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 432291,1
step
    .itemcount 221433,1
    .use 221433
    .train 432291 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r] |cRXP_WARN_to train|r |T236274:0|t[Focused Attacks]
 ]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Unfair Advantage
#name Unfair Advantage - 40 (Tanaris)

step
    .train 921 >>|cRXP_WARN_You need to train|r |T133644:0|t[Pick Pocket] |cRXP_WARN_to obtain the|r |T236285:0|t[Unfair Advantage] |cRXP_WARN_rune|r
    .train 432301,1
step
    #completewith CoinPurse
    .zone Tanaris >>|cRXP_WARN_Travel to|r |cFFfa9602Tanaris|r
step
    #completewith next
    .subzone 1336 >>Travel to Lost Rigger Cove
step
    #label CoinPurse
	.line Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
	.goto Tanaris,70.94,42.85,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,71.07,46.03,50,0
	.goto Tanaris,71.25,47.98,50,0
	.goto Tanaris,72.39,48.23,50,0
	.goto Tanaris,72.59,47.10,50,0
	.goto Tanaris,73.27,47.99,50,0
	.goto Tanaris,74.25,47.27,50,0
	.goto Tanaris,73.68,45.89,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,70.94,42.85,50,0
    >>|cRXP_WARN_Cast|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on|r |cRXP_ENEMY_Southsea Pirates|r |cRXP_WARN_and|r |cRXP_ENEMY_Southsea Freebooters|r |cRXP_WARN_untill you receive a|r |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432301,1
step
    >>Open the |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r and loot it for a |T133302:0|t|cRXP_LOOT_Precious Medalion|r
    .collect 221370,1 -- Precious Medalion 1/1
    .use 221371
    .train 432301,1
step << Rogue
    .goto Tanaris,67,22
    .gossipoption 122303 >>Talk to |cRXP_FRIENDLY_Jabbey|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r]
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432301,1
    .itemcount 221370,1
step << Rogue
    .itemcount 221428,1
    .use 221428
    .train 432301 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r] |cRXP_WARN_to train|r |T236285:0|t[Unfair Advantage]

]])
RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#title Carnage
#name Carnage - 45 (Blasted Lands)

step
    #optional
    .skill lockpicking,225 >>|cRXP_WARN_You must level your|r |T136058:0|t[Lockpicking] |cRXP_WARN_to at least 225 to obtain the|r |T236268:0|t[Carnage] |cRXP_WARN_rune|r
step
    #completewith next
    .zone Blasted Lands >>Travel to |cFFfa9602Blasted Lands|r
step
    #completewith next
    .goto Blasted Lands,45.27,16.52,10 >>Travel to the top of the tower in front of Dreadmaul Hold
step
    .goto Blasted Lands,45.27,16.52
    >>Open the |cRXP_PICK_Abandoned Cache|r. Kill the |cRXP_ENEMY_Murderous Lost One|r (level 46) that spawns
    >>Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Carnage|r]
    .collect 221461,1 -- Rune of Carnage 1/1
    .unitscan Murderous Lost One
    .train 432299,1
step
    .use 221461
    .itemcount 221461,1
    .train 432299 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Carnage|r] |cRXP_WARN_to train|r |T236268:0|t[Carnage]

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#title Honor Among Thieves
#name Honor Among Thieves - 45 (Azeroth)

step
    #optional
    .xp 45 >>|cRXP_WARN_You need to reach level 45 in order to obtain this rune|r
step
    #optional
    .train 400101 >>|cRXP_WARN_You must have trained|r |T132303:0|t[Shadowstep] |cRXP_WARN_in order to obtain this rune|r
step
    #optional
    .train 400080,1 >>|cRXP_WARN_You must have trained|r |T236270:0|t[Deadly Brew] |cRXP_WARN_in order to obtain this rune|r
step
    #optional
    #completewith letterC
    >>|cRXP_WARN_In order to start the quest for this rune you need to have completed "The Manor, Ravenholdt" quest introducing you to the Ravenholdt rogue faction. In order to receive it talk to|r |cRXP_FRIENDLY_Osborne the Night Man|r |cRXP_WARN_in Stormwind|r << Alliance
    +|cRXP_WARN_In order to start the quest for this rune you need to have completed "The Manor, Ravenholdt" quest introducing you to the Ravenholdt rogue faction. In order to receive it talk to|r |cRXP_FRIENDLY_Ormok|r |cRXP_WARN_in Orgrimmar|r << Horde
    .accept 6681 >>Accept The Manor, Ravenholdt << Alliance
    .isQuestAvailable 6681
step << Horde
    .goto Orgrimmar,43.91,54.69
    .gossipoption 96925 >>Talk to |cRXP_FRIENDLY_Ormok|r to receive an |T133460:0|t[|cRXP_LOOT_Elegant Letter|r]. Use it to accept the quest
    .disablecheckbox
    .collect 17126,1,6681
    .accept 6681 >>Accept The Manor, Ravenholdt
    .target Ormok
    .isQuestAvailable 6681
step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
    .isOnQuest 6681
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Enter Ravenholdt Manor
    .isOnQuest 6681
step
    .goto Hillsbrad Foothills,78.62,17.96
    >>Move toward the |cRXP_PICK_Chest|r
    .complete 6681,1 --Rite of Cunning: 1/1
    .isOnQuest 6681
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahrad|r upstairs
    .turnin 6681 >> Turn in The Manor, Ravenholdt
    .target Fahrad
    .isOnQuest 6681
step << Alliance
    +|cRXP_WARN_Travel to any Major City|r
    >>Darnassus
    >>Ironforge
    >>Stormwind City
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .train 432295,1
step << Horde
    +|cRXP_WARN_Travel to any Major City|r
    >>Undercity
    >>Thunder Bluff
    >>Orgrimmar
    .zoneskip Undercity
    .zoneskip Thunder Bluff
    .zoneskip Orgrimmar
    .train 432295,1
step
    #label letterC
    +|cRXP_WARN_Check your mailbox for the letter from *Fahrad*|r
    >>|cRXP_WARN_Skip this step when ready|r
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Enter Ravenholdt Manor
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahrad|r upstairs
    .accept 80526 >>Accept Fool Me Twice
    .turnin 80526 >>Turn in Fool Me Twice
    .accept 80411 >>Accept The Talisman of Kazdor
    .target Fahrad
step
    #optional
    #completewith next
    .zone Tanaris >>Travel to Tanaris
step
    #completewith next
    .goto Tanaris,38.69,20.20
    .subzone 1176 >>Enter Zul'Farrak
    >>|cRXP_WARN_You can't be in a group to be able to complete the quest for this rune|r
step
    .goto Tanaris,38.69,20.20
    >>Open |cRXP_PICK_Clay Vessels|r for |T134799:0|t[|cRXP_LOOT_Vile Concoctions|r]
    >>|cRXP_WARN_They are located in troll tents throughout Zul'Farrak|r
    .collect 217716,2
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Move toward|r |cRXP_ENEMY_Antu'sul's|r |cRXP_WARN_cave|r
step
    >>Use a |T134799:0|t[|cRXP_LOOT_Vile Concoction|r] on the cauldron. |cRXP_WARN_It will not break your stealth|r
    >>While the boss is distracted loot |cRXP_PICK_Antu'Sul's Satchel|r for an |T133724:0|t[|cRXP_LOOT_Offering of Bone|r]
    .collect 217721,1 --Offering of Bone
    .use 217716
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Move toward |cRXP_ENEMY_Witch Doctor Zum'rah|r in the graveyard area|r
step
    >>Use your second |T134799:0|t[|cRXP_LOOT_Vile Concoction|r] on the cauldron next to |cRXP_ENEMY_Witch Doctor Zum'rah|r. |cRXP_WARN_It will not break your stealth|r
    >>While he's distracted loot |cRXP_PICK_Zum'rahs Satchel|r for |T136232:0|t|cRXP_LOOT_Ward of the Dead|r
    .collect 217727,1 --ward of the dead
    .use 217716
    .train 432295,1
step
    #completewith next
    .equip 13,217727 >>Equip the |T136232:0|t|cRXP_LOOT_Ward of the Dead|r trinket you just looted
    >>|cRXP_WARN_This will reveal which|r |cRXP_PICK_Shallow Grave|r |cRXP_WARN_needs to be looted|r
step
    >>Loot the |cRXP_PICK_Shallow Grave|r that is revealed with a blue aura for the |T236304:0|t|cRXP_LOOT_Offering of Flesh|r
    .collect 217720,1 --offering of flesh
    .use 217727
    .train 432295,1
step
    >>Use the |T236304:0|t[|cRXP_LOOT_Offering of Flesh|r] you just collected to combine it with the |T133724:0|t[|cRXP_LOOT_Offering of Bone|r] into a |T236305:0|t[|cRXP_LOOT_Blood Magic Essence|r]
    .collect 217719,1 --Blood Magic Essence
    .use 217720
    .train 432295,1
step
    >>Go to the foot of the pyramid staircase and look to your right. On the side of the wall you will see a small stone block. Jump onto it and then walk onto the edge
    >>On the second wood balcony to the right you will find a |cRXP_PICK_Sandfury Cache|r. Loot it for the |T237274:0|t[|cRXP_LOOT_Hollow Emblem|r]
    .collect 217717,1 --Hollow Emblem
    .train 432295,1
step
    >>Use the |T237274:0|t|cRXP_LOOT_Hollow Emblem|r you just looted to combine it with the |T236305:0|t[|cRXP_LOOT_Blood Magic Essence|r] into an |T133572:0|t[|cRXP_LOOT_Emblem of Blood Magic|r]
    .collect 217718,1 --Emblem of Blood Magic
    .use 217717
    .train 432295,1
step
    >>Climb the stairs to the top of the pyramid and loot the |cRXP_PICK_Spellbound War Chest|r for |T133313:0|t[|cRXP_LOOT_Talisman of Kazdor|r]
    .collect 217609,1 --Talisman of Kazdor
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Enter Ravenholdt Manor
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahrad|r upstairs
    .turnin 80411 >>Turn in The Talisman of Kazdor
    .accept 80453 >>Accept Best Laid Plans
    .target Fahrad
step
    .goto Alterac Mountains,86.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zan Shivsproket|r downstairs in the basement
    .turnin 80453 >>Turn in Best Laid Plans
    .accept 80454 >>Accept One Last Drop
    .target Zan Shivsproket
step
    #completewith next
    .zone Silverpine Forest >>Travel to Silverpine Forest
step
    .goto Silverpine Forest,47.114,70.974
    >>Click the |cRXP_PICK_Dead Drop|r chest
    .turnin 80454 >>Turn in One Last Drop
    .accept 80455 >>Accept Biding Our Time
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Travel to |cFFfa9602Hillsbrad Foothills|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Enter Ravenholdt Manor
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahrad|r upstairs
    .turnin 80455 >>Turn in Biding Our Time
    .target Fahrad
step
    .train 432295 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Coterie|r] |cRXP_WARN_to train|r |T236275:0|t[Honor Among Thieves]
    .use 217736
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Crimson Tempest
#name Crimson Tempest - 60 (Western Plaguelands)

step
    .train 415918,1
    .zone Western Plaguelands >>Travel to Western Plaguelands
step
    .train 415918,1
    #completewith next
    .subzone 190 >> Travel to Hearthglen
step
    #label ToolboxKey
    .train 415918,1
    .goto Western Plaguelands,45.0,13.6
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Scarlet Workers|r. Loot them for the |cRXP_LOOT_Toolbox Key|r
    .collect 227928,1 -- Toolbox Key 1/1
    .mob Scarlet Worker
step
    .train 415918,1
    .goto Western Plaguelands,45.0,14.2
    >>Open the |cRXP_PICK_Scarlet Toolbox|r. Loot it for the |cRXP_LOOT_Rusty Crowbar|r
    .collect 227932,1 -- Rusty Crowbar 1/1
step
    .goto Western Plaguelands,49.5,18.5
    >>Head to the top of the tower in the middle of Hearthglen. Open the |cRXP_PICK_Marked Crate|r there. Loot it for the |T133640:0|t[|cRXP_LOOT_Hidden Bundle|r] and open it to loot a |T134237:0|t[|cRXP_LOOT_Safe Box Key|r]
    .collect 227930,1
step
    .goto Western Plaguelands,46.3,14.6
    >>Head to the middle floor of the second tower in Hearthglen located on the northern side of the city. Use the |T134237:0|t[|cRXP_LOOT_Safe Box Key|r] to open [|cRXP_PICK_Belavus' Safe Box|r] and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Crimson Tempest|r]
    .collect 227456,1 --Rune of the crimson tempest
step
    .use 227456
    .itemcount 227456,1
    .train 415918 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Crimson Tempest|r] |cRXP_WARN_to train|r |T135315:0|t[Crimson Tempest]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Fan of Knives
#name Fan of Knives - 55 (Winterspring)

step
    .train 436609,1
    .zone Winterspring >>Travel to Winterspring
step
    .train 436609,1
    .goto Winterspring,67.7,35.4
    >>Open the |cRXP_PICK_Wooden Chest|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Knives|r]
    >>|cRXP_WARN_While opening the |cRXP_PICK_Wooden Chest|r, choose the following options in this order:|r
    >>|cRXP_WARN_Frostsaber|r
    >>|cRXP_WARN_Owl|r
    >>|cRXP_WARN_Bear|r
    >>|cRXP_WARN_Owl|r
    .collect 227921,1
step
    .use 227921
    .itemcount 227921,1
    .train 436609 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Knives|r] |cRXP_WARN_to train|r |T236273:0|t[Fan of Knives]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#title Blunderbuss
#name Blunderbuss - 60 (Eastern Plaguelands)

step
    .train 415922,1
    .zone Eastern Plaguelands >>Travel to Eastern Plaguelands
step
    .train 415922,1
    .goto Eastern Plaguelands,83,85
    >>Open |cRXP_LOOT_Scarlet Footlockers|r throughout Try's Hand until you loot a |cRXP_LOOT_Sending Signal|r
    .collect 227451,1
step
    .train 415922,1
    #completewith FinalPillar
    >>|cRXP_WARN_For the following steps you must click FOUR |cRXP_PICK_Sending Pillars|r in the correct order. After clicking one you will be RANDOMLY teleported to a different one. Ensure you are at the correct location before you click another one!|r
step
    .train 415922,1
    .goto Eastern Plaguelands,82,57
    .cast 6477,6478 >>Click the first |cRXP_PICK_Sending Pillar|r |cRXP_WARN_behind Light's Hope Chapel|r
step
    .train 415922,1
    .goto Eastern Plaguelands,40,92
    .cast 6477,6478 >>Click the second |cRXP_PICK_Sending Pillar|r |cRXP_WARN_in Darrowshire|r
step
    .train 415922,1
    .goto Eastern Plaguelands,70,34
    .cast 6477,6478 >>Click the third |cRXP_PICK_Sending Pillar|r |cRXP_WARN_in Northdale|r
step
    .train 415922,1
    #label FinalPillar
    .goto Eastern Plaguelands,14,30
    .cast 6477,6478 >>Click the fourth |cRXP_PICK_Sending Pillar|r |cRXP_WARN_in Terrordale|r
step
    .train 415922,1
    >>|cRXP_WARN_Enter the House|r
    >>Open |cRXP_PICK_Adon's Trunk|r on the ground. Loot it for the |T134419:0|t[|cRXP_LOOT_Rune of the Swashbuckler|r]
    .collect 227922,1
step
    .use 227922
    .itemcount 227922,1
    .train 415922 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Swashbuckler|r] |cRXP_WARN_to train|r |T134538:0|t[Blunderbuss]
]])
