if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe do Cruzado - 4 (Elwynn Forest)
#title Golpe do Cruzado
#next Modelo de Inspiração - 6 (Elwynn Forest)

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 4 para adquirir|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado] |cRXP_WARN_pois é o requisito de nível para aprender|r |T135959:0|t[Julgamento]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,48.35,41.97,15,0
    .goto Elwynn Forest,48.87,41.75,12,0
    .goto Elwynn Forest,49.61,41.87,12,0
    .goto Elwynn Forest,50.433,42.124,10 >>Viagem até |cRXP_FRIENDLY_Irmão Samuel|r dentro
    .train 410002,1
    .xp <4,1
step
    .goto Elwynn Forest,50.433,42.124
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Brother Sammuel
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Mate os |cRXP_ENEMY_Defias Thugs|r. Saque-os para o |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--XX  .itemStat 18,QUALITY,<2 would bug it if someone has a Libram in the slot already
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    .aura 408828 >>|cRXP_WARN_Lance|r |T135959:0|t[Julgamento] |cRXP_WARN_10 vezes para obter o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Use o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe do Cruzado - 4 (Dun Morogh)
#title Golpe do Cruzado
#next Modelo de Inspiração - 6 (Dun Morogh)

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 4 para adquirir|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado] |cRXP_WARN_pois é o requisito de nível para aprender|r |T135959:0|t[Julgamento]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Dun1
    .goto Dun Morogh,28.83,69.07,12,0
    .goto Dun Morogh,28.83,68.70,10,0
    .goto Dun Morogh,28.93,68.35,10,0
    .goto Dun Morogh,28.833,68.332,10 >>Viagem para |cRXP_FRIENDLY_Bromos Grummner|r dentro
    .train 410002,1
    .xp <4,1
step
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Bromos Grummner
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    >>Abate |cRXP_ENEMY_Frostmane Trolls Whelps|r. Saqueie-os para obter o |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .aura 408828 >>|cRXP_WARN_Lance|r |T135959:0|t[Julgamento] |cRXP_WARN_10 vezes para obter o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Use o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ato de Bravura - 14 (Loch Modan)
#title Ato de Bravura
#next Modelo de Inspiração - 6 (Elwynn Forest)


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 14 para adquirir|r |T133816:0|t[Gravar Luvas - Ato de Bravura] |cRXP_WARN_em Loch Modan sozinho|r
    >>|cRXP_WARN_Você deve estar no mínimo no nível 8 pois é o requisito de nível para equipar o|r |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Ato de Bravura]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 14 para adquirir|r |T133816:0|t[Gravar Luvas - Ato de Bravura] |cRXP_WARN_em Loch Modan sozinho|r
    .train 410001,1
    .xp <8,1
    .xp >14,1
step
    #completewith next
    .zone Ironforge >>Viaje para Ironforge
    .train 410001,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .train 853 >>Treine |T135963:0|t[Martelo da Justiça]
    .target Brandur Ironhammer
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #label Loch1
    .zone Loch Modan >>Voe para Loch Modan
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #requires Loch1
    #label Cave1
    .goto Loch Modan,28.75,64.63,40,0
    .goto Loch Modan,35.35,83.51,20,0
    .goto Loch Modan,34.89,84.38,30 >>Viagem para Stonesplinter Cave
    .train 410001,1
    .xp <8,1
step
    #completewith next
    #requires Cave1
    .goto Loch Modan,34.24,85.59,12,0
    .goto Loch Modan,35.90,87.93,12,0
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,36.75,91.43,8 >>Viagem para o |cRXP_PICK_Sunken Reliquary|r dentro da caverna submersa
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,70.96,73.08
    >>Abra o |cRXP_PICK_Sunken Reliquary|r embaixo da água. Pegue-o para obter o |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r
    .collect 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    .equip 18,205420 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <11,1
step
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,35.90,87.93,15,0
    .goto Loch Modan,34.24,85.59,15,0
    .goto Loch Modan,34.89,84.38,30 >>Saia da caverna
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Loch Modan,31.93,79.12,40,0
    .goto Loch Modan,31.02,80.64,40,0
    .goto Loch Modan,31.56,76.89,40,0
    .goto Loch Modan,30.90,74.35,40,0
    .goto Loch Modan,29.75,72.57,40,0
    .goto Loch Modan,33.43,70.60,40,0
    .goto Loch Modan,35.36,71.21,40,0
    .goto Loch Modan,32.86,79.70,40,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >16,1
step
    #loop
    .goto Loch Modan,35.66,83.64,30,0
    .goto Loch Modan,36.86,84.93,30,0
    .goto Loch Modan,36.50,80.01,30,0
    .goto Loch Modan,33.96,81.82,30,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <16,1
    .xp >19,1
step
    #loop
    .goto Loch Modan,69.61,67.92,40,0
    .goto Loch Modan,72.12,68.29,40,0
    .goto Loch Modan,72.59,61.75,40,0
    .goto Loch Modan,70.33,59.84,40,0
    .goto Loch Modan,67.37,59.88,40,0
    .goto Loch Modan,67.77,62.99,40,0
    .goto Loch Modan,70.41,62.93,40,0
    .goto Loch Modan,69.69,65.52,40,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Wetlands >>Viaje para Terras do Interior
    .itemStat 18,QUALITY,2
    .aura 408828
    .train 410001,1
    .xp <22,1
step
    #loop
    .goto Wetlands,15.96,47.28,50,0
    .goto Wetlands,13.69,41.37,50,0
    .goto Wetlands,13.59,38.04,50,0
    .goto Wetlands,15.30,38.81,50,0
    .goto Wetlands,18.45,39.37,50,0
    .goto Wetlands,19.24,41.29,50,0
    .goto Wetlands,13.69,41.37,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Young Wetlands Crocolisk
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Use o|r |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Ato de Bravura]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ato de Bravura - 20 (Cerro Oeste)
#title Ato de Bravura
#next Exorcista - 24 (Floresta do Crepúsculo)


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 20 para adquirir|r |T133816:0|t[Gravar Luvas - Ato de Bravura] |cRXP_WARN_em Cerro Oeste sozinho|r
    >>|cRXP_WARN_Você deve estar no mínimo no nível 8 pois é o requisito de nível para equipar o|r |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133816:0|t[Gravar Luvas - Ato de Bravura]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Você deve estar no mínimo no nível 20 para adquirir|r |T133816:0|t[Gravar Luvas - Ato de Bravura] |cRXP_WARN_em Cerro Oeste sozinho|r
-- >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier and can be acquired at a lower level|r
    .train 410001,1
    .xp <8,1
    .xp >20,1
step << skip
    #completewith LibramS
    +É altamente recomendado que você obtenha |T133816:0|t[Gravar Luvas - Ato de Bravura] |cRXP_WARN_em Loch Modan em vez disso, pois é MUITO mais fácil|r
    .train 410001,1
    .xp <20,1
step
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 410001,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 853 >>Treine |T135963:0|t[Martelo da Justiça]
    .target Arthur the Faithful
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,70.96,73.08,30,0
    .goto Duskwood,12.17,74.76,30,0
    .goto Westfall,70.96,73.08
    >>Abate |cRXP_ENEMY_Defias Drones|r. Saque-os para obter o |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r
    >>|cRXP_WARN_Tenha cuidado pois os|cRXP_ENEMY_ Defias Drones|r patrulham em grupos de dois|r
    >>|cRXP_WARN_Evite o |cRXP_ENEMY_Parasita Défias Mal Formado|r pois ele ataca MUITO forte|r
    .collect 208851,1 --Libram of Justice (1)
    .mob Defias Drone
    .train 410001,1
    .xp <8,1
--XX Venture Co. Drones drop it too?
step
    .equip 18,205420 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Elwynn Forest,24.50,93.99,50,0
    .goto Elwynn Forest,26.07,91.92,50,0
    .goto Elwynn Forest,27.85,88.18,50,0
    .goto Elwynn Forest,27.56,86.21,50,0
    .goto Elwynn Forest,26.43,86.81,50,0
    .goto Elwynn Forest,25.18,89.20,50,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >15,1
step
    #loop
    .goto Westfall,69.71,73.41,40,0
    .goto Westfall,64.54,60.81,40,0
    .goto Westfall,62.62,58.29,40,0
    .goto Westfall,60.87,58.71,40,0
    .goto Westfall,58.71,61.21,40,0
    .goto Westfall,61.43,62.17,40,0
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .mob Great Goretusk
    .mob Harvest Reaper
    .mob Greater Fleshripper
    .mob Defias Knuckleduster
    .mob Defias Highwayman
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <15,1
    .xp >22,1
step
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,12.65,69.42,50,0
    .goto Duskwood,10.42,66.27,50,0
    .goto Duskwood,10.30,59.05,50,0
    .goto Duskwood,10.75,52.37,50,0
    .goto Duskwood,8.83,45.35,50,0
    .goto Duskwood,8.75,40.20,50,0
    .goto Duskwood,10.99,34.29,50,0
    .goto Duskwood,11.07,29.40,50,0
    .goto Duskwood,14.69,26.22,50,0
    .goto Duskwood,20.93,25.13,50,0
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,14.69,26.22
    .aura 408828 >>|cRXP_WARN_Ataque inimigos reduzindo-os a pouca vida. Use|r |T135963:0|t[Martelo da Justiça] |cRXP_WARN_neles, depois mate-os enquanto estão atordoados 10 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Green Recluse
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Use o|r |T134916:0|t|cRXP_LOOT_[Incunábulo de Justiça]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Ato de Bravura]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Solo Consagrado - 4 (Loch Modan)
#title Solo Consagrado
#next Ato de Bravura - 14 (Loch Modan)

