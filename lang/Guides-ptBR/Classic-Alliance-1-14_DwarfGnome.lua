if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 1-6 Coldridge Valley
#displayname 1-6 Coldridge Valley << !SoD
#displayname 1-7 Coldridge Valley << SoD
#next 6-11 Dun Morogh << !Hunter
#next 6-11 Dun Morogh (Caçador);6-11 Dun Morogh << Hunter
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Você selecionou um guia pensado para Gnomos e Anões. Você deveria escolher a mesma zona inicial onde você começa.
step << Mage
    #completewith next
    +Nota que você selecionou o guia de Mago de alvo único. Alvo único é bem mais seguro do que Mago AdE, mas MUITO mais lento
step << !Gnome Mage
    #season 2
    #completewith next
    +Na Temporada de Descoberta, você não deveria começar fora da zona de início de sua raça como um Mago, pois você será incapaz de obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
step << !Warlock
    #season 2 << Warrior
    #optional
    #completewith WolfMeat
	.destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário
--XX Everyone except Warlocks, Era warriors drop HS
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Equipadores Anões
    .target Sten Stoutarm
step << Warlock
#sticky
#label wlrune1
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abra o |cRXP_PICK_Baú dos Peidraqueixo|r no chão. Saque-o para obter a |T134419:0|t|cRXP_LOOT_[Runa da Assombração]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
#requires wlrune1
#sticky
    #season 2
    .train 403919 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa da Assombração]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Assombrar]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
--XX Era Level 1 Warrior/Warlock training, Era Warlock imp accept start
step << Warrior/Warlock
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
step << Warrior/Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Warrior/Warlock
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .vendor >>Lixo de Comerciante
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r dentro
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r dentro
    .train 348 >>Treine |T135817:0|t[Imolação]
    .accept 1599 >>Aceite Beginnings
    .target Alamar Grimm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >>Lar para Coldridge Valley
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário
--XX Era Warriors, Era Softcore Warlocks drop HS
step << Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >>Saia de Anvilmar
    .subzoneskip 77,1
--XX Era Level 1 Warrior/Warlock training, warlock imp accept end
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
step << Priest/Mage/Warlock
    #season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Farme mais |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Farme mais |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    >>|cRXP_WARN_Tenha certeza de que você guarda 10c para depois|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Comerciante << Hunter
    >>|cRXP_BUY_Compre 600|r |T132384:0|t[Luz Shots] |cRXP_BUY_dele|r << Hunter
    .vendor >>|cRXP_WARN_Venda lixo|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
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
    .target Sten Stoutarm
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >>Aceite Uma Nova Ameaça
    .target Balir Frosthammer
--XX SoD level 2 Training/Rune quest accept start (-Paladin, they don't need to yet)
step << Priest/Mage/Warlock
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abra o |cRXP_PICK_Pedraqueixo Objetos de TBC|r no chão. Saqueie-o para a |T136222:0|t|cRXP_LOOT_[Memória de um Acólito Conturbado]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Mage
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abra o |cRXP_PICK_Baú de Pedraqueixo|r no chão. Saqueie-o para o |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você será incapaz de treinar|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_aqui, pois você só pode obter um|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona de início de sua raça|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << !Paladin !Hunter
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >>Entre em Anvilmar << Rogue/Warlock/Mage
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar << !Rogue !Warlock !Mage
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r acima
    .accept 1599 >>Aceite Beginnings
    .turnin 3115 >>Entregue Memorando Conspurcado << Gnome
    .accept 77666 >>Aceite Poder Roubado << Gnome
    .turnin 77666 >>Entregue Poder Roubado << Gnome
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r dentro
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .accept 77655 >>Aceite A Runa Perdida << Dwarf
    .accept 77656 >>Aceite A Runa Perdida << Gnome
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .trainer >>Treine suas magias de classe
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r lá dentro
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .turnin 3113 >>Entregue Memorando Criptografado << Gnome
    .accept 77658 >>Aceite Três Vezes Roubado << Dwarf
    .accept 77659 >>Aceite Três Vezes Roubado << Gnome
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Solm Hargrin
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r dentro
    >>|cRXP_WARN_Trem|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_pois você precisará disso em breve para uma missão de classe|r << Dwarf
    .turnin 3110 >>Entregue Runa Santificada << Dwarf
    .accept 5626 >>Aceite In Simpatia of the Luz - Missão << Dwarf
    .accept 77661 >>Aceite Meditação da Luz << Dwarf
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .target Branstock Khalder
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_Coloque o|cRXP_FRIENDLY_ Altar da Luz|r como alvo dentro para receber o|r |T135934:0|t[Meditação da Luz] |cRXP_WARN_aprimoramento|r
    >>|cRXP_WARN_Se isso não funcionar, digite /kneel tendo o|cRXP_FRIENDLY_ Altar da Luz|r como alvo|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >>|cRXP_WARN_Use a|r |T136222:0|t|cRXP_LOOT_[Memória de um Acólito Conturbado]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Penitência]
    .aura -410935
    .use 205951
step << Dwarf Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r dentro
    .turnin 77661 >>Entregue Meditação da Luz
    .target Branstock Khalder
    .isQuestComplete 77661
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock/Dwarf Priest
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>Grave as|cRXP_WARN_ |T132961:0|t[Luvas de Tecido Esfarrapado] |rcom|r |T133816:0|t[Gravar Luvas - Assombrar] << Warlock
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132961:0|t[Luvas de Tecido Esfarrapado] com|r |T133816:0|t[Gravar Luvas - Penitência] << Priest
    .train 402862,3 << Priest
    .train 403919,3 << Warlock

step << Warlock
    #season 0,1
    #requires FrostmaneC1
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>Abate os |cRXP_ENEMY_Pedraqueixo Troggs|r, os |cRXP_ENEMY_Parrudo Pedraqueixo Troggs|r, os |cRXP_ENEMY_Ragged Young Wolves|r e os |cRXP_ENEMY_Ragged Timber Wolves|r no caminho
    >>|cRXP_WARN_Tente evitar os|r |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .mob +Burly Rockjaw Trogg
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >>Entre na Frostmane Cave
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
    .hs >>Lar para Coldridge Valley
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
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r acima
    .turnin 1599 >>Entregue Beginnings
    .turnin -3115 >>Entregue Memorando Conspurcado
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
#season 0,1
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Coldridge Valley Malha Entrega
    .accept 183 >>Aceite O Caçador de Javalis
    .accept 234 >>Aceite Entrega de Correio do Vale Coldridge
    .target Talin Keeneye
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Coldridge Valley Malha Entrega
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
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 183 >>Entregue O Caçador de Javalis
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
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
step << Paladin/Warlock
    #xprate >1.49
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
    .xp 3+995 >>Farme até 995+/1400xp
step
    #label Rockjaw
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
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isto iniciará um cronômetro de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >>Entre na caverna dos Trolls
step << Warlock
#loop
#season 2
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
    >>Abate os |cRXP_ENEMY_Frostmane Novices|r dentro da caverna dos Trolls. Saque-os pelo |cRXP_LOOT_Feather Charms|r
    >>|cRXP_WARN_Você está contra o tempo. NÃO saia AFK ou faça logout|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 2
    #completewith next
    .hs >>Vá para Anvilmar
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Você tem 5 minutos para retornar a Anvilmar antes que|r |T132791:0|t[Rabo-de-galo Escaldante de Durnan] |cRXP_WARN_expire|r
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r dentro
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>Lixo de Comerciante
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entregue Runa Cinzelada << Dwarf
    .train 1978 >>Treine |T132204:0|t[Picada de Serpente]
step << Hunter
    #season 2
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entregue Runa Cinzelada << Dwarf
    .accept 77660 >>Aceite Caminhada nas Cavernas << Dwarf
    .train 1978 >>Treine |T132204:0|t[Picada de Serpente]
step << Paladin
    #season 0,1
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r dentro
    .turnin 3107 >>Entregue Runa Consagrada << Dwarf
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Bromos Grummner
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r dentro
    .turnin 3107 >>Entregue Runa Consagrada << Dwarf
    .accept 77657 >>Aceite Relíquias da Luz << Dwarf
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Bromos Grummner
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r acima
    .turnin 3115 >>Entregue Memorando Conspurcado
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Alamar Grimm
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r acima
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .turnin 1599 >>Entregue Beginnings
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
step << Warlock
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Warrior/Paladin
    #season 2
    #completewith Observations
    #label Victory1 << Warrior
    #label Libram1 << Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .waypoint 1426,22.836,79.962,45,0
    .waypoint 1426,22.684,78.888,45,0
    .waypoint 1426,21.029,76.459,45,0
    .waypoint 1426,20.671,75.838,45,0
    .waypoint 1426,25.861,78.197,45,0
    .waypoint 1426,26.382,78.409,45,0
    .waypoint 1426,26.031,79.854,45,0
    .waypoint 1426,23.716,80.257,45,0
    >>Abate os |cRXP_ENEMY_Frostmane Trolls Whelps|r. Saqueie-os para obter a |T134419:0|t|cRXP_LOOT_[Runa do Ímpeto da Vitória]|r << Warrior
    >>Abate |cRXP_ENEMY_Frostmane Trolls Whelps|r. Saqueie-os para obter o |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r << Paladin
    .collect 204806,1 << Warrior --Rune of Victory Rush (1)
    .collect 205420,1 << Paladin -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 403470,1 << Warrior
    .train 410002,1 << Paladin
step << Warrior
    #season 2
    #completewith Observations
    #label Victory2
    #requires Victory1
    .train 403470 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Ímpeto da Vitória]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Ímpeto da Vitória]
    .use 204806
    .itemcount 204806,1
step << Warrior
    #season 2
    #completewith Observations
    #label Victory3
    #requires Victory2
    .equip 10 >>|cRXP_WARN_Equipe um par de|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_se tiver um par ou se saquear um|r
    .train 403470,3
step << Warrior
    #season 2
    #completewith Observations
    #requires Victory3
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132938:0|t|cRXP_LOOT_[Gloves]|r com|r |T133816:0|t[Gravar Luvas - Ímpeto da Vitória]
    .train 403470,3
step << Paladin
    #season 2
    #completewith Observations
    #label Libram2
    #requires Libram1
    .equip 18,205420 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--  .itemStat 18,QUALITY,<2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram3
    #requires Libram2
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,29.303,77.337,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,24.193,77.305,55,0
    .aura 408828 >>|cRXP_WARN_Lance|r |T135959:0|t[Julgamento] |cRXP_WARN_10 vezes para obter o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram4
    #requires Libram3
    .cast 409920 >>|cRXP_WARN_Use o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram5
    #requires Libram4
    .equip 10 >>|cRXP_WARN_Equipe um par de|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_se tiver um par ou se saquear um|r
    .train 410002,3
step << Paladin
    #season 2
    #completewith Observations
    #requires Libram5
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132938:0|t|cRXP_LOOT_[Gloves]|r com|r |T133816:0|t[Gravar Luvas - Golpe do Cruzado]
    .train 410002,3
