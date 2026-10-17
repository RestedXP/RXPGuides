if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Alliance
#name 1-6 Coldridge Valley
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#defaultfor Dwarf/Gnome
#next 6-10 Dun Morogh
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Você selecionou um guia destinado a Gnomos e Anões. Você deveria escolher a mesma zona inicial em que você começa.
step << !Warlock
    #completewith next
    .destroy 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >> Aceite Fornecedores Anões
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,29.68,74.20,40,0
    >>Mate os |cRXP_ENEMY_Lobos Jovens Andrajosos|r até ter 10c+ em itens de venda
    >>|cRXP_WARN_Você irá treinar|r |T132333:0|t [Grito de Guerra] |cRXP_WARN_que aumenta a velocidade de progressão nos níveis iniciais|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    .target +Grundel Harkin
    .goto Dun Morogh,28.793,67.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target +Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Entre em Anvilmar
    >>|cRXP_WARN_Desequipar sua Armadura Corporal, Camisa, Calças e Botas no caminho. Você os venderá|r
step << Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .vendor >> |cRXP_WARN_Venda sua Armadura Corporal, Camisa, Calças e Botas junto com a Comida e Água nas suas bolsas. Você precisa de 10c no total|r
    .target Durnan Furcutter
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r
    .train 348 >> Treine |T135817:0|t [Imolar]
    .accept 1599 >> Aceite Beginnings
    .target Alamar Grimm
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>Mate os |cRXP_ENEMY_Ragged Young Wolves|r e os |cRXP_ENEMY_Ragged Timber Wolves|r. Saqueie-os para obter sua |cRXP_LOOT_Tough Lobo Carne|r
    >>|cRXP_WARN_Equipe qualquer Armadura de Tecido que você saqueia dos|r |cRXP_ENEMY_Lobos Jovens|r << Warlock
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .xp 2 >> Mate até o nível 2
step << Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179 >> Entregue Fornecedores Anões
    .accept 3115 >> Aceite Runa Conspurcada << Gnome Warlock
    .accept 233 >> Aceite Entrega de Correspondência do Vale de Coldridge
    .target Sten Stoutarm
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Aceite Uma Nova Ameaça
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte]|cRXP_BUY_. Mate extra |cRXP_ENEMY_Lobos Jovens Andrajosos|r se você não tiver dinheiro suficiente|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Warlock
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Entre na Caverna Cristófuro
step << Warlock
    >>Mate os |cRXP_ENEMY_Noviços de Frostmane|r dentro da caverna. Saqueie-os para obter |cRXP_LOOT_Amuletos de Pena|r
    >>|cRXP_BUY_Equipe qualquer Armadura de Tecido que você saqueia dos|r |cRXP_ENEMY_Frostmanes|r
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #hardcore
    #completewith next
    .hs >> Use sua Pedra de Retorno para Coldridge Valley
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >> Entregue Beginnings
    .turnin 3115 >> Entregue Runa Conspurcada << Gnome Warlock
    .target Alamar Grimm
step << Priest/Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte]|cRXP_BUY_. Mate extra |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    .target Adlin Pridedrift
step << !Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179 >> Entregue Fornecedores Anões
    .accept 233 >> Aceite Entrega de Correspondência do Vale de Coldridge
    .accept 3106 >> Aceite Runa Simples << Dwarf Warrior
    .accept 3107 >> Aceite Runa Consagrada << Paladin
    .accept 3109 >> Aceite Runa Cifrada << Dwarf Rogue
    .accept 3110 >> Aceite Runa Santificada << Priest
    .accept 3112 >> Aceite Simple Memorandum << Gnome Warrior
    .accept 3113 >> Aceite Memorando Criptografado << Gnome Rogue
    .accept 3114 >> Aceite Memorando Glífico << Mage
    .accept 3108 >>Aceite Runa Cinzelada << Dwarf Hunter
    .target Sten Stoutarm
step << !Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Aceite Uma Nova Ameaça
    .target Balir Frosthammer
step
    #era
    #completewith Rockjaw
    >>Abate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> Entregue Entrega de Correspondência do Vale de Coldridge
    .accept 183 >> Aceite O Caçador de Javalis
    .accept 234 >> Aceite Entrega de Correspondência do Vale de Coldridge
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>Mate os |cRXP_ENEMY_Pequenos Javalis de Pedra|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> Entregue O Caçador de Javalis
step << Paladin/Mage/Warlock/Hunter
    #era
    .xp 3+1130 >> Farme até 1130+/1400xp
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >> Entregue Entrega de Correspondência do Vale de Coldridge
    .accept 182 >> Aceite A Caverna dos Trolls
step << Paladin/Mage/Warlock/Hunter
    .xp 4
step << Paladin/Mage/Warlock/Hunter
    #era
    .goto Dun Morogh,31.37,75.63
    >>Abate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Aceite Entrega de Cerveja da Manhã Escaldante
step << Paladin/Mage/Warlock/Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Vá para Anvilmar
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >> Entregue Entrega de Cerveja da Manhã Escaldante
    .accept 3365 >> Aceite Traga o Caneco
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entregue Runa Cinzelada
    .train 1978 >> Aprenda Picada de Serpente
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r
    .target Bromos Grummner
    .goto Dun Morogh,28.833,68.332
    .turnin 3107 >> Vá para Runa Consagrada
    .trainer >> Treine suas magias de classe
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r
    .target Marryk Nurribit
    .goto Dun Morogh,28.709,66.366
    .turnin 3114 >> Entregue Memorando Glífico
    .trainer >> Treine suas magias de classe
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r
    .target Alamar Grimm
    .goto Dun Morogh,28.650,66.145
    .trainer >> Treine sua Corrupção
