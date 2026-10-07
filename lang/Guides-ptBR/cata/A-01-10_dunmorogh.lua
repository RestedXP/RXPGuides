if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Coldridge Valley
#displayname 1-6 Coldridge Valley
#next 6-7 Dun Morogh;6-9 Elwynn Forest
#defaultfor Dwarf !DK

<< Alliance

--XX Map ID changes from 27 -> 427 in MoP / custom starter zone map gets added


step
    .goto 27,36.872,70.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ioren Raçaférrea|r
    .accept 24469 >>Aceite Mantenham a Formação!
	.target Joren Ironstock
step
    #loop
    .goto 27,36.614,70.677,0
    .goto 27,36.978,72.181,0
    .goto 27,35.484,71.799,0
    .goto 27,36.614,70.677,45,0
    .goto 27,37.227,71.407,45,0
    .goto 27,37.518,72.286,45,0
    .goto 27,36.978,72.181,45,0
    .goto 27,36.652,71.711,45,0
    .goto 27,36.202,71.961,45,0
    .goto 27,35.484,71.799,45,0
    .goto 27,35.294,71.208,45,0
    .goto 27,35.510,70.301,45,0
    .goto 27,36.048,70.841,45,0
    >>Mate os |cRXP_ENEMY_Pedraqueixo Invasores|r
    .complete 24469,1 --Rockjaw Invader (6)
	.mob Rockjaw Invader
step
    .goto 27,36.872,70.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ioren Raçaférrea|r
    .turnin 24469 >>Entregue Mantenham a Formação!
    .accept 24470 >>Aceite Mostra com Quem Eles se Meteram!
	.target Joren Ironstock
step
    .goto 27,36.563,70.080,5,0 --North side
    .goto 27,36.554,70.400,5,0
    .goto 27,36.584,70.497,5,0
    .goto 27,36.554,70.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 24471 >>Aceite Ajuda aos Feridos
	.target Sten Stoutarm
step << skip
    #completewith next
    +|cRXP_WARN_Para ativar atalhos de teclado para itens de missão, siga estas etapas:|r
    *[1] Pressione a |cRXP_WARN_tecla Fuga.|r
    *[2] Selecione |cRXP_WARN_Options.|r
    *[3] Navegue para |cRXP_WARN_Keybindings.|r
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encontre |cRXP_WARN_RestedXP Guides.|r
    *[5] Selecione e configure o |cRXP_WARN_Active Botão.|r
step
	#sticky
    #label Goons
    #loop
    .goto 27,38.515,72.700,0
    .goto 27,36.526,73.694,0
    .goto 27,34.795,71.111,0
    .waypoint 27,38.515,72.700,45,0
    .waypoint 27,38.009,73.295,45,0
    .waypoint 27,37.141,73.772,45,0
    .waypoint 27,36.526,73.694,45,0
    .waypoint 27,36.476,74.066,45,0
    .waypoint 27,35.450,73.525,45,0
    .waypoint 27,35.070,73.188,45,0
    .waypoint 27,34.649,71.899,45,0
    .waypoint 27,34.795,71.111,45,0
    >>Mate os |cRXP_ENEMY_Pedraqueixo Capangas|r
    .complete 24470,1 --Rockjaw Goon (3)
	.mob Rockjaw Goon
