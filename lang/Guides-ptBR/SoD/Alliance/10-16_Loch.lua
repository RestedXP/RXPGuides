if GetLocale() ~= "ptBR" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 12-13 Dun Morogh SoD
#displayname 12-13 Dun Morogh
#next 13-16 Loch Modan SoD
#defaultfor !NightElf

step << Warrior
    #season 2
    >>|cRXP_WARN_Procure|r |cRXP_FRIENDLY_Espadachim Errante|r. |cRXP_WARN_Ele pode estar em qualquer lugar na pequena área marcada no seu mapa|r
    >>Encontre-o e desafie-o para um duelo. Após derrotá-lo um pequeno baú aparecerá que lhe dará a runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    .goto Dun Morogh,52.6,45.0
    .goto Dun Morogh,52.4,47.4,0
    .goto Dun Morogh,52.6,48.8,0
    .goto Dun Morogh,53.6,47.6,0
    .goto Dun Morogh,53.0,46.2,0
    .goto Dun Morogh,55.0,46.6,0
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    #optional
    #completewith next
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frenesi de Sangue|r] |cRXP_WARN_to train|r |T136012:0|t[Frenesi de Sangue]
    .use 204441
    .itemcount 204441,1
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Suba pelo caminho de terra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r para baixo até|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_Clique aqui se você está com dificuldade|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step << Warrior/Mage
    #season 2
    #sticky
    #optional
    #label rune1
    >>Mate |cRXP_ENEMY_Ragash|r. Saque a |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r << Warrior
    >>Abate |cRXP_ENEMY_Ragash|r. Saque dele a |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: COLESDI DASGAI]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mate |cRXP_ENEMY_Ragash|r. Saque-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Atraia-o até o guarda ao sul do rancho. Certifique-se de fazer mais de 51% de dano|r
    >>|cRXP_WARN_Vigiar o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser feito solo em qualquer classe|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Warrior
    #season 2
    #optional
    #requires rune1
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_para treinar|r |T136048:0|t[Trovão Furioso]
    .use 204809
    .itemcount 204809,1
step << Mage
    #optional
    #season 2
    #requires rune1
    #completewith GolBolarQuarry
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Use a|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_para treinar|r |T236227:0|t[Dedos Glaciais]
    .use 203753
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >>Viaje para Gol'Bolar Pedreira
    .subzoneskip 134
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >>|cRXP_BUY_Compre até 10|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se necessário|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_Compre até 5|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step << Human Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dank Chuviscorte|r
    .goto Dun Morogh,69.3,55.5
    .train 2581 >>Treine Mineração, Lance Localizar Minérios
    .target Dank Drizzlecut
    .skill mining,1
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
    .xp >12,1,QuarryEnd
step << !Human Rogue
    #season 2
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Pedraqueixo Skullthumpers|r e os |cRXP_ENEMY_Pedraqueixo Bonesnappers|r. Saque-os para o |T134327:0|t[|cRXP_LOOT_Top-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os pelo |T134331:0|t[Blackrat's Nota] e pelo |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os pelo |T134331:0|t[Blackrat's Nota]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Escuridão Ferro Spies|r. Saque-os para o |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step <<< !Human Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Use qualquer uma das|r |T134327:0|t[|cRXP_LOOT_Map Pieces|r |cRXP_WARN_para combiná-las em um|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Mapa do Tesouro|r]
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << !Human Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Mapa do Tesouro|r] |cRXP_WARN_embaixo da pequena ponte. Um |cRXP_PICK_Enterrado Tesouro|r aparecerá|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    >>Abra o |cRXP_PICK_Tesouro Enterrado|r. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << !Human Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Fale com |cRXP_FRIENDLY_Blackrat|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << !Human Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
step << Dwarf Paladin
    #sticky
    #label PalaCloth
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Abate os |cRXP_ENEMY_Pedraqueixo Skullthumpers|r e os |cRXP_ENEMY_Pedraqueixo Bonesnappers|r. Saque-os para o |T132889:0|t[Linho] << Dwarf Paladin
    >>|cRXP_WARN_Guarde o|r |T132889:0|t[Linho] |cRXP_WARN_para uma missão mais tarde|r << Dwarf Paladin
    .collect 2589,10,1648,1 --Linen Cloth (10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Mate os |cRXP_ENEMY_Rockjaw Skullthumpers|r dentro ou fora da mina
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Entre em Gol'Bolar Pedreira Mina
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Mate os |cRXP_ENEMY_Rockjaw Bonesnappers|r dentro da mina
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step << Mage
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Procure outros Mages ou Warlocks perto do |cRXP_ENEMY_Trogg Congelado|r ou no Geral (Digite /1 no chat). Você ainda pode fazer isto sozinho se ninguém estiver lá|r
    >>|cRXP_WARN_Lançe|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_em |cRXP_ENEMY_Trogg Congelado|r para aplicar um acúmulo de|r |T135805:0|t[Aplicando Calor]|cRXP_WARN_. Aplique 5 acúmulos de uma vez juntos para matar o |cRXP_ENEMY_Trogg Congelado|r. Saque-o para obter|r |T134939:0|t|cRXP_FRIENDLY_[Feitiço Notes: Combustão]|r
    >>|cRXP_WARN_Se não houver ninguém para ajudá-lo, caminhe até o alcance de combate corpo a corpo do Trogg e use|r |T135820:0|t[Chama Viva] |cRXP_WARN_nele. Permaneça no alcance de combate corpo a corpo para se manter em combate e continue usando|r |T135820:0|t[Chama Viva] |cRXP_WARN_quando disponível. Ele matará o Trogg após 5-6 lançamentos.|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step << Mage
    .train 401759 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Combustão]|r |cRXP_WARN_para aprender|r |T132686:0|t[Gravar Peitoral - Combustão]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
