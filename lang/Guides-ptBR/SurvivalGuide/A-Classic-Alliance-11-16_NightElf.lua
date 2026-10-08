if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 11-13 Costa Negra (Elfo da Noite)
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#next 13-13 Loch Modan (Noite Elf)
#defaultfor NightElf

step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6344 >>Entregue para Nessa Cantonegro
    .accept 6341 >>Aceite O Contrato de Teldrassil
    .target Nessa Shadowsong
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
	.goto Teldrassil,58.39,94.01
    .turnin 6341 >>Entregue O Contrato de Teldrassil
    .accept 6342 >>Aceite Voo para Auberdine
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Voe para Costa Negra
    .target Vesprystus
step << !NightElf
#map Darkshore
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    #label WashedA
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << !NightElf
#map Darkshore
    #label WashedA
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >>Entregue Voo para Auberdine
    .target Laird
step
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre comida se necessário|r
    .vendor >>|T133918:0|t[Pargo-da-lama Bocalonga] |cRXP_WARN_é muito barato|r
    .target Laird
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >>Viaje escada acima em direção a |cRXP_FRIENDLY_Xafetim Manigiro|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.120,43.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compre água se necessário|r
    .target Allyndia
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.250,41.008
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kordram Rochamalho|r
    .train 2581 >>Treine Mineração, use Localizar Minérios
    .skill mining,1,1
    .target Kurdram Stonehammer
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.191,40.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delfrum Barbagulha|r
    .train 2020 >>Treine Ferraria. Isso permitirá fazer pedras de afiação de +2 de dano para sua arma, que são muito fortes. << Warrior/Rogue
    .train 2020 >>Isso permitirá fazer pedras de peso de +2 de dano para sua arma, que são muito fortes. << Paladin
    .skill blacksmithing,1,1
    .target Delfrum Flintbeard
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.225,41.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thelgrum Rochamalho|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Thelgrum Rochamalho|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Thelgrum Stonehammer
step
    .goto Darkshore,38.844,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Mate os |cRXP_ENEMY_Pigmeus Tide Crawlers|r e os |cRXP_ENEMY_Young Reef Crawlers|r. Saqueie-os por suas |cRXP_LOOT_Pernas|r
    >>Talvez seja necessário entrar na água para encontrá-los
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Pegue o |cRXP_PICK_Beached Sea Criatura|r pelos |cRXP_LOOT_Sea Criatura Ossos|r
    .complete 3524,1
step << Druid
    #completewith end
    >>|cRXP_WARN_Nível |T136065:0|t[Herborismo] para 15. Colete 5 |T134187:0|t[Earthroot] para uma missão futura|r
    .collect 2449,5,6123,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Descubra o Furbolg Camp (Corra para o totem e depois corra embora)
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um|r |cRXP_ENEMY_Ursocardo Raivoso|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Mate os |cRXP_ENEMY_Pygmy Tide Crawlers|r e os |cRXP_ENEMY_Young Reef Crawlers|r. Saqueie-os pelas suas |cRXP_LOOT_Pernas|r
    >>Talvez seja necessário entrar na água para encontrá-los
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .xp 12-3550 >>Farme até estar a 3550 xp do nível 12 (5250+/8800xp)
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
step
#map Darkshore
    #era/som
	.goto Felwood,19.13,21.39
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .accept 1001 >>Aceite Buzzbox 411
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
#map Darkshore
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target Terenthis
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_WARN_Compre quantas|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_WARN_você precisar|r
    >>|cRXP_WARN_Compre|r |T132382:0|t[Sharp Flechas] |cRXP_WARN_ou|r |T132384:0|t[Heavy Shots] << Hunter
    .target Dalmond
step
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .accept 954 >>Aceite Bashal'Aran
    .target Thundris Windweaver
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>Entre na **Caverna dos Luniscantes**
    .cast 18974 >>Use a [Poeira de Lua Cenariana] |cRXP_WARN_na |cRXP_PICK_Pedra Luniscante|r dentro da caverna para invocar|r |cRXP_ENEMY_Lunagarra|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >>Mate |cRXP_ENEMY_Lunagarra|r. Fale com o |cRXP_FRIENDLY_Espírito de Lunagarra|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Aceite Return to Nessa
    .target Laird