step
    +|cRXP_WARN_Você DEVE estar no mínimo no nível 4 para adquirir|r |T133815:0|t[Gravar Peitoral - Solo Consagrado] |cRXP_WARN_pois é o requisito de nível para treinar|r |T135906:0|t[Bênção do Poder]
    >>|cRXP_WARN_Você precisa subir de nível antes de sequer tentar adquirir|r |T133815:0|t[Gravar Peitoral - Solo Consagrado]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Hallowed Ground] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    #completewith next
    .zone Ironforge >>Viaje para Ironforge
    .train 425618,1
    .xp <4,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .target Brandur Ironhammer
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #label Loch1
    .zone Loch Modan >>Voe para Loch Modan
    .train 425618,1
    .xp <4,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Inn1
    .goto Loch Modan,35.26,47.76,10 >>Entre na Thelsamar Estalagem
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #requires Inn1
    .goto Loch Modan,35.43,48.29,8,0
    .goto Loch Modan,35.12,48.98,8,0
    .goto Loch Modan,35.13,49.34,8,0
    .goto Loch Modan,35.19,49.95,8,0
    .goto Loch Modan,35.52,49.40,8,0
    >>Entre na sala mais a leste no andar de baixo
    .goto Loch Modan,35.80,49.57,8 >>Vá para o |T134916:0|t|cRXP_LOOT_[Incunábulo das Bênçãos]|r
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,35.80,49.57
    >>Saque o |T134916:0|t|cRXP_LOOT_[Incunábulo das Bênçãos]|r na mesa
    .collect 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo das Bênçãos]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Lançe|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_ou|r |T135970:0|t[Bênção de Sabedoria] |cRXP_WARN_em 5 jogadores únicos aliados (incluindo você) para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Lançe|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_em 5 jogadores únicos aliados (incluindo você) para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_Use o|r |T134916:0|t[Incunábulo das Bênçãos] |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Solo Consagrado]
    .aura -408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Trompa de Lordaeron - 12 (Cerro Oeste)
#title Trompa de Lordaeron
#next Ato de Bravura - 20 (Cerro Oeste)


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 12 para adquirir|r |T133815:0|t[Engrave Baú - Trompa de Lordaeron] |cRXP_WARN_em Cerro Oeste sozinho|r
    >>|cRXP_WARN_Você DEVE estar no mínimo no nível 4 pois é o requisito de nível para treinar|r |T135906:0|t[Bênção do Poder]
    >>|cRXP_WARN_Você precisa subir de nível antes de sequer tentar adquirir|r |T133815:0|t[Engrave Baú - Trompa de Lordaeron]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    +|cRXP_WARN_Você deve estar pelo menos no nível 12 para adquirir o|r |T133815:0|t[Engrave Baú - Trompa de Lordaeron] |cRXP_WARN_em Cerro Oeste sozinho|r
--  >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp <4,1
    .xp >12,1
step
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 425618,1
    .xp <4,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .target Arthur the Faithful
    .train 425618,1
    .xp <4,1
step << skip
    #completewith next
    >>|cRXP_WARN_É altamente recomendado obter o|r |T134229:0|t[Testament of Trompa de Lordaeron] |cRXP_WARN_em Loch Modan em vez disso, pois é MUITO mais fácil|r
    >>|cRXP_WARN_Não é recomendado usar o|r |T134229:0|t[Testament of Trompa de Lordaeron] |cRXP_WARN_no lugar do|r |T236250:0|t[Runa of Tempestade Divina] |cRXP_WARN_ou do|r |T133745:0|t[Itens de MoP]
    .train 425618,1
    .xp <12,1
step
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
    .train 425618,1
    .xp <4,1
step
    #label LibramS
    .goto Westfall,44.45,25.76,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,45.35,21.20,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,31.82,43.99,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,29.65,46.18,0 --Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,44.72,23.57,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.39,21.67,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.98,22.33,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.35,21.20,12,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.68,19.94,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,45.65,18.24,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,46.28,18.86,12,0 --Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,31.82,43.99,40,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,30.42,45.81,12,0 --Travel to Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,29.65,46.18,15,0 --Quarry Spawnpoint 5 (Quarry Inside)
--  .goto Westfall,30.54,48.34,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--  .goto Westfall,30.14,49.51,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--   .goto Westfall,28.88,48.92,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
    .goto Westfall,29.65,46.18 --Quarry Spawnpoint 5 (Quarry Inside)
    >>|cRXP_WARN_Ataque o |cRXP_ENEMY_Operário Imortal|r. Mate-o usando|r |T135920:0|t[Sagrado Dano] |cRXP_WARN_such as|r |T135959:0|t[Julgamento] |cRXP_WARN_quando ele cair (você tem 10 segundos para fazer isso). Saqueie-o para obter o|r |T134916:0|t|cRXP_LOOT_[Incunábulo das Bênçãos]|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Operário Imortal|r aparece como um élite, mas possui a saúde e o dano de um inimigo Normal|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Operário Imortal|r compartilha pontos de aparecimento por toda a Ouro Coast Pedreira e Jangolode Mina. Se não conseguir encontrá-lo em um local, tente o outro|r
    .collect 208849,1 --Libram of Blessings (1)
    .unitscan Undying Laborer
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo das Bênçãos]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Cast|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_or|r |T135970:0|t[Bênção de Sabedoria] |cRXP_WARN_on 5 unique aliado players (including yourself) to gain the|r |T136116:0|t[Inspirado] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Lançe|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_em 5 jogadores únicos aliados (incluindo você) para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <4,1
    .xp >14,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Incunábulo das Bênçãos]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Baú - Trompa de Lordaeron]
    .use 208849
    .aura -408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Égide - 8 (Elwynn Forest)
#title Égide
#next Repreensão - 10 (Objetos de TBC)

step
    +|cRXP_WARN_Você PRECISA estar pelo menos no nível 8 para adquirir|r |T133815:0|t[Gravar Peitoral - Égide] |cRXP_WARN_pois é o nível necessário para aprender|r |T135949:0|t[Purificar]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133815:0|t[Gravar Peitoral - Égide]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 425619,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 1152 >>Treine |T135949:0|t[Purificar]
    .target Arthur the Faithful
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #requires Elwynn1
    #label Cave1
    .goto Elwynn Forest,61.59,53.51,15 >>Entre na Mina de Jasperlode
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Elwynn Forest,61.46,48.17,8,0
    .goto Elwynn Forest,61.31,48.87,8,0
    .goto Elwynn Forest,60.61,49.94,8,0
    .goto Elwynn Forest,60.73,50.83,8,0
    .goto Elwynn Forest,61.22,51.51,8,0
    .goto Elwynn Forest,61.44,52.64,8,0
    .goto Elwynn Forest,61.97,47.31,12 >>Viagem em direção ao |cRXP_FRIENDLY_Aventureiro Ferido|r no chão dentro da caverna
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
--XX no completewith next so people don't brick it by casting Purify accidentally
step
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Lance|r |T135949:0|t[Purificar] |cRXP_WARN_no|r |cRXP_FRIENDLY_Aventureiro Ferido|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Converse com o |cRXP_FRIENDLY_Aventureiro Ferido|r depois de lançar|r |T135949:0|t[Purificar] |cRXP_WARN_nele para receber|r |T134419:0|t[Runa de Égide]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_Use|r |T134419:0|t[Runa de Égide] |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Égide]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX cast 425589
--XX Rune acquirable if someone else purifies him for you?
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Égide - 8 (Dun Morogh)
#title Égide
#next Repreensão - 10 (Ironforge)

step
    +|cRXP_WARN_Você PRECISA estar pelo menos no nível 8 para adquirir|r |T133815:0|t[Gravar Peitoral - Égide] |cRXP_WARN_pois é o nível necessário para aprender|r |T135949:0|t[Purificar]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar adquirir|r |T133815:0|t[Gravar Peitoral - Égide]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Ironforge >>Viaje para Ironforge
    .train 425619,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .train 1152 >>Treine |T135949:0|t[Purificar]
    .target Brandur Ironhammer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Dun Morogh,25.57,43.37,40 >>Viagem em direção ao |cRXP_FRIENDLY_Aventureiro Ferido|r no chão
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .goto Dun Morogh,25.57,43.37
    .cast 1152 >>|cRXP_WARN_Lance|r |T135949:0|t[Purificar] |cRXP_WARN_no|r |cRXP_FRIENDLY_Aventureiro Ferido|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Dun Morogh,25.57,43.37
    >>|cRXP_WARN_Converse com o |cRXP_FRIENDLY_Aventureiro Ferido|r depois de lançar|r |T135949:0|t[Purificar] |cRXP_WARN_nele para receber|r |T134419:0|t[Runa de Égide]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_Use|r |T134419:0|t[Runa de Égide] |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Égide]
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Luz Divina - 10 (Objetos de TBC)
#title Luz Divina
#next Trompa de Lordaeron - 12 (Cerro Oeste)

