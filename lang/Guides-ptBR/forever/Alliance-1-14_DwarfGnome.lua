if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Coldridge Valley
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Você selecionou um guia pensado para Gnomos e Anões. Você deveria escolher a mesma zona inicial onde você começa.
step << !Warlock !Warrior !Shaman
    #softcore << Warlock
    #optional
    #completewith WolfMeat
	.destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Equipadores Anões
    .target Sten Stoutarm
step << Warrior/Warlock/Shaman
    #season 0,1
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_abate e saque os |cRXP_ENEMY_Ragged Young Wolves|r até ter 10 cobre ou mais de lixo de vendedor|r
    >>|cRXP_WARN_Desequipar suas|r |T132665:0|t[Veste do Acólito]|cRXP_WARN_,|r |T135005:0|t[Camisa do Acólito]|cRXP_WARN_,|r |T134581:0|t[Calças do Acólito]|cRXP_WARN_, e|r |T132535:0|t[Sapatos do Acólito] |cRXP_WARN_para que você possa vendê-los por 4 cobre|r << Warlock
    >>|cRXP_WARN_Desequipar suas|r |T135009:0|t[Camisa do Recruta]|cRXP_WARN_,|r |T134582:0|t[Calças do Recruta]|cRXP_WARN_, e|r |T132540:0|t[Botas do Recruta] |cRXP_WARN_para que você possa vendê-los por 3 cobre|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock/Shaman
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Warrior/Warlock/Shaman
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .vendor >>Lixo de Mercador
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
    .train 8017,1 << Shaman
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r dentro
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r dentro
    .train 348 >>Treine |T135817:0|t[Imolação]
    .accept 1599 >>Aceite Beginnings
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teo Hammerstorm|r dentro
    .train 8017 >>Treine |T136086:0|t[Arma Trinca-pedra]
    .target Teo Hammerstorm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >>Volte para Coldridge Valley
    .subzoneskip 77,1
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário

step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Mate os |cRXP_ENEMY_Ragged Young Wolves|r. Saqueie-os para obter |cRXP_LOOT_Tough Lobo Carne|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >>Farme até o nível 2
    .mob Ragged Young Wolf
step << Priest/Mage/Warlock/Shaman
    #season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Mercador
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r << !Shaman
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r << Shaman
    >>|cRXP_WARN_Farme mais |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    .collect 159,15 << !Shaman --Collect Refreshing Spring Water (x15)
    .collect 159,10 << Shaman --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Shaman
    #completewith next << !Hunter
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>|cRXP_BUY_Compre 600|r |T132384:0|t[Luz Shots] |cRXP_BUY_dele|r << Hunter
    .vendor >>|cRXP_WARN_Venda lixo|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179 >>Entregue Equipadores Anões
    .accept 233 >>Aceite Entrega de Correio do Vale Coldridge
    .accept 3106 >>Aceite Runa Simples << Dwarf Warrior
    .accept 3107 >>Aceite Runa Consagrada << Dwarf Paladin
    .accept 3108 >>Aceite Runa Cinzelada << Dwarf Hunter
    .accept 3109 >>Aceite Runa Cifrada << Dwarf Rogue
    .accept 3110 >>Aceite Runa Santificada << Dwarf Priest
    .accept 3112 >>Aceite Simple Memorandum << Gnome Warrior
    .accept 3113 >>Aceite Memorando Criptografado << Gnome Rogue
    .accept 3114 >>Aceite Memorando Glífico << Gnome Mage
    .accept 3115 >>Aceite Runa Conspurcada << Gnome Warlock
    .accept 98574 >>Aceite Hallowed Memorandum << Gnome Priest
    .accept 98581 >>Aceite Runa Arcaica << Dwarf Shaman
    .target Sten Stoutarm

step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto 1426/0,479.72,-6498.17,20 >>Entre em Frostmane Cave
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >>Vá para os |cRXP_ENEMY_Frostmane Novices|r dentro
step << Warlock
    #season 0,1
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Mate os |cRXP_ENEMY_Frostmane Novices|r dentro. Saqueie-os por seu |cRXP_LOOT_Feather Charms|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 0,1
    #hardcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .hs >>Volte para Coldridge Valley
    .subzoneskip 77,1
--XX Era hardcore warlocks
step << Warlock
    #season 0,1
    #hardcore
    #optional
    #requires BeginningsHS
    #completewith BeginningsEnd
	.destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário
--XX HC Warlocks drop HS (No hearthstone items remain)
step << Warlock
    #season 0,1
    #softcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << Warlock
    #season 0,1
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar << Warlock
step << Warlock
    #season 0,1
    #label BeginningsEnd
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r no andar de cima
    .turnin 1599 >>Entregue Beginnings
    .turnin -3115 >>Entregue Runa Conspurcada
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal

step
#season 0,1
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Coldridge Valley Malha Entrega
    .accept 183 >>Aceite O Caçador de Javalis
    .accept 234 >>Aceite Entrega de Correio do Vale Coldridge
    .target Talin Keeneye
step
#season 0,1
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Mate os |cRXP_ENEMY_Javalis Pequenos do Penhasco|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
#season 0,1
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 183 >>Entregue O Caçador de Javalis
    .target Talin Keeneye

step << Paladin/Warlock/Shaman
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >>Farme até 1130+/1400xp
step
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 234 >>Entregue Coldridge Valley Malha Entrega
    .accept 182 >>Aceite The Trolls Cave
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >>Farme até o nível 4
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isto iniciará um temporizador de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter/Shaman
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Você tem 5 minutos para retornar a Anvilmar antes que|r |T132791:0|t[Rabo-de-galo Escaldante de Durnan] |cRXP_WARN_expire|r
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r dentro
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto 1426/0,365.21,-6091.86
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entregue Runa Cinzelada << Dwarf
    .train 1978 >>Treine |T132204:0|t[Picada de Serpente]
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r acima
    .turnin 3115 >>Entregue Memorando Conspurcado
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 98581 >>Entregue Runa Arcaica
    .accept 94373 >>Aceite Clamor da Terra
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Aceite Grund e Gozwin
step << Paladin
    #season 0,1
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r dentro
    .turnin 3107 >>Entregue Runa Consagrada << Dwarf
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Bromos Grummner
step << Warlock
#season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Mercador
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Paladin/Warlock/Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >>Vá até as colinas no norte de Coldridge Valley
step << Paladin/Warlock/Hunter
    >>Mate o |cRXP_ENEMY_Snow Leopardo Predador|r
    >>Pegue |cRXP_PICK_Gozwin's Mechanic's Histórico|r no chão
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
    .target Nori Pridedrift