step << Paladin/Mage/Warlock/Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Entregue Uma Nova Ameaça
step << Hunter
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    >>|cRXP_WARN_Compre 2 lotes de|r |T132384:0|t[Luz Shots]
    .collect 2516,400 -- Light Shot (400)
    .target Adlin Pridedrift
step << Mage/Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t[Água Refrescante da Fonte]|cRXP_BUY_. Faça grana extra matando |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Mage !Warlock !Hunter
    #era
    #completewith next
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage
    #label TrollTroggs
    .goto Dun Morogh,28.7,77.5
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << !Paladin !Mage !Warlock !Hunter
    .xp 4 >> Suba até o nível 4
step << !Paladin !Mage !Warlock !Hunter
    #era
    #requires TrollTroggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Entregue A Caverna dos Trolls
    .accept 218 >> Aceite O Diário Roubado
step << !Paladin !Mage !Warlock !Hunter
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Entregue A Caverna dos Trolls
    .accept 218 >> Aceite O Diário Roubado
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Entregue A Caverna dos Trolls
    .accept 218 >> Aceite O Diário Roubado
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Entregue Traga o Caneco
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Vá para a Caverna Frostmane
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Mate o |cRXP_ENEMY_Grik'nir, o Frio|r. Saque-o para obter seu |cRXP_LOOT_Diário|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Aceite Entrega de Cerveja da Manhã Escaldante
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Entregue O Diário Roubado
    .accept 282 >> Aceite Observações de Senir
step << !Paladin !Mage !Warlock !Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Vá para Anvilmar
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >> Entregue Entrega de Cerveja da Manhã Escaldante
    .accept 3365 >> Aceite Traga o Caneco
    .target Durnan Furcutter
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .target Solm Hargrin
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Entregue Memorandum Criptografado << Gnome Rogue
    .turnin 3109 >> Entregue Runa Cifrada << Dwarf Rogue
step << Dwarf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    .target Branstock Khalder
    .goto Dun Morogh,28.600,66.385
    .turnin 3110 >> Entregue Runa Santificada
    .trainer >> Treine suas magias de classe
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .target Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .turnin 3106 >> Entregue Runa Simples << Dwarf Warrior
    .turnin 3112 >> Entregue Memorando Simples << Gnome Warrior
    .trainer >> Treine suas magias de classe
step << !Paladin !Mage !Warlock !Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Entregue Uma Nova Ameaça
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Entregue O Diário Roubado
    .accept 282 >> Aceite Observações de Senir
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Entregue Traga o Caneco
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Thalos|r
    .target Mountaineer Thalos
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >> Entregue Observações de Senir
    .accept 420 >> Aceite Observações de Senir
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mãos Rodamola|r
    .target Hands Springsprocket
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >> Aceite Suprimentos para Tannok
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Passe pelo Desfiladeiro de Coldridge
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 6-10 Dun Morogh
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#defaultfor Dwarf/Gnome
#next 10-11 Elwynn (Dwarf/Gnome)
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Javalis de Pedra|r e os |cRXP_ENEMY_Grandes Javalis de Pedra|r. Saqueie-os por seu |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para suas |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Vá para Kharanos. Suba até 2145 XP matando os |cRXP_ENEMY_Javalis de Pedra|r pelo caminho << Priest
    .xp 5+2415 >> Vá para Kharanos. Suba até 2415 XP matando os |cRXP_ENEMY_Javalis de Pedra|r pelo caminho << !Priest
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Vá para Kharanos. Mate os |cRXP_ENEMY_Javalis de Pedra|r pelo caminho
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >> Entregue Observações de Senir
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .trainer >> Treine suas magias de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannie Silvombida|r
    .vendor >> |cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Pacto de Sangue (Rank 1)] |cRXP_BUY_se puder pagar. Senão, compre depois|r
    .target Dannie Fizzwizzle
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Faça grind até 6
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >> Treine suas magias de classe
    .train 3044 >> Aprenda Tiro Arcano
    .target Grif Wildheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Aceite Costelinhas de Javali na Cerveja
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Entregue Suprimentos para Tannok
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kreg Bilmn|r
    .vendor >> |cRXP_BUY_Compre e equipe uma|r |T135426:0|t[Pequeno Arremessando Faca]
    .target Kreg Bilmn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r na sala dos fundos
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Treine suas magias de classe
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magis Fagulhamanto|r no andar superior
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Treine suas magias de classe
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avar Marroforte|r no andar superior
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Treine suas magias de classe
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .accept 5625 >> Aceite Vestimentas da Luz
step << Priest
    >>Usar Cura Inferior Rank 2 e depois Palavra de Poder: Fortitude em |cRXP_FRIENDLY_Montanhista Dolf|r
    .target Mountaineer Dolf
    .goto Dun Morogh,45.805,54.568
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .turnin 5625 >> Entregue Vestes da Luz
    .trainer >> Treine suas magias de classe
step << Priest
    .xp 6 >> Faça grind até 6
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Defina sua Pedra de Retorno na Destilaria Cervaforte
    .vendor >> |cRXP_BUY_Compre o máximo de|r |T132815:0|t[Leite Gelado] |cRXP_BUY_que você puder|r
