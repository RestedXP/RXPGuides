RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Chimera Shot - 3 (Dun Morogh)

step << Hunter
    #season 2
    .goto Dun Morogh,30.773,80.063
    >>Open the |cRXP_PICK_Frostmane Loot Cache|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .use 206168
    .itemcount 206168,1
    .train 410121,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Chimera Shot - 3 (Shadowglen)

step << Hunter
    #season 2
    .goto Teldrassil,56.68,26.12
    >>Kill |cRXP_ENEMY_Githyiss the Vile|r. Loot Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r]
    .use 206168
    .itemcount 206168,1
    .train 410121,1
]])