step
    #loop
    .goto 27,37.425,72.024,0
    .goto 27,36.778,73.978,0
    .goto 27,35.620,71.276,0
    .goto 27,37.425,72.024,15,0
    .goto 27,38.080,72.027,15,0
    .goto 27,38.468,72.417,15,0
    .goto 27,38.061,72.905,15,0
    .goto 27,37.477,73.160,15,0
    .goto 27,37.363,74.004,15,0
    .goto 27,36.778,73.978,15,0
    .goto 27,36.810,73.133,15,0
    .goto 27,36.497,73.536,15,0
    .goto 27,35.829,73.700,15,0
    .goto 27,35.112,73.167,15,0
    .goto 27,35.672,72.677,15,0
    .goto 27,35.923,72.086,15,0
    .goto 27,35.620,71.276,15,0
    >>|cRXP_WARN_Usar|r |T133675:0|t[Sten's Kit de Primeiros Socorros] |cRXP_WARN_em|r |cRXP_FRIENDLY_Wounded Coldridge Mountaineers|r
    .complete 24471,1 --Wounded Coldridge Mountaineers Aided (4)
	.target Wounded Coldridge Mountaineer
	.use 49743
step
    #requires Goons
    .goto 27,36.584,70.497,5,0 --South side
    .goto 27,36.554,70.400,5,0
    .goto 27,36.563,70.080,5,0
    .goto 27,36.554,70.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 24471 >>Entregue Ajuda aos Feridos
	.target Sten Stoutarm
step
    .goto 27,36.872,70.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ioren Raçaférrea|r
    .turnin 24470 >>Entregue Mostra com Quem Eles se Meteram!
    .accept 24473 >>Aceite Quarentena em Sidermar
	.target Joren Ironstock
step
    #optional
    #completewith next
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,12 >>Entre Anvilmar
    .isOnQuest 24473
step
    #loop
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iona Raçaférrea|r dentro
    .turnin 24473 >>Entregue Quarentena em Sidermar
    .accept 24474 >>Aceite O Mais Importante Primeiro: Nós Vamos Precisar de Cerveja
	.target Jona Ironstock
step
    .goto 27,35.801,66.256
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .accept 24477 >>Aceite Artefatos Enânicos
	.target Grundel Harkin
step
    #optional
    #completewith next
    .goto 27,35.805,67.328,10,0
    .goto 27,35.912,68.003,15 >>Saia de Anvilmar
    .isOnQuest 24474
    .subzoneskip 77,1
step
    #completewith next
    .goto 27,38.393,67.671,0
    .goto 27,36.450,67.833,0
    .goto 27,36.450,67.833,15,0
    >>Saque |cRXP_LOOT_Artefatos Enânicos Esquecidos|r no chão
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    .goto 27,37.079,67.402
    >>Abra o |cRXP_PICK_Keg of Gnomenbrau|r no chão. Saque-a para o |cRXP_LOOT_Cask of Gnomenbrau|r
    .complete 24474,3 --Cask of Gnomenbrau (1)
step
    #optional
    #completewith next
    .goto 27,38.393,67.671,0
    .goto 27,36.450,67.833,0
    --Z: those goto steps are a huge waste of time, just run to the next cask and get stuff on the way
    --.goto 27,37.830,67.473,15,0
    --.goto 27,38.307,66.701,15,0
    --.goto 27,38.370,66.206,15,0
    --.goto 27,39.189,66.844,15,0
    --.goto 27,38.393,67.671,15,0
    --.goto 27,37.556,67.973,15,0
    --.goto 27,37.093,68.372,15,0
    --.goto 27,36.821,68.680,15,0
    --.goto 27,36.450,67.833,15,0
    --.goto 27,35.548,67.767,15,0 --West1
    >>Saque |cRXP_LOOT_Artefatos Enânicos Esquecidos|r no chão
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    .goto 27,34.822,67.386
    >>Abra o |cRXP_PICK_Keg of Martelo da Tempestade Stout|r no chão. Pegue o |cRXP_LOOT_Casak of Martelo da Tempestade Stout|r
    .complete 24474,1 --Cask of Stormhammer Stout (1)
step
    #optional
    #completewith next
    .goto 27,34.600,67.539,0
    .goto 27,34.244,67.234,0
    .goto 27,34.600,67.539,15,0
    .goto 27,34.440,66.416,15,0
    .goto 27,34.244,67.234,15,0
    .goto 27,34.321,68.013,15,0
    .goto 27,33.794,67.327,15,0
    >>Saque |cRXP_LOOT_Artefatos Enânicos Esquecidos|r no chão
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step
    .goto 27,31.469,67.635
    >>Abra o |cRXP_PICK_Keg of Theramore Pale Ale|r no chão. Saque-o para o |cRXP_LOOT_Cask of Martelo da Tempestade Stout|r
    .complete 24474,2 --Cask of Theramore Pale Ale (1)
step
    #loop
    .goto 27,34.600,67.539,0
    .goto 27,33.794,67.327,0
    .goto 27,38.307,66.701,0
    .goto 27,36.450,67.833,0
    .goto 27,33.794,67.327,15,0
    .goto 27,34.321,68.013,15,0
    .goto 27,34.244,67.234,15,0
    .goto 27,34.440,66.416,15,0
    .goto 27,34.600,67.539,15,0
    .goto 27,35.548,67.767,15,0
    .goto 27,36.450,67.833,15,0
    .goto 27,37.830,67.473,15,0
    .goto 27,38.307,66.701,15,0
    .goto 27,38.370,66.206,15,0
    .goto 27,39.189,66.844,15,0
    .goto 27,38.393,67.671,15,0
    .goto 27,37.556,67.973,15,0
    .goto 27,37.093,68.372,15,0
    .goto 27,36.821,68.680,15,0
    .goto 27,36.450,67.833,15,0
    >>Saque |cRXP_LOOT_Artefatos Enânicos Esquecidos|r no chão
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
step << skip
    #loop
    .goto 27,30.733,68.123,0
    .goto 27,30.082,67.724,0
    .goto 27,29.520,68.468,0
    .goto 27,27.786,67.798,0
    .goto 27,28.926,69.221,0
    .goto 27,31.020,69.465,0
    .goto 27,30.733,68.123,15,0
    .goto 27,30.458,67.808,15,0
    .goto 27,30.167,68.093,15,0
    .goto 27,30.082,67.724,15,0
    .goto 27,30.165,68.092,15,0
    .goto 27,29.944,68.767,15,0
    .goto 27,29.520,68.468,15,0
    .goto 27,28.890,67.923,15,0
    .goto 27,27.126,67.182,15,0
    .goto 27,27.786,67.798,15,0
    .goto 27,28.224,68.504,15,0
    .goto 27,28.126,68.706,15,0
    .goto 27,28.926,69.221,15,0
    .goto 27,29.245,68.975,15,0
    .goto 27,31.020,69.465,15,0
    >>Saque |cRXP_LOOT_Artefatos Enânicos Esquecidos|r no chão
    .complete 24477,1 --Forgotten Dwarven Artifacts	(5)
--XX Far west side near boars. Just not worth it - there's enough shared spawns outside Anvilmar
step
    #optional
    #completewith FirstThing
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >>Entre Anvilmar
    .cooldown item,6948,<0 << Dwarf !DK
    .isOnQuest 24474
    .noflyable  --Azeroth Flying
step << Dwarf !DK
    #optional
    #completewith FirstThing
    .hs >>Use sua Pedra de Retorno para ir a Anvilmar
    .cooldown item,6948,>2,1
    .isOnQuest 24474
    .noflyable  --Azeroth Flying
    .subzoneskip 77
step
    #optional
    #completewith FirstThing
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >>Entre Anvilmar
    .isOnQuest 24474
    .flyable  --Azeroth Flying
step
    #sticky
    #label FirstThing
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iona Raçaférrea|r dentro
    .turnin 24474 >>Entregue O Mais Importante Primeiro: Nós Vamos Precisar de Cerveja
    .accept 24475 >>Aceite Agora Todo o Resto
	.target Jona Ironstock
step
    .goto 27,35.801,66.256,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .turnin 24477 >>Entregue Artefatos Enânicos
    .accept 24486 >>Aceite A Luz Ajuda a Quem Cedo Madruga
	.target Grundel Harkin
step
    #optional
    #requires FirstThing
    #completewith RockjawA
    .goto 27,35.805,67.328,10,0
    .goto 27,35.702,68.138,20 >>Saia de Anvilmar
    .isOnQuest 24475
    .subzoneskip 77,1
step
    #completewith RockjawA
    #requires FirstThing
    .goto 27,34.571,68.391,0
    .goto 27,35.301,74.641,0
    .goto 27,36.039,76.329,0
    .goto 27,37.881,75.440,0
    .goto 27,39.236,72.809,0
    .goto 27,37.185,74.444,0
    .goto 27,34.571,68.391,35,0
    >>Mate os |cRXP_ENEMY_Lobos de Madeira Esfarrapados|r e os |cRXP_ENEMY_Lobos Jovens Esfarrapados|r. Saque-os para seus |cRXP_LOOT_Peles de Lobo Esfarrapadas|r
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step
    #completewith RockjawA
    #requires FirstThing
    .goto 27,34.474,69.536,0
    .goto 27,33.467,72.668,0
    .goto 27,34.475,74.869,0
    .goto 27,36.077,74.386,0
    .goto 27,31.914,69.640,0
    .goto 27,34.474,69.536,35,0
    >>Mate os |cRXP_ENEMY_Javalis Pequenos Rochosos|r. Saque-os para seus |cRXP_LOOT_Pernas de Javali|r
    .complete 24475,1 --Boar Haunch (3)
    .mob *Small Crag Boar
step
    #label RockjawA
    #requires FirstThing
    #loop
    .goto 27,33.804,70.522,0
    .goto 27,32.918,70.006,0
    .goto 27,34.104,71.636,0
    .goto 27,33.804,70.522,30,0
    .goto 27,32.918,70.006,30,0
    .goto 27,32.729,70.874,30,0
    .goto 27,33.203,71.701,30,0
    .goto 27,34.104,71.636,30,0
    >>Mate os |cRXP_ENEMY_Pedraqueixo Catadores|r. Saque-os para seus |cRXP_LOOT_Artefatos Inestimáveis de Pedraqueixo|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Pedraqueixo Catadores|r lançam|r |T135238:0|t[Jogar Artefato Inestimável] |cRXP_WARN_(Causa dano, mas oferece um |cRXP_LOOT_Artefato Inestimável de Pedraqueixo|r)|r
    .complete 24486,1 --Priceless Rockjaw Artifact (5)
	.mob Rockjaw Scavenger
--XX May need to drop duplicates?
step
    #optional
    #sticky
    #label DunWolves
    .goto 27,35.301,74.641,0
    .goto 27,36.039,76.329,0
    .goto 27,37.881,75.440,0
    .goto 27,39.236,72.809,0
    .goto 27,37.185,74.444,0
    .waypoint 27,35.301,74.641,50,0
    .waypoint 27,35.862,75.105,50,0
    .waypoint 27,35.644,75.522,50,0
    .waypoint 27,36.039,76.329,50,0
    .waypoint 27,36.517,76.456,50,0
    .waypoint 27,36.835,75.494,50,0
    .waypoint 27,37.881,75.440,50,0
    .waypoint 27,38.459,74.734,50,0
    .waypoint 27,39.273,74.287,50,0
    .waypoint 27,39.236,72.809,50,0
    .waypoint 27,38.883,72.557,50,0
    .waypoint 27,37.879,73.478,50,0
    .waypoint 27,37.185,74.444,50,0
    >>Mate os |cRXP_ENEMY_Lobos de Madeira Esfarrapados|r e os |cRXP_ENEMY_Lobos Jovens Esfarrapados|r. Saque-os para seus |cRXP_LOOT_Peles de Lobo Esfarrapadas|r
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step
    #optional
    .goto 27,33.467,72.668,0
    .goto 27,34.475,74.869,0
    .goto 27,36.077,74.386,0
    .goto 27,31.914,69.640,0
    .goto 27,33.467,72.668,50,0
    .goto 27,34.081,73.758,50,0
    .goto 27,34.475,74.869,50,0
    .goto 27,35.291,74.316,50,0
    .goto 27,36.077,74.386,50,0
    .goto 27,32.453,72.893,50,0
    .goto 27,30.989,70.747,50,0
    .goto 27,31.914,69.640,50,0
    >>Mate os |cRXP_ENEMY_Javalis Pequenos Rochosos|r. Saque-os para seus |cRXP_LOOT_Pernas de Javali|r
    .complete 24475,1 --Boar Haunch (3)
    .mob Small Crag Boar
step
    #optional
    #requires DunWolves
    #completewith Sun
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >>Entre Anvilmar
    .cooldown item,6948,<0 << Dwarf !DK
    .isOnQuest 24475
    .noflyable  --Azeroth Flying
step << Dwarf !DK
    #optional
    #requires DunWolves
    #completewith Sun
    .hs >>Use sua Pedra de Retorno para ir a Anvilmar
    .cooldown item,6948,>2,1
    .isOnQuest 24475
    .noflyable  --Azeroth Flying
step
    #optional
    #requires DunWolves
    #completewith Sun
    .goto 27,35.914,68.096,30,0
    .goto 27,35.751,67.107,12,0
    .goto 27,35.650,66.782,15 >>Entre Anvilmar
    .isOnQuest 24475
    .flyable  --Azeroth Flying
step
    #label Sun
    #requires DunWolves
    .goto 27,35.801,66.256
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .turnin 24486 >>Entregue A Luz ajuda a quem cedo madruga
	.target Grundel Harkin
step
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iona Raçaférrea|r dentro
    .turnin 24475 >>Entregue Agora todo o resto
    .accept 24487 >>Aceite O Barbabranca precisa de você
	.target Jona Ironstock
step
    #optional
    #completewith next
    .goto 27,35.805,67.328,10,0
    .goto 27,35.702,68.138,20 >>Saia de Anvilmar
    .isOnQuest 24487
    .subzoneskip 77,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r, o |cRXP_FRIENDLY_Aprendiz Vareta|r e |cRXP_FRIENDLY_Félix Reclamofuso|r
    .turnin 24487 >>Entregue O Barbabranca precisa de você
    .accept 182 >>Aceite A ameaça trólica
    .goto 27,32.064,74.170
	.target +Grelin Whitebeard
    .accept 24489 >>Aceite Informação trolada
    .goto 27,32.165,74.347
	.target +Apprentice Soren
    .accept 3361 >>Aceite Um dia na vida de um refugiado
    .goto 27,31.899,74.318,10,0
    .goto 27,31.906,74.525
	.target +Felix Whindlebolt
step
	#sticky
    #label Whelps
    #loop
    .goto 27,33.906,77.523,0
    .goto 27,32.815,76.666,0
    .goto 27,29.841,78.444,0
    .goto 27,28.324,75.368,0
    .goto 27,28.176,74.189,0
    .waypoint 27,33.906,77.523,45,0
    .waypoint 27,34.167,77.077,45,0
    .waypoint 27,33.405,76.915,45,0
    .waypoint 27,32.815,76.666,45,0
    .waypoint 27,32.380,76.052,45,0
    .waypoint 27,30.676,78.641,45,0
    .waypoint 27,29.841,78.444,45,0
    .waypoint 27,29.325,77.816,45,0
    .waypoint 27,28.216,76.231,45,0
    .waypoint 27,28.324,75.368,45,0
    .waypoint 27,27.677,74.636,45,0
    .waypoint 27,27.627,74.159,45,0
    .waypoint 27,27.900,73.634,45,0
    .waypoint 27,28.176,74.189,45,0
    >>Abate os |cRXP_ENEMY_Frostmane Trolls Filhotes|r
    .complete 182,1 --Frostmane Troll Whelp (10)
	.mob Frostmane Troll Whelp
step
    .goto 27,27.846,74.530
    >>Saque |cRXP_LOOT_Felix's Caixa|r no chão
    .complete 3361,1 --Felix's Box (1)
step
    #optional
    #completewith next
    .goto 27,27.759,75.195,10 >>Vá até o |cRXP_FRIENDLY_Adivinha Mirim'koa|r
    .timer 11,Informação Trolada RP
    .isOnQuest 24489
--XX you can start the event earlier then get the box and come back but its way too hard to communicate it/trust the player enough for a 3s time gain vs 20s time loss
step
    .goto 27,27.759,75.195
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|cRXP_WARN_Fique perto do |cRXP_FRIENDLY_Adivinha Mirim'koa|r, senão o objetivo não será concluído|r
    .complete 24489,3 --Soothsayer Mirim'koa Scouted (1)
    .target Soothsayer Mirim'koa
step
    #optional
    #completewith next
    .goto 27,29.593,78.754,11 >>Vá até o |cRXP_FRIENDLY_Adivinha Rikkari|r
    .timer 11,Informação Trolada RP
    .isOnQuest 24489
step
    #sticky
    #label Rikkari
    .goto 27,29.593,78.754
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|cRXP_WARN_Fique perto do |cRXP_FRIENDLY_Adivinha Rikkari|r, senão o objetivo não será concluído|r
    .complete 24489,2 --Soothsayer Rikkari Scouted (1)
    .target Soothsayer Rikkari
--XX no good way to do the .goto prios for these steps
step
    .goto 27,29.750,78.485
    >>Saque |cRXP_LOOT_Felix's Baú|r no chão
    .complete 3361,2 --Felix's Chest (1)
step
    #optional
    #completewith next
    #requires Rikkari
    .goto 27,33.323,77.988,11 >>Vá até o |cRXP_FRIENDLY_Adivinha Shi'kala|r
    .timer 13,Informação Trolada RP
    .isOnQuest 24489
step
    #sticky
    #requires Rikkari
    #label Shikala
    .goto 27,33.323,77.988
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|cRXP_WARN_Fique perto do |cRXP_FRIENDLY_Adivinha Shi'kala|r, senão o objetivo não será concluído|r
    .complete 24489,1 --Soothsayer Shi'kala Scouted (1)
    .target Soothsayer Shi'kala
step
    #requires Rikkari
    .goto 27,33.325,77.755
    >>Pegue |cRXP_LOOT_Felix's Balde of Bolts|r no chão
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step
    #optional
    #requires Shikala
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Whelps
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Félix Reclamofuso|r, o |cRXP_FRIENDLY_Aprendiz Vareta|r e |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 3361 >>Entregue Um dia na vida de um refugiado
    .goto 27,31.906,74.525,10,0
    .goto 27,31.899,74.318
	.target +Felix Whindlebolt
    .turnin 24489 >>Entregue Informação trolada
    .goto 27,32.165,74.347
	.target +Apprentice Soren
    .turnin 182 >>Entregue A ameaça trólica
	.accept 218 >>Aceite Gelo e fogo
    .goto 27,32.064,74.170
	.target +Grelin Whitebeard
--XX 182 can be completed later

--steps for strictly cata, changes in mop
step << cata
    #optional
    #completewith Griknir
    .goto 428,12.774,40.711,15 >>Entre na caverna de Coldridge Valley
	.isOnQuest 218
step << cata
    #optional
    #completewith Griknir
    >>Abate os |cRXP_ENEMY_Frostmane Lâminas|r e as |cRXP_ENEMY_Frostmane Novatos|r
    .complete 218,2 --Grik'nir's Servant slain (10)
	.mob Frostmane Blade
step << cata
    #label Griknir
    .goto Dun Morogh,35.80,77.36,30,0
    .goto 428,76.449,32.098
    >>Abate o |cRXP_ENEMY_Grik'nir o Frio|r
    .complete 218,1 --Grik'nir the Cold (1)
	.mob Grik'nir the Cold
step << cata
    #completewith next
    .goto 428,77.421,26.068,0
    .goto 428,60.009,17.985,0
    .goto 428,60.865,46.816,0
    >>Abate os |cRXP_ENEMY_Frostmane Lâminas|r e as |cRXP_ENEMY_Frostmane Novatos|r
    .complete 218,2 --Grik'nir's Servant slain (10)
	.mob Frostmane Blade
    .mob Frostmane Novice
step << cata
    .line 428,63.523,21.372,63.490,25.701,64.533,33.319,65.216,34.130,67.843,33.396,69.711,31.243,69.677,26.654,66.486,22.402,63.523,21.372
    .goto 428,63.523,21.372,10,0
    .goto 428,63.490,25.701,10,0
    .goto 428,64.533,33.319,10,0
    .goto 428,65.216,34.130,10,0
    .goto 428,67.843,33.396,10,0
    .goto 428,69.711,31.243,10,0
    .goto 428,69.677,26.654,10,0
    .goto 428,66.486,22.402,10,0
    >>Abate o |cRXP_ENEMY_Elemental Errante do Fogo|r
    .complete 218,3 --Wayward Fire Elemental (1)
	.mob Wayward Fire Elemental
step << cata
    .goto 428,77.421,26.068,0
    .goto 428,60.009,17.985,0
    .goto 428,60.865,46.816,0
    >>Abate os |cRXP_ENEMY_Frostmane Lâminas|r e as |cRXP_ENEMY_Frostmane Novatos|r
    .complete 218,2 --Grik'nir's Servant slain (10)
    .waypoint 428,71.104,18.539,20,0
    .waypoint 428,55.686,13.478,12,0
    .waypoint 428,58.225,33.709,12,0
    .waypoint 428,59.189,40.829,12,0
    .waypoint 428,67.202,42.936,12,0
	.mob Frostmane Blade
    .mob Frostmane Novice

--steps for mop onwards
step << !tbc !wotlk !cata
    #optional
    #completewith Hovel2
    >>Abate as |cRXP_ENEMY_Frostmane Lâminas|r
    .complete 218,4 --Frostmane Blade (6)
	.mob Frostmane Blade
step << !tbc !wotlk !cata
    #optional
    #completewith Griknir
    #label Hovel1
    .goto 428,12.774,40.711,15 >>Entre na caverna de Coldridge Valley
	.isOnQuest 218
step << !tbc !wotlk !cata
    #optional
    #completewith Griknir
    #label Hovel2
    #requires Hovel1
    .goto 428,15.112,45.588,15,0
    .goto 428,18.302,48.547,15,0
    .goto 428,37.713,29.248,15,0
    .goto 428,52.353,14.297,15,0
    .goto 428,76.449,32.098,80 >>Vá até o |cRXP_ENEMY_Grik'nir o Frio|r
	.isOnQuest 218
step << !tbc !wotlk !cata
    #sticky
    #label Novices
    #requires Hovel2
    #loop
    .goto 428,77.421,26.068,0
    .goto 428,60.009,17.985,0
    .goto 428,60.865,46.816,0
    >>Abate os |cRXP_ENEMY_Frostmane Novatos|r e as |cRXP_ENEMY_Frostmane Lâminas|r
    .complete 218,3 --Frostmane Novice (3)
    .waypoint 428,78.818,25.838,12,0
    .waypoint 428,71.497,24.360,12,0
    .waypoint 428,66.048,20.082,12,0
    .waypoint 428,60.965,24.058,12,0
    .waypoint 428,61.733,31.748,12,0
    .waypoint 428,62.955,38.259,12,0
    .waypoint 428,74.593,37.568,12,0
	.mob +*Frostmane Novice
    .complete 218,4 --Frostmane Blade (6)
    .waypoint 428,71.104,18.539,20,0
    .waypoint 428,55.686,13.478,12,0
    .waypoint 428,58.225,33.709,12,0
    .waypoint 428,59.189,40.829,12,0
    .waypoint 428,67.202,42.936,12,0
	.mob +*Frostmane Blade
step << !tbc !wotlk !cata
    #sticky
    #label FireElemental
    #requires Hovel2
    #loop
    .line 428,63.523,21.372,63.490,25.701,64.533,33.319,65.216,34.130,67.843,33.396,69.711,31.243,69.677,26.654,66.486,22.402,63.523,21.372
    .goto 428,63.523,21.372,10,0
    .goto 428,63.490,25.701,10,0
    .goto 428,64.533,33.319,10,0
    .goto 428,65.216,34.130,10,0
    .goto 428,67.843,33.396,10,0
    .goto 428,69.711,31.243,10,0
    .goto 428,69.677,26.654,10,0
    .goto 428,66.486,22.402,10,0
    >>Abate o |cRXP_ENEMY_Elemental Errante do Fogo|r
    .complete 218,2 --Wayward Fire Elemental (1)
	.mob Wayward Fire Elemental
step << !tbc !wotlk !cata
    .goto 428,76.449,32.098
    >>Abate o |cRXP_ENEMY_Grik'nir o Frio|r
    .complete 218,1 --Grik'nir the Cold (1)
	.mob Grik'nir the Cold
step << !tbc !wotlk !cata
    #optional
    #requires Novices
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #completewith next
    #requires FireElemental
    .goto 428,14.750,45.019,30,0
    .goto 27,33.772,78.335,15 >>Saia da caverna de Coldridge Valley
    .isOnQuest 218
step
    .goto 27,32.064,74.170
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue Gelo e fogo
    .accept 24490 >>Aceite Uma Viagem à Altaforja
	.target Grelin Whitebeard
step
    .goto 27,40.883,70.673
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com as |cRXP_FRIENDLY_Mãos Rodamola|r
    .turnin 24490 >>Entregue Uma Viagem à Altaforja
    .accept 24491 >>Aceite Siga Aquele Girocóptero
	.target Hands Springsprocket
step
    .goto 27,37.404,70.581
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milo Girapontada|r
    .turnin 24491 >>Siga aquele girocóptero!
    .accept 24492 >>Aceite Faça as Malas
	.target Milo Geartwinge
step
    #optional
    #completewith Pack
    .goto 27,35.914,68.096,30,0
    .goto 27,35.836,67.146,12,0
    .goto 27,35.953,66.803,15 >>Entre Anvilmar
    .isOnQuest 24492
    .subzoneskip 77
step
    #sticky
    #label Forget
    .line 27,35.901,65.750,35.997,65.913,36.009,66.126,35.944,66.274,35.810,66.348,35.674,66.264,35.598,66.086,35.627,65.905,35.901,65.750
    .goto 27,35.810,66.348,12,0
    .goto 27,35.674,66.264,12,0
    .goto 27,35.598,66.086,12,0
    .goto 27,35.627,65.905,12,0
    .goto 27,35.901,65.750,12,0
    .goto 27,35.997,65.913,12,0
    .goto 27,36.009,66.126,12,0
    .goto 27,35.944,66.274,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iona Raçaférrea|r dentro
    .accept 24493 >>Aceite Não se Esqueça de Nós
	.target Jona Ironstock
step
    .goto Dun Morogh,35.39,66.03
    >>Pegue o |cRXP_LOOT_Leftover Javali Carne|r na mesa
    .complete 24492,3 --|Leftover Boar Meat: 1/1
step
    .goto Dun Morogh,35.480,65.151
    >>Abra o |cRXP_PICK_Beer Barril|r no chão. Pegue o |cRXP_LOOT_Coldridge Beer Flagon|r
    .complete 24492,1 --|Coldridge Beer Flagon: 1/1
step
    #completewith next
    .goto Dun Morogh,36.120,64.787,8 >>Suba as escadas
step
    .goto Dun Morogh,35.782,64.496
    >>Abra a caixa de |cRXP_PICK_Wolf-Esconder-se Cloaks|r no chão. Pegue o |cRXP_LOOT_Ragged Lobo-Esconder-se Manto|r
    .complete 24492,2 --|Ragged Wolf-Hide Cloak: 1/1
step
    #optional
    #requires Forget
    #completewith next
    .goto 27,35.805,67.328,10,0
    .goto 27,35.912,68.003,20 >>Saia de Anvilmar
    .isOnQuest 24492
    .subzoneskip 77,1
step
    #requires Forget
    .goto 27,37.404,70.581
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milo Girapontada|r
    .turnin 24492 >>Entregue Faça as Malas
    .timer 26,Comece a Sair quando o Cronômetro Terminar --Kharanos, Between 10-26s after turnin (needs to be tested more)
--   .timer 10,Start to Logout when timer ends --New Tinkertown
--   .timer 83.5,Pack Your Bags RP
	.target Milo Geartwinge
step
    .goto 27,53.713,52.190
    >>|cRXP_WARN_Quando o temporizador de 26 segundos expirar (26 segundos depois de aceitar o montar), desconecte-se e reconecte enquanto estiver em |cRXP_FRIENDLY_Milo's Gyro|r para pular para Kharanos|r
    >>|cRXP_WARN_Se você fizer isto antes do temporizador expirar, pode pular para New Tinkertown ou de volta para Coldridge Valley. Se isto acontecer, vá para Kharanos normalmente|r
    .subzone 131 >>Voe para Kharanos
    .isOnQuest 24493
]])