step
    #loop
    #label TrollWhelps
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
step << Warrior/Paladin
    #season 2
    #optional
    #requires Victory2 << Warrior
    #requires Libram4 << Paladin
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 182 >>Entregue The Trolls Cave
    .accept 218 >>Aceite O Diário Roubado
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isto iniciará um cronômetro de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
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
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Mate o |cRXP_ENEMY_Grik'nir o Frio|r dentro. Saqueie-o pelos |cRXP_LOOT_Diário de Grolin Barbabranca|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue/Hunter
    #season 2
    .goto Dun Morogh,30.773,80.063
    >>Abra o |cRXP_PICK_Frostmane Saque Baú de Saque Jubafria|r no chão lá dentro. Saqueie-o para obter a |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r << Rogue
    >>Abra o |cRXP_PICK_Frostmane Saque Cache|r no chão dentro. Saque-o para obter |T134419:0|t|cRXP_LOOT_[Runa da Quimera]|r << Hunter
    .collect 204795,1 << Rogue --Rune of Shadowstrike (1)
    .collect 206168,1 << Hunter -- Rune of the Chimera (1)
    .train 400105,1 << Rogue
    .train 410121,1 << Hunter
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << Hunter
    #season 2
    .train 410121 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa da Quimera]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Tiro Quimérico]
    .use 206168
    .itemcount 206168,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equipe um par de|r |T132952:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_se você tiver um par ou sacar um par|r
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #label Chimera1
    .equip 10 >>|cRXP_WARN_Equipe um par de|r |T132952:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_se você tiver um par ou sacar um par|r
    .train 410121,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Grave sua|r |T132952:0|t|cRXP_LOOT_[Gloves]|r com|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #requires Chimera1
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132952:0|t|cRXP_LOOT_[Gloves]|r com|r |T133816:0|t[Gravar Luvas - Tiro Quimérico]
    .train 410121,1
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >>Saia da Frostmane Cave
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    >>|cRXP_WARN_Se você falhou a missão, pule este passo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>Lixo de Comerciante
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>Lixo de Comerciante
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >>Abandone a missão [Durnan's Rabo-de-galo Escaldante]. Você a aceitará novamente depois.
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equipe um par de|r |T132952:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_se você tiver um par ou sacar um par|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Grave sua|r |T132952:0|t|cRXP_LOOT_[Gloves]|r com|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r e |cRXP_FRIENDLY_Grolin Barbabranca|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .trainer >>Treine suas magias de classe
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .accept 77667 >>Aceite Pesquisa de Feitiços << Gnome
    .trainer >>Treine suas magias de classe
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 77667 >>Entregue Pesquisa de Feitiços
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate >1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132961:0|t[Luvas de Tecido Esfarrapado] com|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,3
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Entregue Memorando Criptografado << Gnome
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .trainer >>Treine suas magias de classe
    .target Solm Hargrin
step << Rogue
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >>Entregue Três Vezes Roubado << Dwarf
    .turnin 77659 >>Entregue Três Vezes Roubado << Gnome
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .trainer >>Treine suas magias de classe
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Aprenda|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_e|r |T135929:0|t[Cura Inferior] (Rank 2) |cRXP_WARN_pois você precisará deles para uma missão de classe em breve|r << Dwarf
    .turnin 3110 >>Entregue Runa Santificada << Dwarf
    .accept 5626 >>Aceite In Simpatia of the Luz - Missão << Dwarf
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior] (Rank 2) << Dwarf
    .trainer >>Treine suas magias de classe
    .target Branstock Khalder
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Aprenda|r |T135929:0|t[Cura Inferior] (Rank 2) |cRXP_WARN_pois você precisará dela para uma missão de classe em breve|r << Dwarf
    .accept 5626 >>Aceite In Simpatia of the Luz - Missão << Dwarf
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior] (Rank 2) << Dwarf
    .trainer >>Treine suas magias de classe
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .trainer >>Treine suas magias de classe
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >>Entregue A Runa Perdida << Dwarf
    .turnin 77656 >>Entregue A Runa Perdida << Gnome
    .trainer >>Treine suas magias de classe
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .accept 77667 >>Aceite Pesquisa de Feitiços << Gnome
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 77667 >>Entregue Pesquisa de Feitiços
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132961:0|t[Luvas de Tecido Esfarrapado] com|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Entregue Memorando Criptografado << Gnome
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Solm Hargrin
step << Rogue
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >>Entregue Três Vezes Roubado << Dwarf
    .turnin 77659 >>Entregue Três Vezes Roubado << Gnome
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Aprenda|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_e|r |T135929:0|t[Cura Inferior] (Rank 2) |cRXP_WARN_pois você precisará deles para uma missão de classe em breve|r << Dwarf
    .turnin 3110 >>Entregue Runa Santificada << Dwarf
    .accept 5626 >>Aceite In Simpatia of the Luz - Missão << Dwarf
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior] (Rank 2) << Dwarf
    .trainer >>Treine suas magias de classe
    .target Branstock Khalder
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >>Entregue A Runa Perdida << Dwarf
    .turnin 77656 >>Entregue A Runa Perdida << Gnome
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
step << Priest/Mage
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre 5|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
    .xp >8,1
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
    .target Nori Pridedrift
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >>Entregue Relíquias da Luz
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >>Entregue Caminhada nas Cavernas
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >>Abandone Relíquias da Luz pois você já tem um par de |T132938:0|t[Gloves] equipado << Paladin
    .abandon 77660 >>Abandone Caminhada nas Cavernas pois você já tem um par de |T132952:0|t[Gloves] equipado << Hunter
step
    #label Observations
    >>Fale com o |cRXP_FRIENDLY_Montanhista Thalos|r e |cRXP_FRIENDLY_Mãos Rodamola|r
    .turnin 282 >>Entregue Observações de Senir
    .accept 420 >>Aceite Observações de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >>Aceite Suprimentos para Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>Atravesse Coldridge Passe
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#xprate >1.49 << Hunter
#era/som--h
#classic
#tbc
#season 0,1
#version 1
<< Alliance --!Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh
#displayname 6-12 Dun Morogh << sod !Warlock
#next 11-12 Elwynn (Anão/Gnomo);11-12 Missão do Andarilho do Vazio;12-14 Loch Modan (Anão/Gnomo);11-13 Loch Modan (Caçador)
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Guarde todos os|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você conseguir para Provisões para a Vaporeta e depois para subir seu|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Auberdine depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #xprate <1.49
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >>Vá para Kharanos. Farme até 2145+/2800 XP matando os |cRXP_ENEMY_Crag Boars|r no caminho << Priest
    .xp 5+2415 >>Vá para Kharanos. Farme até 2415+/2800 XP matando os |cRXP_ENEMY_Crag Boars|r no caminho << !Priest
    .subzoneskip 131
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #xprate 1.49-1.59
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+1817 >>Vá para Kharanos. Farme até 1817+/2800 XP matando os |cRXP_ENEMY_Crag Boars|r no caminho << Priest
    .xp 5+2222 >>Vá para Kharanos. Farme até 2222+/2800 XP matando os |cRXP_ENEMY_Crag Boars|r no caminho << !Priest
    .subzoneskip 131
step
    #xprate >1.59
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+1490 >>Vá para Kharanos. Farme até 1490+/2800 XP matando os |cRXP_ENEMY_Crag Boars|r no caminho << Priest
    .xp 5+2030 >>Vá para Kharanos. Farme até 2030+/2800 XP matando os |cRXP_ENEMY_Crag Boars|r no caminho << !Priest
    .subzoneskip 131
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >>Voe para Kharanos
    .mob Crag Boar
step
    #softcore
    #completewith next
    >>|cRXP_WARN_Certifique-se de que sua subzona NÃO é Coldridge Passe|r
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >>Entregue Observações de Senir
    .target Senir Whitebeard
step << !Priest
    #xprate <1.5
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >>Suba até 2690+/2800xp
step << !Priest
    #xprate 1.49-1.59
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2635 >>Farme até 2635+/2800 XP
step << !Priest
    #xprate >1.99
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2580 >>Farme até 2580+/2800 XP
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dannie Silvombida|r
    .vendor 6328 >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue (Rank 1)] |cRXP_BUY_se você puder pagar. Se não, você pode comprá-lo depois|r
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .turnin 2160,1 >>Entregue Suprimentos para Tannok << Warrior/Rogue
    .turnin 2160,2 >>Entregue Suprimentos para Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compre as|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
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
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
step << Mage
    #xprate <1.59
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Magis Sparkmantle
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Avar Marroforte|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .accept 5625 >>Aceite Vestimentas da Luz
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Lançar |T135929:0|t[Cura Inferior] (Rank 2) e então |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Montanhista Dolf|r fora
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    #xprate <1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .turnin 5625 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Priest
    #xprate >1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .turnin 5625 >>Entregue Vestes da Luz
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .home >>Defina sua Pedra de Retorno em Cervaforte Distillery
    .vendor >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_que você puder pagar|r << Priest/Mage/Warlock
    .target Innkeeper Belm
step << Warrior
    #xprate <1.59
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
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
    .goto Dun Morogh,45.290,52.190
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
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tognus Pederfogo|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .accept 400 >>Aceite Ferramentas Para Gradaço
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Suba no telhado do Kharanos Estalagem, depois pule no topo do grande barril. Siga a seta|r
    >>Abra o |cRXP_PICK_Rusty Caixa-forte|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r] |cRXP_WARN_to train|r |T236280:0|t[Atacar das Sombras]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #xprate <1.5
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r e o |cRXP_FRIENDLY_Piloto Marchapedra|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >>Aceite The Grizzled Den
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step << Warrior/Paladin/Rogue
    #xprate 1.49-1.59
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r e o |cRXP_FRIENDLY_Piloto Marchapedra|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >>Aceite The Grizzled Den
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step
    #xprate >1.49 << !Warrior !Paladin !Rogue
    #xprate >1.59 << Warrior/Paladin/Rogue
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Gradaço|r e |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compre um|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_WARN_Se você não conseguir pagar, pule este passo|r
    .turnin 400 >>Entregue Ferramentas Para Gradaço
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Gradaço|r e |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >>Entregue Ferramentas Para Gradaço
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yarr Malhapedra|r no andar inferior
    >>|cRXP_WARN_Se você não conseguir pagar, pule este passo|r
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_Lance|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith BearFur
    >>Abata os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para pegar |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith BearFur
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Thick Urso Fur|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Mate os |cRXP_ENEMY_Javalis|r. Saque-os para |T134026:0|t[Dun Morogh Pig Carne]
    .collect 208192,1
    .mob Crag Boar
    .mob Elder Crag Boar
    .mob Large Crag Boar
    .mob Scarred Crag Boar
    .train 425762,1
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Thick Urso Fur|r
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Large Crag Boar
    .mob Crag Boar
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith EvershineEnd
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para seus |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 317 >>Entregue Provisões Para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dele|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yarr Malhapedra|r no andar inferior
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
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
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >>Suba até o nível 6
step << Hunter
    #optional
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .train 3044 >>Treine |T132218:0|t[Tiro Arcano]
    .train 1130 >>Treine |T132212:0|t[Marca do Caçador]
    .target Grif Wildheart
    .money <0.02
step << Hunter
    #season 0,1
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .train 3044 >>Treine |T132218:0|t[Tiro Arcano]
    .target Grif Wildheart
    .money <0.01
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .train 1130 >>Treine |T132212:0|t[Marca do Caçador]
    >>|cRXP_WARN_Se você não tem dinheiro suficiente, mate os inimigos ao redor de Kharanos. Você precisará deste feitiço em breve|r
    .target Grif Wildheart
step << Warrior/Rogue/Priest/Mage/Warlock
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step << Warrior/Rogue
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre o máximo|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele que conseguir pagar|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_que conseguir pagar|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #season 0,1 << Warrior
    #xprate <1.49 << !Warrior !Paladin !Rogue
    #xprate <1.59 << Warrior/Paladin/Rogue
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>Voe para The Grizzled Den
    .isOnQuest 313