step << Dwarf Paladin
    #optional
    #label RockjawEnd
    #requires PalaCloth
step
    #label RockjawEnd << !Paladin
    #requires Skullthumpers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    #optional
    #completewith next
    #label QuarryEnd
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >>Viaje para o |cRXP_FRIENDLY_Piloto Pisafundo|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Clique no |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step << Warrior/Mage
    #season 2
    #optional
    #completewith next
    >>Abate o |cRXP_ENEMY_Ronhagarra|r. Saque-o para o |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r << Warrior
    >>Abate o |cRXP_ENEMY_Ronhagarra|r. Saque-o para o |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: COLESDI DASGAI]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto Dun Morogh,78.97,37.14
    >>Mate o |cRXP_ENEMY_Ronhagarra|r. Saqueie-o pela |cRXP_LOOT_Mangy Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_para treinar|r |T136048:0|t[Trovão Furioso]
    .use 204809
    .itemcount 204809,1
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Use a|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_para treinar|r |T236227:0|t[Dedos Glaciais]
    .use 203753
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    >>|cRXP_WARN_Escolha o|r |T135641:0|t[Adaga do Artífice]|cRXP_WARN_. Guarde para depois|r << Rogue
    .turnin 417 >>Entregue A Vingança do Piloto << !Rogue
    .turnin 417,1 >>Entregue A Vingança do Piloto << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    >>|cRXP_WARN_Escolha a|r |T135641:0|t[Adaga do Artífice]
    .turnin 417,1 >>Entregue A Vingança do Piloto
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_Equipe a|r |T135641:0|t[Adaga do Artífice] |cRXP_WARN_na sua mão principal|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #label enterloch
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>Passe pelo túnel para Loch Modan
    .zoneskip Loch Modan
step
    #optional
    #completewith lochstart1
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>Guarde qualquer |cRXP_LOOT_Crisp Aranha Carne|r que você encontrar para uma missão depois
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarde qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_para usar para subir de nível|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Procure por |cRXP_FRIENDLY_Greishan Fornoferro|r patrulhando na estrada em Loch Modan. O caminho de sua patrulha é marcado no seu mapa|r
    >>|cRXP_BUY_Compre uma|r |T237359:0|t[Torta Malevolente] |cRXP_BUY_dele|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Use o|r |T237359:0|t[Torta Malevolente] |cRXP_WARN_para comê-la. Uma vez que o|r |T132108:0|t[Indigestão Infernal] |cRXP_WARN_debuff expire, você receberá o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Canalizando|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para treinar|r |T136168:0|t[Mestre Canalizador]
    .use 208750
    .itemcount 208750,1
step << Dwarf Paladin
    .xp 12
step
    #label lochstart1
    #optional
    .goto 1432,34.405,48.276
    .subzone 144 >>Vá para Thelsamar
step
    #completewith lochpatrol3
    .abandon 1338 >>Se você ainda tiver a missão |cRXP_FRIENDLY_Stormpike's Task|r, abandone-a; caso contrário, você não conseguirá aceitar uma missão depois