--TODO: Polish the gnome section, havent touched it
--XX Logout Dwarves come from GY, non-logout from in front of blacksmith
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 New Tinkertown
#displayname 1-6 New Tinkertown
#next 6-7 Dun Morogh;6-9 Elwynn Forest
#defaultfor Gnome !DK

<< Gnome Alliance

step
    .goto 30,34.101,32.243
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nevin Girachave|r
    .accept 27670 >>Aceite Ninguém Segura a V.E.R.A.!
    .target Nevin Twistwrench
step
    #loop
    .goto 30,40.712,32.200,0
    .goto 30,43.924,36.923,0
    .goto 30,44.916,26.413,0
    .goto 30,40.712,32.200,15,0
    .goto 30,43.924,36.923,25,0
    .goto 30,49.744,39.322,25,0
    .goto 30,49.077,32.873,25,0
    .goto 30,50.404,27.498,25,0
    .goto 30,44.916,26.413,25,0
    >>Mate os |cRXP_ENEMY_Crazed Leper Gnomes|r
    .complete 27670,1 --Crazed Leper Gnome (6)
	.mob Crazed Leper Gnome
step
    .goto 30,34.101,32.243
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nevin Girachave|r
    .turnin 27670 >>Entregue Ninguém Segura a V.E.R.A.!
    .accept 28167 >>Aceite Apresente-se a Carvo Estourapino
	.target Nevin Twistwrench
step
    .goto 30,50.973,31.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carvo Estourapino|r
    .turnin 28167 >>Entregue Apresente-se a Carvo Estourapino
    .accept 27671 >>Aceite Pense nos Sobreviventes
	.target Carvo Blastbolt
step << skip
    #completewith next
    +|cRXP_WARN_Para ativar atalhos de teclado para itens de missão, siga estas etapas:|r
    *[1] Pressione a |cRXP_WARN_tecla Fuga.|r
    *[2] Selecione |cRXP_WARN_Options.|r
    *[3] Navegue para |cRXP_WARN_Keybindings.|r
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encontre |cRXP_WARN_RestedXP Guides.|r
    *[5] Selecione e configure o |cRXP_WARN_Active Botão.|r
    .isOnQuest 27671
step
    #loop
    .goto 30,50.065,30.713,0
    .goto 30,52.634,23.152,0
    .goto 30,51.591,37.316,0
    .goto 30,50.065,30.713,15,0
    .goto 30,53.170,29.377,15,0
    .goto 30,52.156,27.685,15,0
    .goto 30,52.634,23.152,15,0
    .goto 30,45.858,24.345,15,0
    .goto 30,47.631,30.000,15,0
    .goto 30,43.926,30.137,15,0
    .goto 30,42.540,36.441,15,0
    .goto 30,50.993,42.921,15,0
    .goto 30,51.591,37.316,15,0
    >>|cRXP_WARN_Use o|r |T133860:0|t[Teleporte Sinalizador] |cRXP_WARN_nos|r |cRXP_FRIENDLY_Survivors|r
    .complete 27671,1 --Survivors Rescued (6)
    .use 62057
	.target Survivor
step
    .goto 30,50.973,31.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carvo Estourapino|r
    .turnin 27671 >>Entregue Pense nos Sobreviventes
    .accept 28169 >>Aceite Retirada para o Galpão de Carregamento!
	.target Carvo Blastbolt
step
    #completewith next
    .goto 30,51.481,37.082,20,0
    .goto 30,52.309,62.433,20,0
    .goto 30,53.355,74.209,20,0
    .goto 30,53.063,82.341,15 >>Vá para |cRXP_FRIENDLY_Electra Molacurva|r
step
    .goto 30,53.063,82.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Electra Molacurva|r
    .turnin 28169 >>Entregue Retirada para o Galpão de Carregamento!
    .accept 27635 >>Aceite Descontaminação
	.target Gaffer Coilspring
step << skip -- not working currently in cata
    .goto 30,58.746,82.974
    >>|cRXP_WARN_Digite /sit em frente do |cRXP_FRIENDLY_Limpatron 500|r depois ative-o para pular a encenação|r
    .complete 27635,1 --Decontamination Process started (1)
    .target Sanitron 500
--XX  .emote SIT,46185 Doesn't work here, needs a delay (batch makes this not work)
--   .timer 26,Decontamination RP

step
    .isOnQuest 27635
    .goto 30,58.746,82.974
    .vehicle >>Clique em |cRXP_FRIENDLY_Limpatron 500|r
    .timer 30,Descontaminação RP
    .target Sanitron 500
step
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 27635,1 --Decontamination Process started (1)
    .target Sanitron 500
step
    .goto 30,66.420,81.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Técnico Fanfarrão|r
    .turnin 27635 >>Entregue Descontaminação
    .accept 27674 >>Aceite Rumo à Superfície
	.target Technician Braggle
step
    .goto 30,67.282,84.148
    .gossip 46293,0 >>Fale com |cRXP_FRIENDLY_Toninho Despachante|r
    .skipgossip 46293,1
    .isOnQuest 27674
    .target Torben Zapblast
step
    .goto 469,39.504,38.383
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nevin Girachave|r
    .turnin 27674 >>Entregue Rumo à Superfície
    .accept 26206 >>Aceite O Futuro de Gnomeregan << Gnome Rogue
    .accept 26197 >>Aceite O Futuro de Gnomeregan << Gnome Mage
    .accept 26199 >>Aceite O Futuro de Gnomeregan << Gnome Priest
    .accept 26202 >>Aceite O Futuro de Gnomeregan << Gnome Warlock
    .accept 26203 >>Aceite O Futuro de Gnomeregan << Gnome Warrior
    .accept 31135 >>Aceite O Futuro de Gnomeregan << Gnome Monk
    .accept 41217 >>Aceite O Futuro de Gnomeregan << Gnome Hunter
	.target Nevin Twistwrench
step << Gnome Rogue
    .goto 469,38.025,33.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelsey Fagulhaço|r
    .turnin 26206 >>Entregue O Futuro de Gnomeregan
    .accept 26423 >>Aceite Conheça o Grão-Faz-Tudo
	.target Kelsey Steelspark
step << Gnome Mage
    .goto 469,41.093,29.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bipsi Tacagelo|r
    .turnin 26197 >>Entregue O Futuro de Gnomeregan
    .accept 26421 >>Aceite Conheça o Grão-Faz-Tudo
	.target Bipsi Frostflinger
step << Gnome Priest
    .goto 469,39.406,28.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_"Doutora" Girarroda|r
    .turnin 26199 >>Entregue O Futuro de Gnomeregan
    .accept 26422 >>Aceite Conheça o Grão-Faz-Tudo
	.target "Doc" Cogspin
step << Gnome Warlock
    .goto 469,37.679,37.957
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r
    .turnin 26202 >>Entregue O Futuro de Gnomeregan
    .accept 26424 >>Aceite Conheça o Grão-Faz-Tudo
	.target Alamar Grimm
step << Gnome Warrior
    #loop
    .line 469,40.688,36.199,40.672,35.736,40.645,35.354,40.517,34.973
    .goto 469,40.688,36.199,10,0
    .goto 469,40.672,35.736,10,0
    .goto 469,40.645,35.354,10,0
    .goto 469,40.517,34.973,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Drill Seargent Steamcrank|r
    .turnin 26203 >>Entregue O Futuro de Gnomeregan
    .accept 26425 >>Aceite Conheça o Grão-Faz-Tudo
	.target Drill Seargent Steamcrank
