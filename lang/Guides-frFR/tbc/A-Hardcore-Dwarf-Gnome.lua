if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Gnome/Dwarf
#group RXP TBC Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#name 1-10 Dun Morogh
#next 10-12 Forêt d'Elwynn

step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step << !Warlock
    #completewith next
    .destroy 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >> Acceptez la quête Tailleur chez les nains
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,29.68,74.20,40,0
    >>Tuez les |cRXP_ENEMY_Ragged Young Wolves|r jusqu'à ce que vous puissiez vendre jusqu'à 10+ pièces de cuivre au marchand
    >>Vous allez apprendre [Cri de guerre] qui vous fera aller bien plus vite dans les premiers niveaux
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grundel Harkin|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target +Grundel Harkin
    .goto Dun Morogh,28.793,67.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .train 6673 >>Apprenez [Cri de guerre]
    .target +Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Entrez dans Anvilmar
    >>Déséquipez votre Torse, Chemise, Pantalon et Bottes sur la route. Vous les vendrez
step << Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .vendor >> Vendez votre Armure, votre Chemise, votre Pantalon et vos Bottes en plus de la nourriture et de l'eau dans vos sacs. Vous allez avoir besoin de 10 pièces de cuivre au total
    .target Durnan Furcutter
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r
    .train 348 >> Apprenez [Immolation]
    .accept 1599 >> Acceptez la quête Les débuts
    .target Alamar Grimm
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>Tuez les |cRXP_ENEMY_Ragged Young Wolves|r et les |cRXP_ENEMY_Ragged Timber Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Tough Wolf Meat|r
    >>Équipez n'importe quel armure en Tissu que vous récupèrerez sur les |cRXP_ENEMY_Young Wolves|r << Warlock
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .xp 2 >> Montez jusqu'au niveau 2
step << Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Rendez la quête Tailleur chez les nains
    .accept 3115 >> Acceptez la quête Note de service contaminée << Gnome Warlock
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .target Sten Stoutarm
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acceptez la quête Une nouvelle menace
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Eau de source]|cRXP_BUY_. Tuez des |cRXP_ENEMY_Ragged Young Wolves|r supplémentaire si vous n'avez pas assez d'argent|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Warlock
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Entrez dans la Grotte des Frostmane
step << Warlock
    >>Tuez les |cRXP_ENEMY_Frostmane Novices|r à l'intérieur. Dépouillez-les pour leur |cRXP_LOOT_Feather Charms|r
    >>|cRXP_BUY_Équipez n'importe quel armure en Tissu que vous récupèrerez sur les|r |cRXP_ENEMY_Frostmanes|r
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    --#hardcore
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à la Vallée des Frigères
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >> Rendez la quête Les débuts
    .turnin 3115 >> Rendez la quête Note de service contaminée << Gnome Warlock
    .target Alamar Grimm
step << Priest/Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Eau de source]|cRXP_BUY_. Tuez des |cRXP_ENEMY_Ragged Young Wolves|r supplémentaires su vous n'avez pas assez d'argent|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Adlin Pridedrift
step << !Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Rendez la quête Tailleur chez les nains
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .accept 3106 >> Acceptez la quête Rune simple << Dwarf Warrior
    .accept 3107 >> Acceptez la quête Rune consacrée << Paladin
    .accept 3109 >> Acceptez la quête Rune codée << Dwarf Rogue
    .accept 3110 >> Acceptez la quête Rune bénie << Priest
    .accept 3112 >> Acceptez la quête Note de service simple << Gnome Warrior
    .accept 3113 >> Acceptez la quête Note de service codée << Gnome Rogue
    .accept 3114 >> Acceptez la quête Note de service glyphée << Mage
    .accept 3108 >>Acceptez la quête Rune gravée << Dwarf Hunter
    .target Sten Stoutarm
step << !Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acceptez la quête Une nouvelle menace
    .target Balir Frosthammer
