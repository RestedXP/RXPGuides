if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas << Warrior
#subgroup Guantes << Hunter
#name Rayo furioso - 10 (Mulgore) << Warrior
#name Disparo explosivo - 10 (Mulgore) << Hunter
#title Rayo furioso << Warrior
#title Disparo explosivo << Hunter


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
    >>Busca a |cRXP_ENEMY_Arra'Chea|r (Gran kodo negro). Patrulla en sentido horario. Mátalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r] << Warrior
    >>Busca a |cRXP_ENEMY_Arra'Chea|r (Gran kodo negro). Patrulla en sentido horario. Mátalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Disparo explosivo|r] << Hunter
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .mob Arra'Chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
step << Warrior
    #season 2
    .train 403476 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Disparo explosivo|r]
    .use 206169
    .itemcount 206169,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes << Warrior
#subgroup Piernas << Hunter
#name Golpe rápido - 18 (Los Baldíos) << Warrior
#name Instrucción de francotirador - 16 (Los Baldíos) << Hunter
#title Golpe rápido << Warrior
#title Instrucción de francotirador << Hunter

    --Rune of Quick Strike/Sniper Training

step
    #season 2
    #completewith next
    +|cRXP_WARN_Esta runa es muy fácil si vas en grupo. Si vas solo, se recomienda nivel 18+|r << Warrior
    +|cRXP_WARN_Esta runa es muy fácil si vas en grupo. Si vas solo, se recomienda nivel 16+|r << Hunter
step
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Compra un|r |T135129:0|t[Arpón de pesca] |cRXP_BUY_a este vendedor|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>Usa el |T135129:0|t[Arpón de pesca] en |cRXP_ENEMY_Bruuz|r y mátalo. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe rápido|r] << Warrior
    .use 208773 >>Usa el |T135129:0|t[Arpón de pesca] en |cRXP_ENEMY_Bruuz|r y mátalo. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa del Francotirador|r] << Hunter
    >>|cRXP_WARN_Patrulla alrededor del bote hundido en el agua|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .collect 208777,1 << Hunter --Rune of the Sniper (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe rápido|r] |cRXP_WARN_para aprender|r |T132394:0|t[Golpe rápido]
    .use 208778
    .itemcount 208778,1
step << Hunter
    #season 2
    .train 416091 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Francotirador|r] |cRXP_WARN_para aprender|r |T132212:0|t[Instrucción de francotirador]
    .use 208777
    .itemcount 208777,1

    ]])
