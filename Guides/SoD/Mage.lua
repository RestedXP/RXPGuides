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