step << !Mage !Priest !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Defina sua Pedra de Retorno na Destilaria Cervaforte
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Treine suas magias de classe
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,45.8,51.8,20 >> Vá para a Ferraria
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe uma|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tognus Pederfogo|r
    .target Tognus Flintfire
    .goto Dun Morogh,45.3,51.9
    .trainer >> Treine |T136241:0|t [Ferraria]
    >>|cRXP_WARN_Isso vai permitir que você faça |T135248:0|t[Rough Sharpening Stones] que aumentam os ataques corpo-a-corpo em +2 Dano. Isso é muito significativo no começo|r << Warrior/Rogue
    >>|cRXP_WARN_Isso vai permitir que você faça |T135255:0|t[Rough Weightstones] que aumentam os ataques corpo-a-corpo em +2 Dano. Isso é muito significativo no começo|r << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> Aceite Ferramentas para Gradaço
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .target Pilot Bellowfiz
    .accept 317 >> Aceite Provisões para a Vaporeta
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> Aceite O Covil dos Cansados
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Gradaço|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> Entregue Ferramentas para Gradaço
step
    #label BoarMeat44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Aceite Sem Munição não Tem Negócio
step << Warrior/Paladin/Rogue
    #completewith next
    .money <0.0091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    .goto Dun Morogh,50.084,49.420
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_se você treinou|r |T136241:0|t[Ferraria]
    .collect 2901,1
    .target Loslor Rudge
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Yarr Malhapedra|r
    .trainer >>Aprenda |T134708:0|t[Mineração]
    .target Yarr Hammerstone
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
step << Paladin/Warrior/Rogue
    #completewith BearFur
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os pelo seu |cRXP_LOOT_Fur|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
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
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os pelo seu |cRXP_LOOT_Fur|r
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step << !Paladin !Warrior !Rogue
    #completewith Ribs
    >>Abate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saque-os para obter |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Entregue Provisões para a Vaporeta
    .accept 318 >> Aceite Sempre-aceso
step << Warrior
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor >> |cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_o máximo que puder|r
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor >> |cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_o máximo que puder|r
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,42.38,55.28,40 >> Vá para a Toca dos Cabelos Brancos
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Abate os |cRXP_ENEMY_Wendigos|r e os |cRXP_ENEMY_Young Wendigos|r. Saque-os para obter |cRXP_LOOT_Manes|r
    >>|cRXP_WARN_Lembre-se de manter os olhos abertos para|r |T134566:0|t[Copper Veins] |cRXP_WARN_que produzem|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para confeccionar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Lembre-se de manter os olhos abertos para|r |T134566:0|t[Copper Veins] |cRXP_WARN_que produzem|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para confeccionar|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Abra o |cRXP_PICK_Caixote de Munição|r. Saque-o para obter |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Entregue Sem Munição não Tem Negócio
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .goto Dun Morogh,40.682,65.130
    >>|cRXP_BUY_Compre e equipe um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_. Pule este passo se você não puder pagar|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
step << !Paladin !Warrior !Rogue
    .xp 7 >> Suba até o nível 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>Abate os |cRXP_ENEMY_Young Preto Ursos|r. Saque-os para obter |cRXP_LOOT_Fur|r
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step << Paladin/Warrior/Rogue
    #completewith Ribs
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para suas |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Entregue Provisões para a Vaporeta
    .accept 318 >> Aceite Sempre-aceso
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Marchapedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Entregue O Covil dos Grisalhos
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Compre uma Picareta de Mineração
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >> Suba até o nível 7
step << Warrior/Rogue
    #som
    .xp 8 >> Farme inimigos próximos até o nível 8
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r nos fundos
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Treine suas magias de classe
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avar Marroforte|r no piso superior
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Treine suas magias de classe
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Granis Celeraxa|r dentro
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Treine suas magias de classe
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe uma|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor >> |cRXP_BUY_Compre até 20|r |T133968:0|t[Pão Fresquinho] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Compre até 10|r |T133968:0|t[Pão Fresquinho] << Paladin
    .target Innkeeper Belm
step << Paladin/Warrior/Rogue
    #completewith next
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,37.9,50.8,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Vá para |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Mate os |cRXP_ENEMY_Boars|r, os |cRXP_ENEMY_Ursos|r e os |cRXP_ENEMY_Wolves|r no caminho
step << Paladin/Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Aceite Por Baixo da Carne-seca
step << !Paladin !Warrior !Rogue
    #completewith next
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Vá para |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Mate os |cRXP_ENEMY_Javalis|r, os |cRXP_ENEMY_Ursos|r e os |cRXP_ENEMY_Lobos|r no caminho
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Aceite Por Baixo da Carne-seca
step
    #completewith next
    .goto Dun Morogh,30.5,46.0,50 >> Vá para Brewnall Village
step << !Mage !Priest
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado]
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Entregue Sempre-aceso
    .accept 319 >> Aceite Tudo pela Sempre-aceso
    .accept 315 >> Aceite Em Busca da Cerveja Perfeita
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Aceite A Guerra das Cervejas
step
    #label Ribs
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
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>Mate os |cRXP_ENEMY_Elder Crag Boars|r. Saque-os para obter suas |cRXP_LOOT_Crag Javali Ribs|r
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
    .complete 384,1 --Collect Crag Boar Rib (x6)
    .mob Elder Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Entregue Tudo pela Sempre-aceso
    .accept 320 >> Aceite Fale Novamente com Urrabolha
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Se você já entregou Costelinhas de Javali na Cerveja, suba até 4360+/4500xp
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
    .goto Dun Morogh,30.0,51.8
