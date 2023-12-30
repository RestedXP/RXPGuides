RXPGuides.RegisterGuide([[
#classic
<< Human Mage SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Ice Lance - 2 (Elwynn Forest)

step << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .goto Elwynn Forest,49.661,39.402
    .accept 77620 >> Accept Spell Research
    .target Khelden Bremen
    .train 401760,1
step << Human Mage
    .isOnQuest 77620
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r]
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human Mage
    .isOnQuest 77620
    .use 203751 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r]
    .complete 77620,1 -- Learn: Engrave Gloves - Ice Lance
    .train 401760,1
step << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .goto Elwynn Forest,49.661,39.402
    .turnin 77620 >> Turn in Spell Research
    .target Khelden Bremen
    .train 401760,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Gnome Mage SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Ice Lance - 2 (Dun Morogh)

step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .goto Dun Morogh,28.709,66.366
    .accept 77667 >> Accept Spell Research
    .target Marryk Nurribit
    .train 401760,1
step << Gnome Mage
    .isOnQuest 77667
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r. Loot it for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome Mage
    .isOnQuest 77667
    .use 203751 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .complete 77667,1 -- Learn: Engrave Gloves - Ice Lance
    .train 401760,1
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .goto Dun Morogh,28.709,66.366
    .turnin 77667 >> Turn in Spell Research
    .target Marryk Nurribit
    .train 401760,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Icelance - 2 (Durotar)

--Rune of Icelance

step << Troll
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ Mai'ah|r
    .accept 77643 >>Accept Spell Research
    .target Mai'ah
step
    .goto Durotar,42.99,54.43
    >>Loot the |cRXP_PICK_Waterlogged Stashbox|r for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r] inside the cave
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
step
    .train 401760 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .use 203751
    .itemcount 203751,1
step << Troll
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ Mai'ah|r
    .turnin 77643 >> Turn in Spell Research
    .target Mai'ah
    ]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Icelance - 2 (Tirisfal)


    --Rune of Icelance

step << Undead
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ Isabella|r
    .accept 77671 >>Accept Spell Research
    .target Isabella
step
    .loop 25,Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
    >>Kill |cRXP_ENEMY_Scarlet Initiates|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
step
    .train 401760 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .use 203751
    .itemcount 203751,1
step << Undead
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ Isabella|r
    .turnin 77671 >>Turn in Spell Research
    .target Isabella
    ]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest
#name Regeneration - 14 (Westfall)

<< Human Mage SoD

step
    .train 401767,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent/Arcane Goods Vendor.|r
    .collect 211779,1
step
    .train 401767,1
    #completewith next
    .zone Westfall >>Travel to |cFFfa9602Westfall|r
step
    #loop
    .goto Westfall,44.6,65.6,20,0
    .goto Westfall,45.8,71.4,20,0
    .goto Westfall,43.6,71.0,20,0
    .goto Westfall,43.6,66.4,20,0
    .goto Westfall,33.2,58.6,20,0
    .goto Westfall,36.0,53.0,20,0
    .goto Westfall,38.6,57.6,20,0
    .goto Westfall,29.2,51.0,20,0
    .goto Westfall,31.6,44.0,20,0
    .goto Westfall,36.0,53.0,20,0
    >>Kill |cRXP_ENEMY_Defias Pillagers|r for |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]|r
    .train 401417,1
    .collect 208754,1
    .mob Defias Pillager
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to learn|r |T132871:0|t[Regeneration.]
    .use 208754
--     .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name Regeneration -12 (Loch Modan)
<< Gnome Mage SoD

-- << Alliance

step
    .train 401767,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    .goto Hillsbrad Foothills,50.8,59.0,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401767,1
    #completewith next
    .zone Loch Modan >>Travel to |cFFfa9602Loch Modan|r
step
    .goto 1432,54.36,26.78,5,0
    .goto 1432,54.17,27.03
    .train 401767,1
    >>Click the |cRXP_PICK_Stack of Books|r for |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]|r
    .collect 208754,1
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to learn|r |T132871:0|t[Regeneration.]
    .use 208754
-- step
--     .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest
#name Regeneration - 14 (The Barrens)
-- #name 20 - Regeneration (The Barrens) << Shaman

<< Horde Mage SoD

step
    .train 401767,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401767,1
    #completewith next
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r
step
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for a |T134237:0|t[|cRXP_LOOT_Kolkar Booty Key|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step << Mage
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>Open a |cRXP_PICK_Kolkar Booty|r chest for |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]|r
    .train 401767,1
    .collect 5020,1
    .collect 208754,1
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to learn|r |T132871:0|t[Regeneration.]
    .use 208754
step << skip
    .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name Regeneration - 13 (Silverpine Forest)
<< Horde Mage SoD

-- << Horde