step << NightElf
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil --Train 12
    .target Caylais Moonfeather
step << NightElf
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Return to Nessa
    .target Nessa Shadowsong
step << NightElf
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .turnin 6001 >>Entregue Corpo e Coração
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arias'ta Cantalâmina|r
    .goto Darnassus,58.72,34.92
    .trainer >>Treine suas magias de classe
    .target Arias'ta Bladesinger
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 2567 >>Treine Arremesso
    .target Ilyenia Moonfire
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    .goto Darnassus,58.765,44.494
    >>|cRXP_WARN_Compre uma pilha de|r |T135425:0|t[Keen Arremessando Knives]
    .collect 3107,200
    .target Ariyell Skyshadow
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandria|r
    .trainer >>Treine suas magias de classe
    .target Jandria
step << NightElf Rogue
    >>Entre no Enclave Cenariano
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,30,0
    .goto Darnassus,37.00,21.92
    .trainer >>Treine suas magias de classe
    .target Syurna
step << NightElf Hunter
    #completewith start
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .trainer >>Treine suas magias de classe
    .target Jocaste
step
    #completewith next
    .hs >>Use a Pedra de Regresso para Auberdine
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >>Caminhe para |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step
    .goto Darkshore,35.743,43.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>Caminhe até o final do cais, depois pule na água
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Saqueie a |cRXP_PICK_Skeletal Tartaruga Marinha|r para a |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1 -- Turtle Remains
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << Warrior/Rogue
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .vendor >>|cRXP_WARN_Compre 40|r |T133918:0|t[Pargo-da-lama Bocalonga]
    .target Laird
step
    .goto Darkshore,37.708,43.431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    #label Bashal1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Siga a estrada para Bashal'Aran|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Abate os |cRXP_ENEMY_Wild Grells|r e os |cRXP_ENEMY_Vile Sprites|r. Saque-os para obter seus |cRXP_LOOT_Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Abate o |cRXP_ENEMY_Sátiro Deth'ryll|r. Saque-os para obter o |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
step
    #completewith Tysha
    >>|cRXP_WARN_Siga a estrada para o sul e procure por|r os |cRXP_ENEMY_Foreststrider Fledglings|r
    >>Mate os |cRXP_ENEMY_Filhote de Florestruz|r. Saqueie-os por suas |cRXP_LOOT_Strider Carne|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    #label Tysha
    .goto Darkshore,40.30,59.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #completewith TheLay
    >>Abate os |cRXP_ENEMY_Cursed Highbornes|r, os |cRXP_ENEMY_Writhing Highbornes|r e os |cRXP_ENEMY_Wailing Highbornes|r. Saque-os para obter seus |cRXP_LOOT_Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_A Fundação de Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Clique na |cRXP_PICK_Chama Antiga|r
    .complete 957,1 -- Ancient Moonstone Destroyed
step
#map Darkshore
    #label TheLay
    .goto Felwood,25.98,40.62
    >>Clique em |cRXP_PICK_A Queda de Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
step
    #completewith BashalFinal
    >>|cRXP_WARN_Siga a estrada para o norte e procure por|r os |cRXP_ENEMY_Foreststrider Fledglings|r
    >>Abate |cRXP_ENEMY_Filhote de Florestruz|r. Saqueie-os para obter seu |cRXP_LOOT_Strider Carne|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
#map Darkshore
    #completewith BashalFinal
    .goto Felwood,27.70,10.03,60 >>Viaje para Bashal'Aran