step
    #completewith LibramS
    +|cRXP_WARN_Você deve estar pelo menos no nível 10 para adquirir o|r |T133815:0|t[Engrave Baú - Luz Divina] |cRXP_WARN_em Objetos de TBC sozinho|r
    .train 410015,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Vá para Ventobravo
    .train 410015,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,38.10,28.10,12 >>Viagem em direção a |cRXP_FRIENDLY_Irmão Rômulo|r dentro da Catedral
    .train 410015,1
step
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Fale com o |cRXP_FRIENDLY_Irmão Rômulo|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Desça para o lado ocidental da Cripta da Catedral
    .goto StormwindClassic,32.86,24.77,8 >>Viaje em direção a |cRXP_LOOT_Nota Calcinada|r na cripta
    .train 410015,1
step
    .goto StormwindClassic,32.86,24.87
    >>Saque a |cRXP_LOOT_Nota Calcinada|r ao lado das velas
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Voe para Aida Gelhardt na ilha
    .train 410015,1
step
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Fale com Aida Gelhardt para iniciar um combate
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Mate |cRXP_ENEMY_Aida Gelhardt|r
    >>|cRXP_WARN_Lembre-se de pré-lançar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nela|r
    >>|cRXP_WARN_Tenha cuidado enquanto ela lança|r |T136197:0|t[Choque Sombrio] |cRXP_WARN_(lança instantaneamente 45 de dano sombrio. Custa 75 de mana. Você deve matá-la rápido o suficiente para que ela lance apenas 3 vezes)|r
    >>|cRXP_WARN_Após derrotar |cRXP_ENEMY_Aida Gelhardt|r:|r
    >>Fale com Aida Gelhardt novamente para receber o |T134419:0|t[Runa de Luz Divina]
    .collect 205897,1 --Rune of Divine Light (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >>Exclua a |T134939:0|t[Calcinado Nota] da mochila, pois não é mais necessário
step
    .train 410015 >>|cRXP_WARN_Use o|r |T134419:0|t[Runa de Luz Divina] |cRXP_WARN_para aprender|r |T133815:0|t[Engrave Baú - Luz Divina]
    .use 205897
    .itemcount 205897,1 --Rune of Divine Light (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Tempestade Divina - 25 (Costa Negra)
#title Tempestade Divina
#next Sacrifício Divino - 25 (Azeroth)

step
    #completewith LibramS
    +|cRXP_WARN_Você deve estar no mínimo no nível 25 para adquirir|r |T133815:0|t[Gravar Peitoral - Tempestade Divina] |cRXP_WARN_E você deve encontrar pelo menos 2 outros Paladins de nível 25 para fazer isso confortavelmente|r
    .train 410014,1
--  .xp >25,1
step
    #completewith LibramS
    #label DarkshoreT
    .zone Darkshore >>Vá para a Costa Negra
    .train 410014,1
step
    #completewith next
    #requires DarkshoreT
    .goto Darkshore,56.49,26.44,10 >>Voe para a Torre de Althalaxx
    .train 410014,1
step
    #label LibramS
    .goto Darkshore,56.20,26.46
    >>Abra o |cRXP_PICK_Orbe Estranho|r na mesa acima da Torre de Althalaxx. Saque-o para obter o |cRXP_LOOT_Althalaxx Orbe|r
    >>|cRXP_WARN_Tenha cuidado pois os inimigos nesta torre são difíceis (Nível 28-31)|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Dark Strand Voidcallers|r lançam|r |T136197:0|t[Seta Sombria] |cRXP_WARN_(Ranged Cast: Deals around 175 Sombra damage). Be sure to LoS them as much as possible|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step
    #completewith Delgren1
    #label AshenvaleT
    .zone Ashenvale >>Viaje para Vale Gris
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,26.19,38.69,10 >>Vá para o Purificador Delgren
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Fale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 78088 >>Entregue o Artefato Estranho
    .accept 78089 >>Aceite Conselho de Ventobravo
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step
    #label Delgren1
    .goto Ashenvale,26.19,38.69
    >>Fale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .accept 78089 >>Aceite Conselho de Ventobravo
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #completewith Katherine1
    #label StormwindT1
    .zone Stormwind City >>Vá para Ventobravo
    .train 410014,1
step
    #completewith next
    #requires StormwindT1
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>Vá para |cRXP_FRIENDLY_Katherine, a Pura|r na Catedral
    .train 410014,1
step
    #label Katherine1
    .goto StormwindClassic,37.23,31.87
    >>Fale com |cRXP_FRIENDLY_Katherine, a Pura|r
    .turnin 78089 >>Entregue Conselho de Ventobravo
    .accept 78090 >>Aceite Segunda Opinião
    .target Katherine the Pure
    .train 410014,1
step
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Vá para |cRXP_FRIENDLY_Úrsula Deline|r em The Slaughtered Lamb
    .train 410014,1
step
    .goto StormwindClassic,26.12,77.23
    >>Fale com |cRXP_FRIENDLY_Úrsula Deline|r
    .turnin 78090 >>Entregue Segunda Opinião
    .accept 78091 >>Aceite O Sal de Cada Dia
    .target Ursula Deline
    .train 410014,1
step
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .zoneskip Redridge Mountains
    .target Dungar Longdrink
    .train 410014,1
step
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>|cRXP_WARN_Se você não tem|r |T134596:0|t[Gravar Calça - Escudo do Vingador] |cRXP_WARN_ainda, vale a pena fazer agora. Se você não quiser, pule este passo|r
    >>Mate |cRXP_ENEMY_Dro'zem, o Blasfemo|r. Saque-o para obter o |T134419:0|t[Runa do Vingador]|r
    >>|cRXP_WARN_He has 3 spawnpoints outside: South-East (Render's Valley), Middle (Camp outside of Stonewatch Torre), and North (Render's Camp). He respawns quickly despite being a "rare"|r
    >>|cRXP_WARN_Pergunte no Bate-papo Geral se alguém o viu para reduzir seu tempo de busca (Digite /1 no bate-papo)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[Runa do Vingador] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Escudo do Vingador]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
step
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>Mate os |cRXP_ENEMY_Blackrock Summoners|r, os |cRXP_ENEMY_Blackrock Campeões|r, e os |cRXP_ENEMY_Blackrock Rastreadores|r. Saque-os para obter o |cRXP_LOOT_Summoner's Salt|r
    >>|cRXP_WARN_|cRXP_LOOT_Summoner's Salt|r é distribuído individualmente (cada inimigo tem uma chance de soltar Sais para cada pessoa em seu grupo), então você pode facilmente agrupar-se com outros para esta missão|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
step
    #completewith Ursula1
    #label StormwindT2
    .zone Stormwind City >>Vá para Ventobravo
    .train 410014,1
step
    #completewith next
    #requires StormwindT2
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Vá para |cRXP_FRIENDLY_Úrsula Deline|r em The Slaughtered Lamb
    .train 410014,1
step
    #label Ursula1
    .goto StormwindClassic,26.12,77.23
    >>Fale com |cRXP_FRIENDLY_Úrsula Deline|r
    .turnin 78091 >>Entregue O Sal de Cada Dia
    .accept 78092 >>Aceite É Preciso Destruí-lo
    .target Ursula Deline
    .train 410014,1
step
    #completewith Motes
    #label AshenvaleT
    .zone Ashenvale >>Viaje para Vale Gris
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,84.12,72.10,200 >>Vá para o Cânion do Demônio Caído
    .train 410014,1
step
    #label Motes
    #loop
    .goto Ashenvale,83.92,71.16,50,0
    .goto Ashenvale,84.65,74.15,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,82.60,79.15,50,0
    .goto Ashenvale,82.74,77.95,15,0
    .goto Ashenvale,82.02,77.93,15,0
    .goto Ashenvale,81.13,78.57,15,0
    .goto Ashenvale,81.17,79.78,15,0
    .goto Ashenvale,78.59,81.31,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,84.78,77.78,50,0
    .goto Ashenvale,87.28,79.21,50,0
    .goto Ashenvale,89.76,76.69,50,0
    .goto Ashenvale,84.18,76.79,50,0
    >>Mate os |cRXP_ENEMY_Searing Infernals|r, os |cRXP_ENEMY_Felguards|r, os |cRXP_ENEMY_Mannoroc Lashers|r, e os |cRXP_ENEMY_Legion Hounds|r. Saque-os para obter o |cRXP_LOOT_Motes of Mannoroth|r
    >>|cRXP_WARN_|cRXP_LOOT_Motes of Mannoroth|r são distribuídos individualmente (cada inimigo tem uma chance de soltar Motes para cada pessoa em seu grupo), então você pode facilmente agrupar-se com outros para esta missão|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Searing Infernals|r têm |T135802:0|t[Aura de Imolação] |cRXP_WARN_(Passiva Corpo a Corpo AdE: Causa 27-28 dano de fogo a cada 3 segundos), |cRXP_ENEMY_Felguards|r lançam |T132154:0|t[Derrubar] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa cerca de 140 dano e o atordoa por 2 segundos), e |cRXP_ENEMY_Mannoroc Lashers|r lançam |T135817:0|t[Açoite Flamejante] |cRXP_WARN_(Distância Instantâneo: Causa cerca de 45 dano de Fogo, depois 12-13 dano de Fogo a cada 3 segundos por 21 segundos) e |T136197:0|t[Seta Sombria] |cRXP_WARN_(Distância Lançamento: Causa cerca de 125 dano de Sombra)|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
