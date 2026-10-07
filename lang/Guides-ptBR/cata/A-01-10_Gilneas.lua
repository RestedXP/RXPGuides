if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-10 Gilneas
#displayname 1-10 Gilneas
#next 10-18 Costa Negra
#defaultfor !DK
#next 10-18 Costa Negra

<< Worgen

step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .accept 14078 >>Aceite Todos para Fora!
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>Vá para o cadáver do |cRXP_FRIENDLY_Tenente Walden|r no chão
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o cadáver do |cRXP_FRIENDLY_Tenente Walden|r no chão
    .turnin 14078 >>Entregue Todos para Fora!
    .accept 14091 >>Aceite Algo Errado
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>Entregue o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 14091 >>Entregue Algo Errado
    .accept 14093 >>Aceite O Inferno se Abriu sobre Nós
    .accept 14098 >>Aceite Evacuar a Praça dos Mercadores
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>Mate |cRXP_ENEMY_Worgen Descontrolado|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14094 >>Aceite Resgatar os Suprimentos
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>Abra |cRXP_PICK_Supply Caixotes|r no chão. Saqueie-os para |cRXP_LOOT_Salvaged Suprimentos|r
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Entregue Resgatar os Suprimentos
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>Mate |cRXP_ENEMY_Worgen Descontrolado|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>Clique em |cRXP_PICK_Merchant Square Doors|r
    >>|cRXP_WARN_Isso pode invocar hostis|r |cRXP_ENEMY_Worgen Descontrolado|r
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Entregue Resgatar os Suprimentos
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 14093 >>Entregue O Inferno se Abriu sobre Nós
    .turnin 14098 >>Entregue Evacuar a Praça dos Mercadores
    .accept 14099 >>Aceite Ordens Reais
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >>Viaje para |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14099 >>Entregue Ordens Reais
    .accept 14265 >>Aceite Instrutor Particular << Warrior
    .accept 14269 >>Aceite Alguém Quer Falar com Você << Rogue
    .accept 14273 >>Aceite Gente Esquisita << Warlock
    .accept 14275 >>Aceite Estão de Olho em Você << Hunter
    .accept 14277 >>Aceite Procura Arcana << Mage
    .accept 14278 >>Aceite Atrás da Irmã << Priest
    .accept 14280 >>Aceite Parece que os Ventos Conhecem Você...  << Druid
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marie Allen|r
    .vendor 38853 >>|cRXP_BUY_Compre|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela se necessário|r
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Seargent Cleese|r
    .turnin 14265 >>Entregue Instrutor Particular
    .accept 14266 >>Aceite Investida
    .train 100 >>Treine |T132337:0|t[Carga] << cata
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loren, a Receptora|r
    >>|cRXP_WARN_Ela é|r |T132320:0|t[Furtiva]
    .turnin 14269 >>Entregue Alguém Quer Falar com Você
    .accept 14272 >>Aceite Eviscerar
    .train 2098 >>Treine |T132292:0|t[Eviscerar] << cata
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14273 >>Entregue Gente Esquisita
    .accept 14274 >>Aceite Imolação
    .train 348 >>Treine |T135817:0|t[Imolação] << cata
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda-caça Blake|r
    .turnin 14275 >>Entregue Estão de Olho em Você
    .accept 14276 >>Aceite Tiro Firme
    .train 56641 >>Treine |T132213:0|t[Tiro Firme] << cata
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14277 >>Entregue Procura Arcana
    .accept 14281 >>Aceite Mísseis Arcanos
    .train 5143 >>Treine |T136096:0|t[Mísseis Arcanos] << cata
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Almyra|r
    .turnin 14278 >>Entregue Atrás da Irmã
    .accept 14279 >>Aceite Cura Célere << cata
    .accept 14279 >>Aceite Aprenda a Palavra << !cata
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << cata
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celestine da Colheita|r
    .turnin 14280 >>Entregue Parece que os Ventos Conhecem Você...
    .accept 14283 >>Aceite Um Toque Rejuvenescedor << cata
    .accept 14283 >>Aceite Fogo Lunar << !cata
    .train 774 >>Treine |T136081:0|t[Rejuvenescer] << cata
	.target Celestine of the Harvest
step << !Priest !Druid
    .goto 202,67.168,64.124
    >>Use |T132337:0|t[Investida] em um |cRXP_ENEMY_Worgen Dentessangue|r << Warrior
    >>Use |T136189:0|t[Golpe Sinistro] e depois |T132292:0|t[Eviscerar] em um |cRXP_ENEMY_Worgen Dentessangue|r << Rogue
    >>Use |T135817:0|t[Imolação] em um |cRXP_ENEMY_Worgen Dentessangue|r << Warlock
    >>Use |T132213:0|t[Tiro firme] em um |cRXP_ENEMY_Worgen Dentessangue|r 2 vezes << Hunter
    >>Use |T135812:0|t[Bola de Fogo] e depois |T136096:0|t[Mísseis Arcanos] quando dispara em um |cRXP_ENEMY_Worgen Dentessangue|r << Mage
    .complete 14266,1 << Warrior cata --Cast Charge (1)
    .complete 14272,1 << Rogue cata --Cast Eviscerate (1)
    .complete 14274,1 << Warlock cata --Cast Immolate (1)
    .complete 14276,1 << Hunter cata --Cast Steady Shot (2)
    .complete 14281,1 << Mage cata --Cast Arcane Missiles (1)
    .complete 14266,2 << Warrior !cata --Cast Charge (1)
    .complete 14272,2 << Rogue !cata --Cast Eviscerate (1)
    .complete 14274,2 << Warlock !cata --Cast Immolate (1)
    .complete 14276,2 << Hunter !cata --Cast Steady Shot (2)
    .complete 14281,2 << Mage !cata --Cast Arcane Missiles (1)
    .mob Bloodfang Worgen
step << !cata Druid/Priest
    .goto 202,67.168,64.124
    >>Use |T136096:0|t[Fogo Lunar] em um |cRXP_ENEMY_Worgen Dentessangue|r << Druid
    >>Use |T136207:0|t[Palavra Sombria: Dor] duas vezes em um |cRXP_ENEMY_Worgen Dentessangue|r << Priest
    .complete 14279,2 << Priest --Cast Shadow Word: Pain (1)
    .complete 14283,2 << Druid --Cast Moonfire (2)
    .mob Bloodfang Worgen