step
    .train 401767,1
    .goto Orgrimmar,45.6,56.8,-1 
    .goto Orgrimmar,46.2,46.6,-1 
    .goto Orgrimmar,45.8,40.6,-1 
    .goto The Barrens,51.4,30.2,-1 
    .goto Swamp of Sorrows,45.8,53.0,-1 
    .goto Thunder Bluff,42.6,55.4,-1 
    .goto Dustwallow Marsh,36.4,30.4,-1 
    .goto Undercity,82.6,16.0,-1 
    .goto Thunder Bluff,41.8,55.0,-1 
    .goto Thousand Needles,45.2,50.6,-1 
    .goto Stonetalon Mountains,47.6,61.6,-1 
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401767,1
    #completewith next
    .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r
step
    #loop
    .goto Silverpine Forest,52.6,56.6,20,0
    .goto Silverpine Forest,56.6,62.8,20,0
    .goto Silverpine Forest,55.6,72.8,20,0
    .goto Silverpine Forest,51.6,71.0,20,0
    .goto Silverpine Forest,50.8,61.6,20,0
    >>Kill |cRXP_ENEMY_Dalaran Apprentices|r loot them for |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]|r
    .train 401767,1
    .collect 208754,1
    .mob Dalaran Apprentice
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to learn|r |T132871:0|t[Regeneration.]
    .use 208754
-- step
--     .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name Fingers of Frost - 10 (Elwynn Forest)

<< Human Mage SoD

-- << Alliance

step
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    .train 401765,1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401765,1
    #completewith next
    .zone Elwynn Forest >>Travel to |cFFfa9602Elwynn Forest|r
step
    #loop
    .goto Elwynn Forest,27.0,88.0,20,0
    .goto Elwynn Forest,27.0,92.8,20,0
    >>Kill |cRXP_ENEMY_Hogger|r loot him for |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF.|r]|r |cRXP_WARN_Additionally Kill and loot every rare you encounter|r
    .train 401765,1
    .collect 203753,1
    .mob Hogger
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to learn|r |T236227:0|t[Fingers of Frost.]
    .use 203753
-- step
--     .engrave 5,400647 >> Open your character sheet and engrave your chest with |T236227:0|t[Fingers of Frost]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name Fingers of Frost - 10 (Dun Morogh)

<< Gnome Mage SoD

-- << Alliance

step
    .train 401765,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401765,1
    #completewith next
    .zone Dun Morogh >>Travel to |cFFfa9602Dun Morogh|r
step
    #loop
    .goto Dun Morogh,62.6,46.2,20,0
    .goto Dun Morogh,62.2,48.0,20,0
    .train 401765,1
    .collect 203753,1
    >>Kill |cRXP_ENEMY_Vagash|r loot him for |cRXP_LOOT_|T134939:0|t|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF.|r |cRXP_WARN_Additionally Kill and loot every rare you encounter|r
    .mob Vagash
    .mob Old Icebeard
    .mob Great Father Arcticus
    .mob Timber
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to train|r |T236227:0|t[Fingers of Frost.]
    .use 203753
-- step
--     .engrave 5,400647 >> Open your character sheet and engrave your chest with |T236227:0|t[Fingers of Frost]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest
#name Fingers of Frost - 6 (Tirisfal Glades)

<< Horde Mage SoD

step
    .train 401765,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401765,1
    #completewith next
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
step
    .train 401765,1
    .goto Tirisfal Glades,25.6,48.2
    >>Kill |cRXP_ENEMY_Gillgar|r. Loot him for the |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Gillgar
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to learn|r |T236227:0|t[Fingers of Frost.]
    .use 203753
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Fingers of Frost - 10 (Durotar)

step
    .train 401765,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401765,1
    #completewith next
    .zone Durotar >>Travel to |cFFfa9602Durotar|r
step
    --PERMOK: More accurate coordinates
    .train 401765,1
    .goto Durotar,67.4,87.8
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for the |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to learn|r |T236227:0|t[Fingers of Frost.]
    .use 203753
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
--#subgroup Gloves << Warlock
#name Burnout - 8 (Dun Morogh) << Mage
--#name 8 - Chaos Bolt (Dun Morogh) << Warlock

<< Gnome Mage SoD

step
    .train 401759,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401759,1
    #completewith next
    .zone Dun Morogh >>Travel to |cFFfa9602Dun Morogh|r
step
    .goto Dun Morogh,69.6,58.2
    >>Kill |cRXP_ENEMY_Frozen Trogg|r |cRXP_WARN_by using strong fire spells, if you can't get it down consider grouping up|r loot him for |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r]
    .train 401759,1
    .collect 203748,1
    .mob Frozen Trogg
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401759 >>|cRXP_WARN_Use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] |cRXP_WARN_to learn|r |T236207:0|t[Burnout.]
    .use 203748
step << skip
    .engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout.] << Mage
