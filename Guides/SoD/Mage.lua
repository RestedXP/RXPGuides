RXPGuides.RegisterGuide([[
#classic
<< Human Mage SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Ice Lance - 2 (Elwynn Forest)

step << Human Mage
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .goto Elwynn Forest,49.661,39.402
    .accept 77620 >> Accept Spell Research
    .target Khelden Bremen
    .train 401760,1
step << Human Mage
    #season 2
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
    #season 2
    .isOnQuest 77620
    .use 203751 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_[Spell Notes: CALE ENCI]|r]
    .complete 77620,1 -- Learn: Engrave Gloves - Ice Lance
    .train 401760,1
step << Human Mage
    #season 2
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
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .goto Dun Morogh,28.709,66.366
    .accept 77667 >> Accept Spell Research
    .target Marryk Nurribit
    .train 401760,1
step << Gnome Mage
    #season 2
    .isOnQuest 77667
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r. Loot it for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome Mage
    #season 2
    .isOnQuest 77667
    .use 203751 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .complete 77667,1 -- Learn: Engrave Gloves - Ice Lance
    .train 401760,1
step << Gnome Mage
    #season 2
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
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
    .accept 77643 >>Accept Spell Research
    .target Mai'ah
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Loot the |cRXP_PICK_Waterlogged Stashbox|r for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r] inside the cave
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
step 
    #season 2
    .cast 402265 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .use 203751
    .train 401760,1
step << Troll
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Mai'ah|r
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
    #season 2
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Isabella|r
    .accept 77671 >>Accept Spell Research
    .target Isabella
step
    #season 2
    .loop 25,Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
    >>Kill |cFFFF5722Scarlet Initiates|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
step 
    #season 2
    .cast 402265 >>Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: CALE ENCI|r]
    .use 203751
    .train 401760,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Isabella|r
    .turnin 77671 >>Turn in Spell Research
    .target Isabella


    ]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name 14 - Regeneration (Westfall) << Mage

-- << Alliance

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
    >>Kill |cRXP_ENEMY_Defias Pillagers|r for |cRXP_LOOT_|T134939:0|t[Spell Notes: TENGI RONEERA]|r
    .train 401417,1
    .collect 208754,1
    .mob Defias Pillager
step
    >>Use |T134939:0|t[Spell Notes: TENGI RONEERA] to learn |T132871:0|t[Regeneration.]
    .use 208754
step
    .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name 12 - Regeneration (Loch Modan) << Mage

-- << Alliance

step
    #season 2
    .goto 1432,54.36,26.78,5,0
    .goto 1432,54.17,27.03
    .train 401417,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Stack of Books|r for |T134939:0|t[Spell Notes: TENGI RONEERA.]
    .collect 208754,1
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: TENGI RONEERA] to learn |T132871:0|t[Regeneration.]
    .use 208754
step
    #season 2
    .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name 14 - Regeneration (The Barrens) << Mage
-- #name 20 - Regeneration (The Barrens) << Shaman
<< Horde

step << Mage
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r for |T134939:0|t[Spell Notes: TENGI RONEERA.]
    .train 401417,1
    .collect 208754,1
-- step << Shaman
--     #loop
--     .goto The Barrens,44.3,37.7,20,0
--     .goto The Barrens,43,23.5,20,0
--     .goto The Barrens,52.7,41.8,20,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r for |T135832:0|t[Tempest Icon.]
--     .train 401417,1
--     .collect 208754,1
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: TENGI RONEERA] to learn |T132871:0|t[Regeneration.]
    .use 208754
step
    #season 2
    .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name 13 - Regeneration (Silverpine Forest) << Mage

-- << Horde

step
    #season 2
    #loop
    .goto Silverpine Forest,52.6,56.6,20,0
    .goto Silverpine Forest,56.6,62.8,20,0
    .goto Silverpine Forest,55.6,72.8,20,0
    .goto Silverpine Forest,51.6,71.0,20,0
    .goto Silverpine Forest,50.8,61.6,20,0
    >>Kill |cRXP_ENEMY_Dalaran Apprentices|r loot them for |cRXP_LOOT_|T134939:0|t[Spell Notes: TENGI RONEERA]|r
    .train 401417,1
    .collect 208754,1
    .mob Dalaran Apprentice
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: TENGI RONEERA] to learn |T132871:0|t[Regeneration.]
    .use 208754
step
    #season 2
    .engrave 5,401417 >> Open your character sheet and engrave your chest with |T132871:0|t[Regeneration] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name 10 - Fingers of Frost (Elwynn Forest) << Mage

-- << Alliance