step << Gnome Monk
    .goto 469,40.086,35.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xi, Amiga dos Pequenos|r
    .turnin 31135 >>Entregue O Futuro de Gnomeregan
    .accept 31137 >>Aceite Conheça o Grão-Faz-Tudo
	.target Xi, Friend to the Small
step << Gnome Hunter
    .goto 469,41.925,31.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muffinus Cromocerva|r
    .turnin 41217 >>Entregue O Futuro de Gnomeregan
    .accept 41218 >>Aceite Conheça o Grão-Faz-Tudo
	.target Muffinus Chromebrew
step
    .goto 469,38.802,32.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r
    .turnin 26423 >>Entregue Conheça o Grão-Faz-Tudo << Rogue
    .turnin 26421 >>Entregue Conheça o Grão-Faz-Tudo << Mage
    .turnin 26422 >>Entregue Conheça o Grão-Faz-Tudo << Priest
    .turnin 26424 >>Entregue Conheça o Grão-Faz-Tudo << Warlock
    .turnin 26425 >>Entregue Conheça o Grão-Faz-Tudo << Warrior
    .turnin 31137 >>Entregue Conheça o Grão-Faz-Tudo << Monk
    .turnin 41218 >>Entregue Conheça o Grão-Faz-Tudo << Hunter/Druid
    .accept 26208 >>Aceite A Luta Continua
	.timer 115,Conheça o Grão-Faz-Tudo RP
	.target High Tinker Mekkatorque
step
    .goto 469,38.802,32.715
    >>|cRXP_WARN_Espere o RP ao lado de|r |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r
    .complete 26208,1 --Learn about Operation: Gnomeregan (1)
--XX moves to     .goto 469,38.622,32.905 1-2s after objective completes
step
    .goto 469,38.622,32.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r
    .turnin 26208 >>Entregue A Luta Continua
    .accept 26566 >>Aceite O Triunfo da Inventividade Gnômica
	.target High Tinker Mekkatorque
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Engenheiro Fagulhamola|r
    .turnin 26566 >>Entregue O Triunfo da Inventividade Gnômica
    .accept 26222 >>Aceite Catando Sucata
	.target Engineer Grindspark
step
    #loop
    .goto 469,40.494,27.605,0
    .goto 469,40.120,29.225,0
    .goto 469,39.656,32.676,0
    .goto 469,41.582,29.198,0
    .goto 469,40.494,27.605,10,0
    .goto 469,39.198,24.420,15,0
    .goto 469,38.810,27.054,15,0
    .goto 469,40.120,29.225,15,0
    .goto 469,39.165,29.163,15,0
--  .goto 469,38.476,28.416,15,0 --Inside, would cause too much confusion
    .goto 469,38.584,29.471,15,0
    .goto 469,38.171,30.664,15,0
    .goto 469,36.688,31.718,15,0
    .goto 469,37.961,32.983,15,0
    .goto 469,39.656,32.676,15,0
    .goto 469,40.736,34.654,15,0
    .goto 469,41.463,35.446,15,0
    .goto 469,41.611,33.559,15,0
    .goto 469,41.052,33.663,15,0
    .goto 469,41.387,31.803,15,0
    .goto 469,42.278,28.782,15,0
    .goto 469,41.582,29.198,15,0
    >>Pegue as |cRXP_LOOT_Peças sobressalentes|r no chão
    .complete 26222,1 --Spare Part (7)
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Engenheiro Fagulhamola|r
    .turnin 26222 >>Entregue Catando Sucata
    .accept 26205 >>Aceite Esse É um Trabalho para o Multibô
	.target Engineer Grindspark
step
    .goto 469,39.225,26.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tock Molavivaz|r
    .accept 26264 >>Aceite O Que Deixamos para Trás
	.target Tock Sprysprocket
step
    .goto 469,38.201,40.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cabo Silvapito|r
    .accept 26265 >>Aceite Está na Chuva Radioativa É para Se Molhar
	.target Corporal Fizzwhistle
step
    #sticky
    #label Contamination
    #loop
    .goto 469,40.992,40.259,0
    .goto 469,37.170,40.971,0
    .goto 469,39.912,49.912,0
    .waypoint 469,40.992,40.259,40,0
    .waypoint 469,40.559,39.847,40,0
    .waypoint 469,39.968,40.426,40,0
    .waypoint 469,39.065,40.724,40,0
    .waypoint 469,38.592,40.539,40,0
    .waypoint 469,37.980,41.331,40,0
    .waypoint 469,37.170,40.971,40,0
    .waypoint 469,36.360,40.843,40,0
    .waypoint 469,34.620,43.365,40,0
    .waypoint 469,36.336,44.818,40,0
    .waypoint 469,39.912,49.912,40,0
    >>Mate os |cRXP_ENEMY_Contaminações Vivas|r
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
step
    #completewith Geysers
    .goto 469,38.054,47.396,0
    .goto 469,39.129,53.303,0
    .goto 469,41.419,42.524,0
    >>Mate os |cRXP_ENEMY_Lodos Tóxicos|r. Saqueie-os para obter as |cRXP_LOOT_Pertence Recuperado|r
    .complete 26264,1 --Recovered Possession (6)
    .mob *Toxic Sludge
step
    #label Geysers
    #loop
    .goto 469,40.578,28.021,0 --Grindspark
    .goto 469,40.029,42.015,0
    .goto 469,39.349,46.363,0
    .goto 469,41.328,50.585,0
    .goto 469,40.029,42.015,15,0
    .goto 469,41.629,44.514,15,0
    .goto 469,42.430,45.128,15,0
    .goto 469,39.349,46.363,15,0
    .goto 469,38.657,45.115,15,0
    .goto 469,37.860,46.624,15,0
    .goto 469,36.858,50.094,15,0
    .goto 469,37.386,50.996,15,0
    .goto 469,40.808,52.328,15,0
    .goto 469,41.910,51.865,15,0
    .goto 469,41.328,50.585,15,0
    >>Guie seu |cRXP_FRIENDLY_Multibô GS-9x|r para os Gêiseres nas piscinas verdes
    >>|cRXP_WARN_Se seu |cRXP_FRIENDLY_Multibô GS-9x|r morrer, volte para o |cRXP_FRIENDLY_Engenheiro Fagulhamola|r para um novo|r
    .complete 26205,1 --Clean up Toxic Geysers (5)
    .skipgossip 42553,1
    .target GS-9x Multi-bot
step
    #optional
    #loop
    .goto 469,38.054,47.396,0
    .goto 469,39.129,53.303,0
    .goto 469,41.419,42.524,0
    .goto 469,38.054,47.396,40,0
    .goto 469,35.840,46.516,40,0
    .goto 469,34.007,48.244,40,0
    .goto 469,34.752,49.411,40,0
    .goto 469,35.620,52.363,40,0
    .goto 469,36.659,52.593,40,0
    .goto 469,39.129,53.303,40,0
    .goto 469,40.837,53.655,40,0
    .goto 469,42.523,50.016,40,0
    .goto 469,40.920,48.049,40,0
    .goto 469,40.209,47.931,40,0
    .goto 469,41.419,42.524,40,0
    >>Mate os |cRXP_ENEMY_Toxic Sludges|r. Saqueie-os pelos |cRXP_LOOT_Pertence Recuperado|r
    .complete 26264,1 --Recovered Possession (6)
    .mob Toxic Sludge
step
    #requires Contamination
    .goto 469,38.201,40.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cabo Silvapito|r
    .turnin 26265 >>Entregue Está na Chuva Radioativa é para se Molhar
	.target Corporal Fizzwhistle
step
    .goto 469,40.578,28.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Engenheiro Fagulhamola|r
    .turnin 26205 >>Entregue Esse é um Trabalho para o Multibô
	.target Engineer Grindspark
step << Priest cata
    .goto Dun Morogh,33.898,34.782
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_"Doutora" Girarroda|r
    .trainer >>Treine suas magias de classe
	.target "Doc" Cogspin
step << Mage cata
    .goto Dun Morogh,34.534,35.065
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Bipsi Tacagelo|r
    .trainer >>Treine suas magias de classe
	.target Bipsi Frostflinger
step
    .goto 469,39.225,26.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tock Molavivaz|r
    .turnin 26264 >>Entregue O que Deixamos para Trás
	.target Tock Sprysprocket
step
    .goto 469,38.385,33.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Pierre Bicochispa|r
    .accept 26316 >>Aceite What's Keeping Jessup? << cata
    .accept 26316 >>Aceite Cadê Kharmarn? << !tbc !wotlk !cata
	.target Captain Tread Sparknozzle
step << Warrior cata
    .goto Dun Morogh,34.274,37.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento-instrutor Virabrequim|r
    .trainer >>Treine suas magias de classe
	.target Drill Sergeant Steamcrank
step << Warrior
    #optional
    .goto Dun Morogh,34.274,37.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento-instrutor Virabrequim|r
    .accept 26204 >>Aceite A Arte do Guerreiro
	.target Drill Sergeant Steamcrank
    .itemStat 16,QUALITY,<7
step << Warrior
    #optional
    .isOnQuest 26204
    .goto Dun Morogh,34.53,37.45
    >>|cRXP_WARN_Use|r |T132337:0|t[Investida] |cRXP_WARN_no|r |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 26204,1 << cata -- Practice Charge (1)
    .complete 26204,2 << mop -- Practice Charge (1)
    .mob Training Dummy
    .itemStat 16,QUALITY,<7
step << Warrior
    #optional
    .isQuestComplete 26204
    .goto Dun Morogh,34.274,37.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento-instrutor Virabrequim|r
    .turnin 26204 >>Entregue A Arte do Guerreiro
	.target Drill Sergeant Steamcrank
    .itemStat 16,QUALITY,<7
step << Warrior
    #optional
    #completewith next
    .equip 16,59039 >>|cRXP_WARN_Equipe o|r |T135275:0|t[Sabre Muito Leve]
    .use 59039
    .itemcount 59039,1
    .itemStat 16,QUALITY,<7
step << Warlock cata
    .goto Dun Morogh,33.246,38.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alamar Carranca|r
    .trainer >>Treine suas magias de classe
	.target Alamar Grimm
step << Rogue cata
    .goto Dun Morogh,33.376,36.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Kelsey Fagulhaço|r
    .trainer >>Treine suas magias de classe
	.target Kelsey Steelspark
step << Rogue
    #optional
    .goto Dun Morogh,33.376,36.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Kelsey Fagulhaço|r
    .accept 26207 >>Aceite A Arte do Ladino
	.target Kelsey Steelspark
    .itemStat 16,QUALITY,<7
step << Rogue
    #optional
    .isOnQuest 26207
    .goto Dun Morogh,34.53,37.45
    >>|cRXP_WARN_Use|r |T136189:0|t[Golpe Sinistro] |cRXP_WARN_e então|r |T132292:0|t[Eviscerar] |cRXP_WARN_em um|r |cRXP_ENEMY_Treinamento Boneco|r |cRXP_WARN_3 vezes|r << Rogue
    .complete 26207,1 << cata -- Practice Eviscerate (1)
    .complete 26207,2 << mop -- Practice Eviscerate (1)
    .mob Training Dummy
    .itemStat 16,QUALITY,<7
step << Rogue
    #optional
    .isQuestComplete 26207
    .goto Dun Morogh,33.376,36.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Kelsey Fagulhaço|r
    .turnin 26207 >>Entregue A Arte do Ladino
	.target Kelsey Steelspark
    .itemStat 16,QUALITY,<7
step << Rogue
    #optional
    #completewith next
    .equip 16,59043 >>|cRXP_WARN_Equipe o|r |T133514:0|t[Estrela da Morte]
    .use 59043
    .itemcount 59043,1
    .itemStat 16,QUALITY,<7
step
    .goto 469,37.283,65.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Jessup McCree|r << cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kharmarn Manalva <Mudanças Montanhosas Manalva Ltda.>|r << !tbc !wotlk !cata
    .turnin 26316 >>Entregue What's Keeping Jessup? << cata
    .turnin 26316 >>Entregue Cadê Kharmarn? << !tbc !wotlk !cata
    .accept 26284 >>Aceite Desaparecidos em Ação
    .accept 26285 >>Aceite Devolva Minha Pólvora Agora!
    .target Jessup McCree << cata
    .target Kharmarn Palegrip << !tbc !wotlk !cata
step
    #sticky
    #label PowderKegs
    .goto 469,38.413,67.778,0
    .goto 469,46.960,73.690,0
    .goto 469,42.336,69.559,0
    .waypoint 469,38.413,67.778,40,0
    .waypoint 469,36.284,70.305,40,0
    .waypoint 469,39.268,75.879,40,0
    .waypoint 469,42.366,75.706,40,0
    .waypoint 469,44.629,77.577,40,0
    .waypoint 469,45.326,73.024,40,0
    .waypoint 469,46.960,73.690,40,0
    .waypoint 469,47.296,72.654,40,0
    .waypoint 469,46.734,71.721,40,0
    .waypoint 469,47.119,68.438,40,0
    .waypoint 469,47.163,65.769,40,0
    .waypoint 469,43.581,70.051,40,0
    .waypoint 469,42.336,69.559,40,0
    >>Abate os |cRXP_ENEMY_Pedraqueixos Bonepickers|r e os |cRXP_ENEMY_Pedraqueixos Marauders|r. Saque-os para os |cRXP_LOOT_Barris de Pólvora Roubados|r
    .complete 26285,1 --Stolen Powder Keg (7)
	.mob Rockjaw Bonepicker
	.mob Rockjaw Marauder