step << skip
    .engrave 9,403629 >> Open your character sheet and engrave your chest with |T236291:0|t[Chaos Bolt.] << Warlock
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest
-- #subgroup Gloves << Warlock
#name Burnout - 8 (Elwynn Forest) << Mage

<< Human Mage SoD

step
    .train 401759,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401759,1
    #completewith next
    .zone Elwynn Forest >>Travel to |cFFfa9602Elwynn Forest.|r
step
    .goto Elwynn Forest,77.0,51.8
    >>Kill |cRXP_ENEMY_Frozen Murloc|r |cRXP_WARN_by using strong fire spells, if you can't get it down consider grouping up|r loot him for |cRXP_LOOT_|cRXP_FRIENDLY_Spell Notes: Burnout.|r|r
    .train 412286,1
    .collect 203748,1
    .mob Frozen Murloc
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401759 >>|cRXP_WARN_Use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] |cRXP_WARN_to learn|r |T236207:0|t[Burnout.]
    .use 203748
-- step
    --.engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout.] << Mage
-- step
--
--     --.engrave 9,403629 >> Open your character sheet and engrave your chest with |T236291:0|t[Chaos Bolt.] << Warlock
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest
#name Burnout - 8 (Durotar) << Horde Mage


step
    .train 401759,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401759,1
    #completewith next
    .zone Durotar >>Travel to |cFFfa9602Durotar.|r
step
    .goto Durotar,58.70,45.54
    >>Cast |T135812:0|t[Fireball] on the |cRXP_ENEMY_Frozen Makrura|r east of Razor Hill. Loot him for |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r]
    >>|cRXP_WARN_You need to group up with Shamans/Warlocks/Mages. At least 5 sources of fire damage debuffs need to be applied on the|r |cRXP_ENEMY_Frozen Makrura|r |cRXP_WARN_for the ice to melt!|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 412286,1
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401759 >>|cRXP_WARN_Use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] |cRXP_WARN_to learn|r |T236207:0|t[Burnout.]
    .use 203748
-- step
-- .engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout] << Mage
-- step
--     --.engrave 9,403629 >> Open your character sheet and engrave your gloves with |T236291:0|t[Chaos Bolt] << Warlock
-- step
--     --.engrave 9,425339 >> Open your character sheet and engrave your gloves with |T237583:0|t[Molten Blast] << Shaman
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest
#name Burnout - 8 (Tirisfal Glades) << Horde Mage


step
    .train 401759,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401759,1
    #completewith next
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades.|r
step
    .goto Tirisfal Glades,66.2,40.2
    >>Cast |T135812:0|t[Fireball] on the |cRXP_ENEMY_Frozen Murloc|r. Loot him for |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r]
    >>|cRXP_WARN_You need to group up with Shamans/Warlocks/Mages. At least 5 sources of fire damage debuffs need to be applied on the|r |cRXP_ENEMY_Frozen Makrura|r |cRXP_WARN_for the ice to melt!|r
    .train 412286,1
    .collect 203748,1
    .mob Frozen Murloc
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401759 >>|cRXP_WARN_Use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] |cRXP_WARN_to learn|r |T236207:0|t[Burnout.]
    .use 203748
-- step
--.engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout] << Mage
-- step
--     --.engrave 9,403629 >> Open your character sheet and engrave your gloves with |T236291:0|t[Chaos Bolt] << Warlock
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name Enlightenment - 8 (Elwynn Forest) << Mage

<< Alliance Mage SoD

step
    .train 415942,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 415942,1
    #completewith next
    .zone Elwynn Forest >>Travel to |cFFfa9602Elwynn Forest.|r
step
    #loop
    .goto 1429,49.68,73.74,20,0
    .goto 1429,49.04,55.23,20,0
    .goto 1429,58.93,59.8,20,0
    .goto 1429,62.95,63.3,20,0
    .goto 1429,70.46,63.41,20,0
    .goto 1429,79.92,64.51,20,0
    .goto 1429,85.79,65.94,20,0
    .goto 1429,82.89,70.69,20,0
    .goto 1429,79.07,79.02,20,0
    .goto 1429,82.61,86.35,20,0
    .goto 1429,83.61,83.86,20,0
    .goto 1429,87.27,82.16,20,0
    .goto 1429,90.67,77.25,20,0
    .goto 1429,86.02,66.26,20,0
    .goto 1429,80.6,50.21,20,0
    .goto 1429,77.54,40.05,20,0
    .goto 1429,73.96,41.08,20,0
    .goto 1429,65.67,41.75,20,0
    .goto 1429,58.87,59.97,20,0
    .goto 1429,79.37,78.84,20,0
    .goto 1429,83.67,83.53,20,0
    .train 415942,1
    >>Use |cRXP_WARN_Polymorph|r on the following unusual creatures; |cRXP_ENEMY_gazelles,maggots,parrot,fire beetles,rams,larvas,cats|r. |cRXP_WARN_After polymorphing these creatures, remember to loot them upon polymorph loot them for |cRXP_LOOT_|T134332:0|t[Azora Apprentice Notes]
    .link /tar gazelle /tar maggot /tar parrot /tar fire beetle /tar ram /tar larva /tar cat>> CLICK HERE FOR MACRO.
    .collect 204864,6
    .mob gazelle
    .mob maggot
    .mob parrot
    .mob fire beetle
    .mob ram
    .mob larva
    .mob cat