step
    #season 2
    #loop 
    .goto Elwynn Forest,27.0,88.0,20,0
    .goto Elwynn Forest,27.0,92.8,20,0
    >>Kill |cRXP_ENEMY_Hogger|r loot him for |cRXP_LOOT_|T134939:0|t[Spell Notes: RING SEFF OSTROF.]|r |cRXP_WARN_Additionally Kill and loot every rare you encounter|r
    .train 400647,1
    .collect 203753,1
    .mob Hogger
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: RING SEFF OSTROF] to learn |T236227:0|t[Fingers of Frost.]
    .use 293753
step
    #season 2
    .engrave 5,400647 >> Open your character sheet and engrave your chest with |T236227:0|t[Fingers of Frost]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name 10 - Fingers of Frost (Dun Morogh) << Mage

-- << Alliance

step
    #season 2
    #loop 
    .goto Dun Morogh,62.6,46.2,20,0
    .goto Dun Morogh,62.2,48.0,20,0
    .train 400647,1
    .collect 203753,1
    >>Kill |cRXP_ENEMY_Vagash|r loot him for |cRXP_LOOT_|T134939:0|t[Spell Notes: RING SEFF OSTROF.]|r |cRXP_WARN_Additionally Kill and loot every rare you encounter|r
    .mob Vagash
    .mob Old Icebeard
    .mob Great Father Arcticus
    .mob Timber
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: RING SEFF OSTROF] to learn |T236227:0|t[Fingers of Frost.]
    .use 293753
step
    #season 2
    .engrave 5,400647 >> Open your character sheet and engrave your chest with |T236227:0|t[Fingers of Frost]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Fingers of Frost - 6 (Tirisfal Glades)

step
    .train 401765,1
    >>Buy a (or multiple) |T135933:0|t[Comprehensive Charm] from a Reagent Vendor
    .collect 211779,1
step
    .train 401765,1
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
step
    .train 401765,1
    >>Kill |cRXP_ENEMY_Gillgar|r. Loot him for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 203753,1
    .mob Gillgar
step
    .use 203753
    .itemcount 203753,1
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a Reagent Vendor to use the item
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to train|r |T236227:0|t[Fingers of Frost]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Fingers of Frost - 10 (Durotar)

step
    .train 401765,1
    >>Buy a (or multiple) |T135933:0|t[Comprehensive Charm] from a Reagent Vendor
    .collect 211779,1
step
    .train 401765,1
    #completewith next
    .zone Durotar >>Travel to Durotar
step
    --PERMOK: More accurate coordinates
    .train 401765,1
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .goto Durotar,67.0,88.0
    .collect 203753,1
    .mob Zalazane
step
    .use 203753
    .itemcount 203753,1
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a Reagent Vendor to use the item
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to train|r |T236227:0|t[Fingers of Frost]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#subgroup Gloves << Warlock
#name 8 - Burnout (Dun Morogh) << Mage
-- #name 8 - Chaos Bolt << Warlock << Warlock
-- << Alliance 

step
    #season 2
    .goto Dun Morogh,69.6,58.2
    >>Kill |cRXP_ENEMY_Frozen Trogg|r |cRXP_WARN_by using strong fire spells, if you can't get it down consider grouping up|r loot him for |cRXP_LOOT_Spell Notes: Burnout.|r
    .train 412286,1
    .collect 203748,1
    .mob Frozen Trogg
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: Burnout] to learn |T236207:0|t[Burnout.]
    .use 203748
step
    #season 2
    .engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout.] << Mage
-- step
    #season 2
--     .engrave 9,403629 >> Open your character sheet and engrave your chest with |T236291:0|t[Chaos Bolt.] << Warlock
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#subgroup Gloves << Warlock
#name 8 - Burnout (Elwynn Forest) << Mage
-- #name 8 - Chaos Bolt << Warlock

-- << Alliance

step
    #season 2
    .goto Elwynn Forest,77.0,51.8
    >>Kill |cRXP_ENEMY_Frozen Murloc|r |cRXP_WARN_by using strong fire spells, if you can't get it down consider grouping up|r loot him for |cRXP_LOOT_Spell Notes: Burnout.|r
    .train 412286,1
    .collect 203748,1
    .mob Frozen Murloc
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: Burnout] to learn |T236207:0|t[Burnout.]
    .use 203748
step
    #season 2
    .engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout.] << Mage
-- step
--     #season 2
--     .engrave 9,403629 >> Open your character sheet and engrave your chest with |T236291:0|t[Chaos Bolt.] << Warlock
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
-- #subgroup Gloves << Warlock
-- #subgroup Gloves << Shaman
#name 8 - Burnout (Durotar) << Mage
-- #name 8 - Chaos Bolt << Warlock
-- #name 8 - Molten Blast << Shaman