step
    >>Clique em |cRXP_PICK_Lança de Mannoroth|r no ar, depois clique em |cRXP_PICK_Orbe Estilhaçado|r no chão
    .turnin 78092 >>Entregue É Preciso Destruí-lo
    .goto Ashenvale,89.48,77.03
    .accept 78093 >>Aceite De Volta a Dinis
    .goto Ashenvale,89.44,77.01
    .train 410014,1
step
    #completewith next
    .goto Ashenvale,26.19,38.69,10 >>Vá para o Purificador Delgren
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Fale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 78093 >>Entregue De Volta a Dinis
    .train 410014 >>Você aprenderá |T133815:0|t[Gravar Peitoral - Tempestade Divina]
    .target Delgren the Purifier
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Modelo de Inspiração - 6 (Elwynn Forest)
#title Modelo de Inspiração
#next Égide - 8 (Elwynn Forest)

step
    #completewith LibramS
    +|cRXP_WARN_Você deve estar no mínimo no nível 6 para adquirir|r |T134596:0|t[Gravar Calça - Modelo de Inspiração] |cRXP_WARN_em Elwynn Forest com outro jogador|r
    .train 410011,1
    .xp >6,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .train 410011,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,52.28,84.56,40 >>Viaje para os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r
    .train 410011,1
step
    #label LibramS
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Junte-se a um grupo com outro Paladino, Sacerdote, ou Druida em pé sobre os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Paladino, Sacerdote, ou Druida no Geral (Digite /1 no chat)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito de Aventureiro|r irá aparecer e morrerá após completar o ritual. Saque-o para obter o|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiração]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiração]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Modelo de Inspiração]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Modelo de Inspiração - 6 (Dun Morogh)
#title Modelo de Inspiração
#next Égide - 8 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_Você deve estar no mínimo no nível 6 para adquirir|r |T134596:0|t[Gravar Calça - Modelo de Inspiração] |cRXP_WARN_em Dun Morogh com outro jogador|r
    .train 410011,1
    .xp >6,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 410011,1
step
    #completewith next
    #requires Dun1
    #label Cave1
    .goto Dun Morogh,42.47,54.22,20,0
    .goto Dun Morogh,42.28,52.82,20 >>Entre em The Grizzled Den
    .train 410011,1
step
    #completewith next
    #label LibramS
    #requires Cave1
    .goto Dun Morogh,42.06,51.86,20,0
    .goto Dun Morogh,41.42,50.97,20,0
    .goto Dun Morogh,41.24,50.28,20,0
    .goto Dun Morogh,41.25,49.68,20,0
    .goto Dun Morogh,43.03,49.63,20 >>Vá para os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão dentro da caverna
    .train 410011,1
step
    .goto Dun Morogh,43.03,49.63
    >>|cRXP_WARN_Junte-se a um grupo com outro Paladino, Sacerdote, ou Druida em pé sobre os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Paladino, Sacerdote, ou Druida no Geral (Digite /1 no chat)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito de Aventureiro|r irá aparecer e morrerá após completar o ritual. Saque-o para obter o|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiração]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiração]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Modelo de Inspiração]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Repreensão - 10 (Ironforge)
#title Repreensão
#next Selo do Martírio - 10 (Objetos de TBC)

step
    #completewith LibramS
    +|cRXP_WARN_Você deve estar no mínimo no nível 10 para adquirir|r |T134596:0|t[Gravar Calça - Repreensão] |cRXP_WARN_em Ironforge sozinho|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Ironforge1
    .zone Ironforge >>Viaje para Ironforge
    .train 425621,1
step
    #completewith next
    #requires Ironforge1
    #label LibramS
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425621,1
step
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Dumalte|r para iniciar uma luta
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e conjure|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e conjure|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r
    >>|cRXP_WARN_Depois de derrotar |cRXP_ENEMY_Dumalte|r:|r
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Repreensão]
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Repreensão]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Repreensão] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Repreensão]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Repreensão - 10 (Objetos de TBC)
#title Repreensão
#next Selo do Martírio - 10 (Objetos de TBC)

step
    #completewith LibramS
    +|cRXP_WARN_Você deve estar pelo menos no nível 10 para obter|r |T134596:0|t[Gravar Calça - Repreensão] |cRXP_WARN_somente em Ventobravo|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Vá para Ventobravo
    .train 425621,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,21.56,59.60,10,0
    .goto StormwindClassic,22.60,64.62,10 >>Vá até a Lívia Valforte <Garçom> em The Park's Estalagem
    .train 425621,1
step
    .goto StormwindClassic,22.60,64.62
    .gossipoption 109047 >>Fale com a Lívia Valforte <Garçom> dentro de
    .target Liv Bradford
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109045 "How's business?"
--XX 109047 "Sounds like you need someone to bounce him for you."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .goto StormwindClassic,21.21,62.78
    .gossipoption 109084 >>Fale com Estuardo para começar uma luta
    >>Derrote |cRXP_ENEMY_Estuardo|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r
    >>|cRXP_WARN_Leve-o para cima, depois desça para usar|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r
    .mob Stuart
    .skipgossip 203478,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto StormwindClassic,21.21,62.78,-1
    .goto StormwindClassic,22.60,64.62,-1
    >>Derrote |cRXP_ENEMY_Estuardo|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r
    >>|cRXP_WARN_Leve-o para cima, depois desça para usar|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r
    >>|cRXP_WARN_Após derrotar |cRXP_ENEMY_Estuardo|r:|r
    >>Fale com a Lívia Valforte <Garçom> novamente para receber |T134419:0|t[Runa of Repreensão]
    >>|cRXP_WARN_Se ela não te der a|r |T134419:0|t[Runa of Repreensão]|cRXP_WARN_, você pode precisar lutar novamente contra |cRXP_ENEMY_Estuardo|r|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Liv Bradford
    .skipgossip 203478,1
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Repreensão] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Repreensão]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Proficiência em Auras - 24 (Floresta do Crepúsculo)
#title Proficiência em Auras
#next Foco de Luz - 25 (Reputação)

step
    +|cRXP_WARN_Você DEVE estar no mínimo no nível 24 para obter|r |T134596:0|t[Gravar Calça - Proficiência em Auras] |cRXP_WARN_pois é o requisito de nível para treinar|r |T135983:0|t[Esconjurar Morto-vivo]
    >>|cRXP_WARN_Você precisa ganhar mais níveis antes de tentar obter|r |T134596:0|t[Gravar Calça - Proficiência em Auras]
    .train 416037,1
    .xp >24,1
step
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 416037,1
    .xp <24,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 2878 >>Treine |T135983:0|t[Esconjurar Morto-vivo]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1
step
    #completewith next
    .zone Duskwood >>Voe para Floresta do Crepúsculo
    .train 416037,1
    .xp <24,1
step
    #label LibramS
    #loop
    .goto Duskwood,20.84,63.75,50,0
    .goto Duskwood,20.00,71.10,50,0
    .goto Duskwood,21.58,72.00,50,0
    .goto Duskwood,24.26,71.82,50,0
    .goto Duskwood,22.91,66.62,50,0
    >>Abate os |cRXP_ENEMY_Defias Noite Runners|r, os |cRXP_ENEMY_Defias Noite Lâminas|r e os |cRXP_ENEMY_Defias Enchanters|r. Saqueie o |T134916:0|t|cRXP_LOOT_[Incunábulo do Banimento]|r deles
    >>|cRXP_WARN_Cuidado, os |cRXP_ENEMY_Defias Noite Runners|r e os |cRXP_ENEMY_Defias Noite Lâminas|r lançam|r |T136093:0|t[Veneno Retardador] |cRXP_WARN_(Reduz velocidade de movimento em 35% por 25 segundos),|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(causa dano em dobro pelas costas. Os |cRXP_ENEMY_Defias Noite Runners|r são|r |T132320:0|t[Furtivo]|cRXP_WARN_, e os |cRXP_ENEMY_Defias Enchanters|r lançam|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_(causa aproximadamente 150 de dano de fogo) e têm|r |T135843:0|t[Armadura Gélida] |cRXP_WARN_(reduz ataque e velocidade no acerto)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    .equip 18,211472 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Banimento]|r
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step
    #loop
    .goto Duskwood,22.49,47.91,50,0
    .goto Duskwood,20.41,47.56,50,0
    .goto Duskwood,14.65,47.37,50,0
    .goto Duskwood,16.31,44.96,50,0
    .goto Duskwood,22.95,40.55,50,0
    >>Abate os |cRXP_ENEMY_Skeletal Fiends|r e os |cRXP_ENEMY_Skeletal Horrors|r
    .aura 408828 >>|cRXP_WARN_Use|r |T135983:0|t[Esconjurar Morto-vivo] |cRXP_WARN_e então mate-os com|r |T135903:0|t[Exorcismo] |cRXP_WARN_5 vezes para ganhar o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_NOTA: Você deve fazer isto em inimigos que podem fornecer experiência para ganhar acúmulos|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>|cRXP_WARN_Use o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Banimento]|r |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Proficiência em Auras]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Escudo do Vingador - 25 (Montanhas Cristarrubra)
#title Escudo do Vingador
#next Modelo de Inspiração - 6 (Elwynn Forest)

step
    +|cRXP_WARN_Você deve ter pelo menos nível 25 para obter|r |T134596:0|t[Gravar Calça - Escudo do Vingador] |cRXP_WARN_em Redridge sozinho|r
    .train 410008,1
    .xp >25,1