step
#map Darkshore
    #label BashalFinal
    .goto Felwood,27.70,10.03
    .target Asterion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Abate |cRXP_ENEMY_Moonkins|r. Saqueie-os para obter |T132832:0|t[|cRXP_LOOT_Pequenos Ovos|r]
    >>|cRXP_WARN_Você subirá|r |T133971:0|t[Culinária]|cRXP_WARN_ para 10 mais tarde usando|r |T132832:0|t[|cRXP_LOOT_Pequenos Ovos|r]
    .collect 6889,10,2178 -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    .goto Darkshore,42.014,33.796,80,0
    .goto Darkshore,38.717,33.659,100,0
    .goto Darkshore,46.254,42.955,100,0
    .goto Darkshore,41.216,50.191,100,0
    .goto Darkshore,37.662,49.162,100,0
    .goto Darkshore,46.254,42.955
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Ursos de Espinho|r, eles atordoam|r
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    +Compre |T134059:0|t[Temperos Suaves]
    >>|cRXP_WARN_Use the|r |T134059:0|t[Temperos Suaves] |cRXP_WARN_and your|r |T132832:0|t[Pequenos Ovos] |cRXP_WARN_para fazer Ovos Assados com Ervas. Faça isso até que sua Culinária tenha atingido o nível 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .target Alanndarian Nightsong
step
    #label ToolsTurnin
    #map Darkshore
    .goto Felwood,19.98,14.40
    .target Thundris Windweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
step
    #label end
    .goto Darkshore,32.417,43.809,15,0
    .goto Darkshore,32.417,43.809,0
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    >>|cRXP_WARN_Aumente seus|r |T135966:0|t[Primeiros Socorros]|cRXP_WARN_ enquanto aguarda o barco para o Porto de Menethil|r
step
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
step
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
step
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Usar o recurso de desbloqueio automático de personagem para ir a Ironforge. Você terá que fazer logout no local e navegar para o menu de ajuda em outro personagem, depois role para baixo até o auto-serviço. Clique no seu personagem e mova-se. Se você não conseguir se desbloquear, marque este passo e nade ao longo das montanhas para Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para ver o vídeo de referência
    --*Please note that the unstuck feature doesn't work on the PTR
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 13-13 Loch Modan (Elfo Noturno)
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#next 13-15 Cerro Oeste
#defaultfor NightElf

step
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>Se o site de destravamento não estiver disponível, nade até Cerro Oeste
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
step
    .goto Westfall,54.28,9.26,50,0
    .goto Westfall,55.12,14.64,40,0
    .goto Westfall,56.36,17.81,65,0
    .goto Elwynn Forest,23.24,77.80
    .zone Elwynn Forest >>Corra pela costa e vá para Elwynn Forest. Evite atrair muitos |cRXP_ENEMY_Murlocs|r na costa, pois há alguns que patrulham
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>Corra para Ventobravo
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orlande Bórgia|r
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura]|cRXP_BUY_ se em estoque|r
    .target Orlande Bórgia
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo
    .target Dungar Longdrink
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Bondinho Deeprun. Pegue o Bondinho para Ironforge
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|cRXP_WARN_Suba no Bondinho quando chegar. Desça no outro lado e procure |cRXP_FRIENDLY_Monty|r na plataforma do meio|r
    >>|cRXP_WARN_Lance|r |T136221:0|t[Evocar Emissário do Caos]|cRXP_WARN_ e|r |T135230:0|t[Criar Pedra de Vida]|cRXP_WARN_ enquanto espera|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .accept 6661 >>Aceite Ratos de Porão
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_on|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >>Entregue Ratos de Porão
    .timer 11,Ratos de Porão RP
    .accept 6662 >>Aceite Espetinhos de Rato
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    #completewith next
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Entre em Ironforge
step << Warrior
    .goto Ironforge,70.774,90.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muren Lançatroz|r
    .accept 1680 >>Aceite Tormus Baixaforja
    .target Muren Stormpike
step
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step << Warrior
    .goto Ironforge,48.640,42.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tormus Baixaforja|r
    .turnin 1680 >>Entregue Tormus Baixaforja
    .target Tormus Deepforge
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>Compre os seguintes itens para uma entrega mais rápida em Loch Modan
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    .goto Dun Morogh,53.305,35.112,10,0
    .zone Dun Morogh >>Saia de Altaforja
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .target Rudra Amberstill
    .goto Dun Morogh,56.503,47.923,100,0
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >>Aceite Amarre sua Cabra pois Ragash Está Solto
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Suba por esta parte da montanha
step
    .goto Dun Morogh,62.6,46.1
    >>Abate |cRXP_ENEMY_Ragash|r. Saqueie-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    >>|cRXP_WARN_Vigie o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser derrotado sozinho em qualquer classe|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >>Entregue Amarre sua Cabra pois Ragash Está Solto