step
    #label lochpatrol1
    #completewith lochpatrol2
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
    .subzoneskip 2101
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r dentro
    .accept 418 >>Aceite Chouriço de Thelsamar
    .target Vidra Hearthstove
step << Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r dentro
    .vendor >>|cRXP_BUY_Venda itens do comerciante, compre até quatro|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_se você ainda precisar|r
    .target Yanni Stoutheart
step << Dwarf/Gnome
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r lá dentro
    .home >>Defina sua Pedra de Retorno em Thelsamar
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
step
    #optional
    #label lochpatrol2
step
    #label lochpatrol3
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell

step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
    .target Thorgrum Borrelson
step << Hunter
    #sticky
	.goto Loch Modan,33.9,54.0
    .goto Loch Modan,36.6,53.2,0
    .goto Loch Modan,30.0,53.5,0
    .train 172551 >>Dome a Tocaieira da Floresta
    >>|cRXP_WARN_É o pet com maior DPS facilmente disponível para caçadores anões, você eventualmente o substituirá por um raptor do Pantanal|r
    .unitscan Forest Lurker
step << Human
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >>Aprenda a rota de voo para Thelsamar
step << Dwarf/Gnome
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Priest Dwarf
    #season 2
    #completewith end
    .train 402852 >>|cRXP_WARN_Use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    >>|cRXP_WARN_Você deve ter 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs digitando /pray próximo a um Altar de Luz na Catedral de Ventobravo, em Loch Modan ou o Bairro Místico em Ironforge|r
    >>|cRXP_WARN_O |T136057:0|t|cRXP_PICK_Meditação de Eluna|r bônus tem que vir de outro jogador sacerdote, usando a emote /pray em você enquanto você está ajoelhado com /kneel, se você vir outro sacerdote com outro bônus de meditação, peça-lhe|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Rogue !Human
    #optional
    #completewith next
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Voe para |cRXP_FRIENDLY_Hulfdan Barbanegra|r lá dentro, no andar de baixo
step << Rogue !Human
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2218 >>Entregue Road to Salvação
    .target Hulfdan Blackbeard
step << Rogue !Human
    #season 2
    .goto Ironforge,51.913,13.383
    >>Abra o |cRXP_PICK_Baú Popó|r fora. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    >>|cRXP_WARN_Fazer isso irá invocar dois |cRXP_ENEMY_Cut-throat Muggers|r de nível 10 que irão atacá-lo|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
    .zoneskip Ironforge,1
step << Rogue !Human
    #season 2
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
---------pt1
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Viaje para o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
step << Dwarf/Gnome
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .turnin 291 >>Entregue Os Relatórios
    .target Senator Barin Redstone
step << !Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre uma|r |135640:0|t[Jambiya] |cRXP_BUY_dela|r
    .collect 2207,1 --Jambiya
    .target Brenwyn Wintersteel
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.0
step << Dwarf/Gnome
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Golnir Topadão|r dentro
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
    .target Golnir Bouldertoe
step << Dwarf/Gnome
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    >>|cRXP_WARN_Não voe para lugar nenhum|r
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retornar com Brock
    .target Gryth Thurden
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,24.2,6.8,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .accept 2999 >>Aceite Tomo de Divindade
    .trainer >>Treine suas magias de classe
    .target Brandur Ironhammer
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>Vá em direção a |cRXP_FRIENDLY_Tiza Beloforja|r acima
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 2999 >>Entregue Tomo de Divindade
    .accept 1645 >>Aceite Tomo de Divindade
    .turnin 1645 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Use o |T133739:0|t|cRXP_LOOT_[Tomo de Divindade]|r para iniciar a missão|r
    .accept 1646 >>Aceite Tomo de Divindade
    .use 6916
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 1646 >>Entregue Tomo de Divindade
    .accept 1647 >>Aceite Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Turner|r
    >>|cRXP_FRIENDLY_João Turner|r |cRXP_WARN_patrulha ao longo do anel externo de Ironforge entre logo após a Stonefire Tavern e logo após o Visitor's Centro|r
    .turnin 1647 >>Entregue Tomo de Divindade
    .accept 1648 >>Aceite Tomo de Divindade
    .turnin 1648 >>Entregue Tomo de Divindade
    --.accept 1778 >>Accept The Tome of Divinity
    .unitscan John Turner
step << Gnome Mage
    .goto Ironforge,27.0,8.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bink|r
    .trainer >>Treine suas magias de classe
    .target Bink