step
    #completewith next
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .train 410008,1
step
    #label LibramS
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>Mate |cRXP_ENEMY_Dro'zem, o Blasfemo|r. Saque-o para obter o |T134419:0|t[Runa do Vingador]|r
    >>|cRXP_WARN_He has 3 spawnpoints outside: South-East (Render's Valley), Middle (Camp outside of Stonewatch Torre), and North (Render's Camp). He respawns quickly despite being a "rare"|r
    >>|cRXP_WARN_Pergunte no Bate-papo Geral se alguém o viu para reduzir seu tempo de busca (Digite /1 no bate-papo)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[Runa do Vingador] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Escudo do Vingador]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> Fly to Astranaar -> DS Turnin)
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#title Proteção Maleável
#name Proteção Maleável - 34 (Planalto Arathi)

step
    #optional
    .train 426175,1
    +|cRXP_WARN_Você deve ter pelo menos nível 34 antes de poder obter o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devoção|r]
    .xp >34,1
step
    .train 426175,1
    #completewith next
    .train 20164,1
    +|cRXP_WARN_Você deve treinar|r |T135971:0|t[Selo da Justiça] |cRXP_WARN_para obter o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devoção|r]
step
    .train 426175,1
    .train 642,1
    .train 1020,1
    +|cRXP_WARN_Você deve treinar|r |T135896:0|t[Escudo Divino] |cRXP_WARN_para obter o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devoção|r]
step
    .train 426175,1
    #optional
    .train 20164,1
    +|cRXP_WARN_Você deve treinar|r |T135971:0|t[Selo da Justiça] |cRXP_WARN_para obter o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devoção|r]
step
    .train 426175,1
    #completewith next
    .zone Arathi Highlands >>Viagem para o Planalto Arathi
step
    .train 426175,1
    #completewith BeadSoJ1
    .goto Arathi Highlands,68.8,71.8,0
    .goto Arathi Highlands,35.4,44.8,0
    +|cRXP_WARN_Trolls e Ogres no Planalto Arathi também podem soltar qualquer um dos|r |T135261:0|t[|cRXP_LOOT_Contas de Oração Manchadas|r]
step
    .train 426175,1
    #completewith Rosary
    #label BeadBoM1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Mate os |cRXP_ENEMY_Syndicate [DEPRECATED]Mercenaries|r, |cRXP_ENEMY_Syndicate Pathstalkers|r e |cRXP_ENEMY_Syndicate Highwaymen|r. Saqueie-os pela |T135261:0|t[|cRXP_LOOT_Conta de Oração Manchada I|r]
    .collect 213444,1 --Tarnished Prayer Bead I
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #requires BeadBoM1
    #label BeadBoM2
    #completewith Rosary
    +|cRXP_WARN_Lance|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_em você|r
    .aura 19740
    .aura 19834
    .aura 19835
    .aura 19836
    .aura 19837
    .aura 19838
    .aura 25291
    .aura 25782
    .aura 25916
step
    .train 426175,1
    #requires BeadBoM2
    #label BeadBoM3
    #completewith Rosary
    >>|cRXP_WARN_Continue matando inimigos para receber|r |T135260:0|t[|cRXP_LOOT_Conta de Oração Divina I|r]
    >>|cRXP_WARN_Você deve ter|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_bônus|r
    .collect 213448,1 --Divine Prayer Bead I
step
    .train 426175,1
    #completewith Rosary
    #label BeadDS1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Mate os |cRXP_ENEMY_Syndicate [DEPRECATED]Mercenaries|r, |cRXP_ENEMY_Syndicate Pathstalkers|r e |cRXP_ENEMY_Syndicate Highwaymen|r. Saqueie-os pela |T135261:0|t[|cRXP_LOOT_Conta de Oração Manchada II|r]
    .collect 213445,1 --Tarnished Prayer Bead II
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadDS1
    #label BeadDS2
    >>|cRXP_WARN_Lance|r |T135896:0|t[Escudo Divino] |cRXP_WARN_enquanto em combate e com menos de 40% de vida para receber|r |T135260:0|t[|cRXP_LOOT_Conta de Oração Divina II|r]
    .collect 213449,1 --Divine Prayer Bead II
    .usespell 642
    .usespell 1020
step
    .train 426175,1
    #completewith Rosary
    #label BeadSoJ1
    >>Mate os |cRXP_ENEMY_Syndicate [DEPRECATED]Mercenaries|r, |cRXP_ENEMY_Syndicate Pathstalkers|r e |cRXP_ENEMY_Syndicate Highwaymen|r. Saqueie-os pela |T135261:0|t[|cRXP_LOOT_Conta de Oração Manchada III|r]
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    .collect 213446,1 --Tarnished Prayer Bead III
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadSoJ1
    #label BeadSoJ2
    >>|cRXP_WARN_Lance|r |T135971:0|t[Selo da Justiça] |cRXP_WARN_seguido de|r |T135959:0|t[Julgamento] |cRXP_WARN_em um inimigo em fuga para receber|r |T135260:0|t[|cRXP_LOOT_Conta de Oração Divina III|r]
    .collect 213450,1 --Divine Prayer Bead III
    .usespell 20164
    .usespell 20271
step
    .train 426175,1
    #optional
    #requires BeadBoM3
step
    .train 426175,1
    #optional
    #requires BeadDS2
step
    .train 426175,1
    #optional
    #requires BeadSoJ2
step
    .train 426175,1
    #label Rosary
    >>|cRXP_WARN_Use a|r |T135260:0|t[|cRXP_LOOT_Conta de Oração Divina|r] |cRXP_WARN_para combiná-los em|r |T133289:0|t[|cRXP_LOOT_Rosário da Luz|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1
step
    .train 426175,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Átticus|r em Stormgarde Keep para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Devoção|r]
    .goto Arathi Highlands,26.06,55.75,20,0
    .goto Arathi Highlands,25.71,59.92,20,0
    .goto Arathi Highlands,23.69,60.52,20,0
    .goto Arathi Highlands,23.75,58.89,15,0
    .goto Arathi Highlands,27.81,58.99,15,0
    .goto Arathi Highlands,28.74,58.97,15,0
    .goto Arathi Highlands,28.71,57.37,15,0
    .goto Arathi Highlands,27.01,56.95
    .skipgossip 217387,1
    .collect 213128,1
    .target Brother Atticus
step
    .itemcount 213128,1
    .use 213128
    .train 426175 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devoção|r] |cRXP_WARN_para treinar|r |T236251:0|t[Proteção Maleável]
]])


RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Bainha de Luz - 40 (Azeroth)
#title Bainha de Luz

step
    #completewith next
    .zone Desolace >>Viaje para a Desolação
step
    .train 426178,1
    .goto Desolace,52.730,84.761
    >>Pegue o |cRXP_PICK_Broken Warhammer|r no chão para o |T133041:0|t[|cRXP_LOOT_Martelo Quebrado|r]
    .use 215441 >>|cRXP_WARN_Use o |T133041:0|t[|cRXP_LOOT_Martelo Quebrado|r] para iniciar a missão|r
    .collect 215441,1
    .accept 79939 >>Aceite O Martelo Quebrado
step
    .train 426178,1
    #loop
    .goto Desolace,52.6,85.6,0
    .goto Desolace,55.6,70.4,0
    .goto Desolace,47,2,75.2,0
    .goto Desolace,52.6,85.6,40,0
    .goto Desolace,55.6,70.4,40,0
    .goto Desolace,47,2,75.2,60,0
    >>Mate os |cRXP_ENEMY_Burning Blade Summoners|r. Saque-os para um |T133471:0|t[|cRXP_LOOT_Torn Carta|r]
    .collect 216956,1,79939,1
    .mob Burning Blade Summoner
step
    #completewith Katherine
    .zone Stormwind City >>Vá para Ventobravo
step
    #completewith Katherine
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katherine, a Pura|r
    .goto Stormwind City,37.222,31.855
    .turnin 79939 >>Entregue O Martelo Quebrado
    .accept 79940 >>Aceite Um Irmão Perdido
    .target Katherine the Pure
step
    #label Katherine
    .train 426178,1
    .goto Stormwind City,37.222,31.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katherine, a Pura|r
    .skipgossip 5492,1
    .complete 79940,1
    .turnin 79940 >>Entregue Um Irmão Perdido
    .target Katherine the Pure
step
    #completewith next
    .zone Wetlands >>Vá para Menethil Harbor
step
    .isQuestTurnedIn 79940
    .train 426178,1
    .goto Wetlands,8.086,58.592
    .gossip 3179,4 >>Fale com |cRXP_FRIENDLY_Haroldo Reis|r. Passe por todos os seus diálogos de conversa
    .skipgossip 3179,2
    .target Harold Riggs
step
    #completewith next
    .goto 1415,41.937,58.932,40 >>|cRXP_WARN_Nade para o sul, todo o caminho contornando para Dun Morogh. Você terá que matar um Élite de nível 40 em breve. Considere trazer um amigo para esta parte!|r
step
    .train 426178,1
    .goto 1415,41.937,58.932
    .gossip 217957 >>Fale com o |cRXP_FRIENDLY_Morto Cruzado Escarlate|r dentro do prédio
    >>|cRXP_WARN_Isto irá invocar um élite de nível 40|r |cRXP_ENEMY_Scarlet Cruzada Assassino|r
    .target Slain Scarlet Crusader