step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>Voe para The Grizzled Den
    .isOnQuest 313
step << Warrior
    #season 2
    #sticky
    #label WendigoPaw
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .waypoint 1426,41.918,54.053,40,0
    .waypoint 1426,42.177,53.274,40,0
    .waypoint 1426,41.100,48.927,40,0
    >>Abate |cRXP_ENEMY_Wendigos|r. Saqueie-os por uma |cRXP_LOOT_Cortado Wendigo Paw|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 403475,1
step
    #xprate <1.49 << !Warrior !Paladin !Rogue
    #xprate <1.59 << Warrior/Paladin/Rogue
    #optional << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Abate os |cRXP_ENEMY_Wendigos|r e os |cRXP_ENEMY_Young Wendigos|r. Saque-os de |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_Lembrar de ficar de olho em|r |T134566:0|t[Copper Veins] |cRXP_WARN_que rendem|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para que você possa fabricar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Lembrar de ficar de olho em|r |T134566:0|t[Copper Veins] |cRXP_WARN_que rendem|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para que você possa fabricar|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Abate os |cRXP_ENEMY_Wendigos|r e os |cRXP_ENEMY_Young Wendigos|r. Saque-os de |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>Abra o |cRXP_PICK_Ammo Caixote|r. Pegue |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Vá para |cRXP_FRIENDLY_Hegnar Estremetiro|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    >>|cRXP_BUY_Compre um|r |T135611:0|t[Bacamarte Ornado]|cRXP_BUY_dele|r
    >>|cRXP_WARN_Se você não conseguir pagar, pule este passo|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .target Hegnar Rumbleshot
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >>Suba até o nível 7
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #loop
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Fur|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
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
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
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
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os pelos seus |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 317 >>Entregue Provisões Para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil Canjento
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dele|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yarr Malhapedra|r no andar inferior
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior/Paladin/Rogue
    #xprate <1.49
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 7 >>Suba até Nível 7
step << Warrior/Rogue
    #xprate <1.59
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 8 >>Suba até Nível 8
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
    .xp <8,1
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Avar Marroforte|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
    .xp <8,1
step << Warrior
    #xprate <1.59
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
    .xp <8,1
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>Entre no edifício Ferraria
step << Gnome Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre em Cervaforte Distillery
step << Warrior/Rogue
    #xprate <1.59
    #completewith Tundra
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 > |cRXP_BUY_Compre o máximo|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele que conseguir pagar|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >>Viaje para Calafrio Breeze Valley
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >>Vá para |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,35.237,56.815
    .subzone 801 >>Viaje para Calafrio Breeze Valley
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >>Vá para |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Aceite Por Baixo da Carne-Seca
    .target Tundra MacGrann
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r saia da caverna. Quando ele sair, entre e saqueie|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter
    #season 2
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r saia da caverna. Quando ele sair, entre e saqueie|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter
    #season 2
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >>Vá para Brewnall Village
step << !Mage !Priest
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >>Lixo de Vendedor
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Rejold Cervevada|r e |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 318 >>Entregue Sempre-aceso
    .accept 319 >>Aceite Tudo Pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >>Aceite A Guerra das Cervejas
    .goto Dun Morogh,30.186,45.531
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
--XX Forcing this so people are a higher level for second wave of west quests (even on 2x)
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Use a |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate |cRXP_ENEMY_Razormane Poacher|r que aparece. Saqueie |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    .use 206155
    .train 410113,1
step << Hunter/Mage/Warrior
    #season 2
    #requires Marksmanship2 << Hunter
    #label Fyodi1
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Abate |cRXP_ENEMY_Fyodi|r. Saque-o para obter |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r << Hunter
    >>Abate |cRXP_ENEMY_Fyodi|r. Saqueie-o para |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: COLESDI DASGAI]|r << Mage
    >>Mate |cRXP_ENEMY_Fyodi|r. Saque a |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r << Warrior
    >>|cRXP_WARN_Embora |cRXP_ENEMY_Fyodi|r apareça como uma élite, seus valores de vida, dano e armadura são os de um inimigo padrão|r
    >>|cRXP_WARN_Tenha cuidado enquanto ele conjura|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 35-80 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    >>|cRXP_WARN_NOTA: O|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_também pode cair de todo inimigo raro em Dun Morogh, assim como |cRXP_ENEMY_Ragash|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r << Hunter
    >>|cRXP_WARN_NOTA: O|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_também pode cair de qualquer inimigo raro em Dun Morogh, bem como |cRXP_ENEMY_Ragash|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r << Mage
    >>|cRXP_WARN_NOTA: O|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_também pode cair de qualquer inimigo raro em Dun Morogh, bem como de |cRXP_ENEMY_Ragash|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r << Warrior
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder (1)
    .mob Fyodi
    .train 410123,1 << Hunter
    .train 401765,1 << Mage
    .train 403476,1 << Warrior
step << Hunter
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 410123 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Tiro Explosivo]
    .use 206169
    .itemcount 206169,1
step << Mage
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 401765 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .itemcount 211779,1 --Comprehension Charm (1)
step << Warrior
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Trovão Furioso]
    .use 204809
    .itemcount 204809,1 --Rune of Furious Thunder (1)
step
    #optional
    #requires ForceFavorRibNo
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires ForceFavorRibYes
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires FyodiEnd << Hunter/Mage/Warrior --Season 2
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 319 >>Entregue Tudo Pela Sempre-aceso
    .accept 320 >>Aceite Fale Novamente com Urrabolha
    .target Rejold Barleybrew
step
    #hardcore
    #completewith Distracting
    .goto Dun Morogh,47.377,52.523
    .subzone 131 >>Retorne para Kharanos
--XX if they don't somehow meet xp gate by Kharanos then wcyd
step
    #xprate <1.5
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3735 >>Suba até 3735+/4500xp
    .isQuestAvailable 384
step
    #xprate 1.49-1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3355 >>Suba até 3355+/4500xp
    .isQuestAvailable 384
step << Rogue/Hunter
    #xprate >1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 9+6110 >>Suba até 6110+/7600xp
    .isQuestAvailable 384
step
    #xprate <1.5
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4360 >>Suba até 4360+/4500xp
    .isQuestTurnedIn 384
step
    #xprate 1.49-1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4290 >>Suba até 4290+/4500xp
    .isQuestTurnedIn 384
step << Rogue/Hunter
    #xprate >1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 9+7320 >>Suba até 7320+/7600xp
    .isQuestTurnedIn 384
step
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    >>|cRXP_WARN_Faça o deathskip Dun Morogh -> Pantanal. Siga a seta de perto|r
    >>|cRXP_WARN_NÃO pule de nenhuma altura ainda|r
    .zone Wetlands >>|cRXP_WARN_Suba a montanha, depois desça pelo padrão serrilhado até que sua subzona mude para o Pantanal|r
    .isQuestAvailable 983
step
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salto da montanha em direção ao norte ou noroeste|r
    .deathskip >>Morra e reviva na Baía Baradin |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestAvailable 983
    .target Anjo da Cura
step
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>Nade para a costa perto de Menethil Harbor
    .subzoneskip 150
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Wetlands >>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
    #softcore
	#completewith Distracting
    .hs >>Vá para Kharanos
    .subzoneskip 131
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarven Cervaforte|r abaixo
    .turnin 308 >>Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step << Hunter
    #xprate <1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .target Grif Wildheart
step << Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .accept 6064 >>Aceite Adestramento da Fera - Missão << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Adestramento da Fera - Missão
    .accept 6084 >>Aceite Adestramento da Fera - Missão
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Adestramento da Fera - Missão
    .accept 6085 >>Aceite Adestramento da Fera - Missão
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Adestramento da Fera - Missão
    .accept 6086 >>Aceite Treinamento da Fera - Missão
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >>Treine suas magias de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dannie Silvombida|r
    .vendor 6328 >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Seta de Fogo (Rank 2)] |cRXP_BUY_se puder pagá-lo. Senão, você poderá comprá-lo depois|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Rogue
    #xprate >1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    >>|cRXP_WARN_apenas treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]|cRXP_WARN_. Não treine outros feitiços para economizar dinheiro para depois|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .accept 2218 >>Aceite Estrada para a Salvação
    .target Hogral Bakkan
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Avar Marroforte|r dentro no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro no andar de cima
    .train 118 >>Treine |T136071:0|t[Polimorfia]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thamner Poli|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Thamner Pol
    .money <0.01
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe uma|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre até 15|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se conseguir pagar|r << Warrior/Rogue
    .vendor 1247 >>|cRXP_BUY_Compre 5|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se conseguir pagar|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .accept 287 >>Aceite A Fortaleza Jubafria
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
    #xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil Canjento
    .target Pilot Stonegear
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    >>|cRXP_WARN_Escolha o|r |T135637:0|t[Faca Campeira]|cRXP_WARN_. Guarde-o para depois|r << Rogue
    .turnin 320 >>Fale novamente com Urrabolha << !Rogue
    .turnin 320,3 >>Fale novamente com Urrabolha << Rogue
    .target Pilot Bellowfiz
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    >>|cRXP_WARN_Escolha o|r |T135637:0|t[Faca Campeira]
    .turnin 320,3 >>Fale novamente com Urrabolha
    .target Pilot Bellowfiz
step << Rogue
    #xprate >1.49
    #completewith ShimmerweedCollect
    +|cRXP_WARN_Equipe o|r |T135637:0|t[Faca Campeira] |cRXP_WARN_em sua mão esquerda|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.2
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1426,47.861,41.827,30,0
    .goto 1426,51.373,39.595,30,0
    .goto 1426,52.013,36.589,30,0
    .goto 1455,18.428,82.995,60 >>Viaje para Ironforge
    .zoneskip Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #completewith next
    #label EnterIFRogue
    .goto 1455,18.428,82.995
    .zone Ironforge >>Entre em Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    #requires EnterIFRogue
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Voe para |cRXP_FRIENDLY_Hulfdan Barbanegra|r lá dentro, no andar de baixo
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2218 >>Entregue Road to Salvação
    .accept 2238 >>Aceite Simple Subterfugin'
    .target Hulfdan Blackbeard
step
    #xprate <1.5
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r dentro
    .accept 412 >>Aceite Operação Remendão
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >>Viaje rampa acima para Cintilação Serra
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Mate |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mate os |cRXP_ENEMY_Frostmane Seers|r. Saque-os para obter suas |cRXP_LOOT_Tremulerva|r
    >>Abra os |cRXP_PICK_Tremulerva Cestos|r no chão. Saque-os para obter |cRXP_LOOT_Tremulerva|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mate os |cRXP_ENEMY_Videntes Frostmane|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia da Cidadela Profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_to train|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Você deve ter 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus digitando /kneel em uma área sagrada como Northshire Abbey, Catedral TBC, os Altares da Luz em Anvilmar, Loch Modan ou a Proteção Mística em Ironforge|r
    .use 205947
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mate os |cRXP_ENEMY_Frostmane Videntes|r. Saque-os para o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .train 401768 >>|cRXP_WARN_Use a|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Frostmane Trolls|r. Saque de |T134327:0|t[|cRXP_LOOT_Top-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step << Warrior
    #season 2
    >>Mate os |cRXP_ENEMY_Frostmane Trolls|r. Saqueie-os para obter a |cRXP_LOOT_Severed Trolls Cabeça|r
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .train 403475,1
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Usar |T134026:0|t[Dun Morogh Pig Carne] perto do cadáver dentro da caverna para invocar |cRXP_ENEMY_Jorul|r
    >>Abate |cRXP_ENEMY_Jorul|r. Saque-o de |T134419:0|t|cRXP_LOOT_[Runa de Flanqueamento]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa de Flanqueamento]|r |cRXP_WARN_para treinar|r |T132175:0|t[Ataque Flanqueante]
    .use 205979
    .itemcount 205979,1