step
    #era
    #completewith Rockjaw
    >>Tuez les|cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 183 >> Acceptez la quête Chasseur de sangliers
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>Tuez les |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> Rendez la quête Chasseur de sangliers
step << Paladin/Mage/Warlock/Hunter
    #era
    .xp 3+1130 >> Monter votre expérience jusqu'à 1130+/1400xp
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 182 >> Acceptez la quête La caverne des trolls
step << Paladin/Mage/Warlock/Hunter
    .xp 4
step << Paladin/Mage/Warlock/Hunter
    #era
    .goto Dun Morogh,31.37,75.63
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
step << Paladin/Mage/Warlock/Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Voyagez jusqu'à Anvilmar
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Rendez la quête Rune gravée
    .train 1978 >> Apprenez [Morsure du serpent]
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r
    .target Bromos Grummner
    .goto Dun Morogh,28.833,68.332
    .turnin 3107 >> Rendez la quête Rune consacrée
    .trainer >> Apprenez vos sorts de classe
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r
    .target Marryk Nurribit
    .goto Dun Morogh,28.709,66.366
    .turnin 3114 >> Rendez la quête Note de service glyphée
    .trainer >> Apprenez vos sorts de classe
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r
    .target Alamar Grimm
    .goto Dun Morogh,28.650,66.145
    .trainer >> Apprenez votre Corruption
step << Paladin/Mage/Warlock/Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Rendez la quête Une nouvelle menace
step << Hunter
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>Achetez 2 stacks de [Balle légère]
    .collect 2516,400 -- Light Shot (400)
    .target Adlin Pridedrift
step << Mage/Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Eau de source]|cRXP_BUY_. Tuez des |cRXP_ENEMY_Ragged Young Wolves|r supplémentaire si vous n'avez pas assez d'argent|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Mage !Warlock !Hunter
    #era
    #completewith next
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
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
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
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
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage
    #label TrollTroggs
    .goto Dun Morogh,28.7,77.5
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << !Paladin !Mage !Warlock !Hunter
    .xp 4 >> Montez jusqu'au niveau 4
step << !Paladin !Mage !Warlock !Hunter
    #era
    #requires TrollTroggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
step << !Paladin !Mage !Warlock !Hunter
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Entrez dans la Grotte des Frostmane
step
    .goto Dun Morogh,26.8,79.9,35,0
    .goto Dun Morogh,29.0,79.0,20,0
    .goto Dun Morogh,30.6,80.3
    >>Tuez |cRXP_ENEMY_Grik'nir the Cold|r. Dépouillez-le pour son |cRXP_LOOT_Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
step << !Paladin !Mage !Warlock !Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Voyagez jusqu'à Anvilmar
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .target Solm Hargrin
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome Rogue
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf Rogue
step << Dwarf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    .target Branstock Khalder
    .goto Dun Morogh,28.600,66.385
    .turnin 3110 >> Rendez la quête Rune bénie
    .trainer >> Apprenez vos sorts de classe
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .target Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf Warrior
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome Warrior
    .trainer >> Apprenez vos sorts de classe