step
    >>Use the 6 |T134332:0|t[Azora Apprentice Notes] to create |T134332:0|t[|cRXP_FRIENDLY_Spell Notes: Enlightenment|r]
    .collect 204864,6
    .use 204864
    .train 415942,1
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 415942 >>|cRXP_WARN_Use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Enlightenment|r] |cRXP_WARN_to learn|r |T134939:0|t[Enlightenment]
    .use 203749
-- step
--.engrave 5,412324 >> Open your character sheet and engrave your chest with |T135740:0|t[Enlightenment]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Enlightenment - 6 (Tirisfal Glades)

step
    .train 415942,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 415942,1
    #completewith next
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
step
    .train 415942,1
    >>Polymorph |cRXP_ENEMY_Odd Melons|r. Loot the object on the ground for the |T134332:0|t[|cRXP_FRIENDLY_Apothecary Notes|r]
    *|cRXP_WARN_You can find them on or around pretty much any field. Multiple fields are marked on your map|r
    .goto Tirisfal Glades,59.2,35.7
    .goto Tirisfal Glades,36.4,49.9,0
    .goto Tirisfal Glades,53.62,57.37,0
    .goto Tirisfal Glades,75.7,60.9,0
    .collect 208183,6
    .mob Odd Melon
step
    .train 415942,1
    >>Use the |T134332:0|t[|cRXP_FRIENDLY_Apothecary Notes|r] to turn them into |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Enlightenment|r]
    .use 208183
    .collect 203749,1
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 415942 >>|cRXP_WARN_Use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Enlightenment|r] |cRXP_WARN_to learn|r |T134939:0|t[Enlightenment]
    .use 203749
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune Guide
#subgroup Legs
#name Icy Veins - 25 (Azeroth)

<< Alliance Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    .train 425170,1
    .zoneskip Stormwind City
    .zone Stormwind City >> Travel to |cFFfa9602Stormwind.|r
    .cast 3561 >>Use [Teleport Stormwind] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >> Purchase |T134419:0|t[Rune of Teleportations] from a |cRXP_FRIENDLY_Reagent, Arcane Goods, Scrolls & Potion Vendor.|r |cRXP_WARN_This will greatly reduce travel time.|r
    >>|cRXP_WARN_manually skip this step if you want to go without.|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844 >> |cRXP_WARN_Check your bank for any books that might have been deposited.|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    .train 425170,1
    >>Click on the |cRXP_PICK_Library Book|r located |cFFfa9602on a shelf in Elwynn Forest|r to obtain |T133744:0|t[Archmage Theocrituss Research Journal.]
    .collect 203755,1
    .isQuestAvailable 79092
step 
    #completewith Rumi of Gnomeregan the Collected Works
    .train 425170,1
    .zone Westfall >>Travel to |cFFfa9602Westfall|r on foot if you are |cRXP_WARN_in|r |cFFfa9602Elwynn Forest.|r|r
    .fly Westfall >>Take a Flightpath to |cFFfa9602Westfall|r if you are |cRXP_WARN_ not in|r |cFFfa9602Elwynn Forest.|r|r 
    .disablecheckbox
    .isQuestAvailable 79093