step << !Mage !Warlock
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r saia da caverna. Quando ele sair, entre e saqueie|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Lance|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Mage
    >>|cRXP_WARN_Use|r |T136183:0|t[Medo] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Warlock
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
    .target Tundra MacGrann
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >>|cRXP_BUY_Compre até 10 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >>Lixo de Vendedor
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Rejold Cervevada|r e |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 315 >>Entregue em Em Busca da Cerveja Perfeita
    .accept 413 >>Aceite Cerveja Tremeluz
    .goto Dun Morogh,30.189,45.725
    .target +Rejold Barleybrew
    .turnin 311 >>Fale novamente com Marleth
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step << Rogue
    #season 2
    #completewith next
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Leper Gnomes|r. Saque de |T134269:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Priest
    #season 2
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os para a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Dun Morogh,25.164,44.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onin MacHammar|r no topo do porto da Máquina Voadora
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 2238 >>Entregue Simple Subterfugin'
    .accept 2239 >>Aceite Onin's Report
    .target Onin MacHammar
step
    #xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os pelos |cRXP_LOOT_Gyromechanic Engrenagens|r e |cRXP_LOOT_Restabilization Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os para a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Leper Gnomes|r. Saque de |T134269:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #sticky
    #label Headhunters
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
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>Suba o lado da entrada da caverna. Pule para A Fortaleza Jubafria
    .isOnQuest 287
step << Hunter
    #xprate 1.49-1.59
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .goto 1426,22.390,51.701,30,0
    .goto 1426,21.113,51.717,30,0
    .goto 1426,21.131,51.024,30,0
    .goto 1426,22.067,50.215,30,0
    .goto 1426,23.136,50.886,30,0
    .goto 1426,23.373,51.385,30,0
    .goto 1426,23.568,50.924,30,0
    .goto 1426,24.301,50.898,30,0
    .xp 9+4280 >>Suba até 4280+/6500xp
step
    #hardcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Largue para baixo na pequena sala sem saída da caverna se houver apenas um |cRXP_ENEMY_Frostmane Lança-sombras|r lá|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Grande Pai Articos|r (raro) pode patrulhar para este recanto. Espere por ele chegar e sair se ele estiver lá, ou lute com cuidado descendo para o recanto|r
    >>|cRXP_WARN_Alternativamente, desça para a saliência, depois caminhe um pouco para baixo na saliência até obter crédito|r
    >>|cRXP_WARN_Tenha cuidado pois o |cRXP_ENEMY_Esfolador Jubafria|r pode matá-lo de baixo se ele estiver em posição errada ao saltar para a saliência|r
    .link https://youtu.be/70PX093soq4?si=YcTdPoKW-EplWQAn&t=3019 >>https://youtu.be/70PX093soq4?si=YcTdPoKW-EplWQAn&t=3019 >> Clique aqui para referência
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Largue para dentro da pequena sala sem saída da caverna|r
    >>|cRXP_WARN_Não se preocupe com morrer para fazer isso pois você está prestes a morrer de propósito para voltar a Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #optional
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step
    #hardcore
	#completewith next
	.hs >>Vá para Kharanos
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 287 >>Entregue em A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
    .target Senir Whitebeard
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .accept 6064 >>Aceite Adestramento da Fera - Missão
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Adestramento da Fera - Missão
    .accept 6084 >>Aceite Adestramento da Fera - Missão
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Adestramento da Fera - Missão
    .accept 6085 >>Aceite Adestramento da Fera - Missão
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Adestramento da Fera - Missão
    .accept 6086 >>Aceite Treinamento da Fera - Missão
    .target Grif Wildheart
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Hogral Bakkan|r na sala de trás
    .accept 2218 >>Aceite Estrada para a Salvação
    .target Hogral Bakkan
    .xp <10,1
step << !Warrior !Rogue !Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thamner Poli|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Thamner Pol
step
    #xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r dentro
    .turnin 412 >>Entregue em Operação Remendão
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Triturar até ter 10s30c de itens para vender|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>Viaje para Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Bixi Bateagita|r ou |cRXP_FRIENDLY_Bulif Manopedra|r
    .trainer >>Se você está em um grupo ou tem alguém para ajudar a matar |cRXP_ENEMY_Ragash|r agora, treine 2h Maças com |cRXP_FRIENDLY_Bulif Manopedra|r, caso contrário, treine Arremesso com |cRXP_FRIENDLY_Bixi Bateagita|r. Se você não tiver certeza qual treinar, apenas treine Arremesso
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Keen Arremessando Knives]
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
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Passo para a borda do piso de metal, acima da seta do waypoint|r
    .zone Dun Morogh >>|cRXP_WARN_Posicione a sua personagem até parecer que ela está flutuando, depois execute um Logout Pular saindo e entrando no jogo|r
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
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >>Viaje para Gol'Bolar Pedreira
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >>|cRXP_BUY_Compre até 10|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se necessário|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_Compre até 5|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Dwarf Paladin
    #xprate >1.49
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
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires PalaCloth << Paladin -->1.49 or higher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .goto Dun Morogh,68.671,55.969
    .target +Foreman Stonebrow
step
    #optional
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    .xp 10 >>Suba até o nível 10
    .mob Rockjaw Skullthumper
step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os pelo |T134331:0|t[Blackrat's Nota] e pelo |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os pelo |T134331:0|t[Blackrat's Nota]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Escuridão Ferro Spies|r. Saque-os para o |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
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
step << Warrior/Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .train 403475,1 << Warrior
    .train 398196,1 << Rogue
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Junni Varoaço <Caçadora de Monstros>|r
    >>|cRXP_WARN_Depois de entregar os três itens, você receberá a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para treinar|r |T135291:0|t[Devastar]
    .use 204703
    .skipgossip
    .target Junni Steelpass
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Mapa do Tesouro|r] |cRXP_WARN_embaixo da pequena ponte. Um |cRXP_PICK_Enterrado Tesouro|r aparecerá|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>Abra o |cRXP_PICK_Tesouro Enterrado|r. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Fale com |cRXP_FRIENDLY_Blackrat|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
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
    #optional
    #completewith next
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
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >>Vá para o |cRXP_FRIENDLY_Montanhista Cervevada|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
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
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
    .xp >14,1 << !Warrior !Dwarf/!Paladin
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
    .xp >14,1 << !Warrior !Dwarf/!Paladin
--XX Skip if 14+ unless warr
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
    .turnin 414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r dentro
    .accept 418 >>Aceite Chouriço de Thelsamar
    .target Vidra Hearthstove
    .xp >14,1
--XX Skip if 14+
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_BUY_Compre também uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_dela se necessário|r << !Rogue
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Navios ou Bondes para aumentar seu|r |T133971:0|t[Culinária] |cRXP_WARN_sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49 << Paladin
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r lá dentro
    .home >>Defina sua Pedra de Retorno em Thelsamar
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >>Saia da Stoutlager Estalagem
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
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
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
    .dungeon DM << Human
step << Human
    #xprate <1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz << Mage/Warlock/Rogue
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #softcore
    #completewith flyIF
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    #optional
    #label Thelsamar1
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r dentro
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step << Dwarf Paladin
    #xprate 1.49-1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6885 >>Triture até 6885+/8800xp
step << Dwarf Paladin
    #xprate >1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6225 >>Triture até 6225+/8800xp
step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
    .target Thorgrum Borrelson
step
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Voe para |cRXP_FRIENDLY_Hulfdan Barbanegra|r lá dentro, no andar de baixo
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Voe para |cRXP_FRIENDLY_Hulfdan Barbanegra|r lá dentro, no andar de baixo
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2218 >>Entregue Road to Salvação
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2239 >>Entregue Onin's Report
    .target Hulfdan Blackbeard
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #label Cunning
    #completewith Ride
    +|cRXP_WARN_Equipe a|r |T135662:0|t[Lâmina da Astúcia] |cRXP_WARN_na mão principal|r
    .use 7298
    .itemcount 7298,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #requires Cunning
    #completewith Ride
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Adaga do Artífice] |cRXP_WARN_na sua mão secundária|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #xprate <1.59
    #season 2
    .goto Ironforge,51.913,13.383
    >>Abra o |cRXP_PICK_Baú Popó|r fora. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    >>|cRXP_WARN_Fazer isso irá invocar dois |cRXP_ENEMY_Cut-throat Muggers|r de nível 10 que irão atacá-lo|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #xprate <1.59
    #season 2
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,60.781,25.800,25,0
    .goto 1455,59.236,14.974,25,0
    .goto 1455,56.192,32.397,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>Viaje para o |cRXP_FRIENDLY_Golnir Topadão|r no prédio
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1455,60.781,25.800,25,0
    .goto 1455,59.236,14.974,25,0
    .goto 1455,56.192,32.397,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>Viaje para o |cRXP_FRIENDLY_Golnir Topadão|r no prédio
step << Dwarf/Gnome
    #xprate <1.59 << Rogue
    #season 0,1 << Rogue
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>Viaje para o |cRXP_FRIENDLY_Golnir Topadão|r no prédio
step
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Golnir Topadão|r dentro
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
    .target Golnir Bouldertoe
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    >>|cRXP_WARN_Não voe para lugar nenhum|r
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retornar com Brock
    .target Gryth Thurden
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Viaje para o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
step
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .turnin 291 >>Entregue Os Relatórios
    .target Senator Barin Redstone
step
    #xprate <1.5 << Dwarf Paladin
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    >>|cRXP_WARN_Não voe para lugar nenhum|r
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retornar com Brock
    .target Gryth Thurden
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,23.131,6.143,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .accept 2999 >>Aceite Tomo de Divindade
    .target Brandur Ironhammer
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>Vá em direção a |cRXP_FRIENDLY_Tiza Beloforja|r acima
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 2999 >>Entregue Tomo de Divindade
    .accept 1645 >>Aceite Tomo de Divindade
    .turnin 1645 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Use o |T133739:0|t|cRXP_LOOT_[Tomo de Divindade]|r para iniciar a missão|r
    .accept 1646 >>Aceite Tomo de Divindade
    .use 6916
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 1646 >>Entregue Tomo de Divindade
    .accept 1647 >>Aceite Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
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
step << Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barim Jurgenstaad|r
    >>|cRXP_BUY_Compre 5|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Estes são necessários para aprender runas|r
    .collect 211779,5
    .target Barim Jurgenstaad
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
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
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >>Vá para a escada embaixo de |cRXP_FRIENDLY_Tiza Beloforja|r
step << Dwarf Paladin
    #xprate >1.49
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
    #xprate >1.49
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 1778 >>Entregue Tomo de Divindade
    .accept 1779 >>Aceite Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r acima
    .turnin 1779 >>Entregue Tomo de Divindade
    .accept 1783 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r abaixo
    .trainer >>Treine suas magias de classe
    .target Brandur Ironhammer