step
    #loop
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r << !Shaman
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r. Saqueie-os pelos |cRXP_LOOT_Iceclaw Urso Pendants|r << Shaman
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .complete 94373,1 << Shaman--Iceclaw Bear Pendant (2)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 182 >>Entregue The Trolls Cave
    .accept 218 >>Aceite O Diário Roubado
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isto iniciará um cronômetro de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    +|cRXP_WARN_Você tem 5 minutos para obter |cRXP_LOOT_Diário de Grolin Barbabranca|r e retornar a Anvilmar antes|r |T132791:0|t[Durnan's Rabo-de-galo Escaldante] |cRXP_WARN_expirar|r
    >>|cRXP_WARN_Se você falhar a missão, não se preocupe pois pode obtê-la novamente depois|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >>Entre na Frostmane Cave
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>Viaje para |cRXP_ENEMY_Grik'nir o Frio|r dentro
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Mate o |cRXP_ENEMY_Grik'nir o Frio|r dentro. Saqueie-o pelos |cRXP_LOOT_Diário de Grolin Barbabranca|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #optional
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >>Saia da Frostmane Cave
    .subzoneskip 132
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    >>|cRXP_WARN_Se você falhou a missão, pule este passo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter !Shaman
    #optional
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .accept 3365 >>Aceite Trazer a Caneca
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >>Abandone a missão [Durnan's Rabo-de-galo Escaldante]. Você a aceitará novamente depois.
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r e |cRXP_FRIENDLY_Grolin Barbabranca|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .goto 1426/0,567.14,-6363.06
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .target Durnan Furcutter
    .isQuestAvailable 317

step << Mage
    #season 0,1
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Marryk Nurribit
step << Rogue
    #season 0,1
    .goto 1426/0,404.91,-6093.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Entregue Memorando Criptografado << Gnome
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Solm Hargrin
step << Priest
    #season 0,1
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >>Entregue Runa Santificada << Dwarf
    .turnin 98574 >>Entregue Memorando Santificado << Gnome
    .trainer >>Treine suas magias de classe
    .target Branstock Khalder
step << Warrior
    #season 0,1
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Thran Khorman
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >>Entregue para |cRXP_FRIENDLY_Teo Hammerstorm|r em Anvilmar
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94373 >>Entregue Call of Terra - Missão
    .accept 94374 >>Aceite Clamor da Terra
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Aceite Grund e Gozwin
step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >>Vá até as colinas no norte de Coldridge Valley
step << !Paladin !Warlock !Hunter
    >>Mate o |cRXP_ENEMY_Snow Leopardo Predador|r
    >>Pegue |cRXP_PICK_Gozwin's Mechanic's Histórico|r no chão
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Shaman
    .isOnQuest 94374
    .goto 1426/0,582.100,-5907.800
    .cast 8202 >>|cRXP_WARN_Use o|r |T134743:0|t[Sapta da Terra] |cRXP_WARN_na |cRXP_PICK_Pedra do Espírito|r para invocar a|r |cRXP_FRIENDLY_Manifestação Menor de Terra|r
    .use 6635
step << Shaman
    .goto 1426/0,576.500,-5908.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Minor Manifestação de Terra::5891|r
    .target Minor Manifestation of Earth::5891
    .turnin 94374 >>Entregue Call of Terra - Missão
    .accept 94375 >>Aceite Clamor da Terra
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >>Entregue para |cRXP_FRIENDLY_Teo Hammerstorm|r em Anvilmar
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94375 >>Entregue Call of Terra - Missão
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
    .target Nori Pridedrift
step << Dwarf Priest/Gnome Priest
    #optional
    .xp 4+1690 >>Triturar até 1690+/2100xp
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .turnin 97277 >>Entregue Grund e Gozwin
step << Dwarf Priest/Gnome Priest
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >>Aceite In Simpatia of the Luz - Missão
    .target Branstock Khalder
step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Montanhista Thalos::1965|r
    .target Mountaineer Thalos::1965
    .turnin 282 >>Entregue Observações de Senir
    .accept 420 >>Aceite Observações de Senir
    .accept 96628 >>Aceite O Aventureiro
step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hands Springsprocket::6782|r
    .target Hands Springsprocket::6782
    .accept 2160 >>Aceite Suprimentos para Tannok
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >>Atravesse Coldridge Passe
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Anão/Gnomo);11-12 Missão do Andarilho do Vazio;12-14 Loch Modan (Anão/Gnomo);11-13 Loch Modan (Caçador)
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Guarde todos os|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você conseguir para Provisões para a Vaporeta e depois para subir seu|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Auberdine depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto 1426/0,-499.17,-5644.37
    .xp 5+1325 >>Vá para Kharanos. Farme até 1325+/2800xp matando |cRXP_ENEMY_Crag Boars|r no caminho << Priest
    .xp 5+1595 >>Vá para Kharanos. Farme até 1595+/2800xp matando |cRXP_ENEMY_Crag Boars|r no caminho << !Priest
    .subzoneskip 131
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
--xx 410 the adventurer
--xx 410 the great outdoors
step
    #hardcore
    #completewith next
    .goto 1426/0,-499.17,-5644.37
    .subzone 131 >>Voe para Kharanos
    .mob Crag Boar
step
    #softcore
    #completewith next
    >>|cRXP_WARN_Certifique-se de que sua subzona NÃO é Coldridge Passe|r
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96628 >>Entregue O Aventureiro
    .accept 96608 >>Aceite Os Territórios Selvagens
step
    .goto 1426/0,-498.400,-5648.400
    >>|cRXP_WARN_Digite "/sit" no chat e aguarde um minuto ao redor da fogueira|r
    .complete 96608,1 -- /sit emote in chat 1/1
    .complete 96608,2 -- Gain boosted rest buff 1/1
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96608 >>Entregue Os Territórios Selvagens
    .accept 96629 >>Aceite Acampamento 101: Culinária
step
    #label SenirEnd
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca::1252|r
    .target Senir Whitebeard::1252
    .turnin 420 >>Entregue Observações de Senir
    .accept 98322 >>Aceitar Secure the Mountain
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto 1426/0,-526.11,-5639.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dannie Silvombida|r
    .vendor 6328 >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue (Rank 1)] |cRXP_BUY_se você puder pagar. Se não, você pode comprá-lo depois|r
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step
    .goto 1426/0,-523.35,-5590.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .turnin 2160,1 >>Entregue Suprimentos para Tannok << Warrior/Rogue
    .turnin 2160,2 >>Entregue Suprimentos para Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step
    .goto 1426/0,-529.600,-5590.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno::1226|r 
    .target Maxan Anvol::1226
    .accept 5625 >>Aceite Vestimentas da Luz << Priest
    .accept 99158 >>Aceite Amanhecer nas Montanhas
step << Priest
    .goto 1426/0,-453.81,-5668.73
    >>|cRXP_WARN_Lançar|r |T135929:0|t[Cura Inferior] (Rank 2) |cRXP_WARN_e depois|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_em |cRXP_FRIENDLY_Montanhista Dolf|r fora|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .turnin 5625 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Magis Sparkmantle
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Avar Marroforte|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Ingrid Dunwald|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Ingrid Dunwald
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    >>|cRXP_WARN_Pule este passo se você não tem 1 prata, ou se você desejar fazê-lo mais tarde|r
    .target Gremlock Pilsnor::1699
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .turnin 96629 >>Entregue Acampamento 101: Culinária
    .money <0.0100
step
    #optional
    .isQuestComplete 96629
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    .target Gremlock Pilsnor::1699
    .turnin 96629 >>Entregue Acampamento 101: Culinária
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
step << Rogue
    .goto 1426/0,-521.97,-5597.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compre as|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>Apague o |T135426:0|t[Faca de Arremesso Pequena Degradada] de sua mochila, pois não é mais necessário
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .home >>Defina sua Pedra de Retorno em Cervaforte Distillery
    .vendor >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_que você puder pagar|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto 1426/0,-464.45,-5573.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .accept 400 >>Aceite Ferramentas Para Gradaço
    .target Tharek Blackstone
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>Entre no edifício Ferraria
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto 1426/0,-428.45,-5590.65--c:Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    #requires DeleteOldDaggers << Rogue
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tognus Pederfogo|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t [Ferraria]
    .target Tognus Flintfire