step << !Paladin !Mage !Warlock !Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Rendez la quête Une nouvelle menace
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Eau de source]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Thalos|r
    .target Mountaineer Thalos
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >> Rendez la quête Les observations de Senir
    .accept 420 >> Acceptez la quête Les observations de Senir
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hands Springsprocket|r
    .target Hands Springsprocket
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Traversez la Passe des Frigères
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Tuez |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Tuez |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 2145+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << Priest
    .xp 5+2415 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 2415+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << !Priest
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Voyagez jusqu'à Kharanos. Tuez les |cRXP_ENEMY_Crag Boars|r sur la route
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Rendez la quête Les observations de Senir
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Apprenez vos sorts de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_ si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Dannie Fizzwizzle
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Montez jusqu'au niveau 6
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .train 3044 >> Apprenez [Tir des Arcanes]
    .target Grif Wildheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r.
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannok Frosthammer|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Rendez la quête Des provisions pour Tannok
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kreg Bilmn|r
    .vendor >> |cRXP_BUY_Achetez et équipez un|r [Petit couteau de lancer]
    .target Kreg Bilmn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Apprenez vos sorts de classe
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Apprenez vos sorts de classe
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Apprenez vos sorts de classe
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .accept 5625 >> Acceptez la quête Vêtements de la Lumière
step << Priest
    >>Utilisez Soins inférieurs Ranh 2 et ensuite Mot de pouvoir : Robustesse sur le |cRXP_FRIENDLY_Mountaineer Dolf|r
    .target Mountaineer Dolf
    .goto Dun Morogh,45.805,54.568
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .turnin 5625 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
step << Priest
    .xp 6 >> Montez jusqu'au niveau 6
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .vendor >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r << Priest/Mage/Warlock
    .bindlocation 2102
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Apprenez vos sorts de classe
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,45.8,51.8,20 >> Voyagez jusqu'à la Forge
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tognus Flintfire|r
    .target Tognus Flintfire
    .goto Dun Morogh,45.3,51.9
    .trainer >> Apprenez [Forge]
    >>Ce métier vous permettra de créer des [Pierre à aiguiser brute] qui augmenteront vos dégâts en mêlée de +2. C'est une amélioration notable dans les premiers niveaux << Warrior/Rogue
    >>Ce métier vous permettra de créer des [Caillou brut] qui augmenteront vos dégâts en mêlée de +2. C'est une amélioration notable dans les premiers niveaux << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharek Blackstone|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Ne tuez pas de |cRXP_ENEMY_Young Black Bears|r sur la route|r
    .target Pilot Bellowfiz
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> Acceptez la quête L'antre Gris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
step
    #label BoarMeat44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
step << Warrior/Paladin/Rogue
    #completewith next
    .money <0.0091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .goto Dun Morogh,50.084,49.420
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_si vous avez pris la|r [Forge]
    .collect 2901,1
    .target Loslor Rudge
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r
    .trainer >>Apprenez [Minage]
    .target Yarr Hammerstone
step << Warrior/Paladin/Rogue
    .cast 2580 >> Lancez [Découverte de gisements]
step << Paladin/Warrior/Rogue
    #completewith BearFur
    >>Tuez les |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
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
    >>Tuez les |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
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
    >>Tuez |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
step << Warrior
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor >> |cRXP_BUY_Achetez autant de |r [Pain sorti du four] |cRXP_BUY_que vous pouvez vous le permettre|r
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,42.38,55.28,40 >> Voyagez jusqu'à l'antre Gris
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Tuez les |cRXP_ENEMY_Wendigos|r et les |cRXP_ENEMY_Young Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Wendigo Manes|r
    >>N'oubliez pas de garder un œil pour les [Filons de cuivre] qui contiennent des |cRXP_LOOT_[Rough Stones]|r pour fabriquer des [Pierre à aiguiser brute] << Warrior/Rogue
    >>N'oubliez pas de garder un œil pour les [Filons de cuivre] qui contiennent des |cRXP_LOOT_[Rough Stones]|r pour fabriquer des [Caillou brute] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Ouvrez les |cRXP_PICK_Ammo Crate|r. Ramassez les |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .goto Dun Morogh,40.682,65.130
    >>|cRXP_BUY_Achetez et équipez un|r [Tromblon orné]|cRXP_BUY_. passez cette étape si vous ne pouvez pas vous le permettre|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
step << !Paladin !Warrior !Rogue
    .xp 7 >> Montez jusqu'au niveau 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>Tuez les |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
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
    >>Tuez |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Rendez la quête L'antre Gris
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> |cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_si vous avez pris la|r [Forge]
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >> Montez jusqu'au niveau 7
step << Warrior/Rogue
    #som
    .xp 8 >> Tuez les créatures aux alentours jusqu'au niveau 8
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r à l'intérieur dans la salle du fond
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Apprenez vos sorts de classe
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Apprenez vos sorts de classe
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Apprenez vos sorts de classe
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Pain sorti du four] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez jusqu'à 10|r [Pain sorti du four] << Paladin
    .target Innkeeper Belm