step
    .xp 7+3735 >>Suba até 3735+/4500 XP
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
    .goto Dun Morogh,30.0,51.8
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Corra para aqui.
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Suba correndo pela montanha ao norte.
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Siga até aqui
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Corra reto para o norte, pule para baixo e morra quando o General Bate-papo mude para o Pantanal, depois ressurja em Menethil Harbor
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Nade para a costa
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Wetlands>> Aprenda a rota de voo para Menethil Harbor
step
	#completewith next
    .hs >> Vá para Kharanos
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarven Cervaforte|r lá embaixo
    .turnin 308 >> Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >> Entregue A Guerra das Cervejas
    .accept 311 >> Aceite Fale Novamente com Marleth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r lá fora
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> Entregue Costelinhas de Javali na Cerveja
step << !Paladin !Rogue !Warrior
    .xp 8 >> Suba até o nível 8
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >> Treine suas magias de classe
    .train 5116>> Treine Tiro de Concussão
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .target Gimrizz Shadowcog
    .trainer >> Treine suas magias de classe
    .train 5782 >> Treine |T136183:0|t[Medo]
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .vendor >> |cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Seta de Fogo (Rank 2)] |cRXP_BUY_se você puder pagar. Se não, você o comprará depois|r
    .target Gimrizz Shadowcog
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r no quarto de trás
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Treine suas magias de classe
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avar Marroforte|r no andar de cima
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Treine suas magias de classe
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Granis Celeraxa|r lá dentro
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Treine suas magias de classe
step << Mage
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro, no andar de cima
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Treine suas magias de classe
    .train 118 >> Treine |T136071:0|t[Polimorfia]
step << Priest
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .trainer >> Treine suas magias de classe
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thamner Poli|r
    .train 3273 >> Aprenda |T135966:0|t[Primeiros Socorros]
    .target Thamner Pol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Compre até 30|r |T133968:0|t[Pão Fresquinho] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Compre até 15|r |T133968:0|t[Pão Fresquinho] << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Compre até 30|r |T132815:0|t[Leite Gelado]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Aceite A Fortaleza Jubafria
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Entregue O Covil dos Grisalhos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    >>|cRXP_WARN_Escolha o|r |T135637:0|t[Faca Campeira] |cRXP_WARN_prêmio. Guarde-a para depois|r << Rogue
    .turnin 320 >> Fale novamente com Urrabolha
step
    #era << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Aceite Operação Remendão
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Vá para Serra Cintilante. Siga a seta e suba a montanha
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Abate |cRXP_ENEMY_Frostmane Seers|r. Saqueie-os para obter |cRXP_LOOT_Tremulerva|r
    >>|cRXP_LOOT_Tremulerva|r também pode ser saqueado de |cRXP_PICK_Tremulerva Cestos|r no chão
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Pegue |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r patrule para fora da caverna. Uma vez que ele saia da caverna, você pode entrar e saquear|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Lance|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Mage
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Warlock
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Pegue |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Entregue O Saque Roubado de Tundra MacGrann
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >> |cRXP_BUY_Compre mais 10|r |T132815:0|t[Leite Gelado]
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >> |cRXP_WARN_Venda os itens de lixo|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Entregue Em Busca da Cerveja Perfeita
    .accept 413 >> Aceite Cerveja Tremeluz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Fale novamente com Marleth
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Abata os |cRXP_ENEMY_Leper Gnomes|r. Saque-os para obter |cRXP_LOOT_Engrenagens|r e |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #era
    .xp 9 >> Farme até o nível 9
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Entre na Fortaleza Jubafria
step
    #completewith next
    >>Abata os |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #hardcore
    >>Largue-se|cRXP_WARN_ para baixo neste local para explorar A Fortaleza Jubafria. Se houver inimigos abaixo, limpe ao redor normalmente e NÃO desça|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step << Hunter
    #completewith next
    .xp 10-2325
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Abata os |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Hunter
    .xp 10-1400
step
    #hardcore
	#completewith next
	.hs >> Vá para Kharanos
	.cooldown item,6948,>0,1
step
    #hardcore
    #completewith next
   .goto Dun Morogh,46.726,53.826,150 >> Voe para Kharanos
step << Hunter
   .goto Dun Morogh,46.005,48.637,8,0
   .goto Dun Morogh,45.846,49.365
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
   .target Razzle Sprysprocket
   .turnin 412 >> Entregue Operação Remendão
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Entregue A Fortaleza Jubafria
    .accept 291 >> Aceite Os Relatórios
step << Rogue
    #level 10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r na sala dos fundos
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .accept 2218 >> Aceite O Caminho para a Salvação
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thamner Poli|r
    .train 3273 >> Aprenda |T135966:0|t[Primeiros Socorros]
    .target Thamner Pol
step << !Hunter
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .turnin 412 >> Entregue Operação Remendão
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .accept 6064 >>Aceite Domando a Fera
step << Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Domar a Fera - Missão
    .target Grif Wildheart
    .accept 6084 >>Aceite Domando a Fera
step << Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Domar a Fera - Missão
    .target Grif Wildheart
    .accept 6085 >>Aceite Domando a Fera
step << Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Domar a Fera - Missão
    .target Grif Wildheart
    .accept 6086 >>Aceite Treinando a Fera
step << Warrior
    #sticky
    #completewith next
    .money >0.1030
    +|cRXP_WARN_Triturar até que você tenha 10s30c, depois corra para Ironforge|r
step << Warrior/Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Viaje para Ironforge
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .turnin 6086 >> Entregue Treinamento da Fera - Missão
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r
    .trainer >>Treine Arremesso
    .target Bixi Wobblebonk
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre uma|r |T135641:0|t[Adaga Equilibrada de Arremesso] e equipar|r
    .target Brenwyn Wintersteel