step
    #completewith next
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dank Chuviscorte|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
step << Warrior/Paladin/Rogue
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Abate os |cRXP_ENEMY_Rockjaw Skullthumpers|r e os |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
step
    >>Clique no |cRXP_PICK_Dwarven Cadáver|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie a |cRXP_LOOT_Garra|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Escolha a adaga, use-a como sua Off-Hand até obter uma espada de vendedor << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    >>|cRXP_WARN_Escolha a|r |T135641:0|t[|cRXP_FRIENDLY_Adaga do Artífice|r] |cRXP_WARN_como sua recompensa. Equipe-a em sua Off-Hand|r << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >>Entregue A Vingança do Piloto
step
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>Voe para Loch Modan
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vendor e repare se necessário|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .target Mountaineer Stormpike
    .accept 307 >>Aceite Patas Nojentas
    >>|cRXP_WARN_Não aceite a Ordem dos Lançatroz ainda|r
step
    #completewith ThelsamarFirst
    >>Abate os |cRXP_ENEMY_Elder Preto Ursos|r. Saque-os de suas |cRXP_LOOT_Bear Carne|r
    >>Abate os |cRXP_ENEMY_Mountain Boars|r. Saque-os de seus |cRXP_LOOT_Boar Intestines|r
    >>Abate os |cRXP_ENEMY_Forest Lurkers|r. Saque-os de seus |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarde qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_para usar para subir de nível |T133971:0|t[Culinária] |cRXP_WARN_mais tarde|r
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >>Voe para Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
step
    #completewith StormpikeO
    .abandon 1338 >>Abandone Ordens dos Lançatroz. Isto é para desbloquear Tarefa do Montanhista Lançatroz que dará um envio gratuito de 550xp
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor >>|cRXP_WARN_Compre 1 ou 2|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_WARN_se necessário|r
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_. Tenha cerca de 40|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_. Tenha cerca de 20|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e 40|r |T132815:0|t[Leite Gelado] << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .accept 416 >>Aceite Pegando Ratos
    .accept 1339 >>Aceite Tarefa do Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    .group
    #completewith BraveSoul
    >>Abate os |cRXP_ENEMY_Elder Preto Ursos|r. Saque-os de suas |cRXP_LOOT_Bear Carne|r
    >>Abate os |cRXP_ENEMY_Mountain Boars|r. Saque-os de seus |cRXP_LOOT_Boar Intestines|r
    >>Abate os |cRXP_ENEMY_Forest Lurkers|r. Saque-os de seus |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .solo
    #completewith StormpikeStop
    >>Abate os |cRXP_ENEMY_Elder Preto Ursos|r. Saque-os de suas |cRXP_LOOT_Bear Carne|r
    >>Abate os |cRXP_ENEMY_Mountain Boars|r. Saque-os de seus |cRXP_LOOT_Boar Intestines|r
    >>Abate os |cRXP_ENEMY_Forest Lurkers|r. Saque-os pelos |cRXP_LOOT_Ichor|r deles
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .group
    #completewith MinerGear
    >>Abate os |cRXP_ENEMY_Túnel Ratos|r. Saque-os pelos |cRXP_LOOT_Orelhas|r deles
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para o |cRXP_LOOT_Miners' Equipamento|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    >>|cRXP_WARN_Você poderá fazer esta missão em um nível mais alto se desejar pular por enquanto|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>Abate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos |cRXP_LOOT_Bear Carne|r deles
    >>Abate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r deles
    >>Abate os |cRXP_ENEMY_Forest Lurkers|r. Saque-os pelos |cRXP_LOOT_Ichor|r deles
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nillen Andemar|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_que é um item de quantidade limitada|r
    >>|cRXP_WARN_Verifique se está disponível e compre-o se puder. Se não puder pagar, consiga dinheiro dos |cRXP_ENEMY_Tunnel Ratos|r próximos até ter o suficiente|r
    >>|cRXP_WARN_Faça rápido pois outro jogador pode comprá-lo antes de você|r
    .target Nillen Andemar
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os pelas |cRXP_LOOT_Orelhas|r
    >>|cRXP_WARN_Certifique-se de que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe de Paladino|r << Paladin
    >>Os |cRXP_ENEMY_Tunnel Ratos|r |cRXP_WARN_podem aparecer em toda Loch Modan. Verifique seu Mapa do Mundo para suas localizações|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vá ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 1339 >>Entregue Montanhista Lançatroz's Task
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .target Mountaineer Stormpike
step
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
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
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Rato Pegando
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >>Entregue Chouriço de Thelsamar
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_WARN_Compre um|r |T135237:0|t[Pederneira e Lenha] |cRXP_WARN_juntamente com 1|r |T135435:0|t[Simple Madeira]|cRXP_WARN_. Compre qualquer|r|T133634:0|t[Bolsa Marrom Pequena] |cRXP_WARN_se necessário|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .target Captain Rugelfuss
    .accept 267 >>Aceite A Ameaça Trogg
