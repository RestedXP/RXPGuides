if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Legs << Warrior
#subgroup Gloves << Hunter
#name Furious Thunder - 10 (Mulgore) << Warrior
#name Explosive Shot - 10 (Mulgore) << Hunter
#title Furious Thunder << Warrior
#title Explosive Shot << Hunter


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
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .mob Arra'Chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
step << Warrior
    #season 2
    .train 403476 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .use 206169
    .itemcount 206169,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves << Warrior
#subgroup Legs << Hunter
#name Quick Strike - 18 (The Barrens) << Warrior
#name Sniper Training - 16 (The Barrens) << Hunter
#title Quick Strike << Warrior
#title Sniper Training << Hunter

    --Rune of Quick Strike/Sniper Training

step
    #season 2
    #completewith next
    +|cRXP_WARN_This rune is very easy when in a group. If solo, level 18+ is recommended|r << Warrior
    +|cRXP_WARN_This rune is very easy when in a group. If solo, level 16+ is recommended|r << Hunter
step
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Buy a|r |T135129:0|t[Fishing Harpoon] |cRXP_BUY_from him|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>Use the |T135129:0|t[Fishing Harpoon] on |cRXP_ENEMY_Bruuz|r and kill him. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] << Warrior
    .use 208773 >>Use the |T135129:0|t[Fishing Harpoon] on |cRXP_ENEMY_Bruuz|r and kill him. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] << Hunter
    >>|cRXP_WARN_He patrols around the sunken boat in the water|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .collect 208777,1 << Hunter --Rune of the Sniper (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] |cRXP_WARN_to train|r |T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step << Hunter
    #season 2
    .train 416091 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_to train|r |T132212:0|t[Sniper Training]
    .use 208777
    .itemcount 208777,1

    ]])