step << Warrior/Hunter
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.90,35.62
    .zone Dun Morogh >> Saia de Altaforja
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> Aceite Amarre sua Cabra pois Ragash Está Solto
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Suba por esta parte da montanha
step
    .goto Dun Morogh,62.6,46.1
    >>Abate |cRXP_ENEMY_Ragash|r. Saqueie-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    >>|cRXP_WARN_Vigie o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser derrotado sozinho em qualquer classe|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    >>|cRXP_WARN_Escolha|r |T133052:0|t[|cRXP_FRIENDLY_Martelo de Cristálgida|r] |cRXP_WARN_como sua recompensa. Não se preocupe se você ainda não conseguir equipá-la, você aprenderá Maças de Duas Mãos em breve!|r << Warrior
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Entregue Amarre sua Cabra pois Ragash Está Solto
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Vá para Pedreira Gol'Bolar
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >> Aprenda |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >> Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
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
    .turnin 432 >> Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Entregue O Funcionário Público
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >> Suba até 10
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >> Aceite O Piloto Perdido
step
    >>Clique no |cRXP_PICK_Dwarven Cadáver|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Entregue O Piloto Perdido
    .accept 417 >> Aceite A Vingança do Piloto
step
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie a |cRXP_LOOT_Garra|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Entregue A Vingança do Piloto
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Montanhista Cervevada|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Entregue Cerveja Tremeluz
    .accept 414 >> Aceite Cerveja para Kadrell
step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >> Voe para Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> Aceite Em Defesa das Terras do Rei
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .target Captain Rugelfuss
    .accept 267 >> Aceite A Ameaça Trogg
step
    #completewith HonorStudents
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .turnin 414 >> Entregue Cerveja para Kadrell
    .accept 416 >> Aceite Pegando Ratos
    .accept 1339 >> Aceite Tarefa do Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Aceite Chouriço de Thelsamar
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor >> |cRXP_BUY_Compre um|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_se necessário|r
    .target Yanni Stoutheart
step << !Paladin
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .home >> Defina sua Pedra de Retorno em Thelsamar
    .target Innkeeper Hearthstove
step
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >> Aceite Alunos Brilhantes
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
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .turnin 414 >> Entregue Cerveja para Kadrell
    .accept 416 >> Aceite Pegando Ratos
    .accept 1339 >> Aceite Tarefa do Montanhista Lançatroz
    .target Mountaineer Kadrell
step << skip
    #sticky
    #completewith next
    +Farme inimigos até ter pelo menos 33 de prata em dinheiro e itens vendáveis
--N rogue money gate for cutlass+1h swords
step
    #completewith Thelsamar1
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarde qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_para usar para subir de nível |T133971:0|t[Culinária] |cRXP_WARN_mais tarde|r
    >>|cRXP_WARN_Não se desvie para completar isto agora. Você voltará a Loch Modan em breve|r
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Vá para o norte até Algaz Station
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 1339 >> Entregue Montanhista Lançatroz's Task
    .accept 1338 >> Aceite Ordens dos Lançatroz
    .accept 307 >> Aceite Patas Nojentas
    .target Mountaineer Stormpike
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 1339 >> Entregue Montanhista Lançatroz's Task
    .accept 1338 >> Aceite Ordens dos Lançatroz
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> Morra e reapareça em Thelsamar
step
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entregue Chouriço de Thelsamar
step
    #label Thelsamar1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> Entregue Alunos Brilhantes
    .accept 6391 >> Aceite Carona para Altaforja
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Voe para Altaforja
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Golnir Topadão|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Entregue Carona para Altaforja
    .accept 6388 >> Aceite Grif Trovino
step << Hunter
    >>|cRXP_WARN_Não voe em lugar nenhum|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Entregue Grif Trovino
    .accept 6392 >> Aceite Retorno a Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Entregue Os Relatórios
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r
    >>|cRXP_WARN_Equipe o|r |T133052:0|t[Martelo de Cristálgida] |cRXP_WARN_agora se você não equipou antes|r
    .target Buliwyf Stonehand
    .goto Ironforge,61.181,89.514
    .trainer >>Treine Maças de Duas Mãos
step << !Hunter
    >>|cRXP_WARN_Não voe para lugar algum|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Entregue Grif Trovino
    .accept 6392 >> Aceite Retorno a Brock
step << !Hunter skip
    #completewith next
    +Faça um logout skip pulando em cima de uma das cabeças do Grifo, saindo do jogo e depois entrando novamente
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .zoneskip Ironforge,1
step
    .goto Ironforge,78.00,52.00,5,0
    >>|cRXP_WARN_Entre no Deeprun Tram|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio
    .target Monty
    .accept 6661 >> Aceite Ratos de Porão
step
    .use 17117 >>|cRXP_WARN_Use o|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Virar em Ratos de Porão
    .timer 11,Ratos de Porão RP
    .accept 6662 >> Aceite Meu Irmão, Nipsy
step
    #completewith next
    .zone Stormwind City >> Pegue o Metrô para Ventobravo
    >>|cRXP_WARN_Nível seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto espera pelo Metrô|r
    >>|cRXP_WARN_Você precisará de seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar no nível 80 para uma missão no nível 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r quando sair do Metrô
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_está na plataforma central|r
    .turnin 6662 >> Entregue Espetinhos de... rato
    .target Nipsy
step
    .zone Stormwind City >> Entre em Ventobravo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Aceite Entrega para Lançatroz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Entregue Ordens dos Lançatroz
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaje até a Catedral de Ventobravo
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Treine suas magias de classe
    .turnin 5634 >> Entregue Prece Desesperada
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .train 13908 >> Treine Prece Desesperada
    .target High Priestess Laurena
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    .trainer >> Treine suas magias de classe
    .accept 1638 >> Aceite Treinamento do Guerreiro
    .target Ilsa Corbin