step
    #loop
    .goto 469,36.560,68.469,0
    .goto 469,38.768,74.257,0
    .goto 469,45.803,69.339,0
    .goto 469,36.560,68.469,15,0
    .goto 469,38.134,68.845,15,0
    .goto 469,37.972,72.466,15,0
    .goto 469,38.768,74.257,15,0
    .goto 469,40.738,74.411,15,0
    .goto 469,41.168,69.792,15,0
    .goto 469,42.045,73.682,15,0
    .goto 469,45.032,73.353,15,0
    .goto 469,47.131,73.469,15,0
    .goto 469,47.007,71.031,15,0
    .goto 469,45.803,69.339,15,0
    .goto 469,43.887,70.268,15,0
    >>Clique nas |cRXP_PICK_Gaiolas Improvisadas|r para resgatar os |cRXP_FRIENDLY_Capturados Demolitionists|r
    .complete 26284,1 --Captured Demolitionists rescued (6)
step
    #requires PowderKegs
    .goto 469,37.283,65.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Jessup McCree|r << cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kharmarn Manalva <Mudanças Montanhosas Manalva Ltda.>|r << !tbc !wotlk !cata
    .turnin 26284 >>Entregue Desaparecidos em Ação
    .turnin 26285 >>Entregue Devolva Minha Pólvora Agora!
    .accept 26318 >>Aceite Ponto Final
    .target Jessup McCree << cata
    .target Kharmarn Palegrip << !tbc !wotlk !cata
step
	#completewith next
    .goto 470,95.285,56.045,15 >>Entre na Fortaleza Jubafria
    .isOnQuest 26318
step
    #completewith Bruggor
    .goto 470,87.857,52.221,15,0
    .goto 470,83.611,44.352,15,0
    .goto 470,74.752,38.437,15,0
    .goto 470,64.507,54.540,15,0
    .goto 470,60.714,72.486,15,0
    .goto 470,45.246,74.390,15,0
    .goto 470,31.866,44.578,45 >>Vá para o |cRXP_ENEMY_Chefe Brigor|r dentro
    >>|cRXP_WARN_Você não vai chamar atenção dos |cRXP_ENEMY_Pedraqueixos Fungo-Flingers Adormecidos|r a menos que você os ataque|r
    .noflyable --Azeroth Flying
step
    #completewith Bruggor
    .goto 470,87.857,52.221,15,0
    .goto 470,83.611,44.352,15,0
    .goto 470,74.752,38.437,15,0
    .goto 470,64.507,54.540,15,0
    .goto 470,60.714,72.486,15,0
    .goto 470,45.246,74.390,15,0
    .goto 470,31.866,44.578,45 >>Viaje em direção ao |cRXP_ENEMY_Chefe Brigor|r
    .flyable --Azeroth Flying
step
    #sticky
    #label Detonator
    .goto 470,36.112,40.902,0,0
    >>Clique no |cRXP_PICK_Detonador|r no chão dentro
    .complete 26318,1 --Detonate trogg tunnel (1)
step
    #label Bruggor
    .goto 470,21.791,58.700,15,0
    .goto 470,31.866,44.578
    >>Abate o |cRXP_ENEMY_Chefe Brigor|r dentro
    .complete 26318,2 --Boss Bruggor (1)
	.mob Boss Bruggor
step
    #requires Detonator
    #completewith Finishing
    .goto 470,45.246,74.390,15,0
    .goto 470,60.714,72.486,15,0
    .goto 470,64.507,54.540,15,0
    .goto 470,74.752,38.437,15,0
    .goto 470,83.611,44.352,15,0
    .goto 469,33.781,66.184,20 >>Saia da Fortaleza Jubafria
    >>|cRXP_WARN_Você não irá atrair a atenção dos |cRXP_ENEMY_Rockjaw Fungo-Flingers|r adormecidos, a não ser que os ataque|r
    .noflyable --Azeroth Flying
    .subzoneskip 135,1
step
    #optional
    #requires Detonator
    #completewith Finishing
    .goto 470,45.246,74.390,15,0
    .goto 470,60.714,72.486,15,0
    .goto 470,64.507,54.540,15,0
    .goto 470,74.752,38.437,15,0
    .goto 470,83.611,44.352,15,0
    .goto 469,33.781,66.184,20 >>Saia da Fortaleza Jubafria
    .flyable --Azeroth Flying
    .subzoneskip 135,1
step
    #label Finishing
    #requires Detonator
    .goto 469,37.283,65.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Jessup McCree|r << cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kharmarn Manalva <Mudanças Montanhosas Manalva Ltda.>|r << !tbc !wotlk !cata
    .turnin 26318 >>Entregue Ponto Final
    .accept 26329 >>Aceite Só Mais Uma Coisinha...
    .target Jessup McCree << cata
    .target Kharmarn Palegrip << !tbc !wotlk !cata
step
    #completewith next
    .goto 469,36.284,70.305,-1
    .goto 469,47.880,44.670,-1
-- .goto 425,38.29,58.12
    *|cRXP_WARN_Usar repetidamente /sit ou remover seu equipamento vai fazer você morrer mais rápido|r
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .skill riding,75,1
--XX NOTE: Dying in gnomer sends you to Chill Breeze
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r e |cRXP_FRIENDLY_Rique Splodelonj|r
    .turnin 26329 >>Entregue Só Mais Uma Coisinha...
    .accept 26331 >>Aceite Os Lacaios do Esmagrenagem
    .goto 469,38.802,32.715
	.target +High Tinker Mekkatorgue
    .accept 26333 >>Aceite Sem Tanques, por Favor
    .goto 469,38.204,33.662
	.target +Hinkles Fastblast
step
    #sticky
    #label Tanks
    #loop
    .goto 469,59.638,21.877,0
    .goto 469,53.711,22.482,0
    .goto 469,58.619,23.568,0
    .waypoint 469,59.638,21.877,15,0
    .waypoint 469,59.620,19.066,15,0
    .waypoint 469,58.784,18.047,15,0
    .waypoint 469,57.507,18.837,15,0
    .waypoint 469,56.560,20.889,15,0
    .waypoint 469,55.463,21.067,15,0
    .waypoint 469,53.711,22.482,15,0
    .waypoint 469,53.126,24.536,15,0
    .waypoint 469,54.080,26.011,15,0
    .waypoint 469,55.407,23.742,15,0
    .waypoint 469,56.513,23.676,15,0
    .waypoint 469,57.585,23.609,15,0
    .waypoint 469,58.619,23.568,15,0
    >>|cRXP_WARN_Use the|r |T133710:0|t[Techno-Granadas] |cRXP_WARN_on the|r |cRXP_ENEMY_Repaired Mechano-Tanks|r
    .complete 26333,1 --Repaired Mechano-Tanks destroyed (5)
	.mob Repaired Mechano-Tank
    .use 58200
step
    #sticky
    #label CrushcogM
    #loop
    .goto 469,54.018,26.884,0
    .goto 469,60.672,22.216,0
    .goto 469,52.540,24.667,0
    .goto 469,54.018,26.884,45,0
    .goto 469,55.919,26.336,45,0
    .goto 469,57.608,25.933,45,0
    .goto 469,60.002,25.191,45,0
    .goto 469,61.148,25.266,45,0
    .goto 469,60.490,23.847,45,0
    .goto 469,60.672,22.216,45,0
    .goto 469,56.948,18.526,45,0
    .goto 469,56.251,19.440,45,0
    .goto 469,54.541,18.700,45,0
    .goto 469,54.364,20.143,45,0
    .goto 469,52.960,21.320,45,0
    .goto 469,52.540,24.667,45,0
    >>Mate os |cRXP_ENEMY_Crushcog Batalha Suits|r e os |cRXP_ENEMY_Irradiated Technicians|r
	.complete 26331,1 --Crushcog's Minions killed (8)
	.mob Crushcog Battle Suit
	.mob Irradiated Technician
step
    #optional
    #requires CrushcogM
--XXREQ Placeholder invis step until multiple requires per step
step << skip
    #requires Tanks
    #completewith next
    .goto 469,56.346,21.833,-1
    .goto 469,47.880,44.670,-1
-- .goto 425,38.29,58.12
    *|cRXP_WARN_Usar /sit repetidamente ou remover seu equipamento fará você morrer mais rápido|r
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .skill riding,75,1
--XX unlikely to ever be worth
step
    #requires Tanks
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r, |cRXP_FRIENDLY_Rique Splodelonj|r e |cRXP_FRIENDLY_Kelsey Fagulhaço|r
    .turnin 26331 >>Entregue Os Lacaios do Esmagrenagem
    .goto 469,38.802,32.715
	.target +High Tinker Mekkatorgue
    .turnin 26333 >>Entregue Sem Tanques, por Favor
    .goto 469,38.204,33.662
	.target +Hinkles Fastblast
    .accept 26339 >>Aceite Preparativos na Aldeia da Cevada
    .goto 469,38.025,33.570
	.target +Kelsey Steelspark
step
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarvi Pisassombra|r
    .turnin 26339 >>Entregue Preparativos na Aldeia da Cevada
    .accept 26342 >>Aceite Teto Preto
	.target Jarvi Shadowstep
step
    #loop
    .goto 469,52.723,50.681,0
    .goto 469,52.556,44.220,0
    .goto 469,61.154,48.908,0
    .goto 469,52.723,50.681,50,0
    .goto 469,55.901,51.426,50,0
    .goto 469,52.556,44.220,50,0
    .goto 469,54.584,39.961,50,0
    .goto 469,61.154,48.908,50,0
    >>|cRXP_WARN_Use the|r |T133037:0|t[Paintinator] |cRXP_WARN_on|r |cRXP_ENEMY_Crushcog Sentinela-Bots|r
    .complete 26342,1 --Crushcog's Sentry Bot blinded (5)
	.mob Crushcog Sentry Bot
    .use 58203
step
    #optional
    #questguide
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarvi Pisassombra|r
    .turnin 26342 >>Entregue Pinte de Preto
    .accept 26364 >>Aceite Abaixo o Esmagrenagem!
	.target Jarvi Shadowstep
step
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarvi Pisassombra|r
    .turnin 26342 >>Entregue Teto Preto
	.target Jarvi Shadowstep
--XX Start of optional Amberstill Ranch - it sucks but is (probably) better than Airfield
step
    #questguide
    #optional
    #completewith Razlo
    #label Mekkatalk
    .goto 469,57.188,47.535
    .gossipoption 38798 >>Fale com o |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r
    .timer 72,Abaixo o Esmagrenagem! RP
    .target High Tinker Mekkatorque
    .isOnQuest 26364
step
    #questguide
    #optional
    #completewith next
    #requires Mekkatalk
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    +|cRXP_WARN_Use the|r |T308321:0|t[Orbital Seleção de Alvo Device] |cRXP_WARN_on|r |cRXP_ENEMY_Razlo Esmagrenagem|r |cRXP_WARN_and|r |cRXP_ENEMY_Crushcog's Guardiões|r
    .isOnQuest 26364
    .use 58253
step
    #questguide
    #label Razlo
    .goto 469,58.749,42.222
    >>Derrote |cRXP_ENEMY_Razlo Esmagrenagem|r
    .complete 26364,2 --Razlo Crushcog defeated (1)
    .use 58253
    .mob Razlo Crushcog
    .mob Crushcog's Guardians
--XX get instakilled on retail, not sure how it plays out for cata
step
    #questguide
    .goto 469,48.744,52.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarvi Pisassombra|r
    .turnin 26364 >>Entregue Abaixo o Esmagrenagem!
    .accept 26373 >>Aceite Para Kharanos e Avante!
	.target Jarvi Shadowstep
step
    .goto 27,49.906,44.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ciara Pedrafunda|r
    .accept 26380 >>Aceite Um Pulinho em Kharanos
	.target Ciara Deepstone
--XX Doable by other races but simpler to do for gnomes only
]])