step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith DRT
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo do pilar acima |cRXP_FRIENDLY_Bink|r, depois caminhe ligeiramente para leste dela até a posição da seta. Posicione seu personagem até parecer que está flutuando, então execute um Logout Pular desconectando e reconectando|r
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,35.743,74.853,30,0
    .goto 1455,39.105,78.213,30,0
    .goto 1455,49.422,81.849
    >>|cRXP_WARN_Passo para a borda do piso de metal, acima da seta do waypoint|r
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Posicione a sua personagem até parecer que ela está flutuando, depois execute um Logout Pular saindo e entrando no jogo|r
    .zoneskip Ironforge,1
    .isQuestAvailable 418 --XX only if you havent turned it in yet
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo da Cabeça do Grifo. Execute um Logout Pular desconectando e reconectando|r
    .zoneskip Ironforge,1
    .isQuestTurnedIn 418 --XX only if you have turned in (don't need to go toward AH)
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ssf
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo da Cabeça do Grifo. Execute um Logout Pular desconectando e reconectando|r
    .zoneskip Ironforge,1
step << Paladin
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425621,1
step << Paladin
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin
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
step << Paladin
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
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Repreensão] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Repreensão]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Pants]|r com|r |T134596:0|t[Gravar Calça - Repreensão]
    >>|cRXP_WARN_Lembre-se de colocar|r |T134919:0|t[Repreensão] |cRXP_WARN_nas suas barras de ações|r
    .train 425621,3
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    >>Treine Arremesso e Maças de 2M se ainda não fez antes
    .train 2567 >>Treine Arremesso
    .target +Bixi Wobblebonk
    .goto Ironforge,62.237,89.628
    .train 199 >>Treine Maças de Duas Mãos
    .goto Ironforge,61.177,89.508
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
    #completewith Dirt
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Keen Arremessando Knives]
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
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425447,1
step << Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior
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
step << Warrior
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
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Ataque Frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Calças]|r |cRXP_WARN_com|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .train 425447,3
step << skip --logout skip << Paladin/Warrior
    #season 2
    #optional
    #completewith DRT
    .goto 1455,72.481,74.910
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte em cima das Velas na mesa. Execute um Pulo de Logout desconectando e reconectando|r
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
step << skip --logout skip << Hunter
    #optional
    #completewith DRT
    .goto 1455,70.408,85.520
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Pise no topo do canhão. Execute um Logout Pular saindo e entrando no jogo|r
step
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma intermediária no Deeprun Tram
    .accept 6661 >>Aceite Ratos de Porão
    .target Monty
step
    >>Usar o |T133942:0|t[Rato Catcher's Flute] em |cRXP_FRIENDLY_Deeprun Ratos|r no Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma intermediária no Deeprun Tram
    .turnin 6661 >>Entregue Ratos de Porão
    .timer 11,Ratos de Deeprun RP
    .accept 6662 >>Aceite Espetinhos de... Rato
    .target Monty
----
step
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
step
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
step
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
step
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
step
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
step
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
----
step
    #label TramEnd
    >>|cRXP_WARN_Pegue o Deeprun Tram para o lado de Ventobravo|r
    >>|cRXP_WARN_Aumente o nível de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o Tram para a Cidade de Ventobravo, se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r na plataforma intermediária no lado de Ventobravo do Deeprun Tram
    .turnin 6662 >>Entregue Espetinhos de... Rato
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step
    #optional
    #completewith Order
    .abandon 6662 >>Abandone Espetinhos de... Rato
step
    #optional
    #completewith Order
    .zone Stormwind City >>Entre em Ventobravo
    .isOnQuest 1338
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step
    #label Order
    .goto StormwindClassic,58.091,16.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
    .target Furen Longbeard
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
    #season 2
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Fale com o |cRXP_FRIENDLY_Irmão Rômulo|r
    .target Brother Romulus
    --.skipgossip
    .train 410015,1
step << Paladin
    #season 2
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
step << Paladin
    #season 2
    .goto StormwindClassic,32.86,24.87
    >>Saque a |cRXP_LOOT_Nota Calcinada|r ao lado das velas
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step << Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .trainer >>Treine suas magias de classe
    .turnin 5634 >>Entregue Prece Desesperada
    .target High Priestess Laurena
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .train 13908 >>Aprenda Prece Desesperada
    .target High Priestess Laurena
step << Warrior
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilsa Cletes|r
    .trainer >>Treine suas magias de classe
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .target Ilsa Corbin
step << Warrior
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >>Entre na Estalagem
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1638 >>Entregue A Warrior's Treinamento
    .accept 1639 >>Aceite Bartolino the Bêbado - Missão
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1639 >>Entregue Bartolino the Bêbado - Missão
    .accept 1640 >>Aceite Beat Bartolino - Missão
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Derrote |cRXP_ENEMY_Bartolino|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1640 >>Entregue Beat Bartolino - Missão
    .accept 1665 >>Aceite Caneca do Bartolino
    .target Bartleby
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1665 >>Entregue Caneca do Bartolino
    .target Harry Burlguard
step << Warlock
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine Espadas de Uma Mão << Rogue/Mage
    .trainer >>Treine Cajados << Priest/Hunter
    .trainer >>Treine 1h Espadas e Báculos << Warlock
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
step << Dwarf Paladin
    #xprate <1.5
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Ventobravo
    .target Innkeeper Allison
]])

RXPGuides.RegisterGuide([[
#xprate >1.49
#classic
#tbc
#season 0,1
#version 1
<< Gnome Warlock
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 11-12 Missão do Emissário do Caos
#displayname 12-13 Missão do Emissário do Caos << SoD
#next 12-14 Loch Modan (Anão/Gnomo)

step
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo
    .target Dungar Longdrink
step
    #optional
    #completewith next
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>Saia de Ventobravo
step
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Wanted: "Hogger"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mate o |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em múltiplos locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_no |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #softcore
    #optional
    #completewith next
    .deathskip >>Morra e renasça em Goldshire
step
    .goto Elwynn Forest,42.108,65.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 176,3 >>Entregue Wanted: "Hogger"
    .target Marshal Dughan
step << Warlock
    #optional
    #label BoarMeatElwynnCooking1
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Abate os |cRXP_ENEMY_Javalis Casca de Pedra|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeatElwynnCooking1
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Abate os |cRXP_ENEMY_Javalis Casca de Pedra|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WolfMeatElwynnCooking1
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeatElwynnCooking1
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,86,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
step
    #xprate >1.49
    .goto Redridge Mountains,29.31,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shawn|r
    >>|cRXP_WARN_Cuidado com os inimigos de nível alto no caminho|r
    .accept 3741 >>Aceite Nida's Colar
    .target Shawn
    .xp <12,1
--XX Done now as you come RR only for p2 on >1.59x
step
    #xprate >1.49
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_Nade debaixo d'água e verifique os locais de spawn. Existem 8 locais com 2 aparições de uma vez|r
    >>Abra a |cRXP_PICK_Glinting Mud|r. Saqueie-a para |cRXP_LOOT_Hilary's Colar|r
    .complete 3741,1 --Hilary's Necklace (1)
    .isOnQuest 3741
step
    #xprate >1.49
    .goto Redridge Mountains,29.24,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r do lago enquanto pula
    >>|cRXP_WARN_Você pode falar com ela enquanto está no lago se pular diretamente abaixo dela|r
    .turnin 3741 >>Entregue Nida's Colar
    .target Hilary
    .isQuestComplete 3741
step
    #xprate >1.49
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
step
    #xprate <1.49
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_Cuidado com os inimigos de nível alto no caminho|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
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
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para uma entrega mais rápida em Loch Modan em breve:|r
    >>|T134342:0|t[Javali Intestines]
    >>|T134027:0|t[Urso Carne]
    >>|T134437:0|t[Aranha Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A Vinculação
    .target Gakin the Darkbinder
step
    #optional
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >>|cRXP_WARN_Use a|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para invocar um|r |cRXP_ENEMY_Invocado Emissário do Caos|r
    .use 6928
step
    .goto StormwindClassic,25.154,77.406
    >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .use 6928
    .mob Summoned Voidwalker
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1689 >>Entregue A Vinculação
    .target Gakin the Darkbinder
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
<< Alliance !Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Anão/Gnomo)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Anão/Gnomo)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +Use |T136126:0|t[Conversão de Vida] repetidamente até ter 10% dos pontos de vida enquanto vai para |cRXP_FRIENDLY_Dungar Tragolongo|r
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo
    .target Dungar Longdrink
step << Warlock
    #softcore
    #optional
    #completewith next
    >>Use |T136126:0|t[Conversão de Vida] repetidamente até ter 10% dos pontos de vida, depois pule a borda (NÃO na água) perto do mestre de voo e morra de propósito
    .deathskip >>Ressurja no Anjo da Cura
    .target Anjo da Cura
step
    #optional
    #completewith next
    .subzone 87 >>Voe para Goldshire
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .accept 62 >>Aceite A Mina Fundaprofunda
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >>Aceite Velas Kobold
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_Dê prioridade ao treinamento|r |T132147:0|t[Empunhar Duas Armas]
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >>Aceite Perigo Anfíbio
    .accept 47 >>Aceite Trocando Pó de Ouro
step << Warlock
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Wanted: "Hogger"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step << Paladin
    #season 2
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Wanted: "Hogger"
    .goto Elwynn Forest,24.548,74.672
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
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mate o |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em múltiplos locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_no |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] |cRXP_WARN_é um drop extremamente raro. Ignorar este passo se você não conseguir|r
    >>|cRXP_ENEMY_Rude Mordelogo|r |cRXP_WARN_é um spawn raro, mas tem 100% de chance de drop|r
    .use 1307 >>|cRXP_WARN_Use a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] para iniciar a missão|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>Aceite O Coletor
    .unitscan Gruff Swiftbite
step << Paladin
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mate o |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em múltiplos locais|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Voe para Aida Gelhardt na ilha
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Paladin
    #season 2
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Fale com Aida Gelhardt para iniciar um combate
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step << Paladin
    #season 2
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Mate |cRXP_ENEMY_Aida Gelhardt|r
    >>|cRXP_WARN_Lembre-se de pré-lançar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nela|r
    >>|cRXP_WARN_Tenha cuidado enquanto ela lança|r |T136197:0|t[Choque Sombrio] |cRXP_WARN_(lança instantaneamente 45 de dano sombrio. Custa 75 de mana. Você deve matá-la rápido o suficiente para que ela lance apenas 3 vezes)|r
    >>|cRXP_WARN_Após derrotar |cRXP_ENEMY_Aida Gelhardt|r:|r
    >>Fale com |cRXP_FRIENDLY_Aida Gelhardt|r novamente para receber a |T134419:0|t[Runa of Martírio]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX Must have had the Charred Note to unlock the dialogue