step << Gnome Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barim Jurgenstaad|r
    >>|cRXP_BUY_Compre pelo menos 2|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Estes são necessários para aprender runas|r
    .collect 211779,2
    .target Barim Jurgenstaad
step << Dwarf/Gnome
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para uma entrega mais rápida em Loch Modan em breve:|r
    >>|T134342:0|t[Javali Intestines]
    >>|T134027:0|t[Urso Carne]
    >>|T134437:0|t[Aranha Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    >>Treine Arremesso e Maças de Duas Mãos se ainda não treinou antes
    .train 2567 >>Treine Arremesso
    .goto Ironforge,62.237,89.628
    .train 199 >>Treine Maças de Duas Mãos
    .goto Ironforge,61.177,89.508
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior !Human
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior !Human
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Dumalte|r para iniciar uma luta
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r
    >>|cRXP_WARN_Depois de derrotar |cRXP_ENEMY_Dumalte|r:|r
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Ataque Frenético]
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Ataque Frenético]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r
    >>|cRXP_WARN_NOTA: Isto pode ser difícil de fazer sozinho. Você pode precisar procurar ajuda, caso contrário, você pode fazer isto novamente mais tarde no guia|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Ataque Frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Calças]|r |cRXP_WARN_com|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .train 425447,3
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto Ironforge,70.86,85.83,15 >>Vá para |cRXP_FRIENDLY_Bélia Granitrondo|r
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .turnin 6086 >>Entregue Treinamento da Fera - Missão
    .target Belia Thundergranite
step << Paladin Dwarf
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425621,1
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Dumalte|r para iniciar uma luta
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r
    >>|cRXP_WARN_Puxe-o para cima até a varanda, depois caia para baixo fora da estalagem e lance|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r
    >>|cRXP_WARN_Puxe-o para cima até a varanda, depois caia para baixo fora da estalagem e lance|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r
    >>|cRXP_WARN_Depois de derrotar |cRXP_ENEMY_Dumalte|r:|r
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Repreensão]
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Repreensão]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin Dwarf
    #season 2
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Repreensão] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Repreensão]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin Dwarf
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Pants]|r com|r |T134596:0|t[Gravar Calça - Repreensão]
    >>|cRXP_WARN_Lembre-se de colocar|r |T134919:0|t[Repreensão] |cRXP_WARN_nas suas barras de ações|r
    .train 425621,3
-- step << Dwarf/Gnome
--     #label Ride
--     .goto Ironforge,51.521,26.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
--     .fly Loch >> Fly to Loch modan
--     .target Golnir Bouldertoe
step << Dwarf/Gnome
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma intermediária no Deeprun Tram
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
    .target Monty