step << Shaman
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre uma|r |T135145:0|t[Bengala]
    .target Grawn Thromwyn
    .money <0.0479
    .collect 2495,1 --Walking Stick (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step
    .goto 1426/0,-431.000,-5582.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tognus Pederfogo::1241|r 
    .target Tognus Flintfire::1241
    .accept 98321 >>Aceite Carregamento de Flintfire
step
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r e o |cRXP_FRIENDLY_Piloto Marchapedra|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
    .goto 1426/0,-632.15,-5466.540
    .target +Pilot Bellowfiz
    .accept 313 >>Aceite The Grizzled Den
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Gradaço|r e |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >>Entregue Ferramentas Para Gradaço
    .goto 1426/0,-682.23,-5488.94
    .target +Beldin Steelgrill
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compre um|r |T134708:0|t[Picareta de Mineração]>>|cRXP_BUY_. Se você não puder pagar, pule este passo|r
    .collect 2901,1 --Mining Pick (1)
    .goto 1426/0,-664.55,-5499.710
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto 1426/0,-660.91,-5528.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yarr Malhapedra|r no andar inferior
    >>|cRXP_WARN_Se você não puder pagar, pule este passo|r
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith RumbleshotAmmo
    .cast 2580 >>|cRXP_WARN_Lance|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining
step
    #completewith RumbleshotAmmo
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Thick Urso Fur|r
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Large Crag Boar
    .mob +Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Large Crag Boar
    .mob +Crag Boar
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Montanhista Gretchen::271546|r 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Entregue Segure a Montanha
    .accept 98319 >>Aceite Segure a Montanha
step
    #label RumbleshotAmmo
    .goto 1426/0,-371.400,-5746.900
    >>Abra o |cRXP_PICK_Ammo Caixote|r. Pegue |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    .goto 1426/0,-371.400,-5746.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Montanhista Gretchen::271546|r 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Entregue Segure a Montanha
    .accept 98319 >>Aceite Segure a Montanha
step
    #completewith MountaineerCornelius
    >>Mate todos os |cRXP_ENEMY_Wendigos|r. Saqueie-os para obter |cRXP_LOOT_Wendigo Manes|r
    >>Pegue |cRXP_PICK_Flintfire's Shipments|r no chão dentro da caverna Grizzled Den
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    #completewith MountaineerCornelius
    .goto 1426/0,-275.000,-5623.200,20 >>Entre na caverna Grizzled Den
step
    #label MountaineerCornelius
    .goto 1426/0,-221.800,-5516.300,20,0
    .goto 1426/0,-312.500,-5506.300
    >>Vá ao cadáver do |cRXP_FRIENDLY_Montanhista Cornelius|r na caverna Grizzled Den
    >>|cRXP_WARN_Tenha cuidado com os |cRXP_ENEMY_Wendigos|r de nível mais alto nas profundezas da caverna|r
    .complete 98319,1 --|Mountaineer Cornelius found
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    >>Mate todos os |cRXP_ENEMY_Wendigos|r. Saqueie-os para obter |cRXP_LOOT_Wendigo Manes|r
    >>Pegue |cRXP_PICK_Flintfire's Shipments|r no chão dentro da caverna Grizzled Den
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 136,1
step
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r ou os |cRXP_ENEMY_Ice Garra Ursos|r. Saqueie-os para obter |cRXP_LOOT_Thick Urso Fur|r
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .mob +Young Black Bear
    .mob +Ice Claw Bears
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Large Crag Boar
    .mob +Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto 1426/0,-641.900,-5471.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra::1377|r
    .target Pilot Stonegear::1377
    .turnin 313 >>Entregue O Covil Canjento
step
    .goto 1426/0,-632.100,-5466.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha::1378|r
    .target Pilot Bellowfiz::1378
    .turnin 317 >>Entregue Provisões Para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
step
    .goto 1426/0,-429.700,-5582.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tognus Pederfogo::1241|r
    .target Tognus Flintfire::1241
    .turnin 98321 >>Entregue Carregamento de Flintfire
step
    #optional
    .xp 7 >>Farme até o nível 7
step
    .goto 1426/0,-501.500,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca::1252|r 
    .target Senir Whitebeard::1252
    .accept 287 >>Aceite A Fortaleza Jubafria
step
    #completewith BrewnallVillage
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Montanhista Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98319 >>Entregue Segure a Montanha
    .accept 98323 >>Aceite Segure a Montanha
step
    #optional
    #completewith AfR
    .goto 1426,40.632,62.794,40,0
    .goto 1426/0,-201.51,-6015.520,15 >>Vá para |cRXP_FRIENDLY_Hegnar Estremetiro|r
step << Hunter
    #optional
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    >>|cRXP_BUY_Compre um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Se você não conseguir pagar, pule este passo|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label AfR
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .target Hegnar Rumbleshot
step
    #optional
    #completewith next
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto 1426/0,99.17,-5572.99,20 >>Vá para |cRXP_FRIENDLY_Tundra MacGrann|r
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Aceite Por Baixo da Carne-Seca
    .target Tundra MacGrann
step
    #completewith next
    .goto 1426/0,302.27,-5387.58
    .subzone 137 >>Vá para Brewnall Village
step << !Mage !Priest !Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label BrewnallVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Rejold Cervevada|r e |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 318 >>Entregue Sempre-aceso
    .accept 319 >>Aceite Tudo Pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
    .goto 1426/0,315.23,-5378.42--c:Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >>Aceite A Guerra das Cervejas
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    #sticky
    #label ForceFavorRibNo
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mate os |cRXP_ENEMY_Elder Crag Boars|r. Saqueie-os para obter seus |cRXP_LOOT_Crag Javali Ribs|r
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r e os |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
    #sticky
    #label ForceFavorRibYes
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    #optional
    #requires ForceFavorRibNo
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires ForceFavorRibYes
--XXREQ Placeholder invis step until multiple requires per step
step
    .goto 1426/0,315.28,-5378.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 319 >>Entregue Tudo Pela Sempre-aceso
    .accept 320 >>Aceite Fale Novamente com Urrabolha
    .target Rejold Barleybrew
step
    #completewith Headhunters
    >>Mate os |cRXP_ENEMY_Frostmane Headhunters|r dentro da caverna
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>Suba o lado da entrada da caverna. Pule para A Fortaleza Jubafria
    .isOnQuest 287
step
    #label Headhunters
    .goto 1426/0,628.400,-5579.500,20,0
    .goto 1426/0,696.600,-5674.600,20,0
    .goto 1426/0,746.900,-5614.900,20,0
    .goto 1426/0,695.300,-5528.300,20,0
    .goto 1426/0,657.700,-5544.600
    >>|cRXP_WARN_Entre na caverna de A Fortaleza Jubafria. Fique no lado esquerdo ao avançar mais para explorá-la|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Mate os |cRXP_ENEMY_Frostmane Headhunters|r dentro da caverna
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter

step
    #hardcore
    #completewith Distracting
    .goto 1426/0,-531.23,-5601.59
    .subzone 131 >>Retorne para Kharanos
--XX if they don't somehow meet xp gate by Kharanos then wcyd

step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca::1252|r
    .target Senir Whitebeard::1252
    .turnin 98323 >>Entregue Secure the Mountain
    .turnin 287 >>Entregue em A Fortaleza Jubafria
step
    #optional
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto 1426/0,-551.03,-5598.40,6,0
    .goto 1426/0,-544.38,-5605.92,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarven Cervaforte|r abaixo
    .turnin 308 >>Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-547.93,-5607.27
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .turnin 5625 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Magis Sparkmantle
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Avar Marroforte|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Ingrid Dunwald|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Ingrid Dunwald
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Gimrizz Shadowcog
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew

--Alternative path now for Hunters to hit 10 fast for pet quest
step << Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Father Gavin::1253|r
    .target Father Gavin::1253
    .turnin 99158 >>Vire em Sol nas Montanhas
step << Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Suba pelo caminho de terra
    .isQuestAvailable 314
step << Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r para baixo até|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_Clique aqui se você está com dificuldade|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step << Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step << Hunter
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
step << Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .accept 432 >>Aceite Malditos Troggs!
    .goto 1426/0,-1580.000,-5714.700
    .target Senator Mehr Stonehallow
step << Hunter
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
    >>Mate os |cRXP_ENEMY_Rockjaw Skullthumpers|r fora da mina
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target Senator Mehr Stonehallow
    .goto 1426/0,-1580.000,-5714.700
step << Hunter
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step << Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>Clique no |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step << Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o para a |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
    .target Pilot Hammerfoot
step << Hunter
    #completewith ShimmerweedCollect
    .deathskip >>Morra para um dos |cRXP_ENEMY_Scarred Crag Boars|r próximos e renasça no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .goto 1426/0,-463.66,-5474.00,10,0
    .goto 1426/0,-455.83,-5497.90
    .accept 412 >>Aceite Operação Remendão
step
    .isOnQuest 315
    #completewith ShimmerweedCollect
    #optional
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >>Suba a encosta da montanha até o Pico Cintilante
step
    #label ShimmerweedCollect
    .goto 1426/0,-212.24,-5364.43,60,0
    .goto 1426/0,-241.79,-5308.62,55,0
    .goto 1426/0,-153.14,-5190.42,50,0
    .goto 1426/0,-271.34,-5003.27,50,0
    .goto 1426/0,-153.14,-5190.42,50,0
    .goto 1426/0,-241.79,-5308.62,50,0
    .goto 1426/0,-212.24,-5364.43
    .goto 1426/0,-143.29,-5288.92,0
    .goto 1426/0,-241.79,-5059.08,0
    >>Mate os |cRXP_ENEMY_Frostmane Seers|r. Saque-os para obter suas |cRXP_LOOT_Tremulerva|r
    >>Abra os |cRXP_PICK_Tremulerva Cestos|r no chão. Saque-os para obter |cRXP_LOOT_Tremulerva|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto 1426/0,-94.88,-5647.69
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r saia da caverna. Quando ele sair, entre e saqueie|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto 1426/0,-94.88,-5647.69
    >>|cRXP_WARN_Lance|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Mage
    >>|cRXP_WARN_Use|r |T136183:0|t[Medo] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Warlock
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
    .target Tundra MacGrann
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Rejold Cervevada|r e |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 315 >>Entregue em Em Busca da Cerveja Perfeita
    .accept 413 >>Aceite Cerveja Tremeluz
    .goto 1426/0,315.28,-5378.39
    .target +Rejold Barleybrew
    .turnin 311 >>Fale novamente com Marleth
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step << Hunter
    #loop
    .goto 1426/0,462.48,-5288.92,60,0
    .goto 1426/0,580.68,-5167.43,60,0
    .goto 1426/0,541.28,-5302.05,60,0
    .goto 1426/0,605.31,-5321.75,60,0
    .goto 1426/0,551.13,-5367.72,60,0
    .goto 1426/0,570.83,-5305.330,60,0
    >>Abate os |cRXP_ENEMY_Leper Gnomes|r. Saque-os para seus |cRXP_LOOT_Engrenagens|r e |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step << Hunter
    .xp 10-1720 >>Farme até estar a 1720xp do nível 10
    .isQuestAvailable 320
step << Hunter
    #optional
    .xp 10-2040 >>Farme até estar a 2040xp do nível 10
    .isQuestTurnedIn 320
step << !Hunter
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 8+4525 >>Farme até 4525+/5400xp
    .isQuestAvailable 320
step << !Hunter
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 9 >>Farme até o nível 9
step
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 2102
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca::1252|r
    .target Senir Whitebeard::1252
    .accept 291 >>Aceite Os Relatórios
step
    .goto 1426/0,-632.15,-5466.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 320 >>Fale novamente com Urrabolha
    .target Pilot Bellowfiz
step << Hunter
    .goto 1426/0,-463.66,-5474.00,8,0
    .goto 1426/0,-455.83,-5497.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .turnin 412 >>Entregue em Operação Remendão
step << Hunter
    #optional
    .xp 10 >>Suba até o nível 10
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .accept 6064 >>Aceite Adestramento da Fera - Missão
    .trainer >>Treine suas magias de classe
step << Hunter
    .goto 1426/0,-576.69,-5745.30--c:Dun Morogh,48.3,56.9
    .use 15911 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6084 >>Aceite Adestramento da Fera - Missão
step << Hunter
    .goto 1426/0,-630.87,-5827.38--c:Dun Morogh,49.4,59.4
    .use 15913 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6085 >>Aceite Adestramento da Fera - Missão
step << Hunter
    .goto 1426/0,-680.12,-5837.23--c:Dun Morogh,50.4,59.7
    .use 15908 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6086 >>Aceite Treinamento da Fera - Missão
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Steelgrill::1376|r 
    .target Beldin Steelgrill::1376
    .accept 96408 >>Aceite Uma Visita a Dun Morogh
step << Warrior
    #optional
    #completewith WarriorThrown
    +|cRXP_WARN_Triturar até ter 10s30c de itens para vender|r
    .money >0.1030
step << Warrior
    #completewith WarriorThrown
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40 >>Viaje para Ironforge--c:Ironforge,14.90,87.10
step << Warrior
    #label WarriorThrown
    .goto 1455/0,-1205.65,-5042.12--c:Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Bixi Bateagita|r ou |cRXP_FRIENDLY_Bulif Manopedra|r
    .trainer >>Se você está em um grupo ou tem alguém para ajudar a matar |cRXP_ENEMY_Ragash|r agora, treine 2h Maças com |cRXP_FRIENDLY_Bulif Manopedra|r, caso contrário, treine Arremesso com |cRXP_FRIENDLY_Bixi Bateagita|r. Se você não tiver certeza qual treinar, apenas treine Arremesso
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Brenwyn Invernácero|r lá embaixo
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Brenwyn Invernácero|r lá embaixo
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    .goto 1426,53.47,35.02
    >>Saia de Ironforge. Volte para Dun Morogh
    .zone Dun Morogh >>Vá para Dun Morogh
    .zoneskip Ironforge,1
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mate os |cRXP_ENEMY_Javalis de Rochedo Anciões|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Auberdine depois|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mate os |cRXP_ENEMY_Javalis de Rochedo Anciões|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Father Gavin::1253|r
    .target Father Gavin::1253
    .turnin 99158 >>Vire em Sol nas Montanhas
step << !Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Suba pelo caminho de terra
    .isQuestAvailable 314
step << !Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r para baixo até|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_Clique aqui se você está com dificuldade|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step << !Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step << !Hunter
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
step << !Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mate os |cRXP_ENEMY_Grandes Javalis de Rochedo|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mate os |cRXP_ENEMY_Grandes Javalis de Rochedo|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96408 >>Entregue Uma Visita a Dun Morogh
    .accept 96392 >>Aceite Vigiar de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >>Fale com |cRXP_FRIENDLY_Earthseer Farsen|r para ver sua visão distante
    >>|cRXP_WARN_Você pode cancelar a Visão Distante quando o objetivo for concluído|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Você pode cancelar a Visão Distante quando o objetivo for concluído|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
    .turnin 96392 >>Entregue A Vigília de Farsen
    .accept 96390 >>Aceite Nip 'Em in the Migo
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    #optional
    #completewith next
    .goto 1426/0,-1565.58,-5666.24,60 >>Viaje para Gol'Bolar Pedreira
    .subzoneskip 134
step
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto 1426/0,-1576.47,-5673.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >>|cRXP_BUY_Compre até 10|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se necessário|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_Compre até 5|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se necessário|r << !Warrior !Rogue !Shaman
    .vendor 1237 >>|cRXP_BUY_Compre até 10|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se necessário|r << Shaman
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.96,-5714.73
    .accept 432 >>Aceite Malditos Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
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
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >>Entregue O Funcionário Público
    .goto 1426/0,-1579.96,-5714.73
    .target +Foreman Stonebrow  
step
    #optional
    #label BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Scarred Crag Boars|r e os |cRXP_ENEMY_Elder Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Scarred Crag Boars|r e os |cRXP_ENEMY_Elder Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith OII
    >>Abata |cRXP_ENEMY_Rockjaw Ambushers|r. Saqueie-os para obter |T132621:0|t[|cRXP_LOOT_Barril de Pólvora Vazio|r]
    .use 268548 >>|cRXP_WARN_Use |r|T132621:0|t[|cRXP_LOOT_Barril de Pólvora Vazio|r] |cRXP_WARN_para iniciar a missão|r
    >>|cRXP_WARN_NOTA: Este item tem uma chance de drop baixa. Pule este passo se você não o encontrar até terminar com o|r |cRXP_ENEMY_Dark Ferro Spies|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >>Aceite Stolen Impacto Powder
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para obter o |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r]
    .use 274268 >>|cRXP_WARN_Use o|r |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r] |cRXP_WARN_para iniciar a missão|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >>Aceite Mapa Subterrâneo
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >>Entregue Nip 'Em in the Migo
    .turnin 96391 >>Entregue Mapa Subterrâneo
    .accept 96393 >>Aceite Old Ironforge Incursion
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95213 >>Entregue Stolen Impacto Powder
    .accept 95214 >>Aceite Stolen Impacto Powder
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .accept 95214 >>Aceite Stolen Impacto Powder
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>Abata |cRXP_ENEMY_Rockjaw Ambushers|r. Saqueie-os para obter |cRXP_LOOT_Stolen Impacto Powder|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95214 >>Entregue Stolen Impacto Powder
    .target Quarrymaster Thesten