step
    #completewith next
    .goto Loch Modan,29.9,68.2,45,0
    .goto Loch Modan,30.76,69.97,20 >>Vá para Stonesplinter Valley
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58,45,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os pelos seus |cRXP_LOOT_Teeth|r
    >>|cRXP_WARN_Garanta que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe The Defias Brotherhood|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .turnin 267 >>Entregue A Ameaça Trogg
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante]|cRXP_BUY_. Equipe-a quando chegar ao nível 15 se não tiver já equipado|r
    .goto Ironforge,23.141,15.922
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .goto Ironforge,25.204,10.749
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
step << Rogue
    .goto Ironforge,51.494,15.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >>Treine suas magias de classe
    .target Fenthwick
step << Rogue
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r
    .train 198 >>Treine Maças de Uma Mão
    .target Buliwyf Stonehand
step << Hunter
    .goto Ironforge,69.865,82.886
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r
    .trainer >>Treine suas magias de classe
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.907,88.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
step << Warrior
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r
    .train 199 >>Treine Maças de Duas Mãos
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.551,88.699
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelomir Maniferro|r
    .vendor >>|cRXP_BUY_Compre|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_se conseguir pagar por ele|r
    .target Kelomir Ironhand
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_Entre no Deeprun Tram|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio
    .target Monty
    .accept 6661 >>Aceite Ratos de Porão
step
    .use 17117 >>|cRXP_WARN_Use o|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >>Virar em Ratos de Porão
    .timer 11,Ratos de Porão RP
    .accept 6662 >>Aceite Meu Irmão, Nipsy
step
    #completewith next
    .zone Stormwind City >>Pegue o Metrô para Ventobravo
    >>|cRXP_WARN_Nível seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto espera pelo Metrô|r
    >>|cRXP_WARN_Você precisará de seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar no nível 80 para uma missão no nível 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r quando sair do Metrô
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_está na plataforma central|r
    .turnin 6662 >>Entregue Espetinhos de... rato
step
    #completewith next
    .zone Stormwind City >>Entre em Ventobravo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >>Aceite Entrega para Lançatroz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >>Entregue Ordens dos Lançatroz
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Lunárvore|r
    .trainer >>Treine suas magias de classe
    .target Sheldras Moontree
step << Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não planeja assumir |T136065:0|t[Herborismo] como profissão primária, compre 5 |T134187:0|t[Earthroot] para uma futura missão
    >>Compre os seguintes itens para entregas mais rápidas em Cerro Oeste em breve
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T132794:0|t[Frasco de Óleo]
    .collect 2449,5,6123,1 -- Earthroot (5)
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step << !Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre os itens a seguir para entregas mais rápidas no Cerro Oeste em breve
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T132794:0|t[Frasco de Óleo]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orlande Bórgia|r
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_se em estoque|r
    .target Orlande Bórgia
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo
    .target Dungar Longdrink
]])