step << Dwarf/Gnome
    >>Usar o |T133942:0|t[Rato Catcher's Flute] em |cRXP_FRIENDLY_Deeprun Ratos|r no Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma intermediária no Deeprun Tram
    >>Ele fará uma encenação por alguns segundos após entregar a primeira missão. |cRXP_WARN_Pule a continuação se esperar faria você perder o bonde|r
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
    .timer 11,Ratos de Deeprun RP
    .accept 6662 >>Aceite Espetinhos de... Rato
    .target Monty
step << Dwarf/Gnome
    #label TramEnd
    >>|cRXP_WARN_Pegue o Deeprun Tram para o lado de Ventobravo|r
    >>|cRXP_WARN_Aumente o nível de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o Tram para a Cidade de Ventobravo, se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r na plataforma intermediária no lado de Ventobravo do Deeprun Tram
    .turnin 6662 >>Entregue Espetinhos de... Rato
    .isOnQuest 6662
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << Dwarf/Gnome
    #optional
    #completewith Order
    .zone Stormwind City >>Entre em Ventobravo
    .isOnQuest 1338
step << !Human
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step << Dwarf Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Priest Dwarf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .trainer >>Treine suas magias de classe
    .turnin 5634 >>Entregue Prece Desesperada
    .target High Priestess Laurena
step << Priest Dwarf
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .train 13908 >>Aprenda Prece Desesperada
    .target High Priestess Laurena
step << Warrior !Human
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilsa Cletes|r
    .trainer >>Treine suas magias de classe
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .target Ilsa Corbin
step << Warrior !Human
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >>Entre na Estalagem
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1638 >>Entregue A Warrior's Treinamento
    .accept 1639 >>Aceite Bartolino the Bêbado - Missão
    .target Harry Burlguard
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1639 >>Entregue Bartolino the Bêbado - Missão
    .accept 1640 >>Aceite Beat Bartolino - Missão
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>Derrote |cRXP_ENEMY_Bartolino|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1640 >>Entregue Beat Bartolino - Missão
    .accept 1665 >>Aceite Caneca do Bartolino
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1665 >>Entregue Caneca do Bartolino
    .target Harry Burlguard
step << Warlock !Human
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock !Human
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock !Human
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step << Warlock !Human
    #softcore
    .deathskip >>Morra e reapareça no Anjo da Cura usando |T136126:0|t[Conversão de Vida] e em pé na Fogueira ao seu lado
    .target Anjo da Cura
    .isOnQuest 1688
step << Warlock !Human
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .isOnQuest 1688
step << Warlock !Human
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock !Human
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << Warlock !Human
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
step << Warlock !Human
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_Cuidado com os inimigos de nível alto no caminho|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
step << Warlock !Human
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step << !Human
    .hs >>Vá para Loch Modan
    .cooldown item,6948,>0,1 << !Warlock
step << !Warlock !Human
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    >>Compre o |T133745:0|t|cRXP_LOOT_[Itens de MoP]|r dele, use-o para treinar |T135961:0|t[Selo do Martírio] << Paladin
    >>Compre o |T133739:0|t|cRXP_LOOT_[Tratado do Coração de Leão]|r dele, use-o para treinar |T132185:0|t[Coração de Leão] << Hunter
    .collect 226401,1 << Hunter
    .collect 226398,1 << Paladin
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    >>Se você tem muito dinheiro de sobra, pode comprar os dois outros Testamentos de Milton para uso posterior << Paladin
    >>Se você tem muito dinheiro de sobra compre também o |T133739:0|t|cRXP_LOOT_[Tratado do Aspecto da Víbora]|r dele << Hunter
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    .money <5
step << !Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r dentro
    .vendor >>|cRXP_BUY_Venda itens do comerciante, compre até quatro|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_se você ainda precisar|r
    .target Yanni Stoutheart
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 13-16 Loch Modan SoD
#displayname 13-16 Loch Modan
#next 16-17 Cerro Oeste SoD
#defaultfor !NightElf

step << Hunter
#optional
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrok Soltagafe|r
    >>|cRXP_BUY_Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_se você puder pagar|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target Brock Stoneseeker
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>Entre no Bunker. Vá para o andar superior
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss

step
#completewith next
    .goto Loch Modan,30.0,68.4,0
    .goto Loch Modan,30.0,68.4,30,0 >>Vá para Stonesplinter Valley
    .subzoneskip 923
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>Mate os |cRXP_ENEMY_Troggs|r. Saqueie-os para obter um |cRXP_LOOT_Geodo de Caveira|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    #season 2
    #sticky
    #label geode2
    #requires Geode
    .goto Loch Modan,33.2,73.8,0,0
    >>Ataque |cRXP_ENEMY_Batecrânios Lascapedra|r
    >>|cRXP_WARN_Durante o combate isso te atingirá, transformando o |cRXP_LOOT_Geodo de Caveira|r em um|r |T236489:0|t[|cRXP_LOOT_Geodo de Caveira Rachado|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8,0,0
    #season 2
    #sticky
    #requires geode2
    .use 208848 >>|cRXP_WARN_Use o|r |T236489:0|t[|cRXP_LOOT_Geodo Rachado de Caveira|r] |cRXP_WARN_para receber|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Mage
    #sticky
    #completewith next
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para seus |cRXP_LOOT_Trogg Pedra Teeth|r
    >>|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Stonesplinter Batedores|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Mage
    #season 2
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Abate os |cRXP_ENEMY_Stonesplinter Seers|r e saqueie-os para conseguir |cRXP_LOOT_|T134939:0|t[Chewed Feitiço Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Feitiço Notes|r] para aprender |T236220:0|t[Bomba Viva]
    .train 415936,1
    .use 208854
step
#loop
    .goto Loch Modan,34.7,71.6,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para seus |cRXP_LOOT_Trogg Pedra Teeth|r
    >>|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Stonesplinter Batedores|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #requires geode2 << Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step << !Human
    #completewith Algaz
    .hs >>Use sua Pedra de Retorno para ir a Thelsamar
    .cooldown item,6948,>0
    .subzoneskip 924,1--valley of kings

step
    #optional
    #completewith Algaz2
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>Guarde qualquer |cRXP_LOOT_Crisp Aranha Carne|r que você encontrar para uma missão depois
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarde qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r para usar para subir de nível|cRXP_WARN_ |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Não se desvie do seu caminho para completar isto agora. Você voltará para Loch Modan em breve|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Vá para Algaz Station
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >>Entre no Bunker. Vá para o andar superior
step
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin -353 >>Entregue Entrega para Lançatroz
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
step
    #label Algaz2
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
step
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para obter o |cRXP_LOOT_Equipamento dos Mineiros|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .disablecheckbox
    .complete 307,1 -- Miners' Gear (4)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #completewith RatEar
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Ichor|r
    >>Guarde qualquer |cRXP_LOOT_Crisp Aranha Carne|r que você encontrar para uma missão depois
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .target Mountaineer Stormpike
step << Mage
    #season 2
    #sticky
    #completewith next
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,35.48,16.82,0
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    >>|cRXP_ENEMY_Tunnel Ratos|r |cRXP_WARN_podem surgir por todo Loch Modan. Verifique seu Mapa-Múndi para ver suas localizações|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
    #season 2
    #label Loch1
    .goto Loch Modan,50.7,23.9,200 >>Viaje para a ilha na parte norte do Loch
    .train 401767,1
step << Mage
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >>Entre na tenda no lado leste da ilha
    .train 401767,1
step << Mage
    #season 2
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Abra o |cRXP_PICK_Pile of Stolen Books|r dentro. Saque-os para o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_Use a|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: TENGI RONEERA|r] |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Regeneração]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step << Paladin/Warrior
    #label BuyMace
    #optional
    #completewith RatEar
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Compre o|r |T133476:0|t[Maça Pesada com Pontas] |cRXP_BUY_dele (se estiver disponível)|r
    >>|cRXP_WARN_NÃO COMPRE O|r |T133053:0|t[Malho de Pau-ferro] |cRXP_WARN_se|r |T133476:0|t[Maça Pesada com Pontas] |cRXP_WARN_não estiver lá. Você receberá uma arma melhor em Stormwind em breve|r
    >>|cRXP_WARN_Se você não conseguir se permitir isso, mas não está longe, então obtenha ouro dos |cRXP_ENEMY_Tunnel Ratos|r próximos até ter o suficiente|r
    >>|cRXP_WARN_Faça isto rapidamente pois outro jogador pode comprá-lo antes de você|r
    >>|cRXP_WARN_Se você não quer fazer isto, pule este passo|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #label RatEar
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    >>|cRXP_ENEMY_Tunnel Ratos|r |cRXP_WARN_podem surgir por todo Loch Modan. Verifique seu Mapa-Múndi para ver suas localizações|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob +Forest Lurker
step
    #season 2
    .xp 16-4650