step << Warrior
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Entre na estalagem
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> Entregue Treinamento do Guerreiro
    .accept 1639 >> Aceite Bartolino o Bêbado - Missão
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> Entregue Bartolino o Bêbado - Missão
    .accept 1640 >> Aceite Derrote Bartolino - Missão
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Ataque |cRXP_ENEMY_Bartolino|r. Ele se renderá em 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Entregue Derrote Bartolino - Missão
    .accept 1665 >> Aceite Caneca do Bartolino
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Entregue Caneca do Bartolino
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1688 >> Aceite Surena Caledon
    .target Gakin the Darkbinder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Treine Espadas de Uma Mão << Rogue/Mage
    .trainer >>Treine Cajados << Priest
    .trainer >>Treine Espadas de 1 Mão e Báculos << Warlock
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
step << Dwarf Paladin
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >> Defina sua Pedra de Retorno em Ventobravo
    .target Innkeeper Allison
step << Rogue
    .money <0.2000
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    .target Gunther Weller
    .vendor >> |cRXP_WARN_Compre|r |T135346:0|t[Alfanje] |cRXP_WARN_e equipe-o na mão principal. Equipe a|r |T135641:0|t[|cRXP_FRIENDLY_Adaga do Artífice|r] |cRXP_WARN_de antes na mão secundária|r
step << Rogue
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    .vendor >> |cRXP_BUY_Compre|r |T135425:0|t[Faca de Arremesso Afiada]|cRXP_BUY_. Equipe quando estiver no nível 11|r
    .target Thurman Mullby
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 10-11 Elwynn (Dwarf/Gnome)
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#defaultfor Gnome/Dwarf
#next 11-13 Loch Modan (Anão/Gnomo)

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >> Pegue o ponto de voo de Ventobravo
    .target Dungar Longdrink
step
    #completewith next
    .goto Elwynn Forest,42.107,65.930,100 >> Viaje para Vila d'Ouro
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .accept 62 >> Aceite A Mina Fundaprofunda
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Aceite Velas Kobold
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Vá para cima na Estalagem
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Treine suas magias de classe
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Aceite Perigo Anfíbio
    .accept 47 >> Aceite Trocando Pó de Ouro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mama Campedra|r e a |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 88 >> Aceite Princesa Tem Que Morrer!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >> Aceite O Colar Perdido
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Entregue O Colar Perdido
    .accept 86 >> Aceite Torta para o Guinho
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .accept 106 >> Aceite Jovens Amantes
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Entregue Jovens Amantes
    .accept 111 >> Aceite Fale com a Vovó
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,34.486,84.252
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    >>|cRXP_WARN_Pule a entrega por enquanto se você não tiver bastante [Naco de Carne de Javali]|r
    .turnin 86 >> Entregue Torta para o Guinho
    .isQuestComplete 86
    .target "Auntie" Bernice Stonefield
step
    .goto Elwynn Forest,34.943,83.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vovó Campedra|r
    .turnin 111 >> Entregue Fale com a Vovó
    .accept 107 >> Aceite Bilhete para Durval
    .target Gramma Stonefield
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Os inimigos de nível 5 podem ficar acinzentados durante esta missão. Ainda assim, complete-a, pois você precisa dela para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Entre e explore a Mina Fargodeep|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Os inimigos nível 5 podem ficar cinzentos durante esta missão. Complete-a de qualquer forma pois você precisa dela para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Viaje para Vila d'Ouro
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_de recompensa. Este é um item incrivelmente valioso durante todo o caminho até o nível 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Entregue Trocando Pó de Ouro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Entregue A Mina Vailafundo
    .accept 76 >> Aceite A Mina de Jaspe
    .turnin 40 >> Entregue Perigo Anfíbio
    .accept 35 >> Aceite Mais Preocupações
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Entregue Velas dos Kobolds
    .accept 61 >> Aceite Carregamento para Ventobravo
    .turnin 107 >> Entregue Bilhete para Durval
    .accept 112 >> Aceite Coletando Alga
step
    >>Abate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saque-os para obter |cRXP_LOOT_Frondes de Alga|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> Entre na Mina Jasperlode
step
    >>|cRXP_WARN_Siga o caminho pelo meio para explorar a Mina Jasperlode|r
    >>|cRXP_WARN_Saia da Mina Jasperlode assim que o objetivo for concluído|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Entregue Mais Preocupações
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >> Aceite Encontre os Guardas Perdidos
    .accept 52 >> Aceite Proteja a Fronteira