step
    #completewith next
    .goto 1426/0,-2165.600,-5609.000,70,0
    .goto 1426/0,-2262.200,-5622.700,20,0
    .goto 1426/0,-2350.700,-5558.700,20 >>Viaje para |cRXP_FRIENDLY_Montanhista Cervevada|r no Passo do Portão Sul
step
    .goto 1426/0,-2447.11,-5479.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Cervevada|r
    .turnin 413 >>Entregue Cerveja Tremeluz
    .accept 414 >>Aceite Cerveja para Kadrell
    .target Mountaineer Barleybrew
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >>Vá através da Passagem do Portão Sul até Loch Modan
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >>Entre no Bunker. Vá para o andar superior
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step
    #optional
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >>Vá para Thelsamar
    .isOnQuest 414
step
    #completewith HonorStudents << Dwarf/Gnome
    #completewith ThelsaHS << !Dwarf !Gnome
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .turnin 414 >>Vire em Cerveja para Kadrell
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r lá dentro
    .accept 418 >>Aceite Chouriço de Thelsamar
    .target Vidra Hearthstove
    .xp >14,1
--XX Skip if 14+
step << !Hunter
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_BUY_Compre também uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_dela se necessário|r << !Rogue
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Barcos para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label ThelsaHS
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r lá dentro
    .home >>Defina sua Pedra de Retorno em Thelsamar
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >>Saia da Stoutlager Estalagem
step << Hunter
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenilda Garranegra|r
    .accept 86667 >>Aceite Snowbound
    .target Grenhild Darktalon
step << Dwarf/Gnome
    #label HonorStudents
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .turnin 414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #optional
    #label BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Auberdine depois|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith Algaz
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
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
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
step << !Hunter
    #completewith next
    .goto 1432/0,-2503.500,-4815.300,15,0
    .goto 1426/0,-2353.100,-4897.100,15 >>Viaje para o |cRXP_FRIENDLY_Piloto Pisafundo|r através do Passo do Portal do Norte
step << !Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step << !Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>Clique no |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step << !Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>Mate o |cRXP_ENEMY_Ronhagarra|r. Saqueie-o pela |cRXP_LOOT_Mangy Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << !Hunter
    #xprate <1.49 << Rogue
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    >>|cRXP_WARN_Escolha o|r |T135641:0|t[Adaga do Artífice]|cRXP_WARN_. Guarde para depois|r << Rogue
    .turnin 417 >>Entregue A Vingança do Piloto << !Rogue
    .turnin 417,1 >>Entregue A Vingança do Piloto << Rogue
    .target Pilot Hammerfoot
step << !Hunter
    #completewith flyIF
    .hs >>Use sua Pedra de Retorno para ir a Thelsamar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Hunter
    #completewith flyIF
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 2101 -- stoutlager inn
    .subzoneskip 144 -- thelsamar
    .target Anjo da Cura
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r dentro
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step << Dwarf/Gnome
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
    .target Thorgrum Borrelson
step
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455/0,-1120.93,-4708.06,10 >>Viaje para o |cRXP_FRIENDLY_Golnir Topadão|r no prédio
step << Dwarf/Gnome
    .goto 1455/0,-1120.93,-4708.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Golnir Topadão|r dentro
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
    .target Golnir Bouldertoe
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eldrun Rompe-procelas::258098|r 
    .target Eldrun Stormbreaker::258098
    .accept 94449 >>Aceite Chamado do Fogo
    .trainer >>Treine suas magias de classe
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto 1455/0,-1026.28,-4872.56,12 >>Viaje para o |cRXP_FRIENDLY_Senador Barin Itarrubra|r--c:Ironforge,39.550,57.490
step
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .turnin 291 >>Entregue Os Relatórios
    .target Senator Barin Redstone
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    >>|cRXP_WARN_NÃO voe para lugar algum|r
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retornar com Brock
    .target Gryth Thurden