-- << Horde

step
    #season 2
    .train 412286,1
    .goto Durotar,58.8,45.4
    >>Kill |cRXP_ENEMY_Frozen Makura|r |cRXP_WARN_by using strong fire spells, if you can't get it down consider grouping up|r loot him for |cRXP_LOOT_Spell Notes: Burnout.|r
    .collect 203748,1
    .mob Frozen Makura
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: Burnout] to learn |T236207:0|t[Burnout.]
    .use 203748
step
    #season 2
    .engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout] << Mage 
-- step
--     .engrave 9,403629 >> Open your character sheet and engrave your gloves with |T236291:0|t[Chaos Bolt] << Warlock
-- step
--     .engrave 9,425339 >> Open your character sheet and engrave your gloves with |T237583:0|t[Molten Blast] << Shaman
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
-- #subgroup Gloves << Warlock
#name 8 - Burnout (Tirisfal Glade) << Mage
-- #name 8 - Chaos Bolt << Warlock

-- << Horde

step
    #season 2
    .goto Tirisfal Glades,66.2,40.2
    >>Kill |cRXP_ENEMY_Frozen Murloc|r |cRXP_WARN_by using strong fire spells, if you can't get it down consider grouping up|r loot him for |cRXP_LOOT_Spell Notes: Burnout.|r
    .train 412286,1
    .collect 203748,1
    .mob Frozen Murloc
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: Burnout] to learn |T236207:0|t[Burnout.]
    .use 203748
step
    #season 2
    .engrave 5,412286 >> Open your character sheet and engrave your chest with |T236207:0|t[Burnout] << Mage
-- step
--     .engrave 9,403629 >> Open your character sheet and engrave your gloves with |T236291:0|t[Chaos Bolt] << Warlock
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Chest << Mage
#name 8 - Enlightenment (Elwynn Forest) << Mage

step
    #season 2
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
    .train 412324,1
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
    #season 2
    >>Use the 6 |T134332:0|t[Azora Apprentice Notes] to create |T134332:0|t[Spell Notes: Enlightenment]
    .collect 204864,6
    .use 204864
step
    #season 2
    >>Use |T134332:0|t[Spell Notes: Enlightenment] to learn |T236207:0|t[Burnout.]
    .use 203749
step
    #season 2
    .engrave 5,412324 >> Open your character sheet and engrave your chest with |T135740:0|t[Enlightenment]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Enlightenment - 6 (Tirisfal Glades)

step
    .train 415942,1
    >>Buy a (or multiple) |T135933:0|t[Comprehensive Charm] from a Reagent Vendor
    .collect 211779,1
step
    .train 415942,1
    #completewith next
    .zone Tirisfal Glades >>Travel to Tirisfal Glades
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
    .use 203749
    .itemcount 203749,1
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a Reagent Vendor to use the item
    .train 415942 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Enlightenment|r] |cRXP_WARN_to train|r |T135740:0|t[Enlightenment]
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Rune Guide
#subgroup Legs << Mage
#name 25 - Icy Veins(Azeroth) << Mage


step << Alliance
    #season 2 
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Library Book|r |cFFfa9602on the shelf in Elwynn Forest|r for |T133744:0|t[Archmage Theocrituss Research Journal.]
    .collect 203755,1
step << Alliance
    #season 2 
    .goto 1436,53.01,53.34,10,0 << Human
    .goto 1436,52.64,53.83 << Human
    .goto 1432,35.2,47.76,10,0 << Gnome
    .goto 1432,35.5,48.98 << Gnome
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gnomish Tome|r for |T133744:0|t[Rumi of Gnomeregan the Collected Works] |cFFfa9602on the table in the Westfall Inn.|r << Human
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gnomish Tome|r for |T133744:0|t[Rumi of Gnomeregan the Collected Works] |cFFfa9602on the table in the Loch Modan Inn.|r << Gnome
    .collect 208860,1
step << Alliance
    #season 2 
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Library Book|r  for |T133744:0|t[Archmage Antonidas the Unabridged Autobiography] |cFFfa9602on the table in Ironforge, Hall of Explorers.|r
    .collect 203754,1 
step << Horde
    #season 2
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_The Apothecary's Metaphysical Primer.|r
    .collect 208185,1 
step << Horde
    #season 2
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ataeric: On Arcane Curiosities.|r
    .collect 219177,1