RXPGuides.RegisterGuide([[

#xprate <1.2
#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-7 Dun Morogh
#next 6-9 Elwynn Forest
#defaultfor Dwarf/Gnome

<< Alliance

--XX 6-9 and 9-10 separated so can combine human guide without maintaining 2x code
step
    #xprate >1.19
    .next
    +-
step << Gnome
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Tharran|r
    .accept 25724 >>Aceite Agressão dos Jubafria
    .turnin 26373 >>Entregue Para Kharanos e avante!
	.target Captain Tharran
    .isOnQuest 26373
step
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Tharran|r
    .accept 25724 >>Aceite Agressão dos Jubafria
	.target Captain Tharran
step
    .goto 27,54.196,51.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
	.target Rejold Barleybrew
step
    .goto 27,53.933,50.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
	.target Ragnar Thunderbrew

step
    #optional
    #label Distillery
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >>Entre na Destilaria Cervaforte. Vá até o |cRXP_FRIENDLY_Estalajadeiro Belm|r lá dentro
    .subzoneskip 2102
step << Gnome
    #requires Distillery
    #completewith Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .turnin 26380,2 >>Entregue Um Pulinho em Kharanos
	.target Innkeeper Belm
    .isOnQuest 26380
--XX not sure how to do this otherwise


step
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_from him|r
    .collect 2894,1,384,1 --Rhapsody Malt (1)
    .home >>Defina sua Pedra de Regresso na Destilaria Cervaforte
	.target Innkeeper Belm
    .zoneskip 27,1
step << Warrior cata
    .goto 27,54.470,50.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Granis Celeraxa|r
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step << Dwarf/Gnome/DarkIronDwarf
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gremlock Pilsnor|r dentro da sala de fundo
    .accept 6387 >>Aceite Alunos Brilhantes
	.target Gremlock Pilsnor
step << Rogue cata
    .goto 27,54.673,50.933
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
step << Priest cata
    .goto 27,54.455,50.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Shaman cata
    .goto 27,54.605,50.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Halbin Marrãogélido|r
    .trainer >>Treine suas magias de classe
    .target Halbin Frosthammer
step << Mage cata
    .goto 27,54.609,50.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magis Fagulhamanto|r
    .trainer >>Treine suas magias de classe
    .target Magis Sparkmantle
step << Paladin cata
    .goto 27,54.709,50.392
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avar Marroforte|r
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Warlock cata
    .goto 27,54.437,52.022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Gimrizz Shadowcog
step << Hunter cata
    .goto 27,52.913,51.364
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .target Grif Wildheart
step
    .goto 27,53.124,49.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .turnin 24493 >>Entregue Não se Esqueça de Nós
	.target Tharek Blackstone
    .isOnQuest 24493
step
    #completewith next
    .goto 27,53.376,44.252,0
    .goto 27,53.193,42.603,0
    .goto 27,53.376,44.252,60,0
    .goto 27,53.193,42.603,60,0
	>>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os pelas suas |cRXP_LOOT_Costelinhas de Javali Macias|r
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #optional
    #completewith next
    #label Ramp
    .goto 27,51.034,40.862,50 >>Suba a rampa
    .subzoneskip 802
    .noflyable --Azeroth Flying
    .isOnQuest 25724
step << skip
    #requires Ramp
    #completewith Snowstrider
    .goto 27,49.056,37.135,45 >>|cRXP_WARN_[Raro] Procure pelo |cRXP_ENEMY_Grande Pai Articos|r. Mate-o se estiver em jogo|r
	.unitscan Great Father Arctikus
    .isOnQuest 25724
    .noflyable
step
    #sticky
    #requires Ramp
    #label Shimmerweed
    .goto 27,48.955,36.824,0
    .goto 27,48.330,38.486,0
    .goto 27,48.092,42.928,0
    .goto 27,48.773,42.485,0
    .goto 27,48.949,37.202,0
    .waypoint 27,48.955,36.824,15,0
    .waypoint 27,48.331,36.523,15,0
    .waypoint 27,47.734,37.203,15,0
    .waypoint 27,47.704,37.755,15,0
    .waypoint 27,48.330,38.486,15,0
    .waypoint 27,47.699,39.542,15,0
    .waypoint 27,48.504,42.035,15,0
    .waypoint 27,48.371,42.052,15,0
    .waypoint 27,48.092,42.928,15,0
    .waypoint 27,48.283,42.796,15,0
    .waypoint 27,48.316,43.158,15,0
    .waypoint 27,48.805,42.774,15,0
    .waypoint 27,48.773,42.485,15,0
    .waypoint 27,50.247,40.528,15,0
    .waypoint 27,49.153,41.241,15,0
    .waypoint 27,49.220,37.873,15,0
    .waypoint 27,48.949,37.202,15,0
    >>Mate os |cRXP_ENEMY_Frostmane Seers|r. Saqueie-os pelos seus |cRXP_LOOT_Tremulerva|r
    >>Abra os |cRXP_PICK_Cestos de Tremulerva|r no chão. Pegue o |cRXP_LOOT_Tremulerva|r deles
    .complete 315,1 --Shimmerweed (7)
	.mob Frostmane Seer
step
    #label Snowstrider
    #requires Ramp
    >>Mate os |cRXP_ENEMY_Frostmane Snowstriders|r e os |cRXP_ENEMY_Frostmane Seers|r
    .complete 25724,2 --Frostmane Snowstrider slain (7)
    .goto 27,50.507,39.991,0
    .goto 27,49.270,38.306,0
    .goto 27,47.506,39.668,0
    .goto 27,49.717,41.829,0
    .goto 27,50.507,39.991,50,0
    .goto 27,50.697,39.331,50,0
    .goto 27,50.165,38.971,50,0
    .goto 27,50.533,38.088,50,0
    .goto 27,49.270,38.306,50,0
    .goto 27,49.109,37.844,50,0
    .goto 27,48.866,37.838,50,0
    .goto 27,48.852,36.950,50,0
    .goto 27,47.506,39.668,50,0
    .goto 27,48.468,42.612,50,0
    .goto 27,49.264,42.981,50,0
    .goto 27,49.717,41.829,50,0
    .mob +Frostmane Snowstrider
    .complete 25724,1 --Frostmane Seer slain (5)
    .goto 27,49.142,39.986,0
    .goto 27,48.164,43.105,0
    .goto 27,49.362,37.687,0
    .goto 27,49.142,39.986,50,0
    .goto 27,48.924,39.588,50,0
    .goto 27,48.191,37.582,50,0
    .goto 27,48.544,40.678,50,0
    .goto 27,48.164,43.105,50,0
    .goto 27,48.539,43.228,50,0
    .goto 27,49.027,42.624,50,0
    .goto 27,49.836,37.127,50,0
    .goto 27,49.362,37.687,50,0
	.mob +Frostmane Seer
step
    #optional
    #requires Shimmerweed
	#completewith next
    .goto 27,50.495,40.006,70 >>Vá para o lado leste do acampamento. Ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r
    .noflyable --Azeroth Flying
step
    #requires Shimmerweed
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .noflyable --Azeroth Flying
step << Dwarf/Gnome/DarkIronDwarf
    #requires Shimmerweed
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brolan Barbavento|r
    .turnin 6387 >>Entregue Alunos Brilhantes
--  .accept 6391 >>Accept Ride to Ironforge
--[RARE] .fp Kharanos >>Get the Kharanos Flight Path
	.target Brolan Galebeard
--XX re-add 6391 if Airfield added
step
    #requires Shimmerweed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Tharran|r e o |cRXP_FRIENDLY_Intendente Glynna|r
    .turnin 25724 >>Entregue Agressão dos Jubafria
    .accept 313 >>Aceite De Longe Tudo É Mais Fácil
    .accept 25667 >>Aceite Controle Populacional
    .goto 27,53.713,52.190
	.target +Captain Tharran
    .accept 25668 >>Aceite Suprimentos Furtados
    .goto 27,53.707,52.095
	.target +Quartermaster Glynna
step
    .goto 27,54.196,51.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 315 >>Entregue Em Busca da Cerveja Perfeita
	.target Rejold Barleybrew
step
    #optional
    .isQuestComplete 384
    .goto 27,53.933,50.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
	.target Ragnar Thunderbrew
step
    #completewith WendigoCave
    .goto 27,51.697,54.360,0
    .goto 27,50.738,54.065,0
    .goto 27,49.815,53.919,0
    .goto 27,51.697,54.360,60,0
    .goto 27,50.738,54.065,60,0
    .goto 27,49.815,53.919,60,0
	>>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os por seus |cRXP_LOOT_Costelinhas de Javali Macias|r
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #sticky
    #label Pilfered
    #loop
    .goto 29,62.330,22.544,0
    .goto 29,70.564,57.907,0
    .goto 29,50.663,47.870,0
    .waypoint 29,62.330,22.544,15,0
    .waypoint 29,58.260,24.711,15,0
    .waypoint 29,57.075,45.882,15,0
    .waypoint 29,70.564,57.907,15,0
    .waypoint 29,69.021,60.488,15,0
    .waypoint 29,60.967,56.171,15,0
    .waypoint 29,56.301,54.391,15,0
    .waypoint 29,50.663,47.870,15,0
    >>Pegue os |cRXP_LOOT_Suprimentos furtados|r no chão
    .complete 25668,1 --Pilfered Supplies (6)
step
    #completewith WendigoCave
    >>Mate os |cRXP_ENEMY_Young Wendigos|r e os |cRXP_ENEMY_Wendigos|r
    .complete 25667,1 --Wendigo slain (10)
	.mob Wendigo
	.mob Young Wendigo
step
    #optional
    #label WendigoCave
    .goto 29,61.676,88.466,40 >>Entre na Caverna Wendigo
	.isOnQuest 25668
step
    #optional
    #sticky
    #label Wendigos
    #loop
    .goto 29,56.228,15.776,0
    .goto 29,69.067,56.919,0
    .goto 29,49.271,52.117,0
    .waypoint 29,56.228,15.776,40,0
    .waypoint 29,61.453,19.391,40,0
    .waypoint 29,65.808,34.242,40,0
    .waypoint 29,60.523,38.069,40,0
    .waypoint 29,69.067,56.919,40,0
    .waypoint 29,51.657,55.467,40,0
    .waypoint 29,49.271,52.117,40,0
    >>Mate os |cRXP_ENEMY_Wendigos|r lá dentro
    .complete 25667,1 --Wendigo slain (10)
	.mob Wendigo
step
    #optional
    #completewith next
    .goto 29,61.083,82.713,20,0
    .goto 29,58.971,77.810,20,0
    .goto 29,53.639,70.746,20,0
    .goto 29,51.947,65.073,20,0
    .goto 29,51.819,48.382,15 >>Vá para o |cRXP_FRIENDLY_Montanhista Dunstan|r lá dentro
    .isOnQuest 313
step
    .goto 29,51.819,48.382
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Dunstan|r lá dentro
    .complete 313,1 --Convey orders to Mountaineer Dunstan (1)
	.target Mountaineer Dunstan
    .skipgossip
step
    .goto 29,60.272,56.211
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lewin|r lá dentro
    .complete 313,2 --Convey orders to Mountaineer Lewin (1)
	.target Mountaineer Lewin
    .skipgossip
step
    .goto 29,61.511,22.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Valgrum|r lá dentro
    .complete 313,3 --Convey orders to Mountaineer Valgrum (1)
	.target Mountaineer Valgrum
    .skipgossip
--XX not doing Edan/Chest check due to deathskip location
step
    #optional
    #requires Pilfered
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Wendigos
    #completewith Afar
    >>|cRXP_WARN_Garanta que você morra em um local a leste/sudeste de onde o |cRXP_FRIENDLY_Montanhista Valgrum|r está|r
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isOnQuest 313
    .subzoneskip 131
step
    #requires Wendigos
    #label Afar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Tharran|r e com a |cRXP_FRIENDLY_Intendente Glynna|r
    .turnin 313 >>Entregue De Longe Tudo É Mais Fácil
    .turnin 25667 >>Entregue Controle Populacional
    .goto 27,53.713,52.190
	.target +Captain Tharran
    .turnin 25668 >>Entregue Suprimentos Furtados
    .goto 27,53.707,52.095
	.target +Quartermaster Glynna
step
    .goto 27,53.933,50.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
	.target Ragnar Thunderbrew
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 7-9 Dun Morogh
#next 9-11 Dun Morogh
#defaultfor None
<<Alliance
step
    .goto 27,54.196,51.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .accept 315 >>Aceite A Cerveja Perfeita
	.target Rejold Barleybrew
step
    .goto 27,53.933,50.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
	.target Ragnar Thunderbrew
step
    #requires Wendigos
    #label Afar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Tharran|r e o |cRXP_FRIENDLY_Intendente Glynna|r
    .turnin 313 >>Entregue Obrigado a Ver de Longe
    .turnin 25667 >>Entregue Abate dos Wendigos
    .accept 25792 >>Aceite Sempre em Frente!
    .goto 27,53.713,52.190
	.target +Captain Tharran
    .turnin 25668 >>Entregue Suprimentos Furtados
    .goto 27,53.707,52.095
	.target +Quartermaster Glynna
step
    .goto 27,53.262,51.917
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .accept 412 >>Aceite Operação Remendão
	.target Razzle Sprysprocket
step
    #completewith Gears
    .goto 27,55.315,56.087,0
    .goto 27,55.156,54.313,60,0
    .goto 27,55.315,56.087,60,0
	>>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os por seus |cRXP_LOOT_Costelinhas de Javali Macias|r
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step << skip
    #completewith Gears
    .goto 27,57.252,57.622,40,0
    .goto 27,60.260,57.034,15 >>|cRXP_WARN_[CHEST] Procure pelo |cRXP_PICK_Baú|r em Frostmane Front. Saqueie-o se estiver em jogo|r
step
    #sticky
    #label Gears
    .goto 27,61.927,55.860,0
    .goto 27,60.305,57.134,0
    .goto 27,56.337,56.955,0
    .waypoint 27,61.927,55.860,45,0
    .waypoint 27,61.571,55.817,45,0
    .waypoint 27,60.806,56.782,45,0
    .waypoint 27,60.460,56.838,45,0
    .waypoint 27,60.305,57.134,45,0
    .waypoint 27,59.977,57.500,45,0
    .waypoint 27,57.341,57.547,45,0
    .waypoint 27,56.923,57.456,45,0
    .waypoint 27,56.337,56.955,45,0
    >>Mate os |cRXP_ENEMY_Frostmane Scavengers|r. Saqueie-os pelos seus |cRXP_LOOT_Gyromechanic Engrenagens|r
    .complete 412,1 --Gyromechanic Gear (8)
	.mob Frostmane Scavenger
step
    #label Totems
    #loop
    .goto 27,56.705,56.430,0
    .goto 27,59.034,57.689,0
    .goto 27,57.648,58.825,0
    .goto 27,55.958,61.442,0
    .goto 27,56.705,56.430,20,0
    .goto 27,57.576,56.626,20,0
    .goto 27,58.403,56.723,20,0
    .goto 27,59.099,57.035,20,0
    .goto 27,59.034,57.689,20,0
    .goto 27,58.631,58.074,20,0
    .goto 27,58.186,57.427,20,0
    .goto 27,57.724,57.788,20,0
    .goto 27,57.648,58.825,20,0
    .goto 27,57.134,59.461,20,0
    .goto 27,56.937,60.250,20,0
    .goto 27,56.701,61.013,20,0
    .goto 27,55.958,61.442,20,0
    >>Usar a |T134424:0|t[Runa de Fogo] em |cRXP_ENEMY_Constriction Totens|r
    .complete 25792,1 --Constriction Totems burned (4)
    .use 56009
    .mob Constriction Totem
step
    #requires Gears
    .goto 27,55.315,56.087,0
    .goto 27,54.940,57.752,0
    .goto 27,53.276,57.839,0
    .goto 27,55.315,56.087,60,0
    .goto 27,55.156,54.313,60,0
    .goto 27,56.204,52.928,60,0
    .goto 27,54.940,57.752,60,0
    .goto 27,55.073,58.728,60,0
    .goto 27,54.442,59.686,60,0
    .goto 27,53.235,60.000,60,0
    .goto 27,53.276,57.839,60,0
	>>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os por seus |cRXP_LOOT_Costelinhas de Javali Macias|r
    .complete 384,1 --Tender Boar Ribs (4)
	.mob Crag Boar
step
    #sticky
    #label Pushing
    .goto 27,53.713,52.190,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Tharran|r
    .turnin 25792 >>Entregue Sempre em Frente!
    .accept 25838 >>Aceite Ajuda da Garagem do Gradaço
	.target Captain Tharran
--XX not sure if you need to turnin 412 to accept
step
    .goto 27,53.262,51.917
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .turnin 412 >>Entregue Operação Remendão
	.target Razzle Sprysprocket
step
    #requires Pushing
    .goto 27,54.196,51.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 315 >>Entregue Em Busca da Cerveja Perfeita
	.target Rejold Barleybrew
step
    .goto 27,53.933,50.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
	.target Ragnar Thunderbrew
step
    #completewith next
    .goto 27,53.941,50.053,15,0
    .goto 27,56.823,47.107,15 >>Vá para |cRXP_FRIENDLY_Delber Manigiro|r
    .noflyable
step
    .goto 27,56.823,47.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delber Manigiro|r
    .turnin 25838 >>Entregue Ajuda da Garagem do Gradaço
    .accept 25839 >>Aceite O Lançador Pessoal Super Seguro
	.target Delber Cranktoggle
step
    #completewith next
    .goto 27,56.725,46.583,-1
    .goto 27,56.758,46.518,-1
    .vehicle >>Use o |cRXP_PICK_Lançador Pessoal Super Seguro|r
    .timer 18.5,The Ultrasafe Personnel Launcher RP
    .isOnQuest 25839
    .noflyable
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Blate Gaxetabamba|r e |cRXP_FRIENDLY_Roque, o Estoque|r
    .turnin 25839 >>Entregue O Lançador Pessoal Super Seguro
    .accept 25840 >>Aceite Como Minar a Resistência
    .accept 25841 >>Aceite O Perigo Vem de Cima
    .goto 27,62.505,53.708
	.target +Slamp Wobblecog
    .accept 28868 >>Aceite A Vista de Baixo
    .goto 27,62.546,53.807
	.target +Snevik the Blade
step
    #sticky
    #label Builders
    .goto 27,63.237,57.685,0
    .goto 27,62.461,55.569,0
    .goto 27,60.230,56.060,0
    .goto 27,64.303,54.222,0
    .goto 27,64.240,56.533,0
    .waypoint 27,63.237,57.685,20,0
    .waypoint 27,62.898,57.772,20,0
    .waypoint 27,62.360,57.619,20,0
    .waypoint 27,62.169,56.801,20,0
    .waypoint 27,62.461,55.569,20,0
    .waypoint 27,62.860,55.116,20,0
    .waypoint 27,63.454,54.870,20,0
    .waypoint 27,61.662,54.594,20,0
    .waypoint 27,60.908,54.935,20,0
    .waypoint 27,60.693,55.826,20,0
    .waypoint 27,60.230,56.060,20,0
    >>Usar o |T133015:0|t[Viewpoint Equalizer] nos |cRXP_ENEMY_Frostmane Builders|r
    .complete 28868,1 --Frostmane Builders shrunk (5)
    .mob Frostmane Builder
    .use 67249
step
    #sticky
    #label Warriors
    .goto 27,62.959,56.486,0
    .goto 27,63.017,54.746,0
    .goto 27,64.023,56.068,0
    .waypoint 27,62.959,56.486,50,0
    .waypoint 27,62.214,56.630,50,0
    .waypoint 27,62.049,56.284,50,0
    .waypoint 27,62.154,54.625,50,0
    .waypoint 27,63.017,54.746,50,0
    .waypoint 27,63.875,54.960,50,0
    .waypoint 27,64.243,54.643,50,0
    .waypoint 27,64.023,56.068,50,0
	>>Mate os |cRXP_ENEMY_Frostmane Warriors|r
    .complete 25840,2 --Frostmane Warrior slain (5)
	.mob Frostmane Warrior
step << skip
    #sticky
    #label FrostmaneChest1
    .goto 27,64.706,54.003,20 >>|cRXP_WARN_[BAÚ] Procure o |cRXP_PICK_Baú|r perto das escadas até a cabana. Saque-o se estiver disponível|r
    .isOnQuest 25841
step
    .goto 27,64.487,54.103
    >>Usar o |T133033:0|t[Sinal de Fumaça] no Acampamento do Norte
    .complete 25841,1 --Attack on Northern Frostmane Retreat (1)
    .use 56048
step
    #requires FrostmaneChest1
    .goto 27,63.780,55.735
    >>Mate |cRXP_ENEMY_Battok, o Berserker|r
    .complete 25840,1 --Battok the Berserker slain (1)
    .mob Battok the Berserker
step << skip
    #completewith next
    .goto 27,63.550,56.118,20 >>|cRXP_WARN_[BAÚ] Procure o |cRXP_PICK_Baú|r perto do Tambor. Saque-o se estiver disponível|r
    .isOnQuest 25841
step
    #requires FrostmaneChest2
    .goto 27,63.191,57.128
    >>Usar o |T133033:0|t[Sinal de Fumaça] no Acampamento do Sul
    .complete 25841,2 --Attack on Southern Frostmane Retreat (1)
    .use 56048
step
    #optional
    #requires Builders
--XXREQ Placeholder invis step until multiple requires per step
step
    #questguide
    #optional
    #requires Warriors
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roque, o Estoque|r e |cRXP_FRIENDLY_Blate Gaxetabamba|r
    .turnin 28868 >>Entregue A Vista de Baixo
    .goto 27,62.546,53.807
	.target +Snevik the Blade
    .turnin 25840 >>Entregue Como Minar a Resistência
    .turnin 25841 >>Entregue O Perigo Vem de Cima
    .accept 25882 >>Aceite Uma Mãozinha para o Rancho
    .goto 27,62.505,53.708
	.target +Slamp Wobblecog
step
    #requires Warriors
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Roque, o Estoque|r e |cRXP_FRIENDLY_Blate Gaxetabamba|r
    .turnin 28868 >>Entregue A Vista de Baixo
    .goto 27,62.546,53.807
	.target +Snevik the Blade
    .turnin 25840 >>Entregue Como Minar a Resistência
    .turnin 25841 >>Entregue O Perigo Vem de Cima
    .goto 27,62.505,53.708
	.target +Slamp Wobblecog
step
    #questguide
    .goto 27,70.410,48.918
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Pedertelo|r para começar a escolta
    .turnin 25882 >>Entregue Uma Mãozinha para o Rancho
    .accept 25932 >>Aceite Não Há Nada que os Impeça quando a Noite Cai
    .timer 49.5,It's Raid Night Every Night RP
    .target Sergeant Flinthammer
step
    #questguide
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>Mate os |cRXP_ENEMY_Frostmane Raiders|r
    .complete 25932,1 --Defend Amberstill Ranch (1)
    .mob Frostmane Raider
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Pedertelo|r e |cRXP_FRIENDLY_Veron Ambarmanso|r
    .turnin 25932 >>Entregue Não Há Nada que os Impeça quando a Noite Cai
    .goto 27,70.410,48.918
    .target +Sergeant Flinthammer
    .accept 25905 >>Aceite A Fuga dos Carneiros
    .goto 27,70.643,48.947,5,0
    .goto 27,70.667,48.872
    .target +Veron Amberstill
step
    #questguide
    .goto 27,70.280,48.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    #questguide
    #completewith next
    .goto 27,69.406,48.810,15,0
    .goto 27,69.652,47.319,45 >>Vá até o topo da montanha pelo atalho em direção a |cRXP_ENEMY_Ragash|r
    .noflyable
step
    #questguide
    .goto 27,69.652,47.319
    >>Mate |cRXP_ENEMY_Ragash|r. Saqueie-o pela |cRXP_LOOT_Presa de Ragash|r
    .complete 314,1 --Fang of Vagash (1)
    .mob Vagash
step
    #questguide
    .goto 27,70.280,48.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    #questguide
    .goto 27,70.897,54.543,0
    .goto 27,69.536,57.132,0
    .goto 27,70.494,55.638,0
    .goto 27,70.897,54.543,50,0
    .goto 27,70.103,54.570,50,0
    .goto 27,69.532,54.826,50,0
    .goto 27,69.459,56.016,50,0
    .goto 27,69.536,57.132,50,0
    .goto 27,69.669,58.206,50,0
    .goto 27,70.946,58.959,50,0
    .goto 27,70.401,57.412,50,0
    .goto 27,70.494,55.638,50,0
    >>Clique nos |cRXP_FRIENDLY_Stolen Rams|r para assobiá-los de volta para Amberstill para recuperá-los
    .complete 25905,1 --Stolen Rams recovered (6)
    .emote WHISTLE,41539
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veron Ambarmanso|r e o |cRXP_FRIENDLY_Sargento Pedertelo|r
    .turnin 25905 >>Entregue A Fuga dos Carneiros
    .goto 27,70.643,48.947,5,0
    .goto 27,70.667,48.872
    .target +Veron Amberstill
    .accept 25933 >>Aceite Ajuda na Pedreira
    .goto 27,70.410,48.918
    .target +Sergeant Flinthammer
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 9-11 Dun Morogh
#displayname 9-10 Dun Morogh
#next 10-20 Loch Modan
#defaultfor Dwarf/Gnome/Human

<< Alliance

step << Human
    #completewith next
    #label FlySW
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolotto, o Bravo|r
    .fly Gol'Bolar Quarry >>Voe para Gol'Bolar Pedreira
	.target Bartlett the Brave
    .zoneskip Dun Morogh

step
    .goto 27,75.899,54.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .accept 433 >>Aceite O Funcionário Público
    .target Senator Mehr Stonehallow
step
    .goto 27,76.187,53.043
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Drugan|r
    .accept 25937 >>Aceite Tesouros Inestimáveis
    .target Prospector Drugan
step
    #optional
    .goto 27,76.314,54.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
    .turnin 25933 >>Entregue Ajuda na Pedreira
    .target Foreman Stonebrow
    .isOnQuest 25933
step
    #xprate >1.59
    #optional
    .maxlevel 12,endOfTheGuide
step
    .goto 27,76.314,54.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs
    .target Foreman Stonebrow
step
    #optional
    #completewith next
    .goto 31,47.46,91.03,20 >>Entre na Mina da Pedreira Gol'Bolar
    .isOnQuest 432
--XX No subzone ID for the mine (returns error)
step
    #sticky
    #label Bonesnappers
    #loop
    .goto 31,34.187,78.128,0
    .goto 31,40.856,80.145,0
    .goto 31,36.930,44.837,0
    .goto 31,52.851,20.234,0
    .goto 31,66.155,59.716,0
    .waypoint 31,33.77,82.69,25,0
    .waypoint 31,46.60,81.48,25,0
    .waypoint 31,38.77,64.92,20,0
    .waypoint 31,32.17,43.58,25,0
    .waypoint 31,48.90,36.81,25,0
    .waypoint 31,50.56,22.97,25,0
    .waypoint 31,54.33,10.09,35,0
    .waypoint 31,67.03,60.11,35,0
    .waypoint 31,48.90,36.81,25,0
    .waypoint 31,38.77,64.92,20,0
    >>Mate os |cRXP_ENEMY_Pedraqueixo Skullthumpers|r e os |cRXP_ENEMY_Pedraqueixo Bonesnappers|r dentro
    >>Pegue os |cRXP_PICK_Frozen Artifacts|r no chão
    .complete 432,1 --Rockjaw Skullthumper (8)
    .disablecheckbox
    .complete 432,2 --Rockjaw Bonesnapper (8)
    .mob +Rockjaw Bonesnapper
    .complete 25937,1,6 --Frozen Artifact (6/8)
    .mob *Rockjaw Skullthumper
--XX No good way to tie Skullthumper to an objective in this scenario
step
    #loop
    .goto 31,34.187,78.128,0
    .goto 31,40.856,80.145,0
    .goto 31,36.930,44.837,0
    .goto 31,52.851,20.234,0
    .goto 31,66.155,59.716,0
    .goto 31,33.77,82.69,25,0
    .goto 31,46.60,81.48,25,0
    .goto 31,38.77,64.92,20,0
    .goto 31,32.17,43.58,25,0
    .goto 31,48.90,36.81,25,0
    .goto 31,50.56,22.97,25,0
    .goto 31,54.33,10.09,35,0
    .goto 31,67.03,60.11,35,0
    .goto 31,48.90,36.81,25,0
    .goto 31,38.77,64.92,20,0
    >>Usar o |T134423:0|t[Runas de Retorno] nos |cRXP_FRIENDLY_Capturados Miners|r dentro
    .complete 433,1 --Trapped Miners rescued (7)
    .use 56222
    .target Trapped Miner
step
    #optional
    #requires Bonesnappers
    .goto 27,77.84,55.24,20 >>Saia da Mina da Pedreira Gol'Bolar
    .isOnQuest 432
step
    #sticky
    #label Artifacts
    .goto 27,77.48,56.88,0
    .goto 27,77.37,55.11,40,0
    .goto 27,76.66,55.77,40,0
    .goto 27,74.80,56.88,40,0
    .goto 27,74.19,58.06,40,0
    .goto 27,75.12,58.43,40,0
    .goto 27,76.55,57.47,40,0
    .goto 27,77.74,57.90,40,0
    .goto 27,78.35,56.30,40,0
    >>Pegue os |cRXP_PICK_Frozen Artifacts|r no chão
    .complete 25937,1 --Frozen Artifact (8)
step
    #loop
    .goto 27,77.48,56.88,0
    .goto 27,77.37,55.11,40,0
    .goto 27,76.66,55.77,40,0
    .goto 27,74.80,56.88,40,0
    .goto 27,74.19,58.06,40,0
    .goto 27,75.12,58.43,40,0
    .goto 27,76.55,57.47,40,0
    .goto 27,77.74,57.90,40,0
    .goto 27,78.35,56.30,40,0
    >>Mate os |cRXP_ENEMY_Pedraqueixo Skullthumpers|r fora
    .complete 432,1 --Rockjaw Skullthumper (8)
    .mob Rockjaw Skullthumper
step
    #requires Artifacts
    .goto 27,76.314,54.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target Foreman Stonebrow
step
    #questguide
    .goto 27,75.899,54.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 433 >>Entregue O Funcionário Público
    --.accept 25986 >> Accept Trouble at the Lake
    --trouble at the lake require all 3 quest to be turned, not worth the run back
    .target Senator Mehr Stonehallow
--XX Breadcrumb unlocks after completing all 3 quests, not worth the xp of running 60 extra yards
step
    .goto 27,75.899,54.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 433 >>Entregue O Funcionário Público
    .target Senator Mehr Stonehallow
--XX non-questguide needed
step
    .goto 27,76.187,53.043
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Drugan|r
    .turnin 25937 >>Entregue Tesouros Inestimáveis
    .target Prospector Drugan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khorgorn Chamuscapena|r e com o |cRXP_FRIENDLY_Sargento Bahrum|r
    .accept 25979 >>Aceite Surto Elemental
    .goto 27,82.642,48.295
    .target +Khurgorn Singefeather
    .turnin -25986 >>Entregue Problemas no Lago
    .accept 25978 >>Aceite Caindo numa Fria
    .goto 27,82.854,48.409
    .target +Sergeant Bahrum
step
    #xprate >1.59
    #optional
    .maxlevel 12,endOfTheGuide
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Khorgorn Chamuscapena|r e o |cRXP_FRIENDLY_Sargento Bahrum|r
    .accept 25979 >>Aceite Surto Elemental
    .goto 27,82.642,48.295
    .target +Khurgorn Singefeather
    .accept 25978 >>Aceite Caindo numa Fria
    .goto 27,82.854,48.409
    .target +Sergeant Bahrum
--XX non-questguide needed
step
    #loop
    .goto 27,82.139,52.619,0
    .goto 27,82.996,53.473,0
    .goto 27,85.594,54.978,0
    .goto 27,85.545,51.344,0
    .goto 27,83.967,49.804,0
    .goto 27,83.062,49.742,30,0
    .goto 27,82.139,52.619,30,0
    .goto 27,82.996,53.469,30,0
    .goto 27,82.996,53.473,30,0
    .goto 27,84.364,55.220,30,0
    .goto 27,85.594,54.978,30,0
    .goto 27,85.172,52.836,30,0
    .goto 27,85.545,51.344,30,0
    .goto 27,84.985,49.687,30,0
    .goto 27,83.967,49.804,30,0
    >>Mate os |cRXP_ENEMY_Helm's Bed Surgers|r
    >>Destrua os |cRXP_ENEMY_Icy Tombs|r para libertar os |cRXP_FRIENDLY_Frozen Mountaineers|r
    .complete 25979,1 --Helm's Bed Surger (6)
    .mob +Helm's Bed Surger
    .complete 25978,1 --Frozen Mountaineers freed (6)
    .mob +Icy Tomb
step
#xprate >1.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Khorgorn Chamuscapena|r
    .turnin 25979 >>Entregue Surto Elemental
    .goto 27,82.642,48.295
    .target +Khurgorn Singefeather
    .turnin 25978 >>Entregue Caindo numa Fria
    .goto 27,82.854,48.409
    .target +Sergeant Bahrum
step
#xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khorgorn Chamuscapena|r
    .turnin 25979 >>Entregue Surto Elemental
    .goto 27,82.642,48.295
    .target +Khurgorn Singefeather
    .turnin 25978 >>Entregue Caindo numa Fria
    .accept 25997 >>Aceite Armações dos Ferro Negro
    .goto 27,82.854,48.409
    .target +Sergeant Bahrum
step
#xprate <1.2
    #sticky
    #label Spies
    #loop
    .goto 27,84.507,58.595,0
    .waypoint 27,84.412,60.513,50,0
    .waypoint 27,83.302,59.242,50,0
    .waypoint 27,83.728,57.545,50,0
    .waypoint 27,84.528,57.093,50,0
    .waypoint 27,85.580,57.504,50,0
    .waypoint 27,85.254,60.177,50,0
    >>Mate os |cRXP_ENEMY_Escuridão Ferro Spies|r
    .complete 25997,1 --Dark Iron Spy (5)
    .mob *Dark Iron Spy
step
#xprate <1.2
    #optional
    #completewith Beld
    .goto 27,85.20,60.62,10,0
    .goto 27,85.19,60.98,8 >>Entre no Ironband's Compound
    .isOnQuest 25997
step
#xprate <1.2
    #label Beld
    .goto 27,85.172,60.614
    >>Mate o |cRXP_ENEMY_Capitão Beld|r dentro do Complexo do Faixa de Ferro no andar inferior. Saqueie-o para obter os |cRXP_LOOT_Dark Ferro Atacar Plans|r
    .complete 25997,2 --Dark Iron Attack Plans (1)
    .mob Captain Beld
step
#xprate <1.2
    #requires Spies
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
#xprate <1.2
    #requires Spies
    .goto 27,82.854,48.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Bahrum|r
    .turnin 25997 >>Entregue Armações dos Ferro Negro
    --.accept 25998 >>Accept Get to the Airfield << !Human
    .target Sergeant Bahrum
step
    #optional
    .maxlevel 12,endOfTheGuide
step
    #optional
    #completewith next
    .goto 27,87.534,48.059,20,0
    .goto 27,88.331,47.792,12,0
    .goto 27,88.873,48.312,12,0
    .goto 48,12.138,54.947,20,0
    .goto 48,14.025,56.641,12 >>|cRXP_WARN_Viagem para cima da montanha, depois cuidadosamente desça em direção a|r |cRXP_FRIENDLY_Piloto Pisafundo|r
    .noflyable
step
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 26854 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    #optional
    #completewith next
    .goto 48,12.639,58.419,20,0
    .goto 27,89.543,51.716,20,0
    >>Viaje para |cRXP_PICK_A Enânico Cadáver|r no chão
    .noflyable
step
    .goto 27,87.633,50.139
    >>Clique em |cRXP_PICK_A Enânico Cadáver|r no chão
    >>|cRXP_WARN_Isso fará com que |cRXP_ENEMY_Ronhagarra|r comece a correr em sua direção|r
    .turnin 26854 >>Entregue O Piloto Perdido
    .accept 26855 >>Aceite A Vingança do Piloto
step
    .goto 27,87.421,50.013,0
    .goto 27,87.357,49.213
    >>Mate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o para obter seu |cRXP_LOOT_Mangy Garra|r
    .complete 26855,1 --Mangy Claw (1)
    .unitscan Mangeclaw
step
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 26855 >>Entregue A Vingança do Piloto
    .accept 13635 >>Aceite Relatório Situacional do Portão Sul
    .target Pilot Hammerfoot
step
    #optional
    #label endOfTheGuide
step
    .goto 48,16.385,58.564,30,0
    .goto 48,19.511,62.766,30,0
    .goto 48,21.097,64.989,30 >>Viaje pelo Desfiladeiro do Portão Sul para Loch Modan
    .noflyable
    .isOnQuest 26855
step << skip
    .hs >>Use sua Pedra de Regresso para ir a |cFFfa9602Cervaforte Distillery|r
step << skip
    #completewith next
    .goto 27,53.80,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brolan Barbavento|r
    .fly Ironforge >>Voe para Altaforja
	.target Brolan Galebeard
step << skip
    #optional
    #completewith Gryth
    .goto 87,55.876,38.146,15,0
    .goto 87,51.865,30.064,15,0
    .goto 87,49.712,28.525,8,0
	.goto 87,51.54,26.30,6 >>Viaje em direción a Golnir Topadão
    .noflyable --Azeroth Flying
step << skip
    #completewith next
    .goto 87,49.712,28.525,8,0
	.goto 87,51.54,26.30,6 >>Vá para |cRXP_FRIENDLY_Golnir Topadão|r
    .flyable --Azeroth Flying
step << skip
    #label Gryth
    .goto 87,51.521,26.310
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Golnir Topadão|r
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
	.target Golnir Bouldertoe
step << skip
    .goto 87,55.508,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .turnin 6388 >>Entregue Grif Trovino
	.target Gryth Thurden
step << skip
    #completewith next
    .goto 87,57.97,34.68,15,0
    .goto 87,62.84,29.74,20,0
    .goto 87,69.95,33.94,10,0
    .goto 87,71.37,45.83,15,0
    .goto 87,76.7,51.3,10,0
    .goto 499,66.61,34.72,250,0
    .goto 499,42.46,13.03
    .zone 84 >>Pegue o Deeprun Tram |cFFfa9602to Objetos de TBC.|r
    >>|cRXP_WARN_Você pode ter que esperar o trem chegar na estação.|r
--TODO: this might not work on the cata client, also add deeprun tram quest if possible (not available on retail)
--XX Needs XP check: Should go straight to Loch if 12+? and ignore Elwynn
step << skip
    .goto Stormwind City,63.07,71.46
    >>Clique em |cRXP_PICK_Tabuleiro do Chamado ao Heroísmo|r
    .accept 28562 >>Aceite O Chamado ao Heroísmo: Cerro Oeste!
--XX Better to get the alternative quest from Elwynn (26378)
step << skip
    #completewith next
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >>Vá em direção a |cRXP_FRIENDLY_Dungar Tragolongo|r
    .skill riding,75,1
step << skip
    #completewith next
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Goldshire >>Voe para Goldshire
	.target Dungar Longdrink
    .zoneskip 37 --Elwynn Forest
--XX Elwynn Non-human route: Copy retail elwynn (Fargo->Hogger->WF start->HS/Fly Goldshire->Eastvale->HS/Fly Loch/Fly Redridge?)
step << skip
    .goto 37,42.11,65.93
    .zone 37 >>Viaje para Elwynn Forest
    .isQuestAvailable 62 --The Fargodeep Mine
]])