-- step
--     #completewith Rumi of Gnomeregan the Collected Works
--     .train 425170,1
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r 
--     >>|cRXP_WARN_manually skip this step if you are on a flightpath.|r
--     .isQuestAvailable 79092
step
    #label Rumi of Gnomeregan the Collected Works
    .goto 1436,53.01,53.34,10,0 
    .goto 1436,52.64,53.83 
    .train 425170,1
    >>Click the |cRXP_PICK_Gnomish Tome|r |cFFfa9602on the table in the Westfall Inn|r to obtain |T133744:0|t[Rumi of Gnomeregan the Collected Works.] 
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as gnome.
step
    #completewith next
    .train 425170,1
    .zoneskip Westfall
    .fly Westfall >>Travel to |cFFfa9602Westfall|r |cRXP_WARN_by taking a flight path.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    .train 425170,1
    >>Click the |cRXP_PICK_Spellbook|r located |cFFfa9602on the Alchemy Cabinet in a small house in Moonbrook, Westfall|r to obtain |T133733:0|t[Bewitchments and Glamours.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .train 425170,1
    .zone Duskwood >>Travel to |cFFfa9602Duskwood|r 
    .fly Westfall >>Take a flight path to |cFFfa9602Westfall|r |cRXP_WARN_if you have it unlocked and are not there yet.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    .train 425170,1
    >>Click the |cRXP_PICK_Book|r |cFFfa9602inside the Dawning Wood Catacombs on the Alchemy Table in Duskwood|r to obtain |T133738:0|t[Crimes Against Anatomy.]
    >>|cRXP_WARN_It's recommended run to the end of the catacombs and die. Additionally you might want to consider grouping up.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    .train 425170,1
    .zone Ironforge >>Travel |cFFfa9602to Ironforge.|r
    .cast 3562 >>Use [Teleport Ironforge] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >> |cRXP_WARN_"It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    .train 425170,1
    >>Click the |cRXP_PICK_Library Book|r |cFFfa9602on the table in Ironforge, Hall of Explorers|r to obtain |T133744:0|t[Archmage Antonidas the Unabridged Autobiography.]
    .collect 203754,1
    .isQuestAvailable 79091
step 
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .train 425170,1
    .zone Loch Modan >>Travel to |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Use a flight path to |cFFfa9602Loch Modan|r |cRXP_WARN_if you have it unlocked.|r
    .disablecheckbox
    .isQuestAvailable 79093
step 
    .train 425170,1
    .goto 1432,35.2,47.76,10,0 
    .goto 1432,35.5,48.98 
    >>Click the |cRXP_PICK_Gnomish Tome|r |cFFfa9602on the table in the Loch Modan Inn|r to obtain |T133744:0|t[Rumi of Gnomeregan the Collected Works.]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .train 425170,1
    .zoneskip Loch Modan
    .zone Loch Modan >>Travel to |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Take a flight path to |cFFfa9602Loch Modan|r |cRXP_WARN_if you have it.|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    .train 425170,1
    >>Click the |cRXP_PICK_Scroll|r in the |cFFfa9602Elite Ogre Cave in Loch Modan|r to obtain |T134938:0|t[Runes of the Sorcerer Kings.]
    >>|cRXP_WARN_It's recommended to run to end of the cave and die. Additionally you might want to consider grouping up.|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .train 425170,1
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .train 425170,1
    .fly Menethil Harbor >>Fly to |cFFfa9602Menethil Harbor|r
    .isQuestAvailable 78146
step
    #label Goaz Scrolls
    .goto 1437,33.61,47.82
    .train 425170,1
    >>Click the |cRXP_PICK_Scroll|r |cFFfa9602 in the vase in Wetlands|r to obtain |T237450:0|t[Goaz Scrolls.]
    .collect 209848,1
    .isQuestAvailable 78146
-- step
--     #loop
--     .goto 1437,32.93,49.21,15,0
--     .goto 1437,34.1,49.75,15,0
--     .goto 1437,35.45,49.47,15,0
--     .goto 1437,35.41,47.44,15,0
--     .goto 1437,35.62,45.27,15,0
--     .goto 1437,34.2,43.89,15,0
--     .train 425170,1
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
--     .isQuestAvailable 78146
--     .zoneskip Ironforge
step
    .zoneskip Ironforge
    .goto Wetlands,8.0,55.8
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .train 425170,1
    .zone Darkshore >>Travel to |cFFfa9602Darkshore|r by taking the Boat.
    .fly Menethil Harbor >>Fly to |cFFfa9602Menethil Harbor|r |cRXP_WARN_if you are not already there.|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .train 425170,1
    .deathskip >>Drown in the Water then respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    .train 425170,1
    >>Click the |cRXP_PICK_Scroll|r in |cFFfa9602Darkshore|r to obtain |T237447:0|t[Narthalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Fury of the Land
    .goto 1439,59.35,22.55
    .train 425170,1
    .isQuestAvailable 78146
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
step
    #completewith Fury of the Land
    .train 425170,1
    .isQuestAvailable 78149
    .zone Stonetalon Mountains >>Travel to |cFFfa9602Stonetalon Mountains|r |cRXP_WARN_on foot if neither flight path is unlocked|r
    .fly Stonetalon Mountains >>Fly to |cFFfa9602Stonetalon Mountains|r |cRXP_WARN_if you have the flight path unlocked.|r
    .disablecheckbox
    .fly Ashenvale >>Fly to |cFFfa9602Ashenvale|r |cRXP_WARN_if you don't have the Stonetalon Mountain flight path unlocked.|r
    .disablecheckbox
-- step --x shiek another deathskip here technically better if you don't have either flightpath
-- step --x shiek another deathskip here technically better if you don't have either flightpath
-- step --x shiek another deathskip here technically better if you don't have either flightpath
-- step --x shiek another deathskip here technically better 
step
    #label Fury of the Land
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    .train 425170,1
    >>Click the |cRXP_PICK_Scroll|r |cFFfa9602in the tent, located on a barrel in Stonetalon Mountains|r to obtain |T133209:0|t[Fury of the Land.] 
    .collect 209851,1
    .isQuestAvailable 78149
step
    .train 425170,1
    .zone Ironforge >>Travel |cFFfa9602to Ironforge.|r
    .cast 3562 >>Use |T135757:0|t[Teleport Ironforge] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    #completewith next
    .train 425170,1
    .isQuestAvailable 78127
    .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r primarily on foot.
    .fly Hillsbrad Foothills >> |cRXP_WARN_Fly to Hillsbrad Foothills if you have the flight path unlocked.|r
    .disablecheckbox
    .fly Arathi Highlands >> |cRXP_WARN_Fly to Arathi Highlands if you don't have the Hillsbrad Foothils flight path unlocked.|r
    .disablecheckbox
    .fly Wetlands >> |cRXP_WARN_Fly to Wetlands if you have neither flight path unlocked.|r
    .disablecheckbox
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    .train 425170,1
    >>Click on the |cRXP_PICK_Book|r |cFFfa9602inside the Amber Hill Main Castle on a book shelf in Silverpine Forest|r to obtain |T134917:0|t[The Dalaran Digest vol 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step 
    .train 425170,1
    .zone Stormwind City >>Travel to |cFFfa9602Stormwind.|r
    .cast 3561 >>Use [Teleport Stormwind] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step 
    .train 425170,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602in Stormwind, Mage Tower.|r
    .accept 78124 >>Turn in Nar'thalas Almanac
    .accept 78127 >>Turn in The Dalaran Digest
    .accept 78142 >>Turn in Bewitchments and Glamours
    -- .accept 78143 >>Turn in Secrets of the Dreamers
    -- .accept 78145 >>Turn in Arcanic Systems Manual
    .accept 78146 >>Turn in Goaz Scrolls
    .accept 78147 >>Turn in Crimes Against Anatomy
    .accept 78148 >>Turn in Runes of the Sorceror-Kings
    .accept 78149 >>Turn in Fury of the Land
    .accept 79091 >>Turn in Archmage Antonidas: The Unabridged Autobiography
    .accept 79092 >>Turn in Archmage Theocritus's Research Journal
    .accept 79093 >>Turn in Rumi of Gnomeregan: The Collected Works
    -- .accept 79094 >>Turn in The Lessons of Ta'zo
    -- .accept 79095 >>Turn in The Apothecary's Metaphysical Primer
    -- .accept 79096 >>Turn in Ataeric: On Arcane Curiosities
    -- .accept 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .accept 78150 >>Turn in Friend of the Library
    .target Garion Wendell
step
    +|cRXP_FRIENDLY_The Guide ends here. Thank you for using RestedXP.|r
]]

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune Guide
#subgroup Legs
#name Icy Veins - 25 (Azeroth)

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step 
    #completewith next
    .train 425170,1
    .zone Orgrimmar >>Travel to |cFFfa9602Orgrimmar|r
    .cast 3567 >>Use [Teleport Orgrimmar] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >> Purchase |T134419:0|t[Rune of Teleportations] from a |cRXP_FRIENDLY_Reagent, Arcane Goods, Scrolls & Potion Vendor.|r |cRXP_WARN_This will greatly reduce travel time.|r
    |cRXP_WARN_manually skip this step if you want to go without.|r
step
    .goto Orgrimmar,50.0,68.8
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844 >> |cRXP_WARN_Check your bank for any books that may have been deposited|r
step
    .goto Orgrimmar,55.8,73.0
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step 
    .goto 1454,38.66,78.43
    .train 425170,1
    >>Click on the |cRXP_PICK_Giant Stone|r |cFFfa9602on the wall in Orgrimmar|r to obtain |T134938:0|t[The Lessons of Ta'zo.]
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .train 425170,1
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r |cRXP_WARN_on foot if you have neither flight path.|r
    .fly Ratchet >>Take a flight path to |cFFfa9602Ratchet|r |cRXP_WARN_if you have it unlocked.|r
    .fly Crossroads >>Take a Flightpath to |cFFfa9602Crossroads|r |cRXP_WARN_if you don't have the Ratchet one.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .train 425170,1
    >>Click on the |cRXP_PICK_Goblin Tome|r |cFFfa9602in Ratchet next to|r |cRXP_FRIENDLY_Gazlove|r to obtain |T133744:0|t[Baxtan on Destructive Magics.]
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .train 425170,1
    .fly Crossroads >>Take a flight path to the |cRXP_WARN_Crossroads|r if you have it unlocked, |cRXP_WARN_otherwise go on foot.|r
    .disablecheckbox
    .isQuestAvailable 78143
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    .train 425170,1
    >>Click on the |cRXP_PICK_Scroll|r located |cFFfa9602on the ground near the Wailing Caverns Portal in the Barrens|r to obtain |T135142:0|t[Secrets of the Dreamers.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
    .train 425170,1
    .isQuestAvailable 78143
step 
    #completewith Arcanic Systems Manual
    .train 425170,1
    .zone The Barrens >>Travel to |cFFfa9602The Barrens|r
    .fly Crossroads >>Take a flight path to the |cRXP_WARN_Crossroads|r if you have it unlocked, |cRXP_WARN_otherwise go on foot.|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto 1442,56,8
    .train 425170,1
    >>Click the |cRXP_PICK_Manual|r |cFFfa9602at the top of the Oil Rig in the Barrens|r to obtain |T134509:0|t[Arcanic Systems Manual.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .train 425170,1
    .zone Stonetalon Mountains >>Travel to |cFFfa9602Stonetalon Mountains|r on foot if you are in the |cFFfa9602Barrens.|r
    .fly Stonetalon Mountains >>Take a flight path from |cFFfa9602Orgrimmar|r if you have it unlocked.
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    .train 425170,1
    >>Click the |cRXP_PICK_Scroll|r |cFFfa9602in Stonetalon Mountain|r to obtain |T133209:0|t[Fury of the Land.] 
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .train 425170,1
    .zone Darkshore >>Travel to |cFFfa9602Darkshore|r on foot|cRXP_WARNif you have neither flightpath. _|r
    .fly Ashenvale >>Take a flight path to |cFFfa9602Ashenvale|r |cRXP_WARN_if you have it unlocked.|r
    .fly Stonetalon Mountains >>Take a flight path to |cFFfa9602Stonetalon Mountains|r |cRXP_WARN_if you don't have an|r |cFFfa9602Ashenvale|r flight path unlocked.
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    .train 425170,1
    >>Click the |cRXP_PICK_Scroll|r in |cFFfa9602Darkshore|r to obtain |T237447:0|t[Narthalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step 
    .train 425170,1
    .zone Undercity >>Travel to |cFFfa9602Undercity|r
    .cast 3563 >>Use [Teleport Undercity] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >> |cRXP_WARN_It is highly recommended to repair, as we will be utilizing death skips.|r
    >>|cFFFF0000If you prefer not to utilize death skips, manually skip this step.|r
step 
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    .train 425170,1
    >>Click on the |cRXP_PICK_The Apothecary's Society Primer|r |cFFfa9602in Tirisfal Glades, Brill|r to obtain |T133737:0|t[The Apothecary's Metaphysical Primer.]
    .collect 208185,1
    .isQuestAvailable 79095
step 
    #completewith next
    .train 425170,1
    .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r on foot |cRXP_WARN_if you are in|r |cFFfa9602Tirisfal Glades.|r
    .fly Silverpine Forest >>Take a flight path to |cFFfa9602Silverpine Forest|r |cRXP_WARN_if you are in|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 79096
step 
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    .train 425170,1
    >>Click on the |cRXP_PICK_Arcane Secrets|r |cFFfa9602in Silverpine Forest|r to obtain |T133744:0|t[Ataeric: On Arcane Curiosities.]
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .train 425170,1
    .zone Silverpine Forest >>Travel to |cFFfa9602The Silverpine Forest.|r
    .fly Silverpine Forest >>Take a flight path to |cFFfa9602Silverpine Forest|r |cRXP_WARN_if you are in|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    .train 425170,1
    >>Click on the |cRXP_PICK_Book|r |cFFfa9602inside the Amber Hill Main Castle in Silverpine Forest|r to obtain |T134917:0|t[The Dalaran Digest vol 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step 
    #completewith next
    .train 425170,1
    .zone Undercity >>Travel to |cFFfa9602Undercity|r 
    .cast 3563 >>Use |T135766:0|t[Teleport Undercity] |cRXP_WARN_If you have|r |T134419:0|t[Rune of Teleportation]
    .disablecheckbox
step 
    .train 425170,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602in Undercity, Magic Quarter.|r
    .accept 78124 >>Turn in Nar'thalas Almanac
    .accept 78127 >>Turn in The Dalaran Digest
    .accept 78142 >>Turn in Bewitchments and Glamours
    .accept 78143 >>Turn in Secrets of the Dreamers
    .accept 78145 >>Turn in Arcanic Systems Manual
    -- .accept 78146 >>Turn in Goaz Scrolls
    -- .accept 78147 >>Turn in Crimes Against Anatomy
    -- .accept 78148 >>Turn in Runes of the Sorceror-Kings
    .accept 78149 >>Turn in Fury of the Land
    .accept 79094 >>Turn in The Lessons of Ta'zo
    .accept 79095 >>Turn in The Apothecary's Metaphysical Primer
    .accept 79096 >>Turn in Ataeric: On Arcane Curiosities
    .accept 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .accept 78150 >>Turn in Friend of the Library
    .target Owen Thadd
step
    +|cRXP_FRIENDLY_The guide ends here. Thank you for using Restedxp.|r
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Legs << Mage
#name Living Flame - 7 (Elwynn Forest) << Mage

<< Human Mage SoD

step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>Travel to |cFFfa9602Elwynn Forest.|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>Kill |cRXP_ENEMY_Kobold Geomancer|r loot them for |cRXP_LOOT_|T134939:0|t[Spell Notes: MILEGIN VALF]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Legs << Mage
#name Living Flame - 7 (Dun Morogh) << Mage

<< Gnome Mage SoD

step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>Travel to |cFFfa9602Dun Morogh.|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>Kill |cRXP_ENEMY_Frostmane Shadowcaster|r and |cRXP_ENEMY_Frostmane Seer|r for |cRXP_LOOT_|T134939:0|t[Spell Notes: MILEGIN VALF]|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob Frostmane Seer
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Troll Mage SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Living Flame - 9 (Durotar)

step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Durotar >>Travel to |cFFfa9602Durotar|r
step
    .train 401768,1
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Skull Rock Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob Burning Blade Neophyte
    .mob Burning Blade Fanatic
    .mob Burning Blade Thug
    .mob Burning Blade Apprentice
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
<< Undead Mage SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Living Flame - 7 (Tirisfal Glades)

step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>Travel to |cFFfa9602Tirisfal Glades|r
step
    .train 401768,1
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
    >>Kill |cRXP_ENEMY_Scarlet Humans|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Gloves
#name Arcane Blast - 18 (Ashenvale)

<< Mage SoD

step << Alliance
    .train 401757,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step << Horde
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>Travel to |cFFfa9602Ashenvale|r
step
    >>Kill |cRXP_ENEMY_Wrathtail Sorceress|r and |cRXP_ENEMY_Wrathtail Sea Witch|r and loot them for |cRXP_LOOT_|T133737:0|t[Naga Manuscript]|r
    .train 401757,1
    .collect 211777,1
step
    .aura 430139,1 >>Use |T135142:0|t[Arcane Explosion] |cRXP_WARN_near the correct|r |cRXP_WARN_Purple Crystal|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,1 >>Use |T135142:0|t[Arcane Explosion] |cRXP_WARN_near the correct|r |cRXP_WARN_Purple Crystal|r
    .goto Ashenvale,14.04,19.80
    .train 401757,2
step
    .aura 430139,1 >>Use |T135142:0|t[Arcane Explosion] |cRXP_WARN_near the correct|r |cRXP_WARN_Purple Crystal|r
    .goto Ashenvale,13.50,15.75
    .train 401757,3
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401757 >>|cRXP_WARN_Use|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Arcane Blast|r] to learn |T135820:0|t[Arcane Blast]
    .use 211691
-- step
    --.engrave 9,400574 >> Open your character sheet and engrave your gloves with |T135735:0|t[Arcane Blast.]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Gloves
#name Living Bomb - 12 (Loch Modan)

<< Alliance Mage SoD

step
    .train 415936,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Purchase one or more |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor.|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Loch Modan >>Travel to |cFFfa9602Loch Modan|r
step
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Kill |cRXP_ENEMY_Stonesplinter Seer|r and loot them for |cRXP_LOOT_|T134939:0|t[Chewed Spell Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r] to learn |T236220:0|t[Living Bomb]
    .use 208854
-- step
    --.engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Living Bomb - 17 (Silverpine Forest)

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r
step
    .train 415936,1
    >>Kill the |cRXP_ENEMY_Rot Hides|r |cFFfa9602on Fenris Isle.|r Loot them for |T134173:0|t[A Talking Head]. |cRXP_WARN_Click it in your bags.|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>Accept Resting in Pieces
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>Interact with the |cRXP_PICK_Shallow Grave|r
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>Turn in Resting in Pieces
    .accept 461 >>Accept The Hidden Niche
    .target Shallow Grave
step
    .train 415936,1
    >>Interact with the |cRXP_PICK_Dusty Shelf|r |cRXP_WARN_inside the castle in the top left tower (go left after the first staircase)|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>Turn in The Hidden Niche
    .accept 491 >>Accept Want to Bethor
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>Travel to |cFFfa9602Undercity|r (if you have the Undercity FP you could deathskip to The Sepulcher and fly from there)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r.
    .goto Undercity,83.8,16.2
    .turnin 491 >>Turn in Want to Bethor
    .accept 78277 >>Accept A Token of Gratitude
    .turnin 78277 >>Turn in A Token of Gratitude
    .train 415936 >>|cRXP_WARN_You will automatically train the rune by turning in the quest|r
    .target Bethor Iceshard
]])