step << Paladin
    #season 2
    #sticky
    .destroy 205864 >>Exclua a |T134939:0|t[Calcinado Nota] da mochila, pois não é mais necessário
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Martírio] |cRXP_WARN_para aprender|r |T133815:0|t[Engrave Baú - Selo do Martírio]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
step << Paladin
    #season 2
    .goto Westfall,36.24,54.52
    .engrave 5 >>|cRXP_WARN_Grave a|r |T134596:0|t|cRXP_LOOT_[Baú]|r com|r |T133815:0|t[Engrave Baú - Selo do Martírio]
    >>|cRXP_WARN_Lembre-se de colocar|r |T135961:0|t[Selo do Martírio] |cRXP_WARN_nas barras de ação. É melhor que ambos|r |T132325:0|t[Selo da Retidão] |cRXP_WARN_e|r |T132347:0|t[Selo de Comando] |cRXP_WARN_(até obter|r |T133815:0|t[Gravar Peitoral - Tempestade Divina]|cRXP_WARN_)|r
    .train 410015,3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r e |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 88 >>Aceite Princesa Tem Que Morrer!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >>Aceite O Colar Perdido
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Juntando a Fome...
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Os inimigos nível 5 podem se tornar cinzentos durante esta missão. Ainda assim, complete-a pois você precisa completá-la para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Entre e explore a Mina Fargodeep|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Os inimigos nível 5 podem se tornar cinzentos durante esta missão. Ainda assim, complete-a pois você precisa completá-la para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #softcore
    #completewith GoldshireTurnins
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >>Voe para Goldshire
step
    #hardcore
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o percurso até o nível 60|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .target Remy "Two Times"
step << Paladin
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >>Entregue A Mina Vailafundo
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 176,2 >>Entregue Wanted: "Hogger"
    .isQuestComplete 176
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >>Entregue A Mina Vailafundo
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 176,3 >>Entregue Wanted: "Hogger"
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >>Entregue A Mina Vailafundo
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
step
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >>Entregue O Coletor
    .isOnQuest 123
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .accept 147 >>Aceite Perseguição Implacável
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
step
    #softcore
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o percurso até o nível 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >>Entregue Trocando Pó de Ouro
step
    #completewith next
    .goto Elwynn Forest,73.973,72.179,30 >>Vá para o leste para o |cRXP_FRIENDLY_Guarda Tomás|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >>Entregue Mais Preocupações
    .target Guard Thomas
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
step
    #era
    #completewith Prowlers
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você encontrar|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Clique em um |cRXP_PICK_Corpo Meio Comido|r no chão
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >>Aceite Um Feixe de Encrenca
step
    #era
    #completewith Bundles
    >>Pegue o |cRXP_LOOT_Bundle of Madeira|r no chão. |cRXP_WARN_Eles são encontrados sob as árvores|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Clique em |cRXP_PICK_Rolf's corpse|r no chão
    >>|cRXP_WARN_Cuidado, os |cRXP_ENEMY_Murlocs|r próximos podem atacar uma vez que você clique no |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_lançarão|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_que os curam de 61-68|r
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
    #era
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Pegue o |cRXP_LOOT_Bundle of Madeira|r no chão. |cRXP_WARN_Eles são encontrados sob as árvores|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >>Entregue Um Feixe de Encrenca
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >>Aceite Tecidos de Linho Vermelho
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
step
    #completewith Deed
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é uma queda muito rara. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura de Furlbrow
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>Abate |cRXP_ENEMY_Morgan, o Coletor|r. Saque-o por |cRXP_LOOT_Anel do Coletor|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os por seus |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>Mate a |cRXP_ENEMY_Princesa|r. Saque-a por seu |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_virá junto com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também vai lançar|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    .complete 88,1
    .mob Princess
step
    #era
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os por seus |cRXP_LOOT_Bandanas|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #era
    #softcore
    #sticky
    #completewith next
    .deathskip >>Morra e ressurja no Anjo da Cura se estiver com pouca vida, caso contrário apenas corra de volta e entregue
    .target Anjo da Cura
step
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .isQuestComplete 83
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >>Aceite Gnolls Invasores
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_Cuidado com os inimigos de nível alto no caminho|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos os|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como a recompensa. Causa bom dano e pode ser usado para \"split pulling\", que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
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
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para uma entrega mais rápida em Loch Modan em breve:|r
    >>|T134342:0|t[Javali Intestines]
    >>|T134027:0|t[Urso Carne]
    >>|T134437:0|t[Aranha Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A Vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >>|cRXP_WARN_Use a|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para invocar um|r |cRXP_ENEMY_Invocado Emissário do Caos|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #softcore
    #completewith next
    +Comece a lançar |T136126:0|t[Conversão de Vida] enquanto volta para |cRXP_FRIENDLY_Gakin, o Neromante|r, pois você fará um deathskip em breve
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>Entregue A Vinculação
step << Warlock
    #softcore
    .deathskip >>Morra e reapareça no Anjo da Cura usando |T136126:0|t[Conversão de Vida] e em pé na Fogueira ao seu lado
    .target Anjo da Cura
step
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>Saia de Ventobravo. Vá para Goldshire
step << Warlock
    #era
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 147 >>Entregue Perseguição Implacável
    .turnin 39 >>Entregue Relatório de Tomás
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 147 >>Entregue Perseguição Implacável
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >>Entregue Relatório de Tomás
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >>Treine suas magias de classe
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .target Priestess Josetta
    .trainer >>Treine suas magias de classe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .target Ma Stonefield
    .turnin 88 >>Entregue Princesa Tem que Morrer
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    >>|cRXP_WARN_Pule a entrega por enquanto se você não tiver [Nacos de Carne de Javali] suficiente|r
    .target "Auntie" Bernice Stonefield
    .turnin 86 >>Entregue Juntando a Fome...
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >>Abandone Juntando a Fome
step << Dwarf Paladin
    >>Abate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para |T132889:0|t[Linho]
    >>|cRXP_WARN_Certifique-se de que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe de Paladino|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>Viaje até Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >>Entregue Escritura do Furlbrow
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >>Aceite Os Campos da Morte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >>Entregue Cozido de Costa Negra
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
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
    .goto Westfall,56.33,47.52
    .turnin 109 >>Entregue Miguel Mantoforte
    .accept 12 >>Aceite A Milícia do Povo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 12 >>Aceite A Milícia do Povo
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Danuvin|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >>Aceite Patrulhando Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >>Aceite Bandanas de Couro Vermelho
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .fly Stormwind >>Voe para Ventobravo << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >>Vá para Loch Modan
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Deeprun Tram. Pegue o Bonde para Ironforge
]])

RXPGuides.RegisterGuide([[
#era/som--h
#classic
#tbc
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Anão/Gnomo)
#displayname 12-15 Loch Modan << SoD !Warlock
#displayname 13-15 Loch Modan << SoD Warlock
#next 13-15 Cerro Oeste; 14-16 Costa Negra
#defaultfor Gnome/Dwarf


step << Rogue
    #xprate >1.49
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Scimitars] |cRXP_BUY_se você pode pagar, ou compre algo mais barato/melhor da Casa de Leilões|r
    .collect 2027,1 --Scimitar
    .target Marcia Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Scimitars] |cRXP_BUY_se você pode pagar|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Rogue
    #xprate >1.49
    #optional
    #label Scimitar1
    #completewith KeenT
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra] |cRXP_WARN_na sua mão principal|r
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #xprate >1.49
    #optional
    #requires Scimitar1
    #completewith KeenT
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra] |cRXP_WARN_na sua mão secundária|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #label CutlassE
    #completewith KeenT
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje] |cRXP_WARN_na sua mão principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #requires CutlassE
    #completewith KeenT
    +|cRXP_WARN_Equipe a|r |T135346:0|t[Adaga do Artífice] |cRXP_WARN_na sua mão secundária|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith next
    .goto 1453,57.764,61.412,6 >>Entre no Prédio de Mercadorias Cotidianas
step << Rogue
    #optional
    #label KeenT
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dele|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dele|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Keen Arremessando Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate 1.49-1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo
    .target Dungar Longdrink
step
    #xprate >1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo
    .target Dungar Longdrink
    .dungeon !DM
step
    #season 0,1 << Paladin
    #xprate >1.49
    .hs >>Vá para Loch Modan
    .cooldown item,6948,>180--wait for cd if <3min
    .zoneskip Loch Modan
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    #optional
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Deeprun Tram. Pegue o Bonde para Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,23.131,6.143,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .accept 2999 >>Aceite Tomo de Divindade
    .target Brandur Ironhammer
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>Vá em direção a |cRXP_FRIENDLY_Tiza Beloforja|r acima
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 2999 >>Entregue Tomo de Divindade
    .accept 1645 >>Aceite Tomo de Divindade
    .turnin 1645 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Use o |T133739:0|t|cRXP_LOOT_[Tomo de Divindade]|r para iniciar a missão|r
    .accept 1646 >>Aceite Tomo de Divindade
    .use 6916
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 1646 >>Entregue Tomo de Divindade
    .accept 1647 >>Aceite Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
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
    #xprate <1.5
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >>Vá para a escada embaixo de |cRXP_FRIENDLY_Tiza Beloforja|r
step << Dwarf Paladin
    #xprate <1.5
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
    #xprate <1.5
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 1778 >>Entregue Tomo de Divindade
    .accept 1779 >>Aceite Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r acima
    .turnin 1779 >>Entregue Tomo de Divindade
    .accept 1783 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Paladin
    #xprate <1.5
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >>|cRXP_BUY_Compre|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela se necessário|r
    .target Yanni Stoutheart
step << !Hunter
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .vendor 6734 >>|cRXP_BUY_Compre alguns|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor 6734 >>|cRXP_BUY_Compre alguns|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela se necessário|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target Brock Stoneseeker
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
    #xprate <1.59
    #completewith Gear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #xprate >1.59
    #completewith Gear
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    >>|cRXP_WARN_Não desvie-se do seu caminho por isso, pois você provavelmente pulará essa missão|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #label SilverMine
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r dentro da mina. Pegue o |cRXP_LOOT_Miners' Equipamento|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r dentro da mina. Pegue o |cRXP_LOOT_Miners' Equipamento|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto Loch Modan,42.867,9.885
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
    .goto Loch Modan,42.867,9.885
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
    #xprate >1.59
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os para obter |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .itemcount 3110,8 --Tunnel Rat Ear (8)
step
    #xprate <1.59
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
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
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
    .goto 1432,24.279,17.959,12 >>Entre no Bunker
step
    #optional
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>|cRXP_WARN_Venda ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto Loch Modan,24.77,18.40
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
    .mob +Forest Lurker
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
step
    #xprate <1.59
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
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
step
    #xprate >1.59
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
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
    .isQuestComplete 416
step
    #xprate >1.59
    #optional
    #sticky
    #label RatAbandon
    .abandon 416 >>Abandone Capturando Ratos
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
step << !Dwarf/!Paladin --XX Dwarf palas need to do class q
    #season 0,1 << Warrior/Mage --SoD warriors and mages need to do rune (Quick Strike, Living Bomb)
    #optional
    #sticky
    #label DefenseAbandon
    .abandon 224 >>Abandone Em Defesa das Terras do Rei
    .xp <14,1
step << !Dwarf/!Paladin
    #season 0,1 << Warrior/Mage
    #optional
    #sticky
    #label TroggAbandon
    .abandon 267 >>Abandone A Ameaça Trogg
    .xp <14,1
step
    #label FlintTinder
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Navios ou Bondes para aumentar seu|r |T133971:0|t[Culinária] |cRXP_WARN_sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Dwarf/!Paladin
    #optional
    #requires DefenseAbandon
--XXREQ Placeholder invis step until multiple requires per step
step << !Dwarf/!Paladin
    #optional
    #requires TroggAbandon
--XXREQ Placeholder invis step until multiple requires per step
step
    #season 0,1 << Warrior/Mage
    .goto Loch Modan,26.67,56.94
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
    #season 0,1 << Warrior/Mage
    #xprate <1.5
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+9600 >>Suba até 9600+/11400xp
step
    #season 0,1 << Warrior
    #xprate 1.49-1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+8700 >>Farme até 8700+/11400 XP
