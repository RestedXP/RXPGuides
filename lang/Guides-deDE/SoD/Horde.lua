if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine << Warrior
#subgroup Handschuhe << Hunter
#name Wütender Donner - 10 (Mulgore) << Warrior
#name Explosivschuss - 10 (Mulgore) << Hunter
#title Wütender Donner << Warrior
#title Explosivschuss << Hunter


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
    >>Sucht nach |cRXP_ENEMY_Arra'Chea|r (großes schwarzes Kodo). Er läuft im Uhrzeigersinn. Tötet ihn und sammelt die Beute |T134419:0|t[|cRXP_FRIENDLY_Rune des wütenden Donners|r] << Warrior
    >>Sucht nach |cRXP_ENEMY_Arra'Chea|r (großes schwarzes Kodo). Er läuft im Uhrzeigersinn. Tötet ihn und sammelt die Beute |T134419:0|t[|cRXP_FRIENDLY_Rune des Explosivschusses|r] << Hunter
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .mob Arra'Chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
step << Warrior
    #season 2
    .train 403476 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Wütenden Donners|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Explosivschusses|r]
    .use 206169
    .itemcount 206169,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe << Warrior
#subgroup Beine << Hunter
#name Rasanter Schlag - 18 (The Barrens) << Warrior
#name Heckenschützentraining - 16 (The Barrens) << Hunter
#title Rasanter Schlag << Warrior
#title Heckenschützentraining << Hunter

    --Rune of Quick Strike/Sniper Training

step
    #season 2
    #completewith next
    +|cRXP_WARN_Diese Rune ist sehr leicht, wenn ihr in einer Gruppe seid. Falls ihr alleine seid, wird Stufe 18+ empfohlen|r << Warrior
    +|cRXP_WARN_Diese Rune ist sehr leicht, wenn ihr in einer Gruppe seid. Falls ihr alleine seid, wird Stufe 16+ empfohlen|r << Hunter
step
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Kauft|r |T135129:0|t[Fischfangharpune] |cRXP_BUY_von ihm|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>Benutzt die |T135129:0|t[Fischfangharpune] auf |cRXP_ENEMY_Bruuz|r und tötet ihn. Sammelt |T134419:0|t[|cRXP_FRIENDLY_Rune of Rasanter Schlag|r] von ihm. << Warrior
    .use 208773 >>Benutzt die |T135129:0|t[Fischfangharpune] auf |cRXP_ENEMY_Bruuz|r und tötet ihn. Sammelt die Beute |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] << Hunter
    >>|cRXP_WARN_Er patrouilliert um das versunkene Boot im Wasser|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .collect 208777,1 << Hunter --Rune of the Sniper (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step << Warrior
    #season 2
    .train 425443 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune des rasanten Schlags|r] |cRXP_FRIENDLY_um|r |T132394:0|t[Rasanter Schlag] |cRXP_WARN_zu erlernen|r
    .use 208778
    .itemcount 208778,1
step << Hunter
    #season 2
    .train 416091 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] |cRXP_WARN_um zu trainieren|r |T132212:0|t[Heckenschützentraining]
    .use 208777
    .itemcount 208777,1

    ]])