step
    .train 426178,1
    .goto 1415,41.937,58.932
    >>Mate o |cRXP_ENEMY_Scarlet Cruzada Assassino|r. Saque-o para o |T133471:0|t[|cRXP_LOOT_Orders from the Grand Cruzada|r]
    .use 215468 >>|cRXP_WARN_Use o |T133471:0|t[|cRXP_LOOT_Orders from the Grand Cruzada|r] para iniciar a missão|r
    .collect 215468,1,79945,1
    .accept 79945 >>Aceite Ordens da Grande Cruzada
    .mob Scarlet Cursade Assassin
step
    #completewith Katherine2
    .zone Stormwind City >>Vá para Ventobravo
step
    #completewith Katherine2
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katherine, a Pura|r
    .goto Stormwind City,37.222,31.855
    .turnin 79945 >>Entregue Ordens da Grande Cruzada
    .accept 79946 >>Aceite Um Irmão em Necessidade
    .target Katherine the Pure
step
    #label Katherine2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katherine, a Pura|r
    .goto Stormwind City,37.222,31.855
    .skipgossip 5492,3
    .complete 79946,1 --Learn more about Aeonas from Katherine
    .target Katherine the Pure
step
    .train 426178,1
    >>|cRXP_WARN_Você agora tem que entrar em Monastério Escarlate e completar uma execução completa da Catedral|r
    >>Após matar |cRXP_ENEMY_Mograine|r e |cRXP_ENEMY_Whitemane|r, fale com |cRXP_FRIENDLY_[[Aeonas] <[Former Paladin of the Silver Hand]>] <[Former Paladin of the Silver Hand]>|r na sala de trás
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>Entregue A Brother in Need
    .accept 79963 >>Aceite Pela Graça da Luz
    .target Aeonas
step
    .train 426178,1
    >>Cure |cRXP_FRIENDLY_Aenoas|r até 100% de vida
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse |cRXP_FRIENDLY_[[Aeonas] <[Former Paladin of the Silver Hand]>] <[Former Paladin of the Silver Hand]>|r
    .turnin 79963 >>Entregue Pela Graça da Luz
    .accept 79970 >>Aceite [Aeonas] <[Former Paladin of the Silver Hand]>, o Justiçado
    .target Aeonas
step
    #completewith Aeonas
    .zone Stormwind City >>Vá para Ventobravo
step
    #completewith Aeonas
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step
    #label Aeonas
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeonas, o Justiçado|r
    .turnin 79970 >>Entregue [Aeonas] <[Former Paladin of the Silver Hand]>, o Justiçado
    .train 426178 >>Aprenda |T236263:0|t[Bainha de Luz]
    .target Aeonas the Vindicated
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Protegido pela Luz - 30 (Alterac Mountains)
#title Protegido pela Luz

step
    #optional
    .train 416035,1
    +|cRXP_WARN_Você deve estar no mínimo no nível 30 antes de adquirir|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Guardião|r]
    .xp >30,1
step
    .train 416035,1
    .train 19752 >>|cRXP_WARN_Você deve treinar|r |T136106:0|t[Intervenção Divina] |cRXP_WARN_para adquirir|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Guardião|r]
step
    .train 416035,1
    .collect 17033,1 >>|cRXP_BUY_Compre pelo menos um|r |T135259:0|t[Symbol of Divindade] |cRXP_BUY_de qualquer Reagent Comerciante|r
step
    .train 416035,1
    #completewith FriendRequired
    +|cRXP_WARN_Certifique-se de levar um |cFFFFFFFFSacerdote|r, |cFFF58CBAPaladino|r ou |cFFFF7D0ADruida|r amigo para os próximos passos! Esta próxima parte não pode ser completada sozinho, pois alguém precisa ressuscitá-lo!|r
    .subzoneskip 281
step
    .train 416035,1
    .goto Alterac Mountains,39.675,60.675
    .zone Alterac Mountains >>Viagem para Alterac Mountains
    .itemcount 213452,<1
step
    .train 416035,1
    #label FriendRequired
    >>Clique no |cRXP_PICK_Frozen Remains|r no chão. Saque-o para o |cRXP_LOOT_Dormant Runa Sagrada|r
    .goto Alterac Mountains,39.675,60.675
    .collect 213452,1
step
    .train 416035,1
    .cast 19752 >>|cRXP_WARN_Lance|r |T136106:0|t[Intervenção Divina] |cRXP_WARN_sobre o amigo que o acompanhou|r
    .usespell 19752
step
    .train 416035,1
    >>|cRXP_WARN_Peça ao amigo para remover o buff de|r |T136106:0|t[Intervenção Divina] |cRXP_WARN_e o ressuscite|r
    >>|cRXP_WARN_Você receberá|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Guardião|r]
    .collect 213132,1
step
    .use 213132
    .itemcount 213132,1
    .train 416035 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Guardião|r] |cRXP_WARN_para treinar|r |T237537:0|t[Protegido pela Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Escudo Sagrado - 30 (Desolação)
#title Escudo Sagrado

step
    #optional
    .train 416028,1
    +|cRXP_WARN_Você deve ter pelo menos nível 18 antes de poder adquirir o|r |T236249:0|t[Escudo Sagrado] |cRXP_WARN_encantamento|r
    .xp >18,1
step
    .train 416028,1
    .train 1044 >>|cRXP_WARN_Você deve treinar|r |T135968:0|t[Bênção da Liberdade] |cRXP_WARN_para adquirir o|r |T236249:0|t[Escudo Sagrado] |cRXP_WARN_encantamento|r
step
    .train 416028,1
    #completewith Deliverance
    +|cRXP_WARN_Certifique-se de levar um amigo para os próximos passos! Esta próxima parte não pode ser completada solo!|r
step
    .train 416028,1
    #completewith next
    .zone Desolace >>Viaje para a Desolação
step
    .train 416028,1
    #label Deliverance
    .goto Desolace,66.532,7.531
    >>Pegue o |T134916:0|t[|cRXP_FRIENDLY_Incunábulo da Libertação|r] na mesa
    .collect 213513,1
step
    .train 416028,1
    .equip 18,213513 >>|cRXP_WARN_Equipe o|r |T134916:0|t[|cRXP_FRIENDLY_Incunábulo da Libertação|r]
    .use 213513
step
    .train 416028,1
    .goto Desolace,38.21,61.02,50,0
    .goto Desolace,36.44,60.52,60,0
    .goto Desolace,33.44,54.17,60,0
    .goto Desolace,30.33,58.26,60,0
    .goto Desolace,31.79,61.28
    .aura 408828 >>|cRXP_WARN_Lance|r |T135968:0|t[Bênção da Liberdade] |cRXP_WARN_em outro jogador 5 vezes enquanto seu movimento está prejudicado. Você ganhará uma camada de|r |T237556:0|t[Inspiração para Construir] |cRXP_WARN_cada vez que você fizer isso|r
    >>|cRXP_WARN_Quando você tiver 5 camadas de|r |T237556:0|t[Inspiração para Construir]|cRXP_WARN_, você receberá|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito|r
    >>|cRXP_WARN_Complete isto apenas fora de Maraudon. Os|r |cRXP_ENEMY_Maraudine Wranglers|r |cRXP_WARN_lá lançam|r |T132149:0|t[Rede]
    .mob Maraudine Wrangler
step
    .use 213513
    .train 416028 >>|cRXP_WARN_Use o|r |T134916:0|t[|cRXP_FRIENDLY_Incunábulo da Libertação|r] |cRXP_WARN_para treinar|r |T236249:0|t[Escudo Sagrado]
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Hammer of Wrath
-- for phase 3

-- Improved Hammer of Wrath


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Purifying Power
-- for phase 3

-- Purifying Power


-- ]])
RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Fanatismo - 44 (Azeroth)

step
    #optional
    .train 426178 >>|cRXP_WARN_Você deve aprender a runa para|r |T236263:0|t[Bainha de Luz] |cRXP_WARN_primeiro antes de poder obter este|r
    .train 429251,1
step
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 429251,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeonas, o Justiçado|r
    .goto Stormwind City,37.355,31.708
    .accept 81762 >>Aceite Boas Novas
    .target Aeonas the Vindicated
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katherine, a Pura|r
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Entregue Boas Novas
    .accept 81764 >>Aceite O Mercador Misterioso
    .target Katherine the Pure
step
    #completewith next
    .zone Dustwallow Marsh >>Viaje para Pântano Vadeoso/Theramore Isles |cRXP_WARN_(p.ex. pegue o barco de Menethil Harbor para Theramore)|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elrick|r dentro da estalagem
    *|cRXP_WARN_Dois inimigos nível 45 atacarão você após aceitar a missão|r
    .goto Dustwallow Marsh,66.52,45.41
    .turnin 81764 >>Entregue O Mercador Misterioso
    .accept 81765 >>Aceite Elric, Paladino do Punho de Prata
    .target Elrick
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elrick|r
    .goto Dustwallow Marsh,66.52,45.41
    .gossip 221575,5
    .skipgossip 221575,1
    .train 429251,1
step
    .train 429251,1
    >>Abate |cRXP_ENEMY_Elrick|r. Saqueie-o pelo |T133471:0|t[|cRXP_LOOT_Bloody Missive|r]
    >>|cRXP_WARN_Use o|r |T133471:0|t[|cRXP_LOOT_Bloody Missive|r] |cRXP_WARN_para obter a missão|r
    .goto Dustwallow Marsh,66.52,45.41
    .collect 219930,1,81766,1
    .accept 81766 >>Aceite Missiva Sangrenta
    .use 219930
    .skipgossip 221575,1
    .target Elrick