step << Shaman
    .goto 1455/0,-1208.100,-5037.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Kelomir Maniferro|r
    >>|cRXP_BUY_Compre um|r |T135154:0|t[Cajado de Combate]
    .collect 854,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Kelomir Ironhand
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith DRT
    .equip 16,854 >>|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto 1455/0,-1197.200,-5041.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r e |cRXP_FRIENDLY_Bixi Bateagita|r
    .trainer >>Treine as habilidades de armas que desejar com o dinheiro restante
    .target Buliwyf Stonehand
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    >>Treine Arremesso e Maças de Duas Mãos se ainda não treinou antes
    .train 2567 >>Treine Arremesso
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >>Treine Maças de Duas Mãos
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith DRT
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith DRT
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto 1455/0,-1273.83,-5022.08,15 >>Vá para |cRXP_FRIENDLY_Bélia Granitrondo|r
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .turnin 6086 >>Entregue Treinamento da Fera - Missão
    .trainer >>Treine as magias do seu mascote
    .target Belia Thundergranite
step << Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .trainer >>Treine suas magias de classe
    .target Regnus Thundergranite
step << Dawrf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alto Sacerdote Rohan|r  
    .turnin 5639 >>Entregue Prece Desesperada
    .trainer >>Treine suas magias de classe
    .target High Priest Rohan
step << Priest/Mage/Warlock
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Compre o seguinte se puder pagar:|r
    >>|T134711:0|t[Óleo Menor de Teurgo] |cRXP_WARN_e|r |T133906:0|t[Sabichão Defumado]
    >>|cRXP_WARN_Procure por atualizações|r |T132317:0|t[Varinha] |cRXP_WARN_com DPS alto que você pode usar agora/em breve|r
    >>|cRXP_WARN_Estes fornecerão um grande aumento de DPS nos primeiros níveis. Se você não quer ou não pode fazer isso, pule este passo|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    #ah
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para uma entrega mais rápida em Loch Modan em breve e para subir seu nível de|r |T133971:0|t[Culinária] |cRXP_BUY_habilidade com:|r
    >>|T134342:0|t[Javali Intestines]
    >>|T134027:0|t[Urso Carne]
    >>|T134437:0|t[Aranha Ichor]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label AHCheck
    #ah
    #optional
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
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
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #requires OilWandFood
step << Dwarf Paladin
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step << Hunter
    .hs >>Use sua Pedra de Retorno para ir a Thelsamar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << Hunter
    #optional
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
step << !Hunter
    #label DRT
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Entre no Metrô Correfundo
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma intermediária no Deeprun Tram
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
    .target Monty
step << !Hunter
    >>Usar o |T133942:0|t[Rato Catcher's Flute] em |cRXP_FRIENDLY_Deeprun Ratos|r no Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma intermediária no Deeprun Tram
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
    .timer 11,Ratos de Deeprun RP
    .accept 6662 >>Aceite Espetinhos de... Rato
    .target Monty
step << !Hunter skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label TramEnd
    >>|cRXP_WARN_Pegue o Deeprun Tram para o lado de Ventobravo|r
    >>|cRXP_WARN_Aumente o nível de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o Tram para a Cidade de Ventobravo, se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r na plataforma intermediária no lado de Ventobravo do Deeprun Tram
    .turnin 6662 >>Entregue Espetinhos de... Rato
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << !Hunter
    #optional
    #completewith Order
    .abandon 6662 >>Abandone Espetinhos de... Rato
step << !Hunter
    #optional
    #completewith Order
    .zone Stormwind City >>Entre em Ventobravo
    .isOnQuest 1338
step << !Hunter
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step << !Hunter
    #label Order
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
    .target Furen Longbeard
step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,325.68,-8688.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilsa Cletes|r
    .trainer >>Treine suas magias de classe
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .target Ilsa Corbin
step << Warrior
    #optional
    #completewith next
    .goto 1453/0,401.29,-8741.21,17,0
    .goto 1453/0,417.13,-8636.5,12 >>Entre na Estalagem
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1638 >>Entregue A Warrior's Treinamento
    .accept 1639 >>Aceite Bartolino the Bêbado - Missão
    .target Harry Burlguard
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1639 >>Entregue Bartolino the Bêbado - Missão
    .accept 1640 >>Aceite Beat Bartolino - Missão
    .target Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>Derrote |cRXP_ENEMY_Bartolino|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1640 >>Entregue Beat Bartolino - Missão
    .accept 1665 >>Aceite Caneca do Bartolino
    .target Bartleby
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1665 >>Entregue Caneca do Bartolino
    .target Harry Burlguard
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step << !Hunter
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine Espadas de Uma Mão << Rogue/Mage
    .trainer >>Treine Cajados << Priest/Hunter
    .trainer >>Treine 1h Espadas e Báculos << Warlock
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Guarde 10s para treinamento depois|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.1922
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    >>|cRXP_WARN_Guarde 10s para treinamento depois|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .money <0.1922
step << Rogue
    #optional
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#forever
#season 0,1
<< Alliance !Hunter
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Anão/Gnomo)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Anão/Gnomo)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +|cRXP_WARN_Lance|r |T136126:0|t[Conversão de Vida] |cRXP_WARN_repetidamente até que você tenha <10% dos pontos de vida enquanto a caminho de|r |cRXP_FRIENDLY_Dungar Tragolongo|r
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo
    .target Dungar Longdrink
step << Warlock
    #softcore
    #optional
    #completewith next
    >>|cRXP_WARN_Lance|r |T136126:0|t[Conversão de Vida] |cRXP_WARN_repetidamente até ter 10% dos pontos de vida, depois pule da saliência (NÃO para a água) ao lado do mestre de voo e morra de propósito|r
    .deathskip >>Ressurja no Anjo da Cura
    .target Anjo da Cura
step
    #optional
    #completewith next
    .subzone 87 >>Voe para Goldshire
step << skip
    .goto 1429/0,73.95,-9465.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .accept 62 >>Aceite A Mina Fundaprofunda
step << skip
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .accept 60 >>Aceite Velas Kobold
step << Mage/Rogue
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>Suba na Estalagem
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >>Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_Dê prioridade ao treinamento|r |T132147:0|t[Empunhar Duas Armas]
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >>Treine suas magias de classe
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .target Remy "Two Times"
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .accept 40 >>Aceite Perigo Anfíbio
    --.accept 47 >> Accept Gold Dust Exchange
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Warlock
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Wanted: "Hogger"
    .goto 1429/0,683.40,-9667.93
    .target Deputy Rainer
step << Warlock
    #completewith next
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] |cRXP_WARN_é um drop extremamente raro. Ignorar este passo se você não conseguir|r
    >>|cRXP_ENEMY_Rude Mordelogo|r |cRXP_WARN_é um spawn raro, mas tem 100% de chance de drop|r
    .use 1307 >>|cRXP_WARN_Use a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] para iniciar a missão|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>Aceite O Coletor
    .unitscan Gruff Swiftbite
step << Warlock
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Mate o |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em múltiplos locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_no |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .accept 88 >>Aceite Princesa Tem Que Morrer!
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483

--
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r e |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.67
    .accept 88 >>Aceite Princesa Tem Que Morrer!
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .target Billy Maclure
    .goto 1429/0,38.41,-9923.69
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Juntando a Fome...
step << skip
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Os inimigos nível 5 podem se tornar cinzentos durante esta missão. Ainda assim, complete-a pois você precisa completá-la para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    .goto 1429/0,193.00,-9832.40,50,0
    .goto 1429/0,129.73,-9844.49
    >>|cRXP_WARN_Entre e explore a Mina Fargodeep|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step << skip
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Os inimigos nível 5 podem se tornar cinzentos durante esta missão. Ainda assim, complete-a pois você precisa completá-la para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #softcore
    #completewith GoldshireTurnins
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << skip
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >>Voe para Goldshire
step << skip
    #hardcore
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o percurso até o nível 60|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .target Remy "Two Times"
step << skip --Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >>Entregue A Mina Vailafundo
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 176,3 >>Entregue Wanted: "Hogger"
    .isQuestComplete 176
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >>Entregue A Mina Vailafundo
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
step << skip
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .turnin 123 >>Entregue O Coletor
    .isOnQuest 123
step << skip --Warlock
    .isQuestTurnedIn 123
    .goto 1429/0,74.02,-9465.52
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .accept 147 >>Aceite Perseguição Implacável
step << skip
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
step << skip
    #softcore
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o percurso até o nível 60|r
    .target Remy "Two Times"
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .turnin 47 >>Entregue Trocando Pó de Ouro
--

step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >>Vá para o leste para o |cRXP_FRIENDLY_Guarda Tomás|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
step
    #completewith BundleOT
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você encontrar|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Clique em um |cRXP_PICK_Corpo Meio Comido|r no chão
    .goto 1429/0,-986.35,-9336.06
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .accept 5545 >>Aceite Um Feixe de Encrenca
step
    #era
    #completewith next
    >>Pegue o |cRXP_LOOT_Bundle of Madeira|r no chão. |cRXP_WARN_Eles são encontrados sob as árvores|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Clique em |cRXP_PICK_Rolf's corpse|r no chão
    >>|cRXP_WARN_Cuidado, os |cRXP_ENEMY_Murlocs|r próximos podem atacar uma vez que você clique no |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_lançarão|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_que os curam de 61-68|r
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão, na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .turnin 5545 >>Entregue Um Feixe de Encrenca
step
    #completewith WaterloggedToolbox
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >>Aceite Downstream
    .target Ormin Pelford