step
    #season 0,1 << Warrior
    #xprate >1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+7800 >>Farme até 7800+/11400 XP
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>Suba o caminho de terra e desça para o bunker
step
    #label TroggEnd
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
    .isQuestComplete 267 << !Dwarf/!Paladin
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
    .isQuestComplete 224 << !Dwarf/!Paladin
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>>Voe para Altaforja
    .target Thorgrum Borrelson
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
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_Use o|r |T133439:0|t[Símbolo da Vida] |cRXP_WARN_em |cRXP_FRIENDLY_Narm Faulk|r no chão|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Entregue Tomo de Divindade
    .accept 1784 >>Aceite Tomo de Divindade
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Abata |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para obter o |cRXP_LOOT_Dark Ferro Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy

----Start of <1.5x IF->Westfall Section----

step << Mage/Priest/Warlock
    #xprate <1.5
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r lá em baixo
    >>|cRXP_WARN_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_dela|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    #xprate <1.5
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
step << Priest
    #xprate <1.5
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo do pilar acima |cRXP_FRIENDLY_Bink|r, depois caminhe ligeiramente para leste dela até a posição da seta. Posicione seu personagem até parecer que está flutuando, então execute um Logout Pular desconectando e reconectando|r
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.5
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2218 >>Entregue Road to Salvação
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate <1.5
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >>Treine suas magias de classe
    .target Fenthwick
step << Warlock
    #xprate <1.5
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
step << Warlock/Rogue
    #xprate <1.5
    #optional
    #label Jubahl
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
step << Warlock
    #xprate <1.5
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor 6382 >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se puder pagar|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #xprate <1.5
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe até o topo da cama, depois pule para o topo da estante. Execute um Logout Pular saindo do jogo e retornando|r
step << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>Vá para |cRXP_FRIENDLY_Bilban Lançachave|r
step << Warrior
    #xprate <1.5
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
step << skip --logout skip << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Pule para o topo do suporte de armas. Execute um Logout Pular saindo do jogo e retornando|r
-- step << skip --logout skip << Hunter
--  #xprate <1.5
--   #optional
--   #completewith Deeprun
--   .goto 1455,56.207,46.844
--   .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
--  .zoneskip Ironforge,1
step << !Paladin
    #xprate <1.5
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
step << !Paladin
    #xprate <1.5
    #optional
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #label Deeprun
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Stormwind City
step << !Paladin
    #xprate <1.5
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
step << !Paladin
    #xprate <1.5
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
step << !Paladin
    #xprate <1.5
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
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
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
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook5
    #label WestfallTramCook6
    #completewith WestfallTramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Aumente o nível de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o Tram para a Cidade de Ventobravo, se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    .zone Stormwind City >>Pegue o Deeprun Tram até a Cidade de Ventobravo
step << Dwarf Paladin
    #xprate <1.5
	#completewith PaladinTrainSW
    .hs >>Use sua Pedra de Retorno para ir a Ventobravo
step << Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Paladin
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
    #xprate <1.5
    #label PaladinTrainSW
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .accept 399 >>Aceite Humildes Começos
    .target Baros Alexston
step
    #xprate <1.5
    #completewith Fly2WF
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .accept 399 >>Aceite Humildes Começos
    .target Baros Alexston
step << Rogue
    #xprate <1.5
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar ou algo melhor da Casa de Leilões|r
    .collect 2027,1 --Scimitar
    .target Marcia Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Rogue
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #sticky
    #label Wand1
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se puder pagar|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << !Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
    --XX on <1.5 Gnomes/dwarves dont go back to capital cities to train (can't buy groupers/strider meat some other time)
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_WARN_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_dela|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #xprate <1.5
    #label Fly2WF
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink

----End of <1.5x IF->Westfall Section----
----Start of >1.5x+ IF->Darkshore Section----

step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Realize um logout skip na Mina para se teletransportar de volta a Ironforge
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >>https://www.youtube.com/watch?v=kbUSo62CfAM >> CLIQUE AQUI para referência
step << Dwarf Rogue/Gnome Rogue
    #xprate 1.49-1.59
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2218 >>Entregue Road to Salvação
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate >1.49
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >>Treine suas magias de classe
    .target Fenthwick
step << Rogue
    #xprate >1.49
    #optional
    #requires Salvation
step << Warlock
    #xprate >1.49
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
step << Warlock
    #xprate >1.49
    #optional
    #label Jubahl
    #completewith next
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
step << Warlock
    #xprate >1.49
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor 6382 >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se puder pagar|r
    .target Jubahl Corpseseeker
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10 >>Vá para |cRXP_FRIENDLY_Muiredon Beloforja|r no andar de cima
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r acima
    .turnin 1784 >>Entregue Tomo de Divindade
    .accept 1785 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r acima
    .turnin 1785 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Paladin
    #xprate >1.49
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldruk Cenhomal|r
    .trainer >>Treine suas magias de classe
    .target Beldruk Doombrow
step << skip --logout skip << Paladin
    #xprate >1.49
    #ssf
    #hardcore << !Human
    #optional
    .goto 1455,25.254,10.981
    .zone Dun Morogh >>|cRXP_WARN_Salto em cima do pilar acima de |cRXP_FRIENDLY_Toldren Ferrofundo|r, posicione seu personagem até parecer que está flutuando, depois execute um logout pular ao desconectar e conectar novamente|r
step << Mage
    #xprate >1.49
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
step << Priest
    #xprate >1.49
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
step << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r lá em baixo
    >>|cRXP_WARN_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_dela|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Warrior
    #xprate >1.49
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>Vá para |cRXP_FRIENDLY_Bilban Lançachave|r
step << Warrior
    #xprate >1.49
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
step << Warrior
    #xprate >1.49
    #optional
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r
    .train 2567 >>Treine Arremesso
    .target Bixi Wobblebonk
step << skip --logout skip << Warrior
    #xprate >1.49
    #optional
    #ssf
    #hardcore << !Human
    #completewith next
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Ande até a borda do piso de metal no topo da seta do waypoint|r
    .zone Dun Morogh >>|cRXP_WARN_Posicione seu personagem até parecer que está flutuando, depois realize um Logout Pular ao fazer logout e login novamente|r
    .zoneskip Ironforge,1
step << Rogue
    #xprate >1.49
    #ah
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenil Steelfury|r no andar de baixo
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Scimitars] |cRXP_BUY_dele se puder pagar ou compre algo melhor da Casa de Leilões|r
    .collect 2027,1 --Scimitar
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenil Steelfury|r no andar de baixo
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Scimitars] |cRXP_BUY_dele se puder pagar|r
    .collect 2027,1 --Scimitar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Rogue
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << skip --logout skip << Rogue
    #xprate >1.49
    #ssf
    #hardcore << !Human
    #completewith LeaveIF
    .goto 1455,35.959,66.597
    .zone Dun Morogh >>|cRXP_WARN_Pule para o topo do suporte de armas. Execute um Logout Pular saindo do jogo e retornando|r
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #sticky
    #label Wand1
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se puder pagar|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step
    #xprate >1.49
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
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
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << skip --logout skip
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Salte bem no topo da |cRXP_PICK_Caixa de correio|r, depois realize um Pulo de Logout ao fazer logout e voltar|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>17.49 << Mage/Priest/Warlock
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r lá em baixo
    >>|cRXP_WARN_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_dela|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.44
step << skip --logout skip << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    .goto 1455,23.197,16.959
    .zone Dun Morogh >>|cRXP_WARN_Salte para o topo da prateleira de roupas, depois realize um Logout Pular ao fazer logout e login novamente|r
    .zoneskip Ironforge,1
step << skip --logout skip << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    #hardcore << !Human
    .goto 1455,23.197,16.959
    .zone Dun Morogh >>|cRXP_WARN_Salte para o topo da prateleira de roupas, depois realize um Logout Pular ao fazer logout e login novamente|r
    .zoneskip Ironforge,1
step << Dwarf/Gnome
    #xprate >1.49
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Wetlands>>Voe para Pantanal
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #hardcore << !Human
    .goto 1426,53.042,35.383
    .zone Dun Morogh >>Saia de Altaforja
step
    #xprate >1.49
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Viaje para o ponto de skip Dun Morogh -> Pantanal
step
    #xprate >1.49
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_Assista ao guia de vídeo como referência sobre como fazer o skip primeiro!|r
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Wetlands Crocolisks|r e |cRXP_ENEMY_Murlocs|r ao atravessar a água|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .goto Wetlands,12.1,60.3,80 >>Vá para Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #xprate >1.49
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    >>|cRXP_WARN_Faça o deathskip Dun Morogh -> Pantanal. Siga a seta de perto|r
    >>|cRXP_WARN_NÃO pule de nenhuma altura ainda|r
    .goto 1415,44.910,52.030,15 >>|cRXP_WARN_Subir a montanha, depois caminhe para baixo passando pelo padrão irregular até sua subzona mudar para The Great Sea|r
    .zoneskip Wetlands
    .subzoneskip 207 --The Great Sea
--XX neither of these zoneskips/subzoneskips want to work, so using waypoint obj instead
step << Human
    #xprate >1.49
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    #completewith next
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salto da montanha em direção ao norte ou noroeste|r
    .deathskip >>Morra e reviva na Baía Baradin |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestAvailable 984
    .target Anjo da Cura
step << Human
    #xprate >1.49
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>Nade para a costa perto de Menethil Harbor
    .subzoneskip 150
step
    #xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neal Allen|r no andar inferior do quartel
    .vendor 1448 >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >>Saia de Menethil Keep
    .subzoneskip 2103,1 --Menethil Keep
step
    #xprate >1.49
    #hardcore << !Human
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r fora
    .fp Wetlands>>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
    #xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dewin Shimmerdawn|r dentro
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
step
    #xprate >1.49
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Vá até o cais do barco de Auberdine
    .zoneskip Darkshore
step
    #xprate >1.49
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Suba de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra se necessário|r
    .zone Darkshore >>Pegue o barco para Costa Negra

    ----End of >1.5x+ IF->Darkshore Section----

]])


RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh (Caçador)
#displayname 6-11 Dun Morogh
#next 11-13 Loch Modan (Caçador)
#defaultfor Dwarf Hunter



step
    #completewith ribs1
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >>Voe para Kharanos
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >>Entregue Observações de Senir
    .target Senir Whitebeard
step
    #label ribs1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >>Entregue Suprimentos para Tannok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >>Defina sua Pedra de Retorno em Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >>Aceite Ferramentas Para Gradaço
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .target Pilot Bellowfiz
    .accept 317 >>Aceite Provisões Para a Vaporeta
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >>Aceite The Grizzled Den
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Gradaço|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >>Entregue Ferramentas Para Gradaço
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Fur|r
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    #completewith BoarRibs2
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os pelos seus |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >>Entregue Provisões Para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .train 3044 >>Aprenda Tiro Arcano
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>Abra o |cRXP_PICK_Ammo Caixote|r. Pegue |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    >>|cRXP_BUY_Compre e equipe um|r |T135611:0|t[Bacamarte Ornado]|cRXP_BUY_. Pular este passo se você não puder pagá-lo|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
    #xprate <1.5
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Mate os |cRXP_ENEMY_Wendigos|r e os |cRXP_ENEMY_Young Wendigos|r. Saqueie-os para obter |cRXP_LOOT_Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .xp 7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >>Aceite Por Baixo da Carne-Seca
step
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Saque-o para |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r saia da caverna. Quando ele sair, entre e saqueie|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >>Entregue Sempre-aceso
    .accept 319 >>Aceite Tudo Pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
step
    #label BoarRibs2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >>Aceite A Guerra das Cervejas
