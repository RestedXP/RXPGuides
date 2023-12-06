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