step << Paladin/Warrior/Rogue
    #completewith next
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,37.9,50.8,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Voyagez vers |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Tuez les |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r et les |cRXP_ENEMY_Wolves|r sur la route
step << Paladin/Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
step << !Paladin !Warrior !Rogue
    #completewith next
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Voyagez vers |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Tuez les |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r et les |cRXP_ENEMY_Wolves|r sur la route
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.5,46.0,50 >> Voyagez jusqu'au Village de Brassetout
step << !Mage !Priest
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_BUY_Achetez jusqu'à 20|r [Lait frais]
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Rendez la quête L'éternol
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Acceptez la quête Bières rivales
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
    >>Tuez |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r et les |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Rendez la quête Une faveur pour un tonneau d'éternol
    .accept 320 >> Acceptez la quête Retour vers Claquesoufflet
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Si vous avez déjà rendu la quête Côtes de sanglier à la bière, montez votre expérience jusqu'à 4360+/4500xp
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
    .xp 7+3735 >>Montez votre expérience jusqu'à 3735+/4500xp
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
	#completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_et un|r [Thunder Ale]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jarven Thunderbrew|r en bas des escaliers
    .turnin 308 >> Rendez la quête Distraire Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Cliquez sur le |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Rendez la quête Bières rivales
    .accept 311 >> Acceptez la quête Retour chez Marleth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
