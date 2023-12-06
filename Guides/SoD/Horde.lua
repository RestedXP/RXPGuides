RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Rune Guide
#subgroup Legs << Warrior
#subgroup Gloves << Hunter
#name Furious Thunder - 10 (Mulgore) << Warrior
#name Explosive Shot - 10 (Mulgore) << Hunter


    --Rune of Furious Thunder/Explosive Shot

step
    #season 2
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9
    >>Look around for |cRXP_ENEMY_Arra'Chea|r (Big black kodo). He walks clockwise. Kill and Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] << Warrior
    >>Look around for |cRXP_ENEMY_Arra'Chea|r (Big black kodo). He walks clockwise. Kill and Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] << Hunter
    .collect 204809,1 --Rune of Furious Thunder(1) << Warrior
    .collect 206169,1 --Rune of Explosive Shot (1) << Hunter
    .mob Arra'Chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
step << Warrior
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .train 403476,1 << Warrior
step << Hunter
    #season 2
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .use 206169
    .train 410123,1 << Hunter

    ]])