step
    #completewith next
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>Abata os |cRXP_ENEMY_Ursos Garra de Gelo|r, os |cRXP_ENEMY_Javalis de Penha Antiga|r e os |cRXP_ENEMY_Leopardos de Neve|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #xprate <1.5
    .goto Dun Morogh,46.726,53.826
    >>Termine de coletar Javali Ribs
    .complete 384,1
    .xp 8-1400 >>Farme até estar a 1400 XP do nível 8
step
    #xprate >1.49
    .goto Dun Morogh,46.726,53.826
    >>Termine de coletar Javali Ribs
    .complete 384,1
    .xp 8-2100 >>Farme até estar a 2100 XP do nível 8
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >>Corra até aqui e siga a seta atentamente para fazer deathskip a Pantanal
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Corra para cima da montanha em direção ao norte
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Continue subindo até aqui
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Continue correndo reto para o norte, salte para baixo e morra quando o Bate-papo Geral mudar para Pantanal, depois reapareça em Menethil Harbor
    .target Anjo da Cura
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >>Nade para a costa
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Wetlands >>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
    #softcore
	#completewith next
    .hs >>Vá para Kharanos
step
    #hardcore
    #completewith next
    .goto Dun Morogh,49.622,48.612,60 >>Voe para Kharanos
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >>Entregue O Covil Canjento
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e uma|r |T132800:0|t[Trovão Ale]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarven Cervaforte|r abaixo
    .turnin 308 >>Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r fora
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >>Aceite A Fortaleza Jubafria
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .train 5116>>Aprenda Tiro de Concussão
    .target Grif Wildheart
step
#optional
    #completewith FinishShimmerweed
    >>Abata os |cRXP_ENEMY_Ursos Garra de Gelo|r, os |cRXP_ENEMY_Javalis de Penha Antiga|r e os |cRXP_ENEMY_Leopardos de Neve|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
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
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI se você está tendo dificuldades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step << Hunter
    #season 2
    #completewith next
    >>Abate |cRXP_ENEMY_Ragash|r. Saque-o para obter |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .train 410123,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mate |cRXP_ENEMY_Ragash|r. Saque-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Atraia-o até o guarda ao sul do rancho. Certifique-se de fazer mais de 51% de dano|r
    >>|cRXP_WARN_Vigiar o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser feito solo em qualquer classe|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Hunter
    #season 2
    .train 410123 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Tiro Explosivo]
    .use 206169
    .itemcount 206169,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
step
    .goto Dun Morogh,69.084,56.330
    .target Foreman Stonebrow
    >>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
step
#loop
    .goto Dun Morogh,67.5,59.4,40,0
    .goto Dun Morogh,70.2,57.6,40,0
    .goto Dun Morogh,67.5,59.4,0
    .goto Dun Morogh,70.2,57.6,0
    >>Abata os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    .goto Dun Morogh,69.084,56.330
    .target Foreman Stonebrow
    >>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >>Aceite O Piloto Perdido
step
    >>Clique no |cRXP_PICK_Cadáver Anão|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o para a |cRXP_LOOT_Garra|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >>Entregue A Vingança do Piloto
step
    #hardcore
    .hs >>Vá para Kharanos
step
    #softcore
    .goto Dun Morogh,47.11,55.01
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step
    #xprate >1.49
    .xp 10
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .accept 6064 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate >1.49
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6084 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate >1.49
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6085 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate >1.49
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6086 >>Aceite Treinamento da Fera - Missão
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >>Aceite Operação Remendão
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >>Vá para Cintilação Serra. Siga a seta e corra montanha acima
step
    #label FinishShimmerweed
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mate os |cRXP_ENEMY_Frostmane Seers|r. Saque-os para obter suas |cRXP_LOOT_Tremulerva|r
    >>|cRXP_LOOT_Tremulerva|r também pode ser saqueada de |cRXP_PICK_Cestos de Tremulerva|r no chão
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << Hunter
#optional
    #season 2
    #completewith next
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_Lance|r |T132212:0|t[Marca do Caçador] |cRXP_WARN_no|r |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate |cRXP_ENEMY_Razormane Poacher|r que aparece. Saqueie |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>Abata os |cRXP_ENEMY_Ursos Garra de Gelo|r, os |cRXP_ENEMY_Javalis de Penha Antiga|r e os |cRXP_ENEMY_Leopardos de Neve|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step << Hunter
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_Lance|r |T132212:0|t[Marca do Caçador] |cRXP_WARN_no|r |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate |cRXP_ENEMY_Razormane Poacher|r que aparece. Saqueie |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T132177:0|t[Mestre Atirador Perito]
    .use 206155
    .train 410113,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >>Entregue Tudo Pela Sempre-aceso
    .accept 320 >>Aceite Fale Novamente com Urrabolha
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >>Entregue em Em Busca da Cerveja Perfeita
    .accept 413 >>Aceite Cerveja Tremeluz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >>Fale novamente com Marleth
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >>Entre em A Fortaleza Jubafria
step
#sticky
#label explore
    >>|cRXP_WARN_Largue-se para este local para explorar A Fortaleza Jubafria. Se houver inimigos abaixo, elimine-os normalmente e NÃO se largue para baixo|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Mate |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
#requires explore
#xprate <1.5
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Abate os |cRXP_ENEMY_Leper Gnomes|r. Saque-os para seus |cRXP_LOOT_Engrenagens|r e |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #xprate <1.5
    .xp 10-1470 >>Farme até estar a 1450 XP do nível 10
step
#requires explore
    #hardcore
    #completewith KharanosTurnins
    .goto Dun Morogh,46.7,53.7,200 >>Vá para Kharanos. Farme no caminho
step
#requires explore
    #completewith next
    #softcore
    .deathskip >>Morra e ressurja em Kharanos
step
#requires explore
    #label KharanosTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >>Entregue em A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .turnin 412 >>Entregue em Operação Remendão
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 320 >>Fale novamente com Urrabolha
    .isOnQuest 320
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .accept 6064 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate <1.5
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6084 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate <1.5
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6085 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate <1.5
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Adestramento da Fera - Missão
    .target Grif Wildheart
    .accept 6086 >>Aceite Treinamento da Fera - Missão
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >>Viaje para Gol'Bolar Pedreira
step
    .goto Dun Morogh,68.671,55.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .accept 433 >>Aceite O Funcionário Público
    .target Senator Mehr Stonehallow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Mate os |cRXP_ENEMY_Pedraqueixos Bonesnappers|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >>Aprenda Culinária com Ghilm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Cervevada|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >>Entregue Cerveja Tremeluz
    .accept 414 >>Aceite Cerveja para Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Caçador)
#displayname 11-13 Loch Modan << !SoD
#displayname 12-15 Loch Modan << SoD
#next 14-16 Costa Negra
#defaultfor Dwarf

step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,20 >>Voe para Loch Modan
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >>Aceite Em Defesa das Terras do Rei
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .target Captain Rugelfuss
    .accept 267 >>Aceite A Ameaça Trogg
step
    #sticky
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
    .turnin -414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >>Aceite Chouriço de Thelsamar
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .home >>Defina sua Pedra de Retorno em Thelsamar
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Golnir Topadão|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >>Entregue Os Relatórios
    .isOnQuest 291
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .turnin 6086 >>Entregue Treinamento da Fera - Missão
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retornar com Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >>Voe para Loch Modan
    .target Gryth Thurden
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
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
    .goto Loch Modan,23.85,17.92,100 >>Vá para o norte em direção a Algaz Station
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
    .dungeon DM << Human
step << Human
    #xprate <1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do Bunker
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
step
    .goto Loch Modan,35.93,22.55
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
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .target Mountaineer Stormpike
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
    .mob +Forest Lurker
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
step
    #sticky
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
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >>Entregue Chouriço em Thelsamar
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
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
    .goto Loch Modan,22.071,73.127
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >>Entregue A Ameaça Trogg
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >>Viaje para o Sítio de Escavação de Ferrobanda
step
#xprate <1.5
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Bandaferro|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
    .target Prospector Ironband
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>Vá para o Albergue Andarilho Distante
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dário, o Novato|r
    .accept 257 >>Aceite Jactância do Caçador
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step
#xprate <1.5
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Abate os |cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_Você deve completar esta missão e retornar para |cRXP_FRIENDLY_Dário, o Novato|r em 15 minutos. Se falhar na missão, abandone-a e pegue-a novamente|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dário, o Novato|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >>Entregue Jactância do Caçador
    .target Daryl the Youngling
step
    #xprate <1.5
    .goto Loch Modan,82.496,63.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xandar Boabarba|r
    >>|cRXP_BUY_Compre um|r [Simple Wood] |cRXP_BUY_and a|r [Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Navios ou Bondes para aumentar seu|r |T133971:0|t[Culinária] |cRXP_WARN_sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
#xprate <1.5
    #hardcore
    .hs >>Use sua Pedra de Retorno para ir a Thelsamar
step
#xprate <1.5
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step
#xprate <1.5
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .turnin 298 >>Entregue Relatório de Progresso da Escavação
    .accept 301 >>Aceite Apresente-se a Altaforja
    .target Jern Hornhelm
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daryl Ricinum|r
    .target Daryl Riknussun
    .train 2550 >>Treine |T133971:0|t[Culinária]
step
#xprate <1.5
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Prospector Lançatroz|r
    .turnin 301 >>Entregue Apresente-se a Altaforja
    .target Prospector Stormpike
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_Entre no Tram Deeprun|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r no meio da plataforma
    .target Monty
    .accept 6661 >>Aceite Ratos de Porão
step
    .use 17117 >>|cRXP_WARN_Use o|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >>Entregue Ratos de Porão
    .timer 11,Ratos de Deeprun RP
    .accept 6662 >>Aceite Espetinhos de... Rato
step
    #completewith next
    .zone Stormwind City >>Pegue o Tram para Ventobravo
    >>|cRXP_WARN_Suba o Nível de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto espera o Tram|r
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r quando descer do Tram
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_está na plataforma central|r
    .turnin 6662 >>Entregue Espetinhos de... Rato
    .target Nipsy
step
    .zone Stormwind City >>Entre em Ventobravo
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >>Aceite Entrega para Lançatroz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Treine Cajados
step
    #ah
    .goto Stormwind City,53.612,59.764
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
    .goto Stormwind City,53.612,59.764
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
    #softcore
    .hs >>Vá para Loch Modan
step
    #softcore
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >>Vá para o norte em direção a Algaz Station
step
    #softcore
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 353 >>Entregue Entrega para Lançatroz
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step
    #softcore
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Wetlands >>Voe para Pantanal
    .target Thorgrum Borrelson
step << skip --logout skip
    #hardcore
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Deeprun Tram. Pegue o Bonde para Ironforge
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Faça um logout skip dentro do Tram. Clique aqui para ver o vídeo de referência|r
step
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Saia de Altaforja
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Viaje para o ponto de skip Dun Morogh -> Pantanal
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_Assista ao guia de vídeo como referência sobre como fazer o skip primeiro!|r
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Wetlands Crocolisks|r e |cRXP_ENEMY_Murlocs|r ao atravessar a água|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .goto Wetlands,12.1,60.3,80 >>Vá para Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Samor Festivus|r acima das escadas
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item com suprimento limitado. Pule este passo se |cRXP_FRIENDLY_Samor Festivus|r não possui nenhum|r
    .target Samor Festivus
step
    #hardcore
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Vá até o cais do barco de Auberdine
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Suba de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra se necessário|r
    .zone Darkshore >>Pegue o barco para Costa Negra
]])
