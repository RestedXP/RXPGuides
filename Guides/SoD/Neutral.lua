RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Consumed by Rage - 25 (Wetlands)

step << Warrior
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >> Enter the Thelgen Rock cave
    .train 425446,1
step << Warrior
    #season 2
    .goto Wetlands,47.0,64.0
    >>Kill |cRXP_ENEMY_Carrodin|r. Loot it for the |T136088:0|t[|cRXP_FRIENDLY_Rune of Consuming Rage|r]
    .collect 210573,1 -- Rune of Consuming Rage (1)
    .mob Carrodin
    .train 425446,1
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_Use the|r |T136088:0|t[|cRXP_FRIENDLY_Rune of Consuming Rage|r] |cRXP_WARN_to train|r |T136088:0|t[Consumed by Rage]
    .use 210573
    .itemcount 210573,1
]])