step
    >>Pegue o |cRXP_PICK_Serrote Encharcado|r no chão
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>Pegue o |cRXP_PICK_Machado Encharcado|r no chão
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>Pegue a |cRXP_PICK_Caixa de Ferramentas Encharcada|r no chão
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .goto 1429/0,-1119.800,-9931.300
    >>Mate o |cRXP_ENEMY_Croaky|r. Saqueie-o para obter |T134169:0|t[|cRXP_LOOT_Croaky's Cabeça|r]
    .use 247826 >>|cRXP_WARN_Use|r |T134169:0|t[|cRXP_LOOT_Croaky's Cabeça|r] |cRXP_WARN_para iniciar a missão|r
    >>|cRXP_WARN_Ele é um elite nível 11. Pule este passo se você for incapaz de matá-lo|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>Aceite Croaky's Cabeça
    .mob Croaky
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step << Warlock
    .isOnQuest 147
    .goto 1429/0,-932.35,-9806.53
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>Abate |cRXP_ENEMY_Morgan, o Coletor|r. Saque-o por |cRXP_LOOT_Anel do Coletor|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto 1429/0,-932.35,-9806.53
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    .goto 1429/0,-869.87,-9768.10
    >>Mate a |cRXP_ENEMY_Princesa|r. Saque-a por seu |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_virá junto com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também vai lançar|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    >>|cRXP_WARN_Acumule 100 Raiva antes de enfrentar|r |cRXP_ENEMY_Princesa|r << Warrior
    >>Tenha certeza de que|cRXP_WARN_ |T136205:0|t[Evasão] |cRXP_WARN_está pronta. Se tiver dificuldades, pode usar o Fence com Arremessando Armas para explorar a física e ganhar tempo|r << Rogue
    >>|cRXP_WARN_Esteja pronto para usar uma|r |T134830:0|t[Poção Inferior de Cura]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
    .xp <9,1
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >>Entregue em Downstream
    .target Ormin Pelford
step
    #completewith next
    .subzone 798 >>Vá para Ridgepoint Torre
step
    .isOnQuest 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Merell Ross::248277|r
    .target Merell Ross::248277
    .turnin 91740 >>Entregue Cabeça do Croaky
step
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >>Aceite Gnolls Invasores
step
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_Cuidado com os inimigos de nível alto no caminho|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
step
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step << skip
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos os|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como a recompensa. Causa bom dano e pode ser usado para \"split pulling\", que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step
    #ah
    .goto 1453/0,660.28,-8814.55--c:Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre os itens a seguir para entregar mais rapidamente em Cerro Oeste:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .target Auctioneer Jaxon
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >>|cRXP_WARN_Use a|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para invocar um|r |cRXP_ENEMY_Invocado Emissário do Caos|r
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #softcore
    #completewith next
    +|cRXP_WARN_Início lançando|r |T136126:0|t[Conversão de Vida] |cRXP_WARN_no seu caminho de volta para |cRXP_FRIENDLY_Gakin, o Neromante|r pois você fará uma morte intencional em breve|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >>Entregue A Vinculação
step << Warlock
    #softcore
    .deathskip >>|cRXP_WARN_Morra e reviva no Curador Espiritual usando|r |T136126:0|t[Conversão de Vida] |cRXP_WARN_e ficando na fogueira ao seu lado|r
    .target Anjo da Cura
step
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >>Saia de Ventobravo. Vá para Goldshire
step << Warlock
    #era
    .isOnQuest 147
    .goto 1429/0,74.02,-9465.52
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 147 >>Entregue Perseguição Implacável
    .turnin 39 >>Entregue Relatório de Tomás
step
    #era
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >>Entregue Relatório de Tomás
    .target Marshal Dughan
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >>Treine suas magias de classe
    .target Josephine Carson
    .xp <12,1
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
    .xp <12,1
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <12,1
step << Mage/Priest/Rogue
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>Suba na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >>Treine suas magias de classe
    .xp <12,1
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .trainer >>Treine suas magias de classe
    .xp <12,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >>Treine suas magias de classe
    .xp <12,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .target Ma Stonefield
    .turnin 88 >>Entregue Princesa Tem que Morrer
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << Dwarf Paladin
    #loop
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>Abate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para |T132889:0|t[Linho]
    >>|cRXP_WARN_Certifique-se de que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe de Paladino|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >>Viaje até Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .target Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 184 >>Entregue Escritura do Furlbrow
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .accept 9 >>Aceite Os Campos da Morte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 36 >>Entregue Cozido de Costa Negra
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
step
    #optional
    .isQuestComplete 38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >>Entregue Cozido de Costa Negra
step
    #optional
    .isQuestComplete 22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >>Vá para Empadão de Fígado de Goretusco
step
    #softcore
    #sticky
    #completewith next
    .deathskip >>Morra e ressurja no Anjo da Cura ou corra para Sentinela Hill
    .target Anjo da Cura
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 109 >>Entregue Miguel Mantoforte
    .accept 12 >>Aceite A Milícia do Povo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 12 >>Aceite A Milícia do Povo
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Danuvin|r
    .target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 102 >>Aceite Patrulhando Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >>Aceite Bandanas de Couro Vermelho
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
step << Dwarf Paladin
    .hs >>Use sua Pedra de Retorno para ir a Ironforge
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 1537,1
step << Dwarf Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >>Voe para Altaforja
    .target Thor
    .zoneskip Ironforge
    .zoneskip Loch Modan
step << !Paladin
    .hs >>Use sua Pedra de Retorno para ir a Thelsamar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << !Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Loch Modan >>Voe para Loch Modan
    .target Thor
    .zoneskip Ironforge
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance !Hunter
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Anão/Gnomo)
#next 13-15 Cerro Oeste; 14-16 Costa Negra
#defaultfor Gnome/Dwarf

step -- dont delete
    #label LochStart
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto 1455/0,-896.47,-4601.65,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r
step << Dwarf Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .accept 2999 >>Aceite Tomo de Divindade
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
    .accept 1778 >>Aceite Tomo de Divindade
    .unitscan John Turner
step << Dwarf Paladin
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >>Vá para a escada embaixo de |cRXP_FRIENDLY_Tiza Beloforja|r
step << Dwarf Paladin
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>Vá em direção a |cRXP_FRIENDLY_Tiza Beloforja|r acima
step << Dwarf Paladin
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 1778 >>Entregue Tomo de Divindade
    .accept 1779 >>Aceite Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r acima
    .turnin 1779 >>Entregue Tomo de Divindade
    .accept 1783 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Paladin
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >>|cRXP_BUY_Compre|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela se necessário|r
    .target Yanni Stoutheart
step << !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .vendor 6734 >>|cRXP_BUY_Compre alguns|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor 6734 >>|cRXP_BUY_Compre alguns|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela se necessário|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target Brock Stoneseeker
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenilda Garranegra|r
    .accept 86667 >>Aceite Snowbound
    .target Grenhild Darktalon
step
    #completewith next
    .goto 1432/0,-2619.200,-5783.300,20,0
    .goto 1432/0,-2534.38,-5648.28,5 >>Vá para a mancha nevada no chão logo fora do túnel da Passagem do Portão Sul
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >>|cRXP_WARN_Use o|r |T1387609:0|t[Ceramic Jar] |cRXP_WARN_enquanto estiver em pé na área nevada para coletar o|r |T1387609:0|t[Jar of Neve]
    .complete 86667,1 -- Jar of Snow 1/1
step << Shaman
    #completewith shamfire
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >>Viaje através do South Portal Passe
step << Shaman
    #completewith shamfire
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >>Viaje em direção a |cRXP_FRIENDLY_Bruegs Kindleborn|r na caverna no topo da montanha
step << Shaman
    #label shamfire
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruegs Kindleborn::257597|r
    .target Bruegs Kindleborn::257597
    .turnin 94449 >>Entregue Call of Fogo
    .accept 94465 >>Aceite Chamado do Fogo
step << Shaman
    .isOnQuest 94465
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >>Desça com cuidado da montanha para Loch Modan
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >>Viaje pela trilha da montanha em direção a |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
    .target Braldir Ashmantle::257808
    .turnin 94465 >>Entregue Call of Fogo
    .accept 94466 >>Aceite Chamado do Fogo
step
    #optional
    #label BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverMine
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_cronômetro de 10 minutos para entregar a missão!|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norric Lochthane|r
    >>|cRXP_WARN_Certifique-se de entregar isto antes do vencimento de 10 minutos no|r |T1387609:0|t[Jar of Neve]
    .turnin 86667 >>Entregue Snowbound
    .target Norric Lochthane
step << Shaman
    #loop
    .goto 1432/0,-3287.400,-4868.000,45,0
    .goto 1432/0,-3397.500,-4870.800,45,0
    .goto 1432/0,-3337.300,-4998.400,45,0
    >>Abata os |cRXP_ENEMY_Stonesplinter Seers|r. Saque-os pelo |cRXP_LOOT_Reagent Pouch|r
    .complete 94466,2 --|1/1 Reagent Pouch
    .mob Stonesplinter Seer
step
    #completewith Gear
    #optional
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .waypoint 1432/0,-3033.92,-4797.29,50,0
    .waypoint 1432/0,-2972.41,-4796.92,50,0
    .waypoint 1432/0,-2684.71,-5042.87,50,0
    .waypoint 1432/0,-2712.57,-5286.61,50,0
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    >>Mate os |cRXP_ENEMY_Tunnel Rato Geomancers|r. Saqueie-os para obter |cRXP_LOOT_Fire Piche|r << Shaman 
    >>|cRXP_ENEMY_Tunnel Rato Geomancers|r |cRXP_WARN_são encontrados apenas dentro da mina|r << Shaman
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
    .complete 94466,1 -- Fire Tar (1)
    .mob +Tunnel Rat Geomancer
step
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >>Entre na Mina do Riacho Prateado
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto 1432/0,-2984.82,-4902.33
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r dentro da mina. Pegue o |cRXP_LOOT_Miners' Equipamento|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto 1432/0,-2984.82,-4902.33
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r dentro da mina. Pegue o |cRXP_LOOT_Miners' Equipamento|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Compre a|r |T133476:0|t[Maça Pesada com Pontas] |cRXP_BUY_OU o|r |T133053:0|t[Malho de Pau-ferro] |cRXP_BUY_dele (se estiverem disponíveis)|r
    >>|cRXP_WARN_Se você não tiver dinheiro suficiente, então farme ouro nos |cRXP_ENEMY_Tunnel Ratos|r próximos até ter o suficiente|r
    >>|cRXP_WARN_Faça isto rapidamente pois outro jogador pode comprá-lo antes de você|r
    >>|cRXP_WARN_Se você não quer fazer isto, pule este passo|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #ah
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Compre a|r |T133476:0|t[Maça Pesada com Pontas] |cRXP_BUY_OU o|r |T133053:0|t[Malho de Pau-ferro] |cRXP_BUY_dele (se estiverem disponíveis)|r
    >>|cRXP_WARN_Se você não tiver dinheiro suficiente, então farme ouro nos |cRXP_ENEMY_Tunnel Ratos|r próximos até ter o suficiente|r
    >>|cRXP_WARN_Faça isto rapidamente pois outro jogador pode comprá-lo antes de você|r
    >>|cRXP_WARN_Se você não quer fazer isto ou preferiria comprar uma arma melhor/mais barata do AH em breve, pule este passo|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equipe a|r |T133476:0|t[Maça Pesada com Pontas]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equipe o|r |T133053:0|t[Malho de Pau-ferro]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    >>Mate os |cRXP_ENEMY_Tunnel Rato Geomancers|r. Saqueie-os para obter |cRXP_LOOT_Fire Piche|r << Shaman
    >>|cRXP_ENEMY_Tunnel Rato Geomancers|r |cRXP_WARN_são encontrados apenas dentro da mina|r << Shaman
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
    .complete 94466,1 << Shaman  -- Fire Tar (1)
    .mob +Tunnel Rat Geomancer << Shaman
step
    #optional
    #label BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith PawsDelivery
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >>Entre no Bunker
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>|cRXP_WARN_Venda ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 353 >>Entregue Entrega para Lançatroz
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
step
    #label FlintTinder
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Barcos para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
step
    .goto 1432/0,-2729.40,-5534.96
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para seus |cRXP_LOOT_Trogg Pedra Teeth|r
    >>|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Stonesplinter Batedores|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    >>|cRXP_WARN_Esta é uma área de hiperspawn. Você não deveria precisar sair daqui|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step
    #label RatAbandon
    #optional
    .goto 1432/0,-2729.40,-5534.96
    .xp 13+9600 >>Suba até 9600+/11400xp
    >>|cRXP_WARN_Se você planeja executar a Masmorra Hall of Thanes em Ironforge, pule este passo|r
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >>Viaje pela trilha da montanha em direção a |cRXP_FRIENDLY_Braldir Ashmantle::257808|r novamente
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
    .target Braldir Ashmantle::257808
    .turnin 94466 >>Entregue Call of Fogo
    .accept 94467 >>Aceite Chamado do Fogo
step << Shaman
    #completewith next
    .goto 1432/0,-2873.800,-5672.500
    .cast 8898 >>|cRXP_WARN_Continue pela trilha acima|r
    .use 6636 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo] |cRXP_WARN_ao lado da estátua de pedra para invocar a|r |cRXP_ENEMY_Manifestação Menor do Fogo|r