step << cata Priest/Druid
    #loop
    .goto 202,70.421,65.541,0
    .goto 202,71.003,66.538,8,0
    .goto 202,70.523,67.189,8,0
    .goto 202,69.416,66.577,8,0
    .goto 202,69.782,63.306,5,0
    >>Use |T135907:0|t[Cura Célere] em um |cRXP_FRIENDLY_Guarda Ferido|r 2 vezes << Priest
    >>Use |T136081:0|t[Rejuvenescer] em um |cRXP_FRIENDLY_Guarda Ferido|r << Druid
    .complete 14279,1 << Priest --Cast Flash Heal (2)
    .complete 14283,1 << Druid --Cast Rejuvenation (1)
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Seargent Cleese|r
    .turnin 14266 >>Entregue Investida
    .accept 14286 >>Aceite Quanto Mais, Melhor
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loren, a Receptora|r
    >>|cRXP_WARN_Ela é|r |T132320:0|t[Furtiva]
    .turnin 14272 >>Entregue Eviscerar
    .accept 14285 >>Aceite Quanto Mais, Melhor
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14274 >>Entregue Imolação
    .accept 14287 >>Aceite Quanto Mais, Melhor
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda-caça Blake|r
    .turnin 14276 >>Entregue Tiro Firme
    .accept 14290 >>Aceite Quanto Mais, Melhor
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14281 >>Entregue Mísseis Arcanos
    .accept 14288 >>Aceite Quanto Mais, Melhor
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Almyra|r
    .turnin 14279 >>Entregue Cura Célere << cata
    .turnin 14279 >>Entregue Aprenda a Palavra << !cata
    .accept 14289 >>Aceite Quanto Mais, Melhor
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celestine da Colheita|r
    .turnin 14283 >>Entregue Um Toque Rejuvenescedor << cata
    .turnin 14283 >>Entregue Fogo Lunar << !cata
    .accept 14291 >>Aceite Quanto Mais, Melhor
	.target Celestine of the Harvest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Genn Greymane|r e o |cRXP_FRIENDLY_Lorde Godfrey|r
    .turnin 14285 >>Entregue Quanto Mais, Melhor << Rogue
    .turnin 14286 >>Entregue Quanto Mais, Melhor << Warrior
    .turnin 14287 >>Entregue Quanto Mais, Melhor << Warlock
    .turnin 14288 >>Entregue Quanto Mais, Melhor << Mage
    .turnin 14289 >>Entregue Quanto Mais, Melhor << Priest
    .turnin 14290 >>Entregue Quanto Mais, Melhor << Hunter
    .turnin 14291 >>Entregue Quanto Mais, Melhor << Druid
    .accept 14157 >>Aceite Antigas Diferenças
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>Aceite Aproveitando o Ensejo...
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>Mate os |cRXP_ENEMY_Worgen Dentessangue|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>Vá em direção ao |cRXP_FRIENDLY_Capitão Broderick|r dentro
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Broderick|r dentro
    .turnin 14157 >>Entregue Antigas Diferenças
    .accept 28850 >>Aceite No Telhado da Prisão
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>Suba a escada em espiral
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>Vá em direção ao |cRXP_FRIENDLY_Lorde Darius Crowley|r
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 28850 >>Entregue No Telhado da Prisão
    .accept 14154 >>Aceite Por um fio de cabelo
    .timer 118,Por um fio de cabelo RP
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>Mate as ondas iminentes de |cRXP_ENEMY_Worgen Alphas|r e |cRXP_ENEMY_Bloodfang Nanico|r por 2 minutos
    >>|cRXP_WARN_Fique perto de |cRXP_FRIENDLY_Lorde Darius Crowley|r para ganhar|r |T236310:0|t[Bravura Rebelde] |cRXP_WARN_(Aura Passiva: Aumenta muito a velocidade, a regeneração de vida e a regeneração de recursos)|r
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes. (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 14154 >>Entregue Por um fio de cabelo
    .accept 26129 >>Aceite Irmãos de Armas
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0
    .goto 202,54.046,69.362,12 >>Vá para a escada em espiral
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>Desça a escada em espiral. Vá para fora
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Lorde Godfrey|r e o |cRXP_FRIENDLY_Rei Genn Greymane|r
    .turnin 24930 >>Entregue Aproveitando o Ensejo
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>Entregue Irmãos de Armas
    .accept 14159 >>Aceite O Arsenal do Lorde Rebelde
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>Clique em |cRXP_PICK_Cellar Porta|r para abri-la, depois vá para |cRXP_FRIENDLY_Josiah Avery|r dentro
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Josiah Avery|r e |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .turnin 14159 >>Entregue O Arsenal do Lorde Rebelde
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>Aceite Escondidos na Escuridão
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_Para ativar atalhos de teclado para itens de missão, siga estas etapas:|r
    *[1] Pressione a |cRXP_WARN_tecla Fuga.|r
    *[2] Selecione |cRXP_WARN_Options.|r
    *[3] Navegue para |cRXP_WARN_Keybindings.|r
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encontre |cRXP_WARN_RestedXP Guides.|r
    *[5] Selecione e configure o |cRXP_WARN_Active Botão.|r
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>Mate os |cRXP_ENEMY_Espreitadores Dentessangue|r
    >>|cRXP_WARN_Tenha cuidado, pois eles são|r |T132320:0|t[Furtivo]
    >>|cRXP_WARN_Use o |cRXP_FRIENDLY_Mastim Guilneano|r|r |T236186:0|t[Atacar Tocaieiro] |cRXP_WARN_feitiço para ajudar a localizar |cRXP_ENEMY_Bloodfang Lurkers|r se necessário|r
    >>|cRXP_WARN_Se você perder o |cRXP_FRIENDLY_Mastim Guilneano|r, evoque-o novamente usando|r |T236926:0|t[Mastim Guilneano Collar]
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .turnin 14204 >>Entregue Escondidos na Escuridão
    .accept 14214 >>Aceite Mensagem para Greymane
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >>Vá para o |cRXP_FRIENDLY_Rei Genn Greymane|r
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Genn Greymane|r
    .turnin 14214 >>Entregue Mensagem para Greymane
    .accept 14293 >>Aceite O Resgate do Alquimista Aranas
    .timer 16,O Resgate do Alquimista Aranas RP
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >>Morra e reapareça no |cRXP_FRIENDLY_Espírito Anjo da Cura|r APÓS salvar |cRXP_FRIENDLY_Krennan Aranas|r
    .target Anjo da Cura
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>Enquanto está no |cRXP_FRIENDLY_Cavalo do Rei Greymane|r:
    >>Lance |T134149:0|t[Resgatar Krennan] (1) para salvar |cRXP_FRIENDLY_Krennan Aranas|r ao se aproximar
-- >>|cRXP_WARN_After you save him, press dismount |cRXP_FRIENDLY_King Greymane's Horse|r and die to the|r |cRXP_ENEMY_Bloodfang Rippers|r
    >>|cRXP_WARN_Se você falhar, fale com o |cRXP_FRIENDLY_Rei Genn Greymane|r para tentar novamente|r
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,O Resgate do Alquimista Aranas RP
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,O Resgate do Alquimista Aranas RP
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r DEPOIS de resgatar |cRXP_FRIENDLY_Krennan Aranas|r
    .target Anjo da Cura
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Godfrey|r
    .turnin 14293 >>Entregue O Resgate do Alquimista Aranas
    .accept 14294 >>Aceite Hora de Reagrupar
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >>Vá para o |cRXP_FRIENDLY_Rei Genn Greymane|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Rei Genn Greymane|r e o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 14294 >>Entregue Hora de Reagrupar
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>Aceite Sacrifícios
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >>Suba em |cRXP_FRIENDLY_Cavalo de Crowley|r
    .timer 79,Sacrifícios RP
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>Enquanto está em |cRXP_FRIENDLY_Cavalo de Crowley|r:
    >>Reúna os |cRXP_ENEMY_Espreitadores Dentessangue|r
    >>Lance |T135433:0|t[Arremessar Tocha] (1) (À Distância instantâneo: Reúne os |cRXP_ENEMY_Espreitadores Dentessangue|r)
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to d
step
    #completewith next
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .goto 202,40.548,39.446,20 >>Viaje no |cRXP_FRIENDLY_Cavalo de Crowley|r para |cRXP_FRIENDLY_Tobias Brumanto|r
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Tobias Brumanto|r
    .turnin 14212 >>Entregue Sacrifícios
    .accept 14218 >>Aceite Sangue e Cinzas
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >>Entre em um |cRXP_FRIENDLY_Canhão Rebelde|r
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>Enquanto estiver em um |cRXP_FRIENDLY_Canhão Rebelde|r:
    >>Mate os |cRXP_ENEMY_Espreitadores Dentessangue|r
    >>|T252185:0|t[Canhão Rebelde] (1) (Alcance instantâneo: Causa MUITO dano)
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tobias Brumanto|r
    .turnin 14218 >>Entregue Sangue e Cinzas
    .accept 14221 >>Aceite Retroceder às Vezes, Render-se Jamais
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>Entre na Catedral
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Darius Crowley|r dentro
    .turnin 14221 >>Entregue Retroceder às Vezes, Render-se Jamais
    .accept 14222 >>Aceite A Resistência Final
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>Mate os |cRXP_ENEMY_Frenzied Stalkers|r
    >>|cRXP_WARN_Fique perto de |cRXP_FRIENDLY_Lorde Darius Crowley|r para ganhar|r |T236310:0|t[Bravura Rebelde] |cRXP_WARN_(Aura Passiva: Aumenta muito haste, regeneração de saúde e regeneração de mana)|r
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r dentro
	>>|cRXP_WARN_Pressione "Fuga" no seu teclado para pular a cinemática|r
    .turnin 14222 >>Entregue A Resistência Final
    .timer 46,A Resistência Final RP
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Genn Greymane|r
    .accept 14375 >>Aceite A Última Chance de Humanidade
    .turnin 14375 >>Entregue A Última Chance de Humanidade
    .timer 7,A Última Chance de Humanidade RP
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Godfrey|r
    .accept 14313 >>Aceite Entre Humanos, Outra Vez
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>Entre na casa
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krennan Aranas|r dentro
    .turnin 14313 >>Entregue Entre Humanos, Outra Vez
    .accept 14320 >>Aceite Em Busca dos Ingredientes
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Colher plantas e minerar veios fornecem XP. Colha apenas recursos no seu caminho direto|r
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2366 >>Aprenda |T136065:0|t[Herborismo]
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Colher plantas fornece XP. Colha apenas recursos no seu caminho direto|r
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2366 >>Aprenda |T136065:0|t[Herborismo]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Mineração de veios fornece XP. Colha apenas recursos no seu caminho direto|r
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda-caça Blake|r
    .trainer >>Treine suas magias de classe
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Cleese|r
    .trainer >>Treine suas magias de classe
    .target Sergeant Cleese
step
    #completewith INOG
    #optional
    .cast 2383 >>|cRXP_WARN_Use|r [Localizar Plantas]
    .cast 2580 >>|cRXP_WARN_Use|r [Localizar Minérios]
    .train 2575,3 --Mining
    .train 2366,3 --Herbalism
    .subzoneskip 4786,1
step
    #optional
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Samantha Buckley|r
    .collect 2901,1 >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    .target Samantha Buckley
    .train 2575,3 --Mining
    .subzoneskip 4786,1
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Almyra|r
    .trainer >>Treine suas magias de classe
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celestine da Colheita|r
    .trainer >>Treine suas magias de classe
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >>Treine suas magias de classe
    .target Myriam Spellwaker
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >>Treine suas magias de classe
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loren, a Receptora|r
    .trainer >>Treine suas magias de classe
    .target Loren the Fence
step
    #label INOG
    .goto 179,32.77,66.39
    >>Clique no |cRXP_PICK_Caixote de Essência de Mandrake|r no chão
	>>|cRXP_WARN_Pressione "Fuga" no seu teclado para pular a cinemática|r
    .turnin 14320 >>Entregue Em Busca dos Ingredientes
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o cadáver do |cRXP_FRIENDLY_Vigia Assassinado|r no chão
	>>|cRXP_WARN_Se não conseguir fazer isso, digite /reload no chat|r
    .accept 14321 >>Aceite Invasão
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 14321 >>Entregue Invasão
    .accept 14336 >>Aceite Matar ou Morrer
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 14336 >>Entregue Matar ou Morrer
    .accept 14347 >>Aceite Mantenha a Formação
    .accept 14348 >>Aceite Sozinho Não Dá
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>Mate os |cRXP_ENEMY_Invasores Renegados|r
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>Pegue |T132620:0|t|cRXP_LOOT_[Preto Gunpowder Kegs]|r no chão
    >>Use o |T132620:0|t|cRXP_LOOT_[Preto Gunpowder Kegs]|r em |cRXP_ENEMY_Horrid Abominations|r
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 14347 >>Entregue Mantenha a Formação
    .turnin 14348,1 >>Entregue Sozinho Não Dá << !Warrior !Rogue !Monk
    .turnin 14348,2 >>Entregue Você Não Consegue Sozinho << Warrior/Rogue/Monk
    .accept 14366 >>Aceite Aguentando Firme
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 14366 >>Entregue Aguentando Firme
    .accept 14367 >>Aceite O Porão dos Allen
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entre no Porão
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Godfrey|r e |cRXP_FRIENDLY_Melinda Hammond|r dentro
    .turnin 14367 >>Entregue O Porão dos Allen
    .accept 14369 >>Aceite Worgenfobia
    .accept 14382 >>Aceite O Worgen-Bala
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>Aceite Salvem as Crianças!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Saia da Adega
step
    #optional
	#completewith Cynthia
    >>Mate os |cRXP_ENEMY_Soldados Renegados|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>Entre na casa
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>Suba
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>Fale com |cRXP_FRIENDLY_Ashley|r acima
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>Fale com |cRXP_FRIENDLY_James|r fora
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>Fale com |cRXP_FRIENDLY_Cynthia|r
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>Mate os |cRXP_ENEMY_Soldados Renegados|r e os |cRXP_ENEMY_Marinheiros Renegados|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>Mate o |cRXP_ENEMY_Maquinista Renegado|r (se houver um) para liberar espaço na |cRXP_FRIENDLY_Catapulta dos Renegados|r
    .vehicle >>Entre na |cRXP_FRIENDLY_Catapulta dos Renegados|r
    .timer 59,Catapulta Explode
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +Enquanto estiver na |cRXP_FRIENDLY_Catapulta dos Renegados|r:
    >>Mire com cuidado, depois lance |T252175:0|t[Lançar] (1) para ser lançado ao navio do norte do |cRXP_ENEMY_Capitão Anderson|r
    *|cRXP_WARN_Lembre-se de que você pode se mover enquanto estiver na|r |cRXP_FRIENDLY_Catapulta dos Renegados|r
    *|cRXP_WARN_Aponte com cuidado, pois você pode ser lançado contra o lado do barco ou para a água além dele|r
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>Mate |cRXP_ENEMY_Capitão Anderson|r dentro, no andar inferior do navio do norte
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >>Volte para cima
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>Mate um |cRXP_ENEMY_Maquinista Renegado|r para liberar espaço na |cRXP_FRIENDLY_Catapulta dos Renegados|r
    .vehicle >>Entre na |cRXP_FRIENDLY_Catapulta dos Renegados|r
    .timer 59,Catapulta Implode
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +Enquanto em uma |cRXP_FRIENDLY_Catapulta dos Renegados|r:
    >>Mire com cuidado, depois lance |T252175:0|t[Lançar] (1) para ser lançado ao navio do sul do |cRXP_ENEMY_Capitão Morres|r
    *|cRXP_WARN_Lembre-se de que você pode se mover enquanto na|r |cRXP_FRIENDLY_Catapulta dos Renegados|r
    *|cRXP_WARN_Tenha cuidado para mirar com precisão, pois você pode ser lançado para o lado do barco ou na água além do barco|r
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>Mate |cRXP_ENEMY_Capitão Morres|r no andar inferior do navio do sul
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entre no Porão
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melinda Hammond|r e o |cRXP_FRIENDLY_Lorde Godfrey|r dentro
    .turnin 14368 >>Entregue Salvem as Crianças!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>Entregue Worgenfobia
    .turnin 14382 >>Entregue Dois pelo Mar
    .accept 14386 >>Aceite A Líder do Bando
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    .isOnQuest 14386
    #optional
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Saia da Adega
step
    .isOnQuest 14386
    #completewith Thyala
    .cast 68682 >>Usar o |T132161:0|t[Mastim Apito] para convocar |cRXP_FRIENDLY_Attack Mastiffs|r para atacar |cRXP_ENEMY_Patrulheira Sombria Thyala|r
step
    #label Thyala
    .goto 179,23.48,67.53
    >>Mate |cRXP_ENEMY_Patrulheira Sombria Thyala|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entre no Porão
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Godfrey|r
    .turnin 14386 >>Entregue A Líder do Bando
    .accept 14396 >>Aceite A Terra Treme
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Saia da Adega
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 14396 >>Entregue A Terra Treme
    .accept 14395 >>Aceite Faltando Ar
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pegue o |cRXP_FRIENDLY_Vigilante em Afogamento|r
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>Leve o |cRXP_FRIENDLY_Vigilante em Afogamento|r de volta para o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pegue o |cRXP_FRIENDLY_Vigilante em Afogamento|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Leve o |cRXP_FRIENDLY_Vigilante em Afogamento|r de volta para o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pegue o |cRXP_FRIENDLY_Vigilante em Afogamento|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Leve o |cRXP_FRIENDLY_Vigilante em Afogamento|r de volta para o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Pegue o |cRXP_FRIENDLY_Vigilante em Afogamento|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Leve o |cRXP_FRIENDLY_Vigilante em Afogamento|r de volta para o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 14395,1 >>Entregue Faltando Ar
    .accept 14397 >>Aceite A Evacuação
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>Viaje para |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14397 >>Entregue A Evacuação
    .accept 14398 >>Aceite Vó Wahl
    .accept 14403 >>Aceite Os Irmãos Hayward
    .accept 14406 >>Aceite O Horto dos Crowley
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14406 >>Entregue O Horto dos Crowley
    .accept 14416 >>Aceite O Gorjala Faminto
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>Monte um |cRXP_FRIENDLY_Cavalo da Montanha|r
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>Enquanto em um |cRXP_FRIENDLY_Cavalo da Montanha|r:
    >>Use |T134326:0|t[Pegar Cavalo] (1) em |cRXP_FRIENDLY_Mountain Horses|r para que o sigam
    >>Leve 5 |cRXP_FRIENDLY_Mountain Horses|r (incluindo a sua) de volta para |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Evite |cRXP_ENEMY_Koroth, o Aplaina-colinas|r
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14416 >>Entregue O Gorjala Faminto
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Entre na Casa dos Wahl
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vó Wahl|r dentro
    .turnin 14398 >>Entregue Vó Wahl
    .accept 14399 >>Aceite A Vovó Pirou Mesmo
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>Pegue o |cRXP_LOOT_Linen-Wrapped Livro|r no chão
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vó Wahl|r dentro
    .turnin 14399 >>Entregue A Vovó Pirou Mesmo
    .accept 14400 >>Aceite Eu Não Posso Usar Isso
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>Viaje em direção a |cRXP_LOOT_Roupas Boas da Vovó|r lá fora
step
    .goto 179,32.04,75.45
    >>Saque as |cRXP_LOOT_Roupas Boas da Vovó|r lá fora
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vó Wahl|r dentro
    .turnin 14400 >>Entregue Não Visto Isso nem Morta!
    .accept 14401 >>Aceite O Gato da Vovó
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>Clique em |cRXP_FRIENDLY_Lucky, o Gato|r no chão para convocar |cRXP_ENEMY_Lucius, o Cruel|r
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>Mate o |cRXP_ENEMY_Lucius, o Cruel|r. Saque-o para obter o |cRXP_LOOT_Lucky, o Gato|r
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Entre na Wahl Cottage
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vó Wahl|r dentro
    .turnin 14401 >>Entregue O Gato da Vovó
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14403 >>Entregue Os Irmãos Hayward
    .accept 14404 >>Aceite Remendando Buraco
    .accept 14412 >>Aceite Maré Vermelha
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>Mate os |cRXP_ENEMY_Forsaken Náufragos|r
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>Abra o |cRXP_PICK_Barril de Carvão Piche|r no chão. Saque-o para obter o |cRXP_LOOT_Carvão Piche|r
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>Entre na casa Hayward Fishery
step
    .goto 179,37.46,87.15
    >>Saque a |cRXP_LOOT_Shipwright's Ferramentas|r no chão dentro
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>Saque os |cRXP_LOOT_Planks de Madeira|r no chão
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14404 >>Entregue Remendando Buraco
    .turnin 14412 >>Entregue Maré Vermelha
    .accept 14405 >>Aceite Fuga pelo Mar
	.target Sebastian Hayward
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Duskhaven
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Almyra|r
    .trainer >>Treine suas magias de classe
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celestine da Colheita|r
    .trainer >>Treine suas magias de classe
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >>Treine suas magias de classe
    .target Celestine of the Harvest
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >>Treine suas magias de classe
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loren, a Receptora|r
    .trainer >>Treine suas magias de classe
    .target Loren the Fence
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda-caça Blake|r
    .trainer >>Treine suas magias de classe
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Cleese|r
    .trainer >>Treine suas magias de classe
    .target Sergeant Cleese
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14405 >>Entregue Fuga pelo Mar
    .accept 14465 >>Aceite Rumo ao Solar dos Greymane
	.timer 32,Greymane Manor Encenação
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 179,28.67,51.02,10 >>Entre em Greymane Manor
step
    .goto 179,28.132,50.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rainha Mia Greymane|r dentro
    .turnin 14465 >>Entregue Rumo ao Solar dos Greymane
    .accept 14466 >>Aceite O Observatório do Rei
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 179,27.89,48.10,15,0
    .goto 179,27.11,48.12,15 >>Suba em direção à varanda
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 179,26.16,46.41,10,0
    .goto 179,26.74,46.34,10 >>Suba em direção ao topo da Torre
step
    #label AlasGilneas
    .goto 179,26.44,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rei Genn Greymane|r no topo da Torre
	>>|cRXP_WARN_Pressione "Fuga" no seu teclado para pular a cinemática|r
    .turnin 14466 >>Entregue O Observatório do Rei
    .turnin 14467 >>Entregue Pobre Guilnéas...
    .accept 24438 >>Aceite O Êxodo
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 179,29.12,51.80,20,0
    .goto 179,29.86,52.22,15 >>Desça a Torre, depois saia de Greymane Manor. Pule em direção à |cRXP_FRIENDLY_Diligência|r
step
    .goto 179,28.90,54.22
    .isOnQuest 24438
    .vehicle >>Entre na |cRXP_FRIENDLY_Diligência|r
    .timer 80,Montar a Diligência - Encenação
    .target Stagecoach Carriage
step
    .isOnQuest 24438
    .goto 179,51.81,80.49,10 >>|cRXP_WARN_Espere a sequência de RP terminar|r
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 24438 >>Entregue O Êxodo
    .accept 24468 >>Aceite Atolados no Pântano
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>Salve os |cRXP_FRIENDLY_Crash Survivors|r matando os |cRXP_ENEMY_Swamp Crocolisks|r que os estão atacando
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 24468 >>Entregue Atolados no Pântano
    .accept 24472 >>Aceite Os Facínoras que Se Entendam
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>Vá para o |cRXP_LOOT_Estandarte de Koroth|r no topo da montanha
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>Mate os |cRXP_ENEMY_Ogro Servos|r
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>Saqueie o |cRXP_LOOT_Estandarte de Koroth|r no chão
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Liam Greymane|r
    .turnin 24472 >>Entregue Os Facínoras que Se Entendam
    .accept 24483 >>Aceite Vale Tormenta
	.target Prince Liam Greymane
step << !Mage
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>Entre na casa de |cRXP_FRIENDLY_Gwen Armstead|r em Vale Tormenta
step << Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >>Treine suas magias de classe
    .target Myriam Spellwaker
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 24483 >>Entregue Vale Tormenta
    .accept 24484 >>Aceite Controle de Pragas
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willa Arnes|r dentro
    .home >>Defina sua Pedra de Retorno em Vale Tormenta
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .accept 24495 >>Aceite Resquícios do Passado
	.target Lorna Crowley
step << Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Irmã Almyra|r lá acima
    .trainer >>Treine suas magias de classe
    .target Sister Almyra
step << Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celestine da Colheita|r
    .trainer >>Treine suas magias de classe
    .target Celestine of the Harvest
step << Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Cleese|r
    .trainer >>Treine suas magias de classe
    .target Sergeant Cleese
step << Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loren, a Receptora|r
    .trainer >>Treine suas magias de classe
    .target Loren the Fence
step << Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda-caça Blake|r
    .trainer >>Treine suas magias de classe
    .target Huntsman Blake
step << Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >>Treine suas magias de classe
    .target Vitus Darkwalker
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>Saqueie as |cRXP_LOOT_Páginas de Diário Antigo|r no chão
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>Mate os |cRXP_ENEMY_Saltadores da Raça Vil|r
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Entre na casa
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r e |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 24495 >>Entregue Resquícios do Passado
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>Entregue Controle de Pragas
    .accept 24501 >>Aceite Problemas Tamanho Família
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>Mate o |cRXP_ENEMY_Rygna|r
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Entre na casa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r e |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .turnin 24501 >>Entregue Problemas Tamanho Família
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>Aceite Floresta Negra
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belrysa Brisastral|r
    .turnin 24578 >>Entregue Floresta Negra
    .accept 24616 >>Aceite Tirando da Reta
	.target Belysra Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>|cRXP_WARN_Corra pela estrada para ficar presa em uma|r |T134916:0|t[Armadilha Congelante] |cRXP_WARN_e invoque a |cRXP_ENEMY_Batedora Sombria|r. Usar |T133443:0|t[Talismã de Belysra] |cRXP_WARN_para dissipar a|r |T134916:0|t[Armadilha Congelante]
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>|cRXP_WARN_Usar|r |T133443:0|t[Talismã de Belysra] |cRXP_WARN_para dissipar a|r |T134916:0|t[Armadilha Congelante]
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>Mate a |cRXP_ENEMY_Batedora Sombria|r
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belrysa Brisastral|r
    .turnin 24616 >>Entregue Tirando da Reta
    .accept 24617 >>Aceite Tal'doren, a Terra Selvagem
	.target Belysra Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 24617 >>Entregue Tal'doren, a Terra Selvagem
    .accept 24627 >>Aceite Nos Nossos Calcanhares
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vassandra Garrevolta|r
    .accept 24628 >>Aceite Os Preparativos
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>Mate os |cRXP_ENEMY_Espectros Uivantes|r
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Saqueie o |cRXP_LOOT_Folha-da-lua|r no chão
    *|cRXP_WARN_Você pode ver a localização de |cRXP_LOOT_Folha-da-lua|r no seu minimapa se você tem |T133939:0|t[Localizar Plantas] |cRXP_WARN_ativado|r
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Saque |cRXP_LOOT_Folha-da-lua|r no chão
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 24627 >>Entregue Nos Nossos Calcanhares
    .accept 24646 >>Aceite É Nosso e Ninguém Tasca!
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vassandra Garrevolta|r
    .turnin 24628 >>Entregue Os Preparativos
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_Use o|r |T134229:0|t[Chifre de Tal'doren] |cRXP_WARN_to distract the|r |cRXP_ENEMY_Veteran Escuridão Patrulheiros|r
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >>Entre na casa
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>Abra o |cRXP_PICK_Baú Gasto|r lá dentro. Saque-o para o |cRXP_LOOT_Artefato Misterioso|r
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 24646 >>Entregue É Nosso e Ninguém Tasca!
    .accept 24593 >>Aceite Dupla Personalidade
	.target Lord Darius Crowley
step
    >>Beba do |cRXP_PICK_Poço da Fúria|r, do |cRXP_PICK_Poço da Tranquilidade|r, e do |cRXP_PICK_Poço do Equilíbrio|r
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 24593 >>Entregue Dupla Personalidade
    .accept 24673 >>Aceite Retorno ao Vale Tormenta
	.target Lord Darius Crowley
step
    #completewith next
    .hs >>Vá para o Vale Tormenta
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 24673 >>Entregue Retorno ao Vale Tormenta
    .accept 24672 >>Aceite Idas e Vindas
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>Viaje para |cRXP_FRIENDLY_Krennas Aranas|r
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krennas Aranas|r
    .turnin 24672 >>Entregue Idas e Vindas
    .accept 24592 >>Aceite Traição em Tempestoária
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>Vá para Tempesto's Reach
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_Usar|r |T135446:0|t[Krennan's Poção of Furtividade] |cRXP_WARN_to become|r |T132320:0|t[Furtivo]
    >>|cRXP_WARN_enquanto|r |T132320:0|t[Furtivo]|cRXP_WARN_, você pode lançar a maioria dos feitiços. A|r |T132320:0|t[Furtividade] |cRXP_WARN_se desfaz ao entrar em combate|r
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r have increased|r |T132320:0|t[Furtividade] |cRXP_WARN_Detecção|r
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_If your|r |T132320:0|t[Furtividade] |cRXP_WARN_breaks, use|r |T135446:0|t[Krennan's Poção of Furtividade] |cRXP_WARN_to become|r |T132320:0|t[Furtivo] |cRXP_WARN_again (works in combat)|r
    >>|cRXP_WARN_Whilst|r |T132320:0|t[Furtivo]|cRXP_WARN_, you can cast most spells. The|r |T132320:0|t[Furtividade] |cRXP_WARN_breaks upon entering combat|r
    >>|cRXP_WARN_NOTE: |cRXP_ENEMY_Mountain Mastiffs|r têm|r |T132320:0|t[Furtividade] |cRXP_WARN_detecção aumentada|r
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>Viaje cuidadosamente entre os edifícios e as colinas em direção a |cRXP_ENEMY_Lorde Walden|r
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>Abate |cRXP_ENEMY_Lorde Walden|r
    >>|cRXP_WARN_He patrols between the outside of the house and the upstairs inside the house|r
    >>|cRXP_WARN_Be careful as he casts|r |T132797:0|t[Conhaque Envelhecido] |cRXP_WARN_(Ranged instant: Stuns for 4 seconds and deals damage)|r
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>Viaje para |cRXP_ENEMY_Barão Ashbury|r
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>Abate |cRXP_ENEMY_Barão Ashbury|r
    >>|cRXP_WARN_He patrols between the doors of his house|r
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Genn Greymane|r
    .turnin 24592 >>Entregue Traição em Tempestoária
    .accept 24677 >>Aceite Ataque pelos Flancos
	.target King Genn Greymane
step
    #completewith next
    .goto 179,78.33,71.88
    .vehicle >>Fale com |cRXP_FRIENDLY_Lorde Hewell|r para entrar em um passeio de |cRXP_FRIENDLY_Cavalo da Montanha Corpulento|r em direção a |cRXP_FRIENDLY_Lorna Crowley|r
    .timer 100.5,Flank the Forsaken RP
    .target Lord Hewell
    .skipgossip 38764,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r, |cRXP_FRIENDLY_Magda Whitewall|r, e |cRXP_FRIENDLY_Marcus|r
    .turnin 24677 >>Entregue Ataque pelos Flancos
    .accept 24575 >>Aceite O Dia da Libertação
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>Aceite A Última Refeição
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>Aceite Não Seremos Escravos
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>Abate os |cRXP_ENEMY_Veados Marrom|r. Saque-os para |cRXP_LOOT_Flancos de Carne de Veado|r
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 179,75.71,31.17,0
    .waypoint 179,82.16,30.73,20,0
    .waypoint 179,81.95,26.18,20,0
    .waypoint 179,78.75,25.15,20,0
    .waypoint 179,79.37,27.64,20,0
    >>Abate os |cRXP_ENEMY_Forsaken Slavedrivers|r. Saque-os para |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r
    >>Usar as |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r na |cRXP_PICK_Ball and Corrente|r dos |cRXP_FRIENDLY_Enslaved Villagers|r dentro e ao redor de Emberstone Mina para libertá-los
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>Entre na Mina da Pedra Incandescente
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1
    #completewith Brothogg
    .goto 179,78.13,24.95,15,0
    .goto 179,79.39,26.51,15 >>Vá em direção a |cRXP_ENEMY_Brothogg, o Senhor de Escravos|r dentro
    .isOnQuest 24674
step
    #label Brothogg
    .goto 179,80.32,32.11
    >>Abate |cRXP_ENEMY_Brothogg, o Senhor de Escravos|r dentro
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved
    #completewith next
    .goto 179,76.71,30.84,10 >>Saia da Mina da Pedra Incandescente
    .subzoneskip 4732,1
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magda Whitewall|r, |cRXP_FRIENDLY_Marcus|r e |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24675 >>Entregue A Última Refeição
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>Entregue Não Seremos Escravos
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>Entregue O Dia da Libertação
    .accept 24676 >>Aceite Não Aceitamos Facínoras
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>Abate a |cRXP_ENEMY_Infantaria Renegada|r
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>Abate |cRXP_ENEMY_Executor Cornélio|r
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>Abate |cRXP_ENEMY_Valov the Mad|r
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24676 >>Entregue Não Aceitamos Facínoras
    .accept 24904 >>Aceite A Batalha por Guilnéas
	.target Lorna Crowley
step
    .isOnQuest 24904
    .goto 179,70.049,40.897
    .gossip 38553,0 >>Fale com |cRXP_FRIENDLY_Krennan Aranas|r para começar a Batalha por Gilneas. Você pode também ser teleportado para Gilneas se uma batalha já estiver em andamento
    >>|cRXP_WARN_Você não terá uma seta para seguir durante isso, pois pode ser teleportado para um local aleatório de Gilneas. Siga o |cRXP_FRIENDLY_Príncipe Liam Greymane|r e o |cRXP_FRIENDLY_Lorde Darius Crowley|r de perto|r
    .skipgossip 38553,1
    .target Krennan Aranas
step
    .isOnQuest 24904
    >>|cRXP_WARN_Seguir o |cRXP_FRIENDLY_Príncipe Liam Greymane|r e o |cRXP_FRIENDLY_Lorde Darius Crowley|r por Gilneas|r
    .use 50334 >>|cRXP_WARN_Use o|r |T135340:0|t[Florete dos Patriotas Guilneanos] |cRXP_WARN_em seus |cRXP_FRIENDLY_Miliciano Guilneano|r guardiões para aumentar sua velocidade e regeneração de vida|r
    >>|cRXP_WARN_Entre em um |cRXP_FRIENDLY_Canhão da Pedra Incandescente|r e uma |cRXP_FRIENDLY_Catapulta Danificada|r para derrotar |cRXP_ENEMY_Vile Abominations|r e|r |cRXP_ENEMY_Podridor|r
    >>|cRXP_WARN_Derrota |cRXP_ENEMY_Lady Sylvana Correventos|r reduzindo sua vida para 40%|r
    .complete 24904,1 --Battle for Gilneas City Complete (1)
    .timer 17,A Batalha por Guilnéas RP
    .target Prince Liam Greymane
    .target Lord Darius Crowley
    .target Emberstone Cannon
    .target Damaged Catapult
    .mob Vile Abomination
    .mob Gorerot
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .goto 202,36.89,59.09,8 >>Entre na casa
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .turnin 24904 >>Entregue A Batalha por Guilnéas
    .accept 24902 >>Aceite No Encalço de Sylvana
    .timer 170,No Encalço de Sylvana RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Seguir |cRXP_FRIENDLY_Tobias Brumanto|r de perto ou ele não se moverá e pode desaparecer|r
    >>|cRXP_WARN_Seguir ele até que ele se esconda na água dentro da Catedral, depois aguarde o RP|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Tobias Brumanto|r desaparecer, pule este passo|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24902
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Devolva para |cRXP_FRIENDLY_Lorna Crowley|r
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .turnin 24902 >>Entregue No Encalço de Sylvana
    .accept 24903 >>Aceite Vingança ou Sobrevivência?
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .accept 24903 >>Aceite Vingança ou Sobrevivência?
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>Abandone No Encalço de Sylvana
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .accept 24902 >>Aceite No Encalço de Sylvana
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Seguir |cRXP_FRIENDLY_Tobias Brumanto|r de perto ou ele não se moverá e pode desaparecer|r
    >>|cRXP_WARN_Siga-o até que se esconda na água dentro da Catedral, então espere a encenação|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Volte para |cRXP_FRIENDLY_Lorna Crowley|r
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .turnin 24902 >>Entregue No Encalço de Sylvana
    .accept 24903 >>Aceite Vingança ou Sobrevivência?
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .accept 24903 >>Aceite Vingança ou Sobrevivência?
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>Entre na casa do |cRXP_FRIENDLY_Rei Genn Greymane|r
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Genn Greymane|r
    .turnin 24903 >>Entregue Vingança ou Sobrevivência?
    .accept 24920 >>Aceite Protelar o Inevitável
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>Entre no |cRXP_FRIENDLY_Morcego de Montaria Capturado|r
    .timer 21,Protele o Inevitável RP
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>|cRXP_WARN_Espere a sequência de RP terminar|r
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>Enquanto no |cRXP_FRIENDLY_Morcego de Montaria Capturado|r:
    >>Abate os |cRXP_ENEMY_Forsaken Plaguesmiths|r, os |cRXP_ENEMY_Forsaken Invaders|r e os |cRXP_ENEMY_Forsaken Catapults|r
    >>Use |T133709:0|t[Bomba de Ferro] (1) (Instantâneo à Distância: Causa dano)
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>Enquanto no |cRXP_FRIENDLY_Morcego de Montaria Capturado|r:
    .goto 202,30.43,60.88,5 >>Use |T132182:0|t[Voar de Volta] (2) para retornar ao |cRXP_FRIENDLY_Rei Genn Greymane|r
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Genn Greymane|r
    .turnin 24920 >>Entregue Protelar o Inevitável
    .accept 24678 >>Aceite Os Pequenos São os Piores
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>Desça para a cripta
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_Use o|r |T135432:0|t[Tocha Meio-Queimada] |cRXP_WARN_para assustar|cRXP_ENEMY_ os |rVermes Putridos|cRXP_ENEMY_, as |rAranhas Subterrâneas|r e os |cRXP_ENEMY_Ratos do Cemitério|r
    .goto 179,49.78,57.88,6 >>Vá para o final da cripta
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krennan Aranas|r do lado de fora
    .turnin 24678 >>Entregue Os Pequenos São os Piores
    .accept 24602 >>Aceite Descanso Não Muito Eterno
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>Abra o |cRXP_PICK_Solo Perturbado|r no chão. Saque-a para obter |cRXP_LOOT_Lembranças Desenterradas|r
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Krennan Aranas|r
    .turnin 24602 >>Entregue Descanso Não Muito Eterno
    .accept 24679 >>Aceite A Bênção do Patriarca
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>Coloque as |T134344:0|t[Ofertas Abençoadas] no Santuário
	>>|cRXP_WARN_Pressione "Fuga" no seu teclado para pular a cinemática|r
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24679 >>Entregue A Bênção do Patriarca
    .accept 24680 >>Aceite Porto Quilha
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 24680 >>Entregue Porto Quilha
    .accept 24681 >>Aceite Eles Têm Aliados, mas Nós Também
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>Entre no |cRXP_FRIENDLY_Lançador de Glaives|r
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>Enquanto no |cRXP_FRIENDLY_Lançador de Glaives|r:
    .subzone 4725 >>Vá para The Headlands
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>Enquanto no |cRXP_FRIENDLY_Lançador de Glaives|r:
    >>Abate os |cRXP_ENEMY_Orc Raiders|r, os |cRXP_ENEMY_Wolfmaw Outriders|r e os |cRXP_ENEMY_Máquinas de Guerra Órcas|r
    >>Use |T132330:0|t[Lançar Glaive] (1) (Instantâneo à Distância: Causa dano e afasta os inimigos)
    >>|T236303:0|t[Barragem de Glaives] (2) (Instantâneo à Distância: Causa MUITO dano e afasta os inimigos)
    >>|T136106:0|t[Velocidade Dupla] (3) (Instantâneo Pessoal: Aumenta a velocidade de movimento em 100% por 10 segundos)
    >>|cRXP_WARN_NÃO deixe o |cRXP_FRIENDLY_Lançador de Glaives|r morrer|r
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>Enquanto no |cRXP_FRIENDLY_Lançador de Glaives|r:
    >>|T136106:0|t[Velocidade Dupla] (3) (Instantâneo Pessoal: Aumenta a velocidade de movimento em 100% por 10 segundos)
    .subzone 4726 >>Volte para Porto Quilha
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Darius Crowley|r
    .turnin 24681 >>Entregue Eles Têm Aliados, mas Nós Também
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 26706 >>Aceite Fim de Jogo
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_OBSERVAÇÃO: Esta missão está em um cronômetro independente, significando que você terá que esperar até 5 minutos para conseguir entrar no|r |cRXP_FRIENDLY_Hipogrifo|r
    .vehicle >>Entre no |cRXP_FRIENDLY_Hipogrifo|r
	.timer 58,Fim de Jogo RP
step
    >>Abate os |cRXP_ENEMY_Gunship Grunts|r no convés superior
    >>Depois de limpar o convés superior, clique na |cRXP_PICK_Corda|r no meio do barco para seguir |cRXP_FRIENDLY_Lorna Crowley|r
    >>Abate os |cRXP_ENEMY_Gunship Grunts|r enquanto segue |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Depois que |cRXP_FRIENDLY_Lorna Crowley|r coloca os explosivos, espere a encenação|r
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,Fim de jogo RP
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 26706 >>Entregue Fim de Jogo
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante Noctéolas|r
    .accept 14434 >>Aceite Vila de Rut'theran
    .turnin 14434 >>Entregue Vila de Rut'theran
	.target Admiral Nightwind
step
    .goto 57,55.229,89.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Krennan Aranas|r
    .accept 28517 >>Aceite O Carvalho Uivante
    .target Krennan Aranas
step
    #optional
    #label Darnassus
    #completewith Oak
    .goto 57,55.045,88.301
    .zone 89 >>Passe pelo portal para Darnassus
--XX Training around here
step
    #optional
    #requires Darnassus
    #completewith Oak
    .goto 89,48.960,19.200,20,0
    .goto 89,48.126,14.432,60 >>Entre no Carvalho Uivante
step
    #label Oak
    .goto 89,48.126,14.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Entregue O Carvalho Uivante
    .accept 26385 >>Aceite As Ondas da Mudança
    .target Genn Greymane
--XX no longer "King"
--XX No need to set hs as it adjusts automatically
--XX Accepting Breaking Waves closes Hero's Call Darkshore (supposedly)
step
    #optional
    #label DarkshoreTravel
    #completewith Darkshore
    .goto 89,48.960,19.200,20 >>Saia do Carvalho Uivante
step
    #optional
    #requires DarkshoreTravel
    #completewith Darkshore
    .goto 89,36.547,50.413
    .zone 57 >>Volte através do portal para Rut'Theran Village
step
    #label Darkshore
    .goto 57,55.415,88.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'Danel >>Voe para Lor'danel
    .target Vesprystus
    .zoneskip 62
]])
