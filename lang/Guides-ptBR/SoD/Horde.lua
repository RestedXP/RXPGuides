if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas << Warrior
#subgroup Gloves << Hunter
#name Trovão Furioso - 10 (Mulgore) << Warrior
#name Tiro Explosivo - 10 (Mulgore) << Hunter
#title Trovão Furioso << Warrior
#title Tiro Explosivo << Hunter


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
    >>Procure |cRXP_ENEMY_Arra'Chea|r (Grande kodo preto). Ele caminha no sentido horário. Mate-o e Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r] << Warrior
    >>Procure |cRXP_ENEMY_Arra'Chea|r (Grande kodo preto). Ele caminha no sentido horário. Mate-o e Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro Explosivo|r] << Hunter
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .mob Arra'Chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
step << Warrior
    #season 2
    .train 403476 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro Explosivo|r]
    .use 206169
    .itemcount 206169,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves << Warrior
#subgroup Pernas << Hunter
#name Golpe Rápido - 18 (The Barrens) << Warrior
#name Treinamento de Franco-atirador - 16 (The Barrens) << Hunter
#title Golpe Rápido << Warrior
#title Treinamento de Franco-atirador << Hunter

    --Rune of Quick Strike/Sniper Training

step
    #season 2
    #completewith next
    +|cRXP_WARN_Esta runa é muito fácil quando em grupo. Se solo, nível 18+ é recomendado|r << Warrior
    +|cRXP_WARN_Esta runa é muito fácil quando em grupo. Se solo, nível 16+ é recomendado|r << Hunter
step
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kilxx|r
    >>|cRXP_BUY_Compre um|r |T135129:0|t[Arpão de Pesca] |cRXP_BUY_dele|r
    .collect 208773,1 --Fishing Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>Usar o |T135129:0|t[Arpão de Pesca] em |cRXP_ENEMY_Bruuz|r e o mate. Saque-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] << Warrior
    .use 208773 >>Usar o |T135129:0|t[Arpão de Pesca] em |cRXP_ENEMY_Bruuz|r e mate-o. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa do Franco-atirador|r] << Hunter
    >>|cRXP_WARN_Patrulha ao redor do barco afundado na água|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .collect 208777,1 << Hunter --Rune of the Sniper (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] |cRXP_WARN_para treinar|r |T132394:0|t[Golpe Rápido]
    .use 208778
    .itemcount 208778,1
step << Hunter
    #season 2
    .train 416091 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Franco-atirador|r] |cRXP_WARN_para treinar|r |T132212:0|t[Treinamento de Franco-atirador]
    .use 208777
    .itemcount 208777,1

    ]])