step << Horde
    #season 2
    .goto 1454,38.66,78.43
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_The Lessons of Ta'zo.|r
    .collect 207972,1
step
    #season 2
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |T133209:0|t[Fury of the Land] |cFFfa9602in Stonetalon Mountain.|r
    .collect 209851,1
step
    #season 2
    .goto 1442,56,8
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Manual|r for |T:134509|t[Arcanic Systems Manual] |cFFfa9602in the Barrens at the top of the Oil Rig.|r
    .collect 209847,1
step
    #season 2
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,5,0
    .goto 1431,15.61,36.52,5,0
    .goto 1431,16.12,33.43,5,0
    .goto 1431,16.15,30.75,5,0
    .goto 1431,16.64,28.33
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Book|r |cFFfa9602on the Alchemy Table in Duskwood|r for |T133738:0|t[Crimes Against Anatomy.]
    .collect 209849,1
step
    #season 2
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
    .train 425121,1
    .collect 209846 >> |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll|r |cFFfa9602near the Barrens near the Wailing Caverns Portal on the ground.|r for |T135142:0|t[Secrets of the Dreamers]
step
    #season 2
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_The Dalaran Digest vol 23.|r
    .collect 209844,1
step
    #season 2
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Goblin Tome|r for |T133744:0|t[Baxtan on Destructive Magics] |cFFfa9602in Ratchet next to |cRXP_FRIENDLY_Gazlove|r.|r
    .collect 208800,1
step
    #season 2
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Spellbook|r for |T133733:0|t[Bewitchments and Glamours] |cFFfa9602on the Alchemy Cabinit in a small house in Westfall, Moonbrook|r
    .collect 209845,1
step
    #season 2
    .goto 1437,33.61,47.82
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Scroll |r for |T237450:0|t[Goaz Scrolls]
    .collect 209848,1
step
    #season 2
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Runes of the Sorcerer Kings.|r for
    .collect 209850,1
step
    #season 2
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    .train 425121,1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Narthalas Almanac vol 74.|r for 
    .collect 209843,1
step << Alliance
    #season 2
    .train 425121,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maginor Dumas|r |cFFfa9602in Stormwind, Mage Tower.|r 
    .turnin 78124 >>Turn in Nar'thalas Almanac
    .turnin 78127 >>Turn in The Dalaran Digest
    .turnin 78142 >>Turn in Bewitchments and Glamours
    .turnin 78143 >>Turn in Secrets of the Dreamers
    .turnin 78145 >>Turn in Arcanic Systems Manual
    .turnin 78146 >>Turn in Goaz Scrolls
    .turnin 78147 >>Turn in Crimes Against Anatomy
    .turnin 78148 >>Turn in Runes of the Sorceror-Kings
    .turnin 78149 >>Turn in Fury of the Land
    .turnin 79091 >>Turn in Archmage Antonidas: The Unabridged Autobiography
    .turnin 79092 >>Turn in Archmage Theocritus's Research Journal
    .turnin 79093 >>Turn in Rumi of Gnomeregan: The Collected Works
    .turnin 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .turnin 78150 >>Turn in Friend of the Library
step << Horde
    #season 2
    .train 425121,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Owen Thadd|r |cFFfa9602in Undercity, Magic Quarter.|r
    .turnin 78124 >>Turn in Nar'thalas Almanac
    .turnin 78127 >>Turn in The Dalaran Digest
    .turnin 78142 >>Turn in Bewitchments and Glamours
    .turnin 78143 >>Turn in Secrets of the Dreamers
    .turnin 78145 >>Turn in Arcanic Systems Manual
    .turnin 78146 >>Turn in Goaz Scrolls
    .turnin 78147 >>Turn in Crimes Against Anatomy
    .turnin 78148 >>Turn in Runes of the Sorceror-Kings
    .turnin 78149 >>Turn in Fury of the Land
    .turnin 79094 >>Turn in The Lessons of Ta'zo
    .turnin 79095 >>Turn in The Apothecary's Metaphysical Primer
    .turnin 79096 >>Turn in Ataeric: On Arcane Curiosities
    .turnin 79097 >>Turn in Ataeric: Baxtan: On Destructive Magics
    .turnin 78150 >>Turn in Friend of the Library
step
    #season 2
    .engrave 7,425121 >> Open your character sheet and engrave your legs with |T135838:0|t[Icy Veins.]
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Legs << Mage
#name 7 - Living Flame (Elwynn Forest) << Mage

-- << Alliance