step
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step
    #label ratcatching
    #sticky
    #loop
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >>Entregue Chouriço em Thelsamar
step << Human
    #requires ratcatching
    .hs >>Use sua Pedra de Retorno para ir a Ventobravo
step << !Human
    #requires ratcatching
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >>Treine suas magias de classe
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Dumalte|r para iniciar uma luta
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r
    >>|cRXP_WARN_Depois de derrotar |cRXP_ENEMY_Dumalte|r:|r
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Ataque Frenético]
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Ataque Frenético]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r
    >>|cRXP_WARN_NOTA: Isto pode ser difícil de fazer sozinho. Você pode precisar procurar ajuda, caso contrário, você pode fazer isto novamente mais tarde no guia|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Ataque Frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Calças]|r |cRXP_WARN_com|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .train 425447,3
step << !Human
    .goto Ironforge,78.00,51.40
    .zone Stormwind City >>Entre no Túnel do Metrô e pegue o Túnel para Ventobravo
    .isQuestTurnedIn 6662
step << !Human
    .goto Ironforge,78.00,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r no lado de Ironforge do metrô e depois |cRXP_FRIENDLY_Nipsy|r no lado de Ventobravo
    .zone Stormwind City >>Entre no Túnel do Metrô e pegue o Túnel para Ventobravo
    .accept 6662 >>Aceite Espetinhos de... Rato
    >>Antes de pegar o Tram
    .turnin 6662 >>Entregue Espetinhos de... Rato
    >>Depois de pegar o Tram
    .isQuestAvailable 6662
    .target Monty
    .target Nipsy
]])
