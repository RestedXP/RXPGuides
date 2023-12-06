RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Crusader Strike - 4 (Elwynn Forest)

step
    #season 2
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134916:0|t[|cRXP_FRIENDLY_Libram of Judgement|r]
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 407676,1
step
    #season 2
    +|cRXP_WARN_Equip the|r |T134916:0|t[|cRXP_FRIENDLY_Libram of Judgement|r]
    .itemcount 205420,1 -- Libram of Judgement (1)
    .use 205420
    .itemStat 18,QUALITY,<2
    .train 407676,1
step
    #season 2
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times until you have gained the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .use 205420
    .itemcount 205420,1
    .train 407676,1
step
    #season 2
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t[|cRXP_FRIENDLY_Libram of Judgement|r]
    .use 205420
    .itemcount 205420,1
    .train 407676,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Crusader Strike - 4 (Dun Morogh)

step << Paladin
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for the |T134916:0|t[|cRXP_FRIENDLY_Libram of Judgement|r]
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 407676,1
step << Paladin
    #season 2
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t[|cRXP_FRIENDLY_Libram of Judgement|r]
    .use 205420
    .itemcount 205420,1
    .train 407676,1
step << Paladin
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    .cast 409920 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_on your foes 10 times until you have gained the|r |T136116:0|t[Inspired] |cRXP_WARN_buff, then use the|r |T134916:0|t[|cRXP_FRIENDLY_Libram of Judgement|r] |cRXP_WARN_again which you equiped earlier|r
    .use 205420
    .itemcount 205420,1
    .train 407676,1
]])