step << Shaman
    .goto 1432/0,-2873.800,-5672.500
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Saqueie-a pelo |cRXP_LOOT_Glowing Ember|r
    .complete 94467,1 -- Glowing Ember (1)
step << Shaman
    .goto 1432/0,-2870.700,-5674.600
    >>Clique em |cRXP_PICK_Brazier of the Adormecido Chamas|r
    .turnin 94467 >>Entregue Call of Fogo
    .accept 94468 >>Aceite Chamado do Fogo
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >>Suba o caminho de terra e desça para o bunker
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Shaman
    #completewith shamfire2
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >>Viaje através do South Portal Passe
step << Shaman
    #completewith shamfire2
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >>Viaje em direção a |cRXP_FRIENDLY_Bruegs Kindleborn|r na caverna no topo da montanha novamente
step << Shaman
    #label shamfire2
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruegs Kindleborn::257597|r
    .target Bruegs Kindleborn::257597
    .turnin 94468 >>Entregue Call of Fogo
step << Shaman
    .isQuestTurnedIn 94468
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >>Desça com cuidado da montanha para Loch Modan
step
    #loop
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Clique em |cRXP_PICK_Discarded Pesca Caixa de Ferramentas|r no fundo do lago
    >>|cRXP_WARN_NOTA: Isso pode aparecer em um de muitos locais diferentes. Nade à volta até ver o ponto de exclamação no seu minimapa|r
    >>|cRXP_WARN_Cuidado com seres de alto nível|r |cRXP_ENEMY_Manguadonte Jovem|r
    .accept 86614 >>Aceite Prata das Ondas
    .xp <13,1
step
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Entregue Prata das Ondas
    .xp <13,1
step << !Dwarf/!Paladin
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1432,21.498,67.840,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,16.342,58.520,20,0
    .goto 1426,84.262,51.367
    .zone Dun Morogh >>Vá para Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto 1426/0,-2055.23,-5784.31
    .cast 8593 >>|cRXP_WARN_Use o|r |T133439:0|t[Símbolo da Vida] |cRXP_WARN_em |cRXP_FRIENDLY_Narm Faulk|r no chão|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto 1426/0,-2055.23,-5784.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Entregue Tomo de Divindade
    .accept 1784 >>Aceite Tomo de Divindade
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .goto 1426/0,-2004.94,-5863.50,20,0
    .goto 1426/0,-2031.04,-5905.53
    >>Abata |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para obter o |cRXP_LOOT_Dark Ferro Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
    .isQuestComplete 1784
    .hs >>Use sua Pedra de Retorno para ir a Ironforge
    .bindlocation 1537,1
    .cooldown item,6948,>2,1
    .zoneskip Ironforge
step << Dwarf Paladin
    #optional
    .isQuestComplete 1784
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40,0--c:Ironforge,14.90,87.10
    .zone Ironforge >>Volte para Ironforge

----Start of <1.5x IF->Westfall Section----

step << Rogue
    .goto 1455/0,-1197.27,-5041.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 196 >>Treine Machados de uma Mão
    .target Buliwyf Stonehand
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldruk Cenhomal|r
    .trainer >>Treine suas magias de classe
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto 1455/0,-913.38,-4577.31,6,0
    .goto 1455/0,-906.11,-4632.030,10 >>Vá até |cRXP_FRIENDLY_Muiredon|r no andar de cima
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r
    .turnin 1784 >>Entregue Tomo de Divindade
    .accept 1785 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 1785 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eldrun Rompe-procelas::258098|r 
    .target Eldrun Stormbreaker::258098
    .trainer >>Treine suas magias de classe
step << Mage/Priest/Warlock
    #ssf
    .goto 1455/0,-894.15,-4659.43,8,0
    .goto 1455/0,-880.66,-4660.39,5,0
    .goto 1455/0,-896.50,-4653.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r lá em baixo
    >>|cRXP_WARN_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_dela|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    .goto 1455/0,-928.48,-4614.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo do pilar acima |cRXP_FRIENDLY_Bink|r, depois caminhe ligeiramente para leste dela até a posição da seta. Posicione seu personagem até parecer que está flutuando, então execute um Logout Pular desconectando e reconectando|r
step << Dwarf Rogue/Gnome Rogue
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto 1455/0,-1124.38,-4647.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2218 >>Entregue Road to Salvação
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    .goto 1455/0,-1120.72,-4650.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >>Treine suas magias de classe
    .target Fenthwick
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
step << Warlock
    #optional
    #label Jubahl
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
step << Warlock
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor 6382 >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se puder pagar|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe até o topo da cama, depois pule para o topo da estante. Execute um Logout Pular saindo do jogo e retornando|r
step << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >>Vá para |cRXP_FRIENDLY_Bilban Lançachave|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner

step -- dont delete
    #label LochEnd

step << skip --logout skip << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Pule para o topo do suporte de armas. Execute um Logout Pular saindo do jogo e retornando|r
-- step << skip --logout skip << Hunter
--   #optional
--   #completewith Deeprun
--   .goto 1455,56.207,46.844
--   .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
--  .zoneskip Ironforge,1
step
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre uma|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dela se estiver disponível|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
step
    #optional
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith WestfallTramEnd
    #label Deeprun
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Stormwind City
step << skip
    #optional
    #label WestfallTramCook1
    #completewith WestfallTramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook1
    #label WestfallTramCook2
    #completewith WestfallTramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook2
    #label WestfallTramCook3
    #completewith WestfallTramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook5
    #label WestfallTramCook6
    #completewith WestfallTramEnd
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Aumente o nível de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o Tram para a Cidade de Ventobravo, se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    .zone Stormwind City >>Pegue o Deeprun Tram até a Cidade de Ventobravo
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre uma|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dela se estiver disponível|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .accept 399 >>Aceite Humildes Começos
    .target Baros Alexston
    .xp <15,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar ou algo melhor da Casa de Leilões|r
    .collect 2027,1 --Scimitar
    .target Marcia Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se puder pagar|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_WARN_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_dela|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #label Fly2WF
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Caçador)
#next 14-16 Costa Negra
#defaultfor Dwarf

step -- dont delete
    #label NormalRouteStart
step
    #completewith next
    .goto 1426/0,-2443.41,-5560.120,15,0
    .goto 1432/0,-2602.54,-5832.73,20 >>Voe para Loch Modan
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .target Mountaineer Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    .accept 224 >>Aceite Em Defesa das Terras do Rei
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .target Captain Rugelfuss
    .accept 267 >>Aceite A Ameaça Trogg
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .turnin -414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto 1432/0,-2954.42,-5394.10
    .accept 418 >>Aceite Chouriço de Thelsamar
step
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .home >>Defina sua Pedra de Retorno em Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto 1432/0,-2929.87,-5424.84
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
step
    #completewith RTB
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Golnir Topadão|r
    .target Golnir Bouldertoe
    .goto 1455/0,-1120.93,-4708.06
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .target Senator Barin Redstone
    .goto 1455/0,-1058.62,-4836.37,20,0
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    .turnin 291 >>Entregue Os Relatórios
    .isOnQuest 291
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .turnin 6086 >>Entregue Treinamento da Fera - Missão
step << Hunter
    #label RTB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .target Gryth Thurden
    .goto 1455/0,-1152.40,-4821.13
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retornar com Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .goto 1455/0,-1152.40,-4821.13
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target Brock Stoneseeker
step << Hunter
    .goto 1432/0,-2982.01,-5286.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrok Soltagafe|r
    >>|cRXP_BUY_Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_se você puder pagar|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135613:0|t[Cano de Atirar do Caçador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #completewith BraveSoul
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith next
    .goto 1432/0,-2651.61,-4817.15,100 >>Vá para o norte em direção a Algaz Station
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
step << Human
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
step
    #label BraveSoul
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >>Entre na Mina do Riacho Prateado
step
    .goto 1432/0,-2984.82,-4902.33
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para obter o |cRXP_LOOT_Equipamento dos Mineiros|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    >>|cRXP_WARN_Você poderá fazer esta missão em um nível mais alto se desejar pular por enquanto|r
    .complete 307,1 -- Miners' Gear (4)
step
    #completewith RatEar
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .target Mountaineer Stormpike
step
    #label RatEar
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
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
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto 1432/0,-2954.42,-5394.10
    .turnin 418 >>Entregue Chouriço em Thelsamar
step
    .goto 1432/0,-2738.78,-5384.11,0
    .goto 1432/0,-2757.26,-5532.94,0
    .goto 1432/0,-2913.65,-5804.46,0
    .goto 1432/0,-2863.73,-5866.45,0
    .goto 1432/0,-2738.78,-5384.11,40,0
    .goto 1432/0,-2757.26,-5532.94,40,0
    .goto 1432/0,-2913.65,-5804.46,40,0
    .goto 1432/0,-2863.73,-5866.45,40,0
    .goto 1432/0,-2928.27,-5896.25
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para obter |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .target Mountaineer Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .target Captain Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    .turnin 267 >>Entregue A Ameaça Trogg
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>Vá para a mancha nevada no chão logo fora do túnel da Passagem do Portão Sul
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >>|cRXP_WARN_Use o|r |T1387609:0|t[Ceramic Jar] |cRXP_WARN_enquanto estiver em pé na área nevada para coletar o|r |T1387609:0|t[Jar of Neve]
    .complete 86667,1 -- Jar of Snow 1/1
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_cronômetro de 10 minutos para entregar a missão!|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norric Lochthane|r
    >>|cRXP_WARN_Certifique-se de entregar isto antes do vencimento de 10 minutos no|r |T1387609:0|t[Jar of Neve]
    .turnin 86667 >>Entregue Snowbound
    .target Norric Lochthane
step
    #optional
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Clique em |cRXP_PICK_Discarded Pesca Caixa de Ferramentas|r no fundo do lago
    >>|cRXP_WARN_NOTA: Isso pode aparecer em um de muitos locais diferentes. Nade à volta até ver o ponto de exclamação no seu minimapa|r
    >>|cRXP_WARN_Cuidado com seres de alto nível|r |cRXP_ENEMY_Manguadonte Jovem|r
    .accept 86614 >>Aceite Prata das Ondas
    .xp <13,1
step
    #optional
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Entregue Prata das Ondas
    .xp <13,1
step
    #completewith next
    .goto 1432/0,-3783.63,-5713.77,80 >>Viaje para o Sítio de Escavação de Ferrobanda
step
    .goto 1432/0,-3812.43,-5694.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Bandaferro|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
    .target Prospector Ironband
step
    #completewith next
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25 >>Vá para o Albergue Andarilho Distante
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dário, o Novato|r
    .accept 257 >>Aceite A Jactância do Caçador
    .goto 1432/0,-4296.68,-5690.590
    .target Daryl the Youngling
step
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78
    >>Mate os |cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_Você deve completar esta missão e retornar para |cRXP_FRIENDLY_Dário, o Novato|r dentro de 15 minutos. Se você falhar, abandone-a e pegue-a novamente|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dário, o Novato|r
    .goto 1432/0,-4296.68,-5690.590
    .turnin 257 >>Entregue A Jactância do Caçador
    .target Daryl the Youngling
step
    .goto 1432/0,-4269.26,-5653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xandar Boabarba|r
    >>|cRXP_BUY_Compre um|r [Simple Wood] |cRXP_BUY_and a|r [Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Barcos para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #hardcore
    .hs >>Use sua Pedra de Retorno para ir a Thelsamar
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3020.95,-5359.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .turnin 298 >>Entregue Relatório de Progresso da Escavação
    .accept 301 >>Aceite Apresente-se a Altaforja
    .target Jern Hornhelm
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step
    #optional
    .goto 1455/0,-1188.54,-4761.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daryl Ricinum|r
    .target Daryl Riknussun
    .train 2550 >>Treine |T133971:0|t[Culinária]
step
    .goto 1455/0,-1303.75,-4631.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Lançatroz|r
    .turnin 301 >>Entregue Apresente-se a Altaforja
    .target Prospector Stormpike
step
    #completewith EnterSW
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Stormwind City
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r no meio da plataforma
    .target Monty
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
step
    .use 17117 >>|cRXP_WARN_Use o|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
    .timer 11,Ratos de Deeprun RP
    .accept 6662 >>Aceite Espetinhos de... Rato
step
    >>|cRXP_WARN_Pegue o Deeprun Tram para o lado de Ventobravo|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r na plataforma intermediária no lado de Ventobravo do Deeprun Tram
    .turnin 6662 >>Entregue Espetinhos de... Rato
    .target Nipsy
step
    #label EnterSW
    .zone Stormwind City >>Entre em Ventobravo
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto 1453/0,685.22,-8387.23
    .accept 353 >>Aceite Entrega para Lançatroz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .target Furen Longbeard
    .goto 1453/0,600.07,-8427.22
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto 1453/0,613.0,-8796.03
    .trainer >>Treine Cajados

step --dont delete
    #label NormalRouteEnd

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Catarina Gurjão|r
    >>|cRXP_BUY_Compre um|r |T134335:0|t[MIçanga Brilhosa] |cRXP_BUY_e três|r |T134324:0|t[Reptantes] |cRXP_BUY_dela. Isto é para uma missão de 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilbert Cinza::267118|r 
    .target Gilbert Gray::267118
    .accept 95065 >>Aceite Fishin' Tempo
    .turnin 95065 >>Entregue Fishin' Tempo
--Hunter going Darkshore, rest Westfall
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Suba de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra se necessário|r
    .zone Darkshore >>Pegue o barco para Costa Negra
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >>Pegue o barco para Costa Negra
]])