step
    #era
    #completewith Prowlers
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Clique em |cRXP_PICK_Cadáver Meio Comido|r no chão
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Entregue Encontre os Guardas Perdidos
    .accept 45 >> Aceite Descubra o Destino de Rodolfo
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Aceite Um Feixe de Encrenca
step
    #era
    #completewith Bundles
    >>Pegue o |cRXP_LOOT_Bundle of Madeira|r no chão. |cRXP_WARN_Encontram-se sob as árvores|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Clique em |cRXP_PICK_Cadáver de Rolf|r no chão
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Murlocs|r próximos podem atacar quando você clica em|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_vão lançar|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_que os curam em 61-68|r
    .turnin 45 >> Entregue Descubra o Destino de Rodolfo
    .accept 71 >> Aceite Apresente-se a Tomás
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
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Young Forest Bear
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Pegue o |cRXP_LOOT_Bundle of Madeira|r no chão. |cRXP_WARN_Encontram-se sob as árvores|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Entregue Um Feixe de Encrenca
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Aceite Mercadorias de Linho Vermelho
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Entregue Proteja a Fronteira
    .turnin 71 >> Entregue Apresente-se a Tomás
    .accept 39 >> Aceite Entregar o Relatório de Tomás
    .accept 109 >> Aceite Entregar para Miguel Mantoforte
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Mate |cRXP_ENEMY_Surena Caledon|r. Saque o |cRXP_LOOT_Choker|r dela
    >>|cRXP_WARN_Concentre-se em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>Mate a |cRXP_ENEMY_Princesa|r. Saqueie-a para obter o |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_atacará com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também lançará|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    .complete 88,1
    .mob Princess
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_O|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é um drop muito raro. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Aceite Escritura do Taturana
step
    #era
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas|r
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
step
    #era
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Morra e reapareça no Anjo da Cura se estiver com pouca saúde, caso contrário apenas corra de volta e entregue
step
    #era
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Entregue Mercadorias de Linho Vermelho
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaje para as Montanhas Cristarrubra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Aceite Encroaching Gnolls
step
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_SIGA A ESTRADA PRINCIPAL E EVITE QUALQUER INIMIGO PRÓXIMO|r
    .turnin 244 >> Entregue Encroaching Gnolls
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >> Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >> Voe para Ventobravo
    .target Ariena Stormfeather
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre os seguintes itens para uma entrega mais rápida em Loch Modan
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>Comprar extras de |T134437:0|t[Naco de Carne de Javali] também pode ser útil para aumentar |T133971:0|t[Culinária] até 50 para depois
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    >>|T134437:0|t[Chunk of Javali Carne]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,4,86,1 -- Chunk of Boar Meat (4)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >> Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos o|r |T132383:0|t[Foguetes Explosivos] |cRXP_WARN_como recompensa. Causa bom dano e pode ser usado para "Dividir puxadas", o que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência de vídeo sobre 'Divisão pulling'. É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .trainer >> Treine suas magias de classe
    .turnin 1688 >> Entregue Surena Caledon
    .accept 1689 >> Aceite A vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >> |cRXP_WARN_Use o|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para chamar um|r |cRXP_ENEMY_Emissário do Caos Invocado|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Mate o |cRXP_ENEMY_Emissário do Caos Invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
     #softcore
    >>Use Vampirismo a caminho de volta para |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> Entregue A Vinculação
step << Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Entregue A Vinculação
step << Warlock
    #softcore
    #completewith next
    .goto StormwindClassic,25.2,78.5
    .deathskip >> Morra e reapareça no Anjo da Cura usando Conversão de Vida e ficando sobre a Objetos de Cata perto de você
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Viaje para Vila d'Ouro
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Treine suas magias de classe
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >> Entregue O Relatório de Tomás
    .turnin 76 >> Entregue A Mina de Jaspe
    .accept 239 >> Aceite Ribeira d'Oeste Precisa de Ajuda!
    .target Marshal Dughan
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Entregue Coletando Alga
    .accept 114 >> Aceite A Fuga
    .target William Pestle
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Vá para cima na Estalagem
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Treine suas magias de classe
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .target Priestess Josetta
    .trainer >> Treine suas magias de classe
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Vá para The Maclure Vineyards
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >> Entregue A fuga
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .target Ma Stonefield
    .turnin 88 >> Entregue Princesa tem que Morrer!
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    >>|cRXP_WARN_Pule a entrega por enquanto se você não tiver o suficiente de [Naco de Carne de Javali]|r
    .target "Auntie" Bernice Stonefield
    .turnin 86 >> Entregue Torta para o Guinho
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Abandone Torta para Billy
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> Vá para Westbrook Garrison
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >> Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >> Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >> Aceite Procurado: "Porqueiro"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >> Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >> Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >> Aceite Procurado: "Porqueiro"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >> Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >> Aceite Recompensa por Gnolls Riverpaw
    .target Deputy Rainer
step
    #completewith GnollEnd
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saque-os pela |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r]
    .use 1307 >>|cRXP_WARN_Use a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] |cRXP_WARN_é um drop muito raro. Ignorar este passo se você não a conseguir|r
    >>|cRXP_ENEMY_Rude Mordelogo|r |cRXP_WARN_a rare spawn, does have a 100% drop chance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Aceite O Coletor
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
    >>|cRXP_WARN_Garanta que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe The Defias Brotherhood|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
    >>|cRXP_WARN_Garanta que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe The Defias Brotherhood|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
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
    >>Abate |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r.
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em vários locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .group
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
    >>Abate |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r.
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em vários locais|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #label GnollEnd
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
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
    >>|cRXP_WARN_Garanta que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe The Defias Brotherhood|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> Entregue Wanted: "Hogger"
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Entregue O Coletor
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 11 >> Entregue Recompensa por Gnolls Riverpaw
    .target Deputy Rainer
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Viaje até Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Entregue Escritura do Taturana
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .accept 64 >> Aceite A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 151 >> Aceite A Pobre Velhinha Brancurinha
    .accept 36 >> Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Aceite Os Campos da Morte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> Entregue Ensopado de Cerro Oeste
    .accept 38 >> Aceite Ensopado de Cerro Oeste
    .accept 22 >> Aceite Empadão de Fígado de Goretusco
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Morra e renasça no Anjo da Cura, ou corra para Sentinela Hill
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 109 >> Entregue Relatório para Gryan Mantoforte
    .accept 12 >> Aceite A Milícia do Povo
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >> Aceite Patrulhando Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Aceite Vermelho Couro Bandanas
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Pegue o ponto de voo do Morro da Sentinela
    .fly Stormwind >> Voe para Ventobravo << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >> Use sua Pedra de Retorno em Loch Modan
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entre no Bondinho Deeprun. Pegue o Bondinho para Ironforge
    --.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Do a logout skip inside the Tram. Click here for video reference|r
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 11-13 Loch Modan (Anão/Gnomo)
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#defaultfor Gnome/Dwarf
#next 13-15 Cerro Oeste

step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Aceite Tomo of Divindade
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> Vá em direção a |cRXP_FRIENDLY_Tiza Beloforja|r para cima
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 2999 >>Entregue Tomo of Divindade
    .accept 1645 >>Aceite Tomo de Divindade
    .turnin 1645 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1646 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 1646 >>Entregue Tomo de Divindade
    .accept 1647 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Turner|r
    >>|cRXP_FRIENDLY_John Turner|r patrulha o anel externo de Altaforja perto da Casa de Leilões
    .turnin 1647 >>Entregue Tomo de Divindade
    .accept 1648 >>Aceite Tomo de Divindade
    .turnin 1648 >>Entregue Tomo de Divindade
    .accept 1778 >>Aceite Tomo de Divindade
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r para cima
    .target Tiza Battleforge
    .turnin 1778 >>Entregue Tomo de Divindade
    .accept 1779 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r
    .target Muiredon Battleforge
    .turnin 1779 >>Entregue Tomo de Divindade
    .accept 1783 >>Aceite Tomo de Divindade
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Voe para Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entregue Chouriço de Thelsamar
step
    #completewith RTB
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >> |cRXP_BUY_Compre|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_se necessário|r
    .target Yanni Stoutheart
step
    #completewith RTB
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .vendor 6734 >> |cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_se necessário|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >> Entregue Retorno a Brock
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrok Soltagafe|r
    >>|cRXP_BUY_Compre|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_se conseguir pagar|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
step
    .group
    #completewith BraveSoul
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .solo
    #completewith StormpikeStop
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .group
    #completewith MinerGear
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os pelas |cRXP_LOOT_Orelhas|r
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
    .goto Loch Modan,35.50,18.97,20 >> Entre na Mina do Riacho Prateado
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
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
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
    >>Os |cRXP_ENEMY_Tunnel Ratos|r |cRXP_WARN_podem aparecer em toda Loch Modan. Verifique seu Mapa do Mundo para suas localizações|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
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
    .turnin 307 >> Entregue Patas Nojentas
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 353 >> Entregue Entrega para Lançatroz
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
    .turnin 416 >> Entregue Rato Pegando
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entregue Chouriço de Thelsamar
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_junto com 2|r |T135435:0|t[Simple Madeira]|cRXP_BUY_. Compre qualquer|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_se necessário|r
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
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
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os pelos seus |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    #era
    .goto Loch Modan,27.4,48.4
    .xp 13+9600 >> Triture até 9600+/11400xp
step
    #som--xpgate
    .goto Loch Modan,27.4,48.4
    .xp 14-2300 >> Farme até estar 2300xp longe do nível 14 (9100/11400)
step
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Corra para cima pelo caminho de terra, depois desça para o bunker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> Entregue A Ameaça Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Entregue Em Defesa das Terras do Rei
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Voe para Altaforja
    .target Thorgrum Borrelson
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,86.09,51.15
    .zone Dun Morogh >> Vá para Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>Use o [Símbolo da Vida] em |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Entregue Tomo de Divindade
    .accept 1784 >>Aceite Tomo de Divindade
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para o |cRXP_LOOT_Dark Ferro Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
	#completewith next
    .hs >> Use sua Pedra de Retorno para ir a Ventobravo
step << Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaje até a Catedral de Ventobravo
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >> Treine suas magias de classe
    .target Arthur the Faithful
step << Hunter
    .goto Ironforge,69.872,82.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r
    .trainer >> Treine suas magias de classe
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >> Treine suas magias de classe
    .target Bilban Tosslespanner
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >> Treine suas magias de classe
    .target Dink
step << Mage/Priest/Warlock
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se custar menos de 33s 40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Mage/Priest/Warlock
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r embaixo
    >>|cRXP_WARN_Se você não conseguir adquirir uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_WARN_compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_e equipe-a quando você tiver 15|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
step << Warlock
    #softcore
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> Entre no edifício
    .goto Ironforge,50.4,6.3
    .trainer >> Treine suas magias de classe
step << Warlock
    #hardcore
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >> Treine suas magias de classe
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor >> |cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se você puder pagar|r
    .target Jubahl Corpseseeker
step << Rogue
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r embaixo
    .turnin -2218 >> Vire na Estrada para Salvação
    .target Hulfdan Blackbeard
step << Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Treine suas magias de classe
    .target Fenthwick
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >> Treine suas magias de classe
    .target Toldren Deepiron
step << !Paladin !Warrior !Hunter !Warlock skip
    #completewith next
    +Faça um logout skip pulando em cima de uma das cabeças do Grifo, saindo do jogo e depois entrando novamente
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .zoneskip Ironforge,1
step << !Paladin
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Entre no Deeprun Tram. Pegue o Tram para Ventobravo
    >>|cRXP_WARN_Nível seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto espera o trem|r
    >>|cRXP_WARN_Você precisará de seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar no nível 80 para uma missão no nível 24|r << Rogue !Dwarf
step
    #completewith Fly2WF
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >> |cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Bilubub Rodagiros|r não tiver um|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre 1 ou 2|r |T135343:0|t[Scimitars] |cRXP_BUY_se você puder pagar ou algo melhor do Auction House|r
    .collect 2027,2 --Scimitar
    .target Marcia Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre 1 ou 2|r |T135343:0|t[Scimitars] |cRXP_BUY_se você puder pagar|r
    .collect 2027,2 --Scimitar
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
step
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
    #label Fly2WF
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >> Voe para Cerro Oeste
    .target Dungar Longdrink
]])