step
    #season 2
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>Kill |cRXP_ENEMY_Kobold Geomancer|r loot them for |cRXP_LOOT_|T134939:0|t[Spell Notes: MILEGIN VALF]|r
    .collect 203746,1 
    .mob Kobold Geomancer
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: MILEGIN VALF] to learn |T135820:0|t[Living Flame]
    .use 203752
step
    #season 2
    .engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Legs << Mage
#name 7 - Living Flame (Dun Morogh) << Mage

-- << Alliance

step
    #season 2
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
    #season 2
    >>Use |T134939:0|t[Spell Notes: MILEGIN VALF] to learn |T135820:0|t[Living Flame]
    .use 203752
step
    #season 2
    .engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Living Flame - 9 (Durotar)

step
    .train 401768,1
    >>Buy a (or multiple) |T135933:0|t[Comprehensive Charm] from a Reagent Vendor
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Durotar >>Travel to Durotar
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
    .use 203752
    .itemcount 203752,1
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a Reagent Vendor to use the item
    .train 401768 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to train|r |T135820:0|t[Living Flame]
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Living Flame - 7 (Tirisfal Glades)

step
    .train 401768,1
    >>Buy a (or multiple) |T135933:0|t[Comprehensive Charm] from a Reagent Vendor
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>Travel to the Tirisfal Glades
step
    .train 401768,1
    >>Kill |cRXP_ENEMY_Scarlet Humans|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1
    .goto Tirisfal Glades,32.6,48.6
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .use 203752
    .itemcount 203752,1
    .collect 211779,1 >>You need a |T135933:0|t[Comprehensive Charm] from a Reagent Vendor to use the item
    .train 401768 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to train|r |T135820:0|t[Living Flame]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Gloves << Mage
#name 18 - Arcane Blast (Ashenvale) << Mage

step
    #season 2
    >>Kill |cRXP_ENEMY_Wrathtail Sorceress|r and |cRXP_ENEMY_Wrathtail Sea Witch|r and loot them for |cRXP_LOOT_|T133737:0|t[Naga Manuscript]|r |T134939:0|t[Spell Notes: Arcane Blast] 
    .train 400574,1
    .collect 211777,1
step
    #season 2
    --x shiek insert debuff completion here
    >>There are 3 nearby |cRXP_WARN_Purple Crystals|r you'll need to use |cRXP_WARN_Arcane Explosion|r on them|cRXP_WARN_, but make sure to do so in a specific order.|r
    .goto Ashenvale,13.06,24.84
    .goto Ashenvale,14.04,19.80
    .goto Ashenvale,13.50,15.75
step
    #season 2
    >>Use |T134939:0|t[Spell Notes: MILEGIN VALF] to learn |T135820:0|t[Living Flame]
    .use 203752
step
    #season 2
    .engrave 9,400574 >> Open your character sheet and engrave your gloves with |T135735:0|t[Arcane Blast.] 
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Rune Guide
#subgroup Gloves << Mage
#name 12 - Living Bomb (Loch Modan) << Mage

step
    #season 2
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 400613,1
    >>Kill |cRXP_ENEMY_Stonesplinter Seer|r and loot them for |cRXP_LOOT_|T134939:0|t[Chewed Spell Notes]|r
    .collect 208799,1
    .mob Stonesplinter Seer
step
    #season 2
    >>Use |T134939:0|t[Chewed Spell Notes] to learn |T135820:0|t[Living Bomb]
    .use 208854
step
    #season 2
    .engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
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
    .zone Silverpine Forest >>Travel to Silverpine Forest
step
    .train 415936,1
    >>Kill the |cRXP_ENEMY_Rot Hides|r on Fenris Isle. Loot them for |T134173:0|t[A Takling Head]. Click it in your bags.
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>Accept Resting in Pieces
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>Interact with the |cRXP_FRIENDLY_Shallow Grave|r
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>Turn in Resting in Pieces
    .accept 461 >>Accept The Hidden Niche
    .target Shallow Grave
step
    .train 415936,1
    >>Interact with the |cRXP_FRIENDLY_Dusty Shelf|r |cRXP_WARN_inside the castle in the top left tower (go left after the first staris)|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>Turn in The Hidden Niche
    .accept 491 >>Accept Want to Bethor
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>Travel to Undercity (if you have the Undercity FP you could deathskip to The Sepulcher and fly from there)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r.
    .goto Undercity,83.8,16.2
    .turnin 491 >>Turn in Want to Bethor
    .accept 78277 >>Accept A Token of Gratitude
    .turnin 78277 >>Turn in A Token of Gratitude
    .train 415936 >>|cRXP_WARN_You will automatically train the rune by turning in the quest|r
    .target Bethor Iceshard
]])