step
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katherine, a Pura|r |cRXP_WARN_para treinar|r |T135905:0|t[Fanatismo]
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Entregue Missiva Sangrenta
    .target Katherine the Pure
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#name Graça da Luz - 40 (Feralas)

step
    #optional
    .train 5599 >>|cRXP_WARN_Você deve ter|r |T135964:0|t[Bênção de Proteção] |cRXP_WARN_treinado para obter a|r |T135931:0|t[Graça da Luz] |cRXP_WARN_runa|r
step
    #optional
    #completewith TeleporterTaken
    .isQuestTurnedIn 79984
    .goto Stranglethorn Vale,27.6,77.4,8 >>Usar o Teleportador para Feralas em Booty Bay
    .train 429242,1
step
    #optional
    .isQuestAvailable 79984
    #completewith TeleporterTaken
    .zone Feralas >>Viaje para Feralas
    .goto Feralas,85.27,43.66,8 >>Usar o |cRXP_PICK_Mundiportador do Maragiro|r
    .train 429242,1
step
    #label TeleporterTaken
    .goto Feralas,84.26,43.81,10 >>Alcance a plataforma
    .train 429242,1
step
    .train 429242,1
    >>1) |cRXP_WARN_Defina a facção Gadgetzan para 'Em Guerra' na sua janela de Reputação|r
    >>2) Vá para a posição exata do ponto de passagem
    >>3) Olhe para o arbusto verde ao lado da casa de madeira
    .goto Feralas,83.93,43.89
    .goto Feralas,85.27,43.66,0
    .aura 436534,1 >>4) |cRXP_WARN_Espere o |cRXP_ENEMY_Autômato de Defesa da Torre|r ficar exatamente entre você e o arbusto e atacá-lo|r
    .mob Tower Defense Automaton
step
    .train 429242,1
    >>|cRXP_WARN_Cure |cRXP_FRIENDLY_Frix Xizzix|r |cRXP_WARN_até que ele se levante|r.
    .gossip 220930,1 >>Depois fale com |cRXP_FRIENDLY_Frix Xizzix|r
    .skipgossip 220930,1
    .goto Feralas,81.45,42.46
    .target Frix Xizzix
step
    #completewith next
    .zone Stranglethorn Vale >>Vá para Stranglethorn Vale / Booty Bay
    .train 429242,1
step
    .train 429242,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rix Xizzix <Achados e Perdidos>|r e compre o |T134419:0|t[|cRXP_FRIENDLY_Runa da Graça|r]
    .goto Stranglethorn Vale,28.4,75.8
    .collect 219147,1
    .target Rix Xizzix
step
    .itemcount 219147,1
    .use 219147
    .train 429242 >>|cRXP_WARN_Usar o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Graça|r] |cRXP_WARN_para treinar|r |T236249:0|t[Escudo Sagrado]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Ira - 43 (Terras Agrestes)

-- Wrath

step
    #optional
    .train 5502 >>|cRXP_WARN_Você deve ter|r |T135974:0|t[Detectar Morto-vivo] |cRXP_WARN_treinado para obter a|r |T236260:0|t[Ira] |cRXP_WARN_runa|r
    .train 429249,1
step
    #completewith RuneLearned
    +|cRXP_WARN_Você só pode obter a|r |T236260:0|t[Ira] |cRXP_WARN_runa entre 21h e 6h.|r
step
    #completewith next
    .zone The Hinterlands >>Vá para Terras Agrestes
    .train 429249,1
step
    .train 429249,1
    >>|cRXP_WARN_Use|r |T135974:0|t[Detectar Morto-vivo] |cRXP_WARN_para poder ver o|r |cRXP_ENEMY_Espírito Vingativo|r
    >>Abate o |cRXP_ENEMY_Espírito Vingativo|r. Saqueie-o para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa da Ira|r]
    *O |cRXP_ENEMY_Espírito Vingativo|r caminha ao redor do lago
    .goto The Hinterlands,33.0,44.2
    .collect 220165,1
    .mob Vengeful Spirit
step
    #label RuneLearned
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_Usar o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Ira|r] |cRXP_WARN_para treinar|r |T236260:0|t[Ira]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#name Martelo do Íntegro - 50 (Azeroth)

--x shiek: needs better coordinates
step
    #optional
    .train 410013 >>|cRXP_WARN_Você deve aprender a runa de|r |T236253:0|t[Martelo do Íntegro] |cRXP_WARN_primeiro antes de poder obter esta|r
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Voe para Selva Maleva
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    .gossip 217996,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeonas, o Justiçado|r
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    .gossip 221636,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Gregory] <[Truthbearer]>] <[Truthbearer]>|r
    .target Gregory
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Gregory] <[Truthbearer]>] <[Truthbearer]>|r
    .accept 81790,1 >>Aceite Material Significativo
    .target Gregory
    .train 410013,1
step
    #loop
    .goto Felwood,44.4,46.8,40,0
    .goto Felwood,40.0,43.6,40,0
    .goto Felwood,41.8,34.8,40,0
    .goto Felwood,48.0,38.8,40,0
    >>Abate |cRXP_ENEMY_Sentinela Infernal|r, |cRXP_ENEMY_Guarda-costas Infernal|r, |cRXP_ENEMY_Fera Entrópica|r e |cRXP_ENEMY_Horror Entrópico|r. Saqueie-os para obter o |cRXP_LOOT_|T136030:0|tNúcleo Infernal Ígneo|r
    .complete 81790,1 --3/3 Fiery Infernal Core
    .mob Infernal Sentry
    .mob Infernal Bodyguard
    .mob Entropic Beast
    .mob Entropic Horror
step
    #completewith next
    #title Maraudon
    .zone Desolace >>Vá para Maraudon
    .goto Desolace,30,62,20
    .train 410013,1
step
    >>|cRXP_WARN_É recomendado formar um grupo de 5 jogadores.|r
    >>Abate |cRXP_ENEMY_Princess Theradras.|r, a chefe final de Maraudon. Saqueie-a para obter o |cRXP_LOOT_|T134389:0|tShimmering Grave Poeira.|r
    .complete 81790,2 --1/1 Shimmering Grave Dust
    .mob Princess Theradras
    .train 410013,1
step << Alliance
    #completewith next
    #title Abismo Rocha Negra
    .zone Searing Gorge >>Voe para Abismo Rocha Negra
    .goto 1415,48.09,62.42,20
    .train 410013,1
step << Alliance
    >>|cRXP_WARN_É recomendado formar um grupo de 5 jogadores e você precisará de 3 ouro.|r
    >>Percorra Abismo Rocha Negra até chegar ao Bar do Goela Borracha. |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Birra Guardachave|r e compre |T135262:0|t[Triple-Brewed Derretido Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step << Alliance
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes
    .train 410013,1
step << Alliance
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bravo Litolume|r
    .target Brave Stonetorch
    .accept 81944,1 >>Aceite Um Propósito Recém-Descoberto
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes
    .train 410013,1
step << Horde
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bravo Litolume|r
    .target Brave Stonetorch
    .accept 81944,1 >>Aceite Um Propósito Recém-Descoberto
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Searing Gorge >>Vá para Garganta Abrasadora
    .train 410013,1
step << Horde
    >>|cRXP_WARN_É recomendado formar um grupo de 5 jogadores e você precisará de 3 ouro.|r
    >>Percorra Abismo Rocha Negra até chegar ao Bar do Goela Borracha. |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Birra Guardachave|r e compre |T135262:0|t[Triple-Brewed Derretido Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Voe para Selva Maleva
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Gregory] <[Truthbearer]>] <[Truthbearer]>|r
    .turnin 81790 >>Aceite Material Significativo
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeonas, o Justiçado|r
    .accept 81885,1 >>Aceite O Ritual
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Gregory] <[Truthbearer]>] <[Truthbearer]>|r
    .complete 81885,1 --1/1 Complete the Ritual
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeonas, o Justiçado|r
    .turnin 81885 >>Entregue O Ritual
    .target Aeonas the Vindicated
    .train 410013,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Escudo de Retidão - 60 (Terras Pestilentas Orientais)

--There wasn't very precise info for this available, might need confirmation if it works properly

step
    #completewith next
    >>|cRXP_WARN_Destrancando esta runa exigirá matar um chefe em Stratholme (não-mortos). Comece a procurar por um grupo para isso se desejar|r
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step
    .line Eastern Plaguelands,28.6,84.2,33.2,83.0,35.30,82.55,41.19,81.68,45.42,80.68,48.8,79.9,51.5,78.3,55.1,76.4
    >>Procure por um |cRXP_ENEMY_Carniçal de Queixo Caído|r. Mate-o e |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orthas|r um espírito anão que aparecerá. Aceite sua missão
    >>|cRXP_WARN_O|r |cRXP_ENEMY_Carniçal de Queixo Caído <Carniçal com Tamanho de Anão>|r |cRXP_WARN_patrulha a área ao sul da estrada entre Undercroft e Corrin's Crossing|r
    .accept 84318 >>Aceite Bah!
    .unitscan Slack-Jawed Ghoul
    .target Orthas
step
    .goto Eastern Plaguelands,61.3,69.3 --Not sure if this is the house or the other one, need more info
    >>Entre na casa em Corrin's Crossing. Saque o |T133040:0|t[|cRXP_PICK_Ornate Warhammer|r] |cRXP_WARN_no segundo andar|r
    .complete 84318,1