step << !Paladin !Rogue !Warrior
    .xp 8 >> Montez jusqu'au niveau 8
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .train 5116>> Apprenez [Trait de choc]
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .target Gimrizz Shadowcog
    .trainer >> Apprenez vos sorts de classe
    .train 5782 >> Apprenez [Peur]
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .vendor >> |cRXP_BUY_Achetez le|r [Grimoire d'Eclair de feu (Rang 2)] |cRXP_BUY_si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Gimrizz Shadowcog
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Apprenez vos sorts de classe
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Apprenez vos sorts de classe
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Apprenez vos sorts de classe
step << Mage
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Apprenez vos sorts de classe
    .train 118 >> Apprenez [Métamorphose]
step << Priest
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .trainer >> Apprenez vos sorts de classe
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Thamner Pol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Achetez jusqu'à 30|r [Pain sorti du four] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez jusqu'à 15|r [Pain sorti du four] << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Achetez jusqu'à 30|r [Lait frais]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Rendez la quête L'antre Gris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    >>Choisissez le [Couteau de campeur] comme récompense. Gardez-le pour plus tard << Rogue
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Acceptez Opération Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Voyagez jusqu'à la crête Scintillante. Suivez la flèche et escaladez la montagne
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
    >>Tuez les |cRXP_ENEMY_Frostmane Seers|r. Dépouillez-les pour leur |cRXP_LOOT_Shimmerweed|r
    >>Les |cRXP_LOOT_Shimmerweed|r peuvent aussi être ramassées dans les |cRXP_PICK_Shimmerweed Baskets|r sur le sol
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>Lancez [Métamorph|cRXP_WARN_on|re] sur le |cRXP_ENEMY_Old Icebeard|r << Mage
    >>Lancez [Peur] sur le |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_BUY_Achetez jusqu'à 10|r [Lait frais] supplémentaires
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Rendez la quête La bière brune parfaite
    .accept 413 >> Acceptez la quête La Brune scintillante
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Rendez la quête Retour chez Marleth
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Tuez les |cRXP_ENEMY_Leper Gnomes|r. Dépouillez-les pour leur |cRXP_LOOT_Gears|r et leur |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #era
    .xp 9 >> Montez jusqu'au niveau 9
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Entrez dans le Repaire des Frostmane
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    --#hardcore
    >>Descendez cette endroit précis pour découvrir le Repaire des Frostmane. Si il y a des mobs en bas, tuez les normalement et ne descendez PAS
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
    >>Tuez les |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Hunter
    .xp 10-1400
step
    --#hardcore
	#completewith next
	.hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
	.cooldown item,6948,>0,1
step
    --#hardcore
    #completewith next
   .goto Dun Morogh,46.726,53.826,150 >> Voyagez jusqu'à Kharanos
step << Hunter
   .goto Dun Morogh,46.005,48.637,8,0
   .goto Dun Morogh,45.846,49.365
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
   .target Razzle Sprysprocket
   .turnin 412 >> Rendez Opération Recombobulation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
step << Rogue
    #level 10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .accept 2218 >> Acceptez la quête La voie du salut
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Thamner Pol
step << !Hunter
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Rendez Opération Recombobulation
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Acceptez la quête Dompter la bête
step << Hunter
    .goto Dun Morogh,48.3,56.9
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6084 >>Acceptez la quête Dompter la bête
step << Hunter
    .goto Dun Morogh,49.4,59.4
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6085 >>Acceptez la quête Dompter la bête
step << Hunter
    .goto Dun Morogh,50.4,59.7
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6086 >>Acceptez la quête Entraîner la bête
step << Warrior
    #sticky
    #completewith next
    .money >0.1030
    +Tuez des créatures jusqu'à ce que vous ayez 10s30c, puis allez à Ironforge
step << Warrior/Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Voyagez à Ironforge
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .turnin 6086 >> Rendez la quête Entraîner la bête
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .trainer >>Apprenez la compétence Armes de jet
    .target Bixi Wobblebonk
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez une|r [Dague de lancer équilibrée] et équipez-la|r
    .target Brenwyn Wintersteel
step << Warrior/Hunter
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.90,35.62
    .zone Dun Morogh >> Quittez Ironforge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> Acceptez la quête Protection du troupeau
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Montez sur cette partie de la montagne
step
    .goto Dun Morogh,62.6,46.1
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    >>|cRXP_WARN_Regardez bien la vidéo avant de tenter de tuer|cRXP_ENEMY_Vagash|r. Il peut être tuer en solo par n'importe quelle classe|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    >>Choisissez le [|cRXP_FRIENDLY_Coldridge Hammer|r] comme récompense. Ne nous inquiétez pas si vous ne pouvez pas encor l'équiper, vous apprendrez à porter des Masses à deux mains très bientôt! << Warrior
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Voyagez jusqu'à la Carrière de Gol'Bolar
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_si nécessaire|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_et du|r [Lait frais] |cRXP_BUY_si nécessaire|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r et à |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Tuez les |cRXP_ENEMY_Rockjaw Skullthumpers|r et les |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foreman Stonebrow|r et à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Rendez la quête Le serviteur public
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >> Montez jusqu'au niveau 10
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >> Acceptez la quête Le pilote perdu
step
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour sa |cRXP_LOOT_Claw|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Rendez la quête La Brune scintillante
    .accept 414 >> Acceptez la quête Une bière brune pour Kadrell
step
    #completewith HonorStudents
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >> Voyagez jusqu'au Loch Modan
step
    #completewith HonorStudents
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin 414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Acceptez la quête L'honneur des étudiants
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin 414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    #completewith next
    .subzone 925 >> Voyagez vers le Poste d'Algaz
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .target Mountaineer Stormpike
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> Rendez la quête L'honneur des étudiants
    .accept 6391 >> Acceptez la quête Voyage vers Forgefer
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Rendez la quête Voyage vers Forgefer
    .accept 6388 >> Acceptez la quête Gryth Thurden
step << Rogue
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers
    .turnin -2218 >> Rendez la quête La voie du salut
    .target Hulfdan Blackbeard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .accept 6392 >> Acceptez la quête Retourner vers Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Rendez la quête Les rapports
step << Warrior
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .target Buliwyf Stonehand
step << Warrior
    #sticky
    .equip 16,3103 >> Équipez le [|cRXP_FRIENDLY_Coldridge Hammer|r]
    .use 3103
    .itemcount 3103,1
step
    .goto 1455/0,-857.000,-4840.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >>Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Gnome/Dwarf
#group RXP TBC Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#name 10-12 Forêt d'Elwynn
#next 12-14 Sombrivage

step
    #completewith next
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Stormwind City
step
    .goto Ironforge,78.00,52.00,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu
    .target Monty
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
step
    .use 17117 >>Utilisez le [Pipeau du dératiseur] sur les |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .timer 11,Chasse au rat dans les profondeurs RP
    .accept 6662 >> Acceptez la quête Mon frère, Nipsy
step
    #completewith next
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
    >>Montez votre niveau en [Premiers soins] si nécessaire en attendant pour le Tram des Profondeurs
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nipsy|r lorsque vous sortez du Tram
    >>|cRXP_FRIENDLY_Nipsy|r est sur la plateforme au centre
    .turnin 6662 >> Rendez la quête Mon frère, Nipsy
    .target Nipsy
step
    .zone Stormwind City >> Entrez dans Stormwind
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Apprenez vos sorts de classe
    .turnin 5634 >> Rendez la quête Prière du désespoir
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 13908 >> Apprenez [Prière du désespoir]
    .target High Priestess Laurena
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    .trainer >> Apprenez vos sorts de classe
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Ilsa Corbin
step << Warrior
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Entrez dans la Taverne
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> Rendez la quête L'entraînement du guerrier
    .accept 1639 >> Acceptez la quête Bartleby le poivrot
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> Rendez la quête Bartleby le poivrot
    .accept 1640 >> Acceptez la quête Battre Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Attaquez |cRXP_ENEMY_Bartleby|r. Il se rendra à 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Rendez la quête Battre Bartleby
    .accept 1665 >> Acceptez la quête Tasse de Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue/Mage
    .trainer >>Apprenez la compétence Bâtons << Priest
    .trainer >>Achetez la compétence pour porter les Épées à une main et les Bâtons << Warlock
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
step << Rogue
#ah
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
	>>|cRXP_BUY_Achetez-lui un|r [Coutelas] |cRXP_BUY_ou|r regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
	.collect 851,1
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
#ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
	>>|cRXP_BUY_Achetez et équipez un|r [Coutelas]
	.collect 851,1
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
    #sticky
    .equip 16,851 >> Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step
    #completewith next
    .goto Elwynn Forest,42.107,65.930,100 >> Voyagez vers Goldshire
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Acceptez la quête Péril en la rivière
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Apprenez vos sorts de classe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r et à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 88 >> Acceptez la quête Princesse doit mourir !
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >> Acceptez la quête Le collier perdu
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,34.486,84.252
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    >>|cRXP_WARN_Ne rendez pas encore la quête si vous n'avez pas assez de [|cRXP_LOOT_Chunks of Boar Meat|r]|r
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .isQuestComplete 86
    .target "Auntie" Bernice Stonefield
step
    .goto Elwynn Forest,34.943,83.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gramma Stonefield|r
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
    .target Gramma Stonefield
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Les mobs niveau 5 peuvent être gris pendant cette quête. Faites-la quand même car vous aurez besoin de cette quête pour en débloquer les suites
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Entrez et explorez la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Les mobs niveau 5 peuvent être gris pendant cette quête. Faites-la quand même car vous aurez besoin de cette quête pour en débloquer les suites
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Voyagez vers Goldshire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
step
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Murloc Streamrunners|r. Dépouillez-les pour leur |cRXP_LOOT_Crystal Kelp Fronds|r
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
    .goto Elwynn Forest,61.654,53.608,15 >> Entrez dans la mine de Jasperlode
step
    >>Suivez le chemin au milieu pour explorer la mine de Jasperlode
    >>Quittez la mine de Jasperlode dès que vous avez complété les objectifs
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
step
    #era
    #completewith Prowlers
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Cliquez sur |cRXP_PICK_A half-eaten body|r sur le sol
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
step
    #era
    #completewith Bundles
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol. Ils se trouvent sous les arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Murlocs|r aux alentours peuvent vous attaquer lorsque vous cliquerez sur le |r |cRXP_PICK_Cadavre de Rolf|r
    >>|cRXP_ENEMY_Murloc Foragers|r vont utiliser [Boire une potion mineure] qui les soignera de 61-68 points de vie
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
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
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
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
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol. Ils se trouvent sous les arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Acceptez la quête Articles rouges en lin
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_ Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>Tuez |cRXP_ENEMY_Princess|r. Dépouillez-la pour son |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesse|r |cRXP_WARN_ramènera avec elle ses deux|r |cRXP_ENEMY_Entourage porcin|r
    >>|cRXP_ENEMY_Princess|r utilisera aussi [Assaut fulgurant] qui inflige de lourd dégâts
    .complete 88,1
    .mob Princess
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur [|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Westfall Deed|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step
    #era
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_ Bandanas|r
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
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Rendez la quête Articles rouges en lin
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    >>RESTEZ SUR LA ROUTE PRINCIPALE ET ÉVITEZ TOUTES LES CRÉATURES PROCHE SUR LA ROUTE
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>Choisissez en récompense de quête les [Roquette explosive]. Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .trainer >> Apprenez vos sorts de classe
    .turnin 1688 >> Rendez la quête Surena Caledon
    .accept 1689 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 7728 >> Utilisez l'[Echarte de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    --#hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Rendez la quête Le lien
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Voyagez vers Goldshire
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Apprenez vos sorts de classe
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
    .accept 239 >> Acceptez la quête Au secours de la garnison du ruisseau de l'ouest !
    .target Marshal Dughan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Rendez la quête À la recherche du varech
    .accept 114 >> Acceptez la quête La fuite
    .target William Pestle
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
    .target Priestess Josetta
    .trainer >> Apprenez vos sorts de classe
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Voyagez jusqu'aux vignes des Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Rendez la quête La fuite
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Rendez la quête Princesse doit mourir !
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    >>Ne rendez pas encore la quête si vous n'avez pas assez de [Chunks of Boar Meat]
    .target "Auntie" Bernice Stonefield
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Abandonnez Une tourte pour Billy
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> Voyagez jusqu'à la garnison du ruisseau de l'ouest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Rendez la quête Au secours de la garnison du ruisseau de l'ouest !
    .goto Elwynn Forest,24.234,74.450
    .target Deputy Rainer
step << Dwarf Paladin
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
    >>Tuez les |cRXP_ENEMY_Riverpaw Runts|r et les |cRXP_ENEMY_Riverpaw Outrunners|r. Dépouillez-les pour leur [Étoffe de lin]
    >>Vous en aurez besoin de 10 pour une quête de Paladin à venir
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Verna Furlbrow|r
    >>N'acceptez pas les autres quêtes
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto Westfall,59.92,19.42
	.target Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    >>N'acceptez pas les autres quêtes
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
	.cooldown item,6948,>0,1
    .zoneskip Ironforge
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Volez à Ironforge
    .target Thor
    .zoneskip Ironforge
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2999 >>Rendez la quête Le Tome de divinité
    .accept 1645 >>Acceptez la quête Le Tome de divinité
    .turnin 1645 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1646 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1646 >>Rendez la quête Le Tome de divinité
    .accept 1647 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r patrouille le cercle extérieur d'Ironforge près de l'Hôtel des Ventes
    .turnin 1647 >>Rendez la quête Le Tome de divinité
    .accept 1648 >>Acceptez la quête Le Tome de divinité
    .turnin 1648 >>Rendez la quête Le Tome de divinité
    .accept 1778 >>Acceptez la quête Le Tome de divinité
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
    .target Tiza Battleforge
    .turnin 1778 >>Rendez la quête Le Tome de divinité
    .accept 1779 >>Acceptez la quête Le Tome de divinité
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Battleforge|r
    >>N'acceptez pas la suite de quête
    .target Muiredon Battleforge
    .turnin 1779 >>Rendez la quête Le Tome de divinité
]])