step
    .goto Eastern Plaguelands,61.3,69.3
    >>Usar |T134566:0|t[[Orthas] <[Dwarven Spirit]>' Favourite Ouro Tooth] para invocar |cRXP_FRIENDLY_[[Orthas] <[Dwarven Spirit]>] <[Dwarven Spirit]>|r novamente. Fale com ele para entregar a missão e obter a continuação
    .turnin 84318 >>Entregue Bah!
    .accept 84319 >>Aceite Oh No Ye Don't
    .use 227687
step
    .goto Eastern Plaguelands,59.7,68.7
    >>Mate qualquer |cRXP_ENEMY_Horror Remendado|r e saqueie |T133823:0|t[|cRXP_LOOT_Partially-Digested Plate Armadura|r]
    .complete 84319,1
    .mob Stitched Horror
step
    >>Usar |T134566:0|t[[Orthas] <[Dwarven Spirit]>' Favourite Ouro Tooth] para invocar |cRXP_FRIENDLY_[[Orthas] <[Dwarven Spirit]>] <[Dwarven Spirit]>|r novamente. Fale com ele para entregar a missão e obter a continuação
    .turnin 84319 >>Entregue Oh No Ye Don't
    .accept 84330 >>Aceite Um Tiquinho de Necromancia
step
    >>Procure um grupo para Stratholme (não-mortos)
    >>Mate |cRXP_ENEMY_Malaki, o Pálido|r, um dos chefes no lado não-morto da masmorra e saqueie |T134415:0|t[Necrotic Pedra Rúnica]
    .complete 84330,1 --Necrotic Runestone
    .mob Maleki the Pallid
step
    .goto Eastern Plaguelands,22.7,86.1
    >>Volte para o Cemitério, procure o |cRXP_FRIENDLY_Cadáver Anão em Decomposição|r. Interaja com ele para entregar a missão
    .turnin 84330 >>Entregue Um Tiquinho de Necromancia
step
    >>Aceite a missão de continuação do cadáver. É uma entrega instantânea que ensinará como gravar |T236265:0|t[|cRXP_FRIENDLY_Escudo de Retidão|r]
    .goto Eastern Plaguelands,22.7,86.1
    .accept 84332 >>Aceite A Gratidão de Thane
    .turnin 84332 >>Entregue A Gratidão de Thane

]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Vingança Íntegra - 55 (Terras Pestilentas Ocidentais)
#title Vingança Íntegra
#next Choque e Admiração - 55 (Ocidental e Terras Pestilentas Orientais)

step
    #completewith next
    .zone Western Plaguelands >>Vá para as Terras Pestilentas Ocidentais
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cavaleira Caída|r
    .gossip 227519,1 >>Siga seu diálogo
    .target Fallen Knight
--Not entirely sure if you even need to talk to him or if you do how deep the dialogue is
step
    .goto Western Plaguelands,47.5,50.4
    >>Entre no celeiro ao lado da |cRXP_FRIENDLY_Cavaleira Caída|r e |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escudeiro Cuteberto|r
    .accept 83808 >>Aceite As correntes do coração
    .target Squire Cuthbert
step
    .goto Western Plaguelands,47.5,50.4
    .goto Western Plaguelands,45.7,53.9
    >>Saque [|cRXP_PICK_Espada de Escudeiro Cuteberto|r] deitada no chão próximo
    .complete 83808,1
step
    >>Volte para o celeiro e |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escudeiro Cuteberto|r
    .turnin 83808 >>Entregue As correntes do coração
    .accept 83935 >>Aceite Abrindo o caminho
    .target Squire Cuthbert
step
    .goto Western Plaguelands,45.7,53.9
    >>Mate os |cRXP_ENEMY_Zumbis pestilentos|r, os |cRXP_ENEMY_Terrores descarnados|r e os |cRXP_ENEMY_Cadáveres infetos|r
    .complete 83935,1 --Blighted Zombie(5)
    .complete 83935,2 --Skeletal Terror(10)
    .complete 83935,3 --Rotting Cadaver(10)
    .mob Blighted Zombie
    .mob Skeletal Terror
    .mob Rotting Cadaver
step
    .goto Western Plaguelands,47.5,50.4
    >>Volte para o celeiro e |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escudeiro Cuteberto|r
    .turnin 83935 >>Entregue Abrindo o caminho
    .accept 83822,1 >>Aceite O cavaleiro tombado
    >>|cRXP_WARN_isto é uma missão de escolta|r
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>Escorte o |cRXP_FRIENDLY_Escudeiro Cuteberto|r de volta para a Cavaleira Caída e ajude-o a queimar o cadáver
    .complete 83822,1
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escudeiro Cuteberto|r
    .turnin 83822 >>Entregue O cavaleiro tombado
    .accept 83936 >>Aceite A missão de Dalton
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escudeiro Cuteberto|r e complete seu diálogo
    .complete 83936,1
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escudeiro Cuteberto|r e complete seu diálogo. Ao completar esta missão, você aprenderá a inscrever |T236260:0|t[|cRXP_FRIENDLY_Vingança Íntegra|r]
    >>Você também receberá |T237377:0|t[|cFF0070FFDalton's Chifre|r] que você precisará para desbloquear a runa de |T252188:0|t[|cRXP_FRIENDLY_Choque e Admiração|r]
    .turnin 83936 >>Entregue A missão de Dalton
    .target Squire Cuthbert
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Choque e Admiração - 60 (Terras Pestilentas Ocidentais e Orientais)
#title Choque e Admiração & Ira Vingativa

step
    #completewith next
    +|cRXP_WARN_Para começar a missão para essa runa você precisará ter desbloqueado a runa de|r |T236260:0|t[|cRXP_FRIENDLY_Righteous Vingança|r]. |cRXP_WARN_Vá para o guia Vingança Íntegra para começar|r
    .train 440792,1 --Righteous Vengeance
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Use o|r |T237377:0|t[|cFF0070FFDalton's Chifre|r] |cRXP_WARN_para invocar|r |cRXP_FRIENDLY_Escudeiro Cuteberto|r |cRXP_WARN_e mate inimigos até que ele suba de nível. Quando isso acontecer, ele lhe dará uma missão gratuita de entrega|r
    .accept 83823 >>Aceite Lesson in Violence
    .turnin 83823 >>Entregue Lesson in Violence
    .use 226122
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Use o|r |T237377:0|t[|cFF0070FFDalton's Chifre|r] |cRXP_WARN_para invocar|r |cRXP_FRIENDLY_Escudeiro Cuteberto|r |cRXP_WARN_e continue matando inimigos até que ele suba de nível novamente. Quando isso acontecer, ele lhe dará outra missão gratuita de entrega e outra missão para encontrar um lich chamado|r |cRXP_ENEMY_Arkonos the Amaldiçoado|r
    .accept 84008 >>Aceite Lesson in Graça
    .turnin 84008 >>Entregue Lesson in Graça
    .accept 84017 >>Aceite Hora de matar
    .use 226523
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Vá para o Noxious Glade, uma área apenas ao norte da capela Esperança da Luz. Quando você chegar lá, convoque seu escudeiro novamente. A missão para encontrar Arkonos deve ser completada e você receberá outra missão, aceite-a|r
    .turnin 84017 >>Entregue Hora de matar
    .accept 84125 >>Aceite Ao alcance da mão
    .use 226545
step
    .goto Eastern Plaguelands,83.7,41.9
    >>Abate |cRXP_ENEMY_Shadowmages|r e |cRXP_ENEMY_Dread Weavers|r no Noxious Glade. Saqueie-os para |T135482:0|t[|cRXP_LOOT_Scourge Sombra Scalpel|r]
    .complete 84125,1
    .mob Shadowmage
    .mob Dread Weaver
step
    >>Usar o |T237377:0|t[|cFF0070FFDalton's Chifre|r] para convocar |cRXP_FRIENDLY_Escolta Escudeiro Cuteberto|r se você o perdeu. Fale com ele
    .turnin 84125 >>Entregue Ao alcance da mão
    .accept 84126 >>Aceite Encerre a luta
    .use 226122
    .target Squire Cuthbert
step
    .goto Eastern Plaguelands,86.6,39.8
    >>Usar o |T237490:0|t[|cRXP_LOOT_Modified Sombra Scalpel|r] que você recebeu para dissipar o escudo de |cRXP_ENEMY_Arkonos's|r. Abate-o para completar a missão
    .complete 84126,1 --Arkonos the cursed slain
    .use 227685
step
    >>Usar o |T237377:0|t[|cFF0070FFDalton's Chifre|r] para convocar |cRXP_FRIENDLY_Escolta Escudeiro Cuteberto|r se você o perdeu. Fale com ele
    >>Completar esta missão vai treiná-lo em como gravar |T252188:0|t[Choque e Admiração] e também dar-lhe |T133745:0|t[|cRXP_FRIENDLY_Testament of Ira Vingativa|r] que vai ensiná-lo |T135875:0|t[Ira Vingativa]
    .turnin 84126 >>Entregue Encerre a luta
    .use 226122
    .target Squire Cuthbert
step
    .train 407788 >>Usar o |T133745:0|t[|cRXP_FRIENDLY_Testament of Ira Vingativa|r] para treinar |T135875:0|t[Ira Vingativa]
    .use 226399
]])
