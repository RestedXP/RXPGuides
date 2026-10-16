if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name 1-6 Dun Morogh
#subgroup RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 6-11 Dun Morogh << !Hunter
#next 6-10 Dun Morogh (Chasseur) << Hunter

step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step << !Warrior !Warlock
    #completewith WolfMeat
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Acceptez la quête Tailleur chez les nains
    .target Sten Stoutarm
step << Warrior/Warlock
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Tuez et dépouillez les |cRXP_ENEMY_Ragged Young Wolves|r jusqu'à ce que vous ayez 10 cuivre ou plus à vendre au marchand|r
    >>Déséquipez votre [Robe d'acolyte]|cRXP_WARN_|cRXP_WARN_,|r|r [Chemise d'Acolyte], [Pantalon d'Acolyte], et [Chaussures d'acolyte] pour les vendre pour 4 pièces de cuivre << Warlock
    >>Déséquipez votre [Chemise de recrue]|cRXP_WARN_,|r [Pantalon de recrue], et [Chaussures de recrue] pour les vendre pour 3 pièces de cuivre << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Warrior/Warlock
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grundel Harkin|r à l'intérieur
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r à l'intérieur
    .train 6673 >>Apprenez [Cri de guerre]
    .target Thran Khorman
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'intérieur
    .train 348 >> Apprenez [Immolation]
    .accept 1599 >> Acceptez la quête Les débuts
    .target Alamar Grimm
step << Warrior/Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Utilisez votre Pierre de foyer pour revenir à la Vallée des Frigères
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step << Warlock
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step
    #label WolfMeat
    #loop
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
    >>Tuez les |cRXP_ENEMY_Ragged Young Wolves|r et les |cRXP_ENEMY_Ragged Timber Wolves|r. Dépouillez-les pour leur |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
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
    .xp 2 >> Montez jusqu'au niveau 2
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 600|r [Balle légère] |cRXP_BUY_à Adlin|r << Hunter
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r << Priest/Mage/Warlock
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r << Priest/Mage/Warlock
    .collect 159,15 << Priest/Mage/Warlock --Collect Refreshing Spring Water (x15)
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Rendez la quête Tailleur chez les nains
    .accept 233 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .accept 3106 >> Acceptez la quête Rune simple << Dwarf Warrior
    .accept 3107 >> Acceptez la quête Rune consacrée << Dwarf Paladin
    .accept 3108 >> Acceptez la quête Rune gravée << Dwarf Hunter
    .accept 3109 >> Acceptez la quête Rune codée << Dwarf Rogue
    .accept 3110 >> Acceptez la quête Rune bénie << Dwarf Priest
    .accept 3112 >> Acceptez la quête Note de service simple << Gnome Warrior
    .accept 3113 >> Acceptez la quête Note de service codée << Gnome Rogue
    .accept 3114 >> Acceptez la quête Note de service glyphée << Gnome Mage
    .accept 3115 >> Acceptez la quête Note de service contaminée << Gnome Warlock
    .target Sten Stoutarm
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acceptez la quête Une nouvelle menace
    .target Balir Frosthammer
--Warlock Imp quest
step << Warlock
#xprate <1.5
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r, |cRXP_ENEMY_Burly Rockjaw Troggs|r, |cRXP_ENEMY_Ragged Young Wolves|r, et des |cRXP_ENEMY_Ragged Timber Wolves|r sur la route
    >>Essayez d'éviter les |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step << Warlock
    #optional
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >> Entrez dans la Grotte des Frostmane
step << Warlock
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >> Voyagez vers les |cRXP_ENEMY_Frostmane Novices|r à l'intérieur
step << Warlock
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
    >>Tuez les |cRXP_ENEMY_Frostmane Novices|r inside. Dépouillez-les pour leur |cRXP_LOOT_Feather Charms|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << Warlock
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Warlock
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .turnin 1599 >> Rendez la quête Les débuts
    .turnin 3115 >> Rendez la quête Note de service contaminée
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step
#xprate <1.5
    #completewith Rockjaw << !Paladin !Warlock !Hunter
    #completewith Talin << Paladin/Warlock/Hunter
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 183 >> Acceptez la quête Chasseur de sangliers
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .target Talin Keeneye
step
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
    >>Tuez les |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Rendez la quête Chasseur de sangliers
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
#xprate <1.5
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Warlock
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
    .xp 3+1130 >> Monter votre expérience jusqu'à 1130+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 182 >> Acceptez la quête La caverne des trolls
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
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
    >>Passez cette étape si vous avez atteint le niveau 4. Vous la complèterez bientôt
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Montez jusqu'au niveau 4
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>Vous avez 5 minutes pour retourner à Anvilmar avant que le [Thé brûlant de Durnan] n'expire
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r à l'intérieur
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Rendez la quête Rune gravée << Dwarf
    .train 1978 >>Apprenez [Morsure de serpent]
step << Paladin
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r à l'intérieur
    .turnin 3107 >> Rendez la quête Rune consacrée << Dwarf
    .train 19740 >> Apprenez [Bénédiction de puissance]
    .train 20271 >> Apprenez [Jugement]
    .target Bromos Grummner
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .train 172 >>Apprenez [Corruption]
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
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
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #completewith next
    +|cRXP_WARN_Vous avez 5 minutes pour obtenir le |cRXP_LOOT_Grelin Whitebeard's Journal|r et retourner à Anvilmar que le|r [Duncan's Scalding Mornbrew] n'expire
    >>Si vous ratez cette quête ne vous inquiétez pas car vous pourrez la récupérer plus tard
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Entrez dans la Grotte des Frostmane
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Dirigez-vous vers |cRXP_ENEMY_Grik'nir the Cold|r à l'intérieur
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Tuez |cRXP_ENEMY_Grik'nir the Cold|r à l'intérieur. Dépouillez-le pour le |cRXP_LOOT_Grelin Whitebeard's Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.298,79.836,20,0
    .goto 1426,27.098,80.707,20 >> Quittez la Grotte des Frostmane
step << !Paladin !Warlock !Hunter
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    >>Si vous ratez la quête, passez cette étape
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
step << !Paladin !Warlock !Hunter
    #sticky
    .abandon 3364 >> Abandonnez Une livraison de thé brûlant. Vous la reprendrez de suite
step << !Paladin !Warlock !Hunter
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r et |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
step << Mage
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .train 116 >> Apprenez [Eclair de givre]
    .target Marryk Nurribit
step << Rogue
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .train 1784 >>Apprenez [Camouflage]
    .target Solm Hargrin
step << Priest
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    >>Apprenez [Mot de pouvoir : Robustesse] et [Soins inférieurs] (Rang 2) comme vous en aurez besoin pour une quête de classe bientôt << Dwarf
    .turnin 3110 >> Rendez la quête Rune bénie << Dwarf
    .accept 5626 >> Acceptez la quête Au service de la Lumière << Dwarf
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 2052 >> Apprenez [Soins inférieurs] (Rang 2) << Dwarf
    .trainer >> Apprenez vos sorts de classe
    .target Branstock Khalder
step << Warrior
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Thran Khorman
step << !Paladin !Warlock !Hunter
    #optional
    #completewith next
    .goto 1426,28.831,68.698,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
step << Priest/Mage/Warlock
    #optional
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>|cRXP_BUY_Achetez 5|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Thalos|r et |cRXP_FRIENDLY_Hands Springsprocket|r
    .turnin 282 >> Rendez la quête Les observations de Senir
    .accept 420 >> Acceptez la quête Les observations de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Traversez la Passe des Frigères
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (A)
<< Alliance !Hunter
#name 6-11 Dun Morogh << !Hunter
#displayname 6-12 Dun Morogh << Mage
#next 12-14 Sombrivage << !Warlock
#next 11-14 Forêt d'Elwynn/Loch Modan << Warlock
#subgroup RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf

step
    #optional
    #completewith SenirEnd
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>Gardez tous les |cRXP_LOOT_[Chunks of Boar Meat]|r que vous obtenez pour Ravitailler le Crache-vapeur et ensuite pour monter votre niveau en [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 10 en [Cuisine] pour une quête à Auberdine plus tard
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 2145+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << Priest
    .xp 5+2415 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 2145+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << !Priest
    .mob Crag Boar
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #completewith next
    >>Faites en sorte que la zone dans laquelle vous êtes ne soit PAS la Passe des Frigères
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 131
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Rendez la quête Les observations de Senir
    .target Senir Whitebeard
step
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >> Monter votre expérience jusqu'à 2690+/2800xp << !Warlock !Priest
    .xp 5+2350 >> Monter votre expérience jusqu'à 2350+/2800xp << Priest
    .xp 6 << Warlock
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .train 695 >> Apprenez [Trait de l'ombre (Rang 2)]
    .train 1454 >> Apprenez [Connexion]
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_ si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r.
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Rendez la quête Des provisions pour Tannok << Warrior/Rogue
    .turnin 2160,2 >> Rendez la quête Des provisions pour Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kreg Bilmn|r
    >>Achetez la [Dague de lancer équilibrée]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Détruisez le [Petit couteau de lancer] de vos sacs, ils ne seront plus nécessaire
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r à l'intérieur dans la salle au fond
    .trainer >> Apprenez vos sorts de classe
    .target Hogral Bakkan
    .xp <6,1
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .turnin -5626 >> Rendez la quête Au service de la Lumière << Dwarf
    .accept 5625 >> Acceptez la quête Vêtements de la Lumière
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Lancez [Soins inférieurs] (Rang 2) et ensuite [Mot de pouvoir : Robustesse] |cRXP_WARN_sur le |cRXP_FRIENDLY_Mountaineer Dolf|r à l'extérieur|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .turnin 5625 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .vendor >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entrez dans le bâtiment de la Forge
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tognus Flintfire|r
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Ceci pour permettra de créer des [Caillou brut] qui vont augmenter vos dégâts des armes de 2 << Paladin
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2018 >> Apprenez [Forge]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
    .target Tharek Blackstone
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r et |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Ne tuez pas de |cRXP_ENEMY_Young Black Bears|r sur la route|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Acceptez la quête L'antre Gris
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill|r et |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à |cRXP_FRIENDLY_Loslor Rudge|r
    >>Si vous ne pouvez pas vous le permettre, passez cette étape
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill|r et à |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r en bas des escaliers à l'intérieur
    >>Si vous ne pouvez pas vous le permettre, passez cette étape
    .train 2575 >>Apprenez [Minage]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith BearFur
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Tuez |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Thick Bear Fur|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Warrior !Paladin !Rogue
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
    >>Tuez les |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Thick Bear Fur|r
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step << !Paladin !Warrior !Rogue
    #optional
    #completewith EvershineEnd
    >>Tuez les |cRXP_ENEMY_Large Crag Boars|r et les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
    .target Pilot Bellowfiz
step << Paladin/Warrior/Rogue
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entrez dans le bâtiment de la Forge
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #optional
    #completewith BBBR
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Priest/Mage/Warlock
    #optional
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #label BBBR
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
#xprate <1.5
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Voyagez jusqu'à l'antre Gris
    .isOnQuest 313
step
#xprate <1.5
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
    >>Tuez les |cRXP_ENEMY_Wendigos|r et les |cRXP_ENEMY_Young Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Wendigo Manes|r
    >>N'oubliez pas de garder un oeil sur les [Filons de cuivre] qui possèdent des |cRXP_LOOT_[Rough Stones]|r vous permettant de fabriquer des [Pierre à aiguiser brute] << Warrior/Rogue
    >>N'oubliez pas de garder un oeil sur les [Filons de cuivre] qui possèdent des |cRXP_LOOT_[Rough Stones]|r vous permettant de fabriquer des [Caillou brut] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Tuez les |cRXP_ENEMY_Wendigos|r et les |cRXP_ENEMY_Young Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>Ouvrez les |cRXP_PICK_Ammo Crate|r. Ramassez les |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Voyagez vers |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .target Hegnar Rumbleshot
step << Warrior/Paladin/Rogue
    #loop
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>Tuez les |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Fur|r
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
    .mob +Crag Boar
    .mob +Large Crag Boar
    .complete 317,2 --Collect Thick Bear Fur (x2)
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
    .mob +Young Black Bear
step << Warrior/Paladin/Rogue
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>Tuez les |cRXP_ENEMY_Crag Boars|r aet les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Rendez la quête L'antre Gris
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur]|cRXP_BUY_à Loslor|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r en bas des escaliers à l'intérieur
    .train 2575 >>Apprenez [Minage]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << !Warrior !Paladin !Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >> Montez jusqu'au niveau 7
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
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
    .xp 7 >> Montez jusqu'au niveau 7
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entrez dans le bâtiment de la Forge
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith Tundra
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith Tundra
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Tundra
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith Tundra
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step << Warrior/Rogue
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 > |cRXP_BUY_Buy up to 15|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if you can afford|r
    .target Innkeeper Belm
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >> Voyagez jusqu'à la Vallée de la Brise
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >> Voyagez vers |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Voyagez jusqu'au Village de Brassetout
step << !Mage !Priest !Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r [Ice Cold Milk] |cRXP_BUY_à Kazan|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r et |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 318 >> Rendez la quête L'éternol
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Acceptez la quête Bières rivales
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
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
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    >>Tuez les |cRXP_ENEMY_Ice Claw Bears|r et les |cRXP_ENEMY_Snow Leopards|r
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
    >>Tuez les |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, et les |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >> Rendez la quête Une faveur pour un tonneau d'éternol
    .accept 320 >> Acceptez la quête Retour vers Claquesoufflet
    .target Rejold Barleybrew
step
    #optional
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
    .xp 7+3735 >>Monter votre expérience jusqu'à 3735+/4500xp
    .isQuestAvailable 384
step
    #optional
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
    .xp 7+4360 >>Monter votre expérience jusqu'à 4360+/4500xp
    .isQuestTurnedIn 384
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>Faites le Dun Morogh -> Wetlands deathskip. Suivez la flèche méticuleusement
    >>Ne sautez pas encore de la montagne
    .zone Wetlands >>Escaladez la montagne, puis descendez les bords irréguliers jusqu'à ce que votre zone change pour les Paluns
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>Sautez de la montagne vers le nord ou le nord-ouest
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r de la Baie de Baradin
    .isQuestAvailable 983
    .target Gardien des âmes
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nagez jusqu'au rivage vers le Port de Menethil
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez-lui une|r [Bière au malt Rhapsody |cRXP_BUY_et une|r [Thunder Ale] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez-lui une|r [Thunder Ale] |cRXP_BUY_|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
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
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .train 980 >> Entraînez-vous avec |T136139:0|t[Malédiction d'agonie]
    .train 5782 >> Apprenez [Peur]
    .goto Dun Morogh,47.327,53.693
    .target +Gimrizz Shadowcog
    .xp <8,1
step << Warlock
    #optional
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Achetez les|r [Grimoire d'Eclair de feu (Rang 2)] |cRXP_BUY_and|r [Grimoire de Pacte de Sang (Rang 2)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 2)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_à Cylina si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r à l'intérieur dans la salle du fond
    .trainer >> Apprenez vos sorts de classe
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .train 118 >> Apprenez [Métamorphone]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 >> |cRXP_BUY_Achetez-lui jusqu'à 20|r [Pain sorti du four] |cRXP_BUY_si vous pouvez vous le permettre|r << Warrior/Rogue
    .vendor 1247 >> |cRXP_BUY_Achetez 5|r [Pain sorti du four] |cRXP_BUY_si vous pouvez vous le permettre|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 >> |cRXP_BUY_Achetez jusqu'à 20|r [Lait glacé] |cRXP_BUY_à Farley si vous pouvez vous le permettre|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Rendez la quête L'antre Gris
    .target Pilot Stonegear
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>Choisissez le [Couteau de campeur]. Gardez-le pour plus tard << Rogue
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet << !Rogue
    .turnin 320,3 >> Rendez la quête Retour vers Claquesoufflet << Rogue
    .target Pilot Bellowfiz
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r à l'intérieur
    .accept 412 >> Acceptez Opération Recombobulation
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Montez en haut de la rampe pour la crête Scintillante
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Tuez les |cRXP_ENEMY_Frostmane Headhunters|r
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
    >>Tuez les |cRXP_ENEMY_Frostmane Seers|r. Dépouillez-les pour leur |cRXP_LOOT_Shimmerweed|r
    >>Ouvrez les |cRXP_PICK_Shimmerweed Baskets|r sur le sol. Récupérez les |cRXP_LOOT_Shimmerweed|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    .goto Dun Morogh,38.517,53.927
    >>Lancez [Métamorph|cRXP_WARN_on|re] sur le |cRXP_ENEMY_Old Icebeard|r << Mage
    >>Lancez [Peur] sur le |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r << !Mage !Warlock
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo << !Mage !Warlock
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r et |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 315 >> Rendez la quête La bière brune parfaite
    .accept 413 >> Acceptez la quête La Brune scintillante
    .goto Dun Morogh,30.189,45.725
    .target +Rejold Barleybrew
    .turnin 311 >> Rendez la quête Retour chez Marleth
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
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
    >>Tuez les |cRXP_ENEMY_Leper Gnomes|r. Dépouillez-les pour leur |cRXP_LOOT_Gears|r et leur |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
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
    >>Tuez |cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Montez sur le côté de l'entrée de la Grotte. Descendez dans le Repaire des Frostmane
    .isOnQuest 287
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>Descendez dans la petite salle cul-de-sac de la grotte
    >>Ne vous préoccupez pas de votre mort parce que vous vous apprêtez à mourir et ressusciter à Kharanos
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
    .target Senir Whitebeard
step << Rogue
    #optional
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r à l'intérieur dans la salle du fond
    .accept 2218 >> Acceptez la quête La voie du salut
    .target Hogral Bakkan
    .xp <10,1
step
    #optional
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Thamner Pol
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r à l'intérieur
    .turnin 412 >> Rendez Opération Recombobulation
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +Tuez des créatures jusqu'à avoir 10s30c à vendre au marchand
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Voyagez à Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r ou à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Si vous êtes dans un groupe ou connaissez quelqu'un pour vous aider à tuer |cRXP_ENEMY_Vagash|r maintenant, achetez la compétence pour porter des Masses à deux mains à |cRXP_FRIENDLY_Buliwyf Stonehand|r, sinon achetez la compétence pour porter des Armes de jets à |cRXP_FRIENDLY_Bixi Wobblebonk|r. Si vous n'êtes pas sûr de laquelle choisir, choisissez la compétence pour porter des Armes de Jet
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +Équipez le [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    .isQuestAvailable 1339
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >> Quittez Ironforge
    .zoneskip Ironforge,1
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>Marchez sur le bord du sol en métal sur le point de repère
    .zone Dun Morogh >>Positionnez votre personnage jusqu'à ce qu'il apparaisse en train de flotter, puis déconnectez-vous avant de vous reconnecter
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .goto 1426,57.936,50.787,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de [Cuisine] de 10 pour une quête à Auberdine plus tard
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>CLIQUEZ ICI si vous avez du mal << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>|cRXP_WARN_Regardez bien la vidéo avant de tenter de tuer|cRXP_ENEMY_Vagash|r. Il peut être tuer en solo par n'importe quelle classe|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> Cliquez ici pour un exemple vidéo << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step << Warrior/Paladin
    #sticky
    #optional
    .equip 16,3103 >> Équipez le [|cRXP_FRIENDLY_Coldridge Hammer|r]
    .use 3103
    .itemcount 3103,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.3
    .train 199,3
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Voyagez jusqu'à la Carrière de Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
    .money <0.0100
step
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Achetez jusqu'à 10|r [Pain sorti du four] |cRXP_BUY_au marchand si nécessaire|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Achetez jusqu'à 5|r [Pain sorti du four] |cRXP_BUY_et|r [Lait frais] |cRXP_BUY_au marchand si nécessaire|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r et à |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .goto Dun Morogh,69.084,56.330
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Skullthumpers|r à l'intérieur ou à l'extérieur de la mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Entrez dans la mine de la Carrière de Gol'Bolar
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
    >>Tuez les|cRXP_ENEMY_Rockjaw Bonesnappers|r à l'intérieur de la mine
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foreman Stonebrow|r et à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Rendez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
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
    .xp 10 >> Montez jusqu'au niveau 10
    .mob Rockjaw Skullthumper
step << Priest/Rogue
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 131
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r à l'intérieur dans la salle du fond
    .accept 2218 >> Acceptez la quête La voie du salut
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .target Hogral Bakkan
step
    #optional
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez les |cRXP_ENEMY_Scarred Crag Boars|r et les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 769,40,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<10,1 -- shows if cooking is >10
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Voyagez vers le |cRXP_FRIENDLY_Pilot Hammerfoot|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    .goto Dun Morogh,78.97,37.14
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour son |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>Choisissez la [Dague d'artisan] << Rogue
    .turnin 417 >> Rendez la quête La revanche du pilote << !Rogue
    .turnin 417,1 >> Rendez la quête La revanche du pilote << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #completewith ShimmerStoutEnd
    +Équipez la [Dague d'artisan] dans votre main droite
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >> Voyagez vers |cRXP_FRIENDLY_Mountaineer Barleybrew|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >> Rendez la quête La Brune scintillante
    .accept 414 >> Acceptez la quête Une bière brune pour Kadrell
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
    .subzone 924 >> Traversez la porte sud pour le Loch Modan << !Rogue !Warrior
    .zone Loch Modan >> Traversez la porte sud pour le Loch Modan << Rogue/Warrior
step << !Rogue !Warrior
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step << !Rogue !Warrior
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entrez dans le bunker. Montez à l'étage
step << !Rogue !Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r à l'intérieur du bunker
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,26.67,56.94
    >>Tuez les|cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stonesplinter Scouts|r lancent|r [Tirer] (Coup à distance: Inflige 14-20 dégâts)
    >>Il s'agit d'une zone d'hyperspawn. Vous n'aurez pas besoin de bouger d'ici
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Mage
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 12-3675 >> Grindez jusqu'à être à 3675xp du niveau 12
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << !Rogue !Warrior !Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Montez le chemin de terre et ensuite descendez dans le bunker
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r à l'intérieur du bunker
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #optional
    .isQuestAvailable 3524
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >> Voyagez à Thelsamar
step
#xprate <1.5
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin 414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat << Mage/Warlock
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
#xprate >1.49
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin 414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat << Warlock
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique << Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #completewith Cooking1 << !Mage !Rogue !Warrior !Warlock
    #completewith Hearthstove << Mage/Rogue/Warrior/Warlock
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entrez dans l'auberge de Thelsamar
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << !Mage !Rogue !Warrior !Warlock
    #label Cooking1
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r << !Rogue
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Mage/Rogue/Warrior/Warlock
    #label Hearthstove
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r à l'intérieur
    .home >> Liez votre Pierre de Foyer à Thelsamar << Rogue/Warrior/Warlock
    .vendor >>|cRXP_BUY_Achetez jusqu'à 40|r [Lait frais] |cRXP_BUY_au marchand|r << !Rogue !Warrior
    .collect 1179,35 << Mage/Warlock
    .target Innkeeper Hearthstove
    .bindlocation 2101
step << Mage/Warlock
#xprate <1.5 << !Warlock
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r
    .target Yanni Stoutheart
step << Rogue/Warrior/Warlock
    #optional
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
    .money <1 -- don't want them buying etc, unless rich alts, money too tight later
step << skip
    #loop
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin 414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat << Mage/Warlock
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #requires StouttoKadrell
step << Mage/Warlock
#xprate <1.5 << !Warlock
    #optional
    #completewith Algaz
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>Gardez tous vos |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_pour monter votre niveau de [Cuisine] plus tard
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Voyagez vers le Poste d'Algaz
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto Loch Modan,24.13,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .target Gothor Brumn
    .isOnQuest 1339
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique << Rogue/Warrior/Warlock
    .accept 307 >> Acceptez la quête Bas les pattes ! << Mage/Warlock
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    #optional
    #completewith ESSM
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step << Mage
#xprate <1.5
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
step << Mage
#xprate <1.5
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_Les |cRXP_PICK_Miners' League Crates|r peuvent se trouver tout au long de la Mine|r
    .complete 307,1 -- Miners' Gear (4)
step << Mage
#xprate <1.5
    #optional
    #completewith FilthyMountaineer
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Mage
#xprate <1.5
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step << Mage
#xprate <1.5
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
step << Rogue/Warrior
    #completewith FlytoIF
    +Tuez des créatures jusqu'à ce que vous ayez au moins 30 pièces d'argent à vendre au marchand << Rogue
    +Tuez des créatures jusqu'à ce que vous ayez au moins 10 pièces d'argent à vendre au marchand << Warrior
    .money >0.3000 << Rogue
    .money >0.1000 << Warrior
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #completewith FlytoIF
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 144
step << Mage
#xprate <1.5
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
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r << !Rogue
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Acceptez la quête L'honneur des étudiants
    .target Brock Stoneseeker
step << Mage
    .goto Loch Modan,26.67,56.94
    .xp 12 >> Montez jusqu'au niveau 12
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Gnome/Dwarf
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Rendez la quête L'honneur des étudiants
    .accept 6391 >> Acceptez la quête Voyage vers Forgefer
    .target Thorgrum Borrelson
step
    #label FlytoIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Volez à Ironforge
    .target Thorgrum Borrelson
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
step << Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .trainer >> Apprenez vos sorts de classe
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Rendez la quête Les rapports
    .isOnQuest 291
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .accept 6392 >> Acceptez la quête Retourner vers Brock
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Apprenez la compétence Armes de jet
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
-- Warrior training Def stance in SW. Really long/bad to do in Dun Morogh. Can also train Swords while in SW for potential early 2h swords
step << Warrior skip
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muren Stormpike|r
    .accept 1678 >>Acceptez Vejrek
    .target Muren Stormpike
step << Warrior skip
    #optional
    #completewith next
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >> Quittez Ironforge
step << Warrior skip
    .goto Dun Morogh,27.8,58.0
    >>Tuez |cRXP_ENEMY_Vejrek|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 1678,1 --Vejrek's Head (1)
    .mob Vejrek
step << Warrior skip
    #optional
    #completewith next
    .zone Ironforge >> Voyagez à Ironforge
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muren Stormpike|r
    .turnin 1678 >>Rendez Vejrek
    .accept 1680 >>Acceptez la quête Tormus Forge-profonde
    .target Muren Stormpike
step << Warrior skip
    .goto Ironforge,48.650,42.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tormus Deepforge|r
    .turnin 1680 >> Rendez la quête Tormus Forge-profonde
    .target Tormus Deepforge
--
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133912:0|t[Mérou de Sombrivage]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << !Rogue !Warrior !Warlock
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .fly Menethil >> Volez au Port de Menethil
    .target Gryth Thurden
step << Rogue/Warrior/Warlock
    #completewith EnterSW
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu
    .target Monty
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
step << Rogue/Warrior/Warlock
    .use 17117 >>Utilisez le [Pipeau du dératiseur] sur les |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .timer 11,Chasse au rat dans les profondeurs RP
    .accept 6662 >> Acceptez la quête Mon frère, Nipsy
step << Rogue/Warrior/Warlock
    #completewith next
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
    >>Montez en niveau vos [Premiers soins] si nécessaire en attendant pour le Tram
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nipsy|r lorsque vous sortez du Tram
    >>|cRXP_FRIENDLY_Nipsy|r est sur la plateforme au centre
    .turnin 6662 >> Rendez la quête Mon frère, Nipsy
    .target Nipsy
step << Rogue/Warrior/Warlock
    #label EnterSW
    .zone Stormwind City >> Entrez dans Stormwind
step << Warlock
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
step << Warrior
    #optional
    #sticky
    .abandon 1678 >> Abandonnez Vejrek. Vous allez compléter la quête pour la Posture Défensive dans Stormwind
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .trainer >> Apprenez vos sorts de classe
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Ilsa Corbin
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
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
    .target Harry Burlguard
step << Rogue/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior
    .target Woo Ping
    .money <0.1000 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 16,851 >> Équipez le [Coutelas] dans votre main droite
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2218 >> Équipez la [|cRXP_FRIENDLY_Craftsman's Dagger|r] dans votre main gauche
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez une|r [Masse géante] |cRXP_BUY_au marchand|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez une|r [Masse géante] |cRXP_BUY_au marchand|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
    #optional
    +Équipez la [Masse géante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133912:0|t[Mérou de Sombrivage]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans le Loch Modan et à Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    >>|T133912:0|t[Mérou de Sombrivage]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans le Loch Modan et à Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
    #completewith FlyMene
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step << Rogue/Warrior
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Rogue/Warrior
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r << !Rogue
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Rogue/Warrior
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
step << Rogue/Warrior
    #label FlyMene
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Menethil >> Volez au Port de Menethil
    .target Thorgrum Borrelson
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (A)
<< Alliance Warlock
#name 11-14 Forêt d'Elwynn/Loch Modan
#next 14-20 Île de Brume-sang
#subgroup RestedXP Alliance 1-20
#defaultfor Gnome Warlock

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Apprenez la compétence Bâtons
    .train 201 >>Achetez la compétence pour porter des épées à une main
    .target Woo Ping
    .money <0.3040
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Apprenez la compétence Bâtons
    .target Woo Ping
    .money <0.2090
step
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 1120 >> Apprenez [Drain d'âme]
    .train 6201 >> Apprenez [Création de Pierre de soins (mineure)]
    .train 696 >> Apprenez [Peau de démon (Rang 2)]
    .train 707 >> Apprenez [Immolation (Rang 2)]
    .target Ursula Deline
step
    #completewith GoldshireQuests
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r en utilisant [Connexion] et en vous tenant sur le bûcher près de vous
    .zoneskip Stormwind City,1
step
    #completewith GoldshireQuests
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Voyagez vers Goldshire
step
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
    .target William Pestle
step
#xprate <1.5
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
    .target Remy "Two Times"
step
#xprate >1.49
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >> Acceptez la quête Péril en la rivière
    .target Remy "Two Times"
step
    #optional
    #sticky
    .abandon 109 >> Abandonnez Allez voir Gryan Stoutmantle
step
#xprate <1.5
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Certains mobs peuvent être gris pendant cette quête. Faites-la quand même car vous aurez besoin de cette quête pour en débloquer les suites
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
#xprate <1.5
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>Entrez et explorez la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
#xprate <1.5
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Certains mobs peuvent être gris pendant cette quête. Faites-la quand même car vous aurez besoin de cette quête pour en débloquer les suites
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >> Acceptez la quête Princesse doit mourir !
	.goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
step
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto Elwynn Forest,24.548,74.672
step
    .isOnQuest 176
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
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Hogger|r en boucle et utilisez vos DoTs pour le tuer|r
    >>Vous pouvez le ramener (Kite) à la Tour de Garde, faites bien en sorte de lui infliger au moins 51% de dégâts
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #optional
    .use 1307 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gold Pickup Schedule|r] pour commencer la quête|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acceptez la quête Le collecteur
    .itemcount 1307,1
step
    #completewith HoggerTurnin
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibrée] en récompense de Hogger
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .turnin 123 >> Rendez la quête Le collecteur
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate <1.5
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibrée] en récompense de Hogger
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .target Marshal Dughan
step
#xprate >1.49
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibrée] en récompense de Hogger
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .turnin 123 >> Rendez la quête Le collecteur
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate >1.49
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    >>Choisissez le [Bâton de combat équilibrée] en récompense de Hogger
    .turnin 176 >> Rendez la quête On recherche : "Lardeur"
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .target Marshal Dughan
step
#xprate <1.5
    #optional
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 147 >> Acceptez la quête Chasse à l'homme
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez pas le [Sac de billes] que vous recevez en récompenser de quête. C'est un objet incroyablement puissant, même au niveau 70
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .target Remy "Two Times"
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
    .target William Pestle
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Descendez les escaliers dans l'auberge
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Apprenez [Captation de vie]
    .train 705 >>Apprenez [Trait de l'ombre (Rang 3)]
    .target Maximillian Crowe
    .xp <12,1
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    >>|cRXP_BUY_Achetez jusqu'à 10|r [Lait glacé] |cRXP_BUY_ au marchand si vous pouvez vous le permettre|r
    .collect 1179,10
    .target Innkeeper Farley
    .subzoneskip 87,1
step
#xprate <1.5
    #optional
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> Entrez dans la mine de Jasperlode
step
#xprate <1.5
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Suivez le chemin au milieu pour explorer la mine de Jasperlode
    .complete 76,1 --Scout through the Jasperlode Mine
step
#xprate <1.5
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Quittez la mine de Jasperlode
    .subzoneskip 54,1
step
#xprate <1.5
    #optional
    #completewith Find
    +|cRXP_WARN_Ramenez (Kite) un |cRXP_ENEMY_Young Forest Bear|r jusqu'au|r |cRXP_FRIENDLY_Guard Thomas|r
    >>|cRXP_WARN_Essayez de parler au |cRXP_FRIENDLY_Guard Thomas|r avant que le |cRXP_ENEMY_Young Forest Bear|r ne meurt par les |cRXP_FRIENDLY_Stormwind Guards|r pour obtenir le crédit pour la quête|r
    >>Faites en sorte de lui infliger au moins 51%+ dégâts pour qu'il compte pour la quête
    .mob Young Forest Bear
step
#xprate <1.5
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
    .target Guard Thomas
step
#xprate >1.49
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .target Guard Thomas
step
#xprate <1.5
    #completewith AcceptBundle
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    .goto Elwynn Forest,72.656,60.334
    >>Cliquez sur |cRXP_PICK_A half-eaten body|r sur le sol
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
#xprate <1.5
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Rallic Finn
    .subzoneskip 88,1
step
#xprate <1.5
    #completewith Prowlers
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol, à la base des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Murloc Foragers|r vont lancer|r [Boire une potion mineure] qui les soignera de 61-68 points de vie
    >>Engagez les 2  |cRXP_ENEMY_Murlocs|r devant les huttes, sortez et maintenez [Peur] sur l'un d'entre eux en boucle, en essayant de maintenir vos DoTs sur les deux << Warlock
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
step
#xprate <1.5
    #completewith BundleOT
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol, à la base des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acceptez la quête Articles rouges en lin
    .target Sara Timberlain
step
#xprate <1.5
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
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
step
#xprate <1.5
    #completewith PrincessCollar
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_ Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
#xprate <1.5
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>Tuez |cRXP_ENEMY_Morgan the Collector|r. Dépouillez-le pour son|cRXP_LOOT_The Collector's Ring|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #label PrincessCollar
    .goto Elwynn Forest,69.3,79.0
    >>Tuez |cRXP_ENEMY_Princess|r. Dépouillez-la pour son |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesse|r |cRXP_WARN_ramènera avec elle ses deux|r |cRXP_ENEMY_Entourage porcin|r
    >>|cRXP_ENEMY_Princess|r utilisera aussi [Assaut fulgurant] qui inflige de lourd dégâts
    .complete 88,1
    .mob Princess
step
#xprate <1.5
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
    .isOnQuest 83
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #sticky
    .abandon 109 >> Abadonnez Allez voir Gryan Stoutmantle. Vous ne rendrez pas cette quête
step
    #optional
    #sticky
    .abandon 184 >> Abandonnez Titre de propriété de Furlbrow. Vous ne rendrez pas cette quête
step
    #optional
    #label SoulShards
    #completewith EncroachingGnolls
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .disablecheckbox
    >>Faites en sorte d'avoir au moins 2 [Éclats d'âme] avant de vous rendre aux Carmines
    .collect 6265,2
step
    #completewith EncroachingGnolls
    #requires SoulShards
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    >>Faites attention aux créatures de haut niveau sur la route
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
step
#xprate <1.5
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>Choisissez en récompense de quête les [Roquette explosive]. Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133912:0|t[Mérou de Sombrivage]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans le Loch Modan et à Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    >>|T133912:0|t[Mérou de Sombrivage]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans le Loch Modan et à Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Warlock
    #completewith SurenaCaledon
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 755 >>Apprenez [Captation de vie]
    .train 705 >>Apprenez [Trait de l'ombre (Rang 3)]
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label SurenaCaledon
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
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
    #completewith next
    +Commencez à lancer [Connexion] |cRXP_WARN_sur votre route retour pour |cRXP_FRIENDLY_Gakin the Darkbinder|r car vous allez mourir volontairement bientôt|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Rendez la quête Le lien
step
    #completewith GoldshireTurnins
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r en utilisant [Connexion] et en vous tenant sur le bûcher près de vous
    .zoneskip Stormwind City,1
step
    #completewith GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Voyagez vers Goldshire
step << Warlock
#xprate <1.5
    #optional
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >> Rendez la quête Chasse à l'homme
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
step << Warlock
#xprate <1.5
    #label GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Descendez les escaliers dans l'auberge
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Apprenez [Captation de vie]
    .train 705 >>Apprenez [Trait de l'ombre (Rang 3)]
    .target Maximillian Crowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Rendez la quête Princesse doit mourir !
    .goto Elwynn Forest,34.660,84.483
step
    #optional
    #sticky
    .abandon 59 >> Abandonnez Les armures de cuir et d'étoffe. Vous ne complèterez pas cette quête
step
    #completewith FlyIF
    .hs >> Utilisez votre Pierre de foyer pour revenir au Loch Modan
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .isQuestComplete 418
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    #completewith ESSM
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<1,1 -- shows if cooking is >1
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith ESSM
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
step
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_Les |cRXP_PICK_Miners' League Crates|r peuvent se trouver tout au long de la Mine|r
    .complete 307,1 -- Miners' Gear (4)
step
    #optional
    #completewith FilthyMountaineer
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique
    .target Mountaineer Stormpike
step
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    #label RatCatching
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
step
    #optional
    #requires RatCatching
step
    .goto Loch Modan,26.67,56.94
    >>Tuez les|cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stonesplinter Scouts|r lancent|r [Tirer] (Coup à distance: Inflige 14-20 dégâts)
    >>Il s'agit d'une zone d'hyperspawn. Vous n'aurez pas besoin de bouger d'ici
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
#xprate <1.5
    .goto Loch Modan,26.67,56.94
    .xp 14-1800 >>Gagnez en expérience jusqu'à ce qu'il ne vous manque que 1800xp pour le niveau 14 (9200/11000)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 14-2700 >>Grindez jusqu'à être à 2700xp du niveau 14 (8300/11000)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Montez le chemin de terre et ensuite descendez dans le bunker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #completewith FlyIF
    .goto Loch Modan,26.67,56.94
    +Tuez des créatures jusqu'à ce que vous ayez 45s à vendre au marchand, puis passez cette étape
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .money >0.4500
step
    .goto Loch Modan,26.67,56.94
    .xp 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Volez à Ironforge
    .target Thorgrum Borrelson
step << Warlock
#ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez une|r [Baguette magique supérieure] |cRXP_BUY_si elle coûte moins de 33s 40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7900
--Drain Life r1 - 9s
--Corruption r2 - 9s
--Grimoire of Consume Shadows -- 15s
--Grimoire of Sacrifice -- 12s
--burning wand 33s 40c
step << Warlock
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harick Boulderdrum|r en bas des escaliers
    >>|cRXP_BUY_Achetez une|r [Baguette de fonte] |cRXP_BUY_à Harick|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7900
step << Warlock
    #optional
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .train 6222 >>Apprenez [Corruption (Rang 2)]
    .train 689 >>Apprenez [Drain de vie]
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Achetez un|r [Grimoire de Consumer l'ombre (Rang 1)] |cRXP_BUY_et un|r [Grimoire de Sacrifice (Rang 1)] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Jubahl Corpseseeker
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .fly Menethil >> Volez au Port de Menethil
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r à l'étage inférieur de la caserne
    .vendor 1448 >> Achetez un [Tube en bronze] |cRXP_BUY_à Neal (si il en a en stock)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r à l'intérieur
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Voyagez vers les quais pour le bateau se rendant à Auberdine
    .zoneskip Darkshore
step
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto 1437,4.370,56.762
    >>Montez votre niveau de compétence en [Premiers soins] pendant que vous attendez le bateau pour Sombrivage
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #completewith BuzzBox1
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    >>Achetez-lui jusqu'à 20 [Lutjan à longue mâchoire]
    .collect 4592,15 --Longjaw Mud Snapper (40)
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >> Montez les escaliers pour y trouver |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizbang Cranktoggle|r à l'étage
    .accept 983 >> Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Acceptez Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acceptez How Big a Threat?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Ouvrez  |cRXP_PICK_La créature marine échouée|r. Dépouillez-la pour l' |cRXP_LOOT_Os de créature marine|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>Utilisez l' [Espoir de Tharnariun] |cRXP_WARN_sur un |cRXP_ENEMY_Rabid Thistle Bear|r. Il peut être utilisé à n'importe quelle distance tant que vous l'avez en cible|r
    >>==N'UTILISEZ PAS L'OBJET DE QUÊTE SI IL N'Y A PAS D'OURS À PROXIMITÉ==
    >>Vous pouvez gaspiller le piège, ce qui rendra la quête impossible à compléter! Si cela se produit, vous devez retourner au donneur de quête et lui demander un autre piège
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Courrez vers le bord du Camp Furbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Rendez la quête Terres malades
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .target Terenthis
step
    #optional
    #sticky
    .abandon 1001 >> Abandonnez Bigobox 411. Vous ne terminerez pas cette quête
step
    #optional
    #sticky
    .abandon 4681 >> Abandonnez Échouage. Vous ne terminerez pas cette quête
step
    #optional
    .goto Darkshore,30.749,40.995
    >>Montez le niveau de compétence de vos [Premiers soins] pendant que vous attendez le bateau pour l'Île de Brume-Azur
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guide TBC (A)
<< Alliance Hunter
#name 6-10 Dun Morogh (Chasseur)
#next 12-14 Sombrivage
#subgroup RestedXP Alliance 1-20
#defaultfor Dwarf Hunter

step
    #optional
    #completewith SenirEnd
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>Gardez tous les |cRXP_LOOT_[Chunks of Boar Meat]|r que vous récupérez pour Ravitailler le Crache-vapeur et ensuite pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de [Cuisine] de 10 pour une quête à Auberdine plus tard
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #completewith next
    >>Faites en sorte que la zone dans laquelle vous êtes ne soit PAS la Passe des Frigères
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 131
step
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >> Voyagez jusqu'à Kharanos
    .mob Crag Boar
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Rendez la quête Les observations de Senir
    .target Senir Whitebeard
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r.
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Rendez la quête Des provisions pour Tannok
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
    .target Tharek Blackstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r et |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Ne tuez pas de |cRXP_ENEMY_Young Black Bears|r sur la route|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Acceptez la quête L'antre Gris
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill|r et |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << !Paladin !Warrior !Rogue
    #loop
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
step
    #completewith Level8
    >>Tuez les |cRXP_ENEMY_Crag Boars|r aet les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #loop
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
    .xp 5+2125 >> Monter votre expérience jusqu'à 2125+/2800xp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .train 3044 >>Apprenez [Tir des Arcanes]
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>Ouvrez les |cRXP_PICK_Ammo Crate|r. Ramassez les |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Achetez et équipez un|r [Tromblon orné]|cRXP_BUY_. passez cette étape si vous ne pouvez pas vous le permettre|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +Équipez le [Tromblon orné]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Tuez les |cRXP_ENEMY_Wendigos|r et les |cRXP_ENEMY_Young Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
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
    .xp 7
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r et |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 318 >> Rendez la quête L'éternol
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Acceptez la quête Bières rivales
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #completewith Level8
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
    >>Tuez les |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, et les |cRXP_ENEMY_Snow Leopards|r
    >>Passez cette étape une fois que vous aurez atteint le palier d'expérience. Vous la complèterez plus tard
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
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
    .xp 7+3020 >>Monter votre expérience jusqu'à 3020+/4500xp
    .isQuestAvailable 384
step
    #optional
    #label Level8
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
    .xp 7+3645 >>Monter votre expérience jusqu'à 3645+/4500xp
    .isQuestTurnedIn 384
step
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
    >>Tuez |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    >>Tuez les|cRXP_ENEMY_Ice Claw Bears|r et les |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Priorisez les |cRXP_ENEMY_Boars|r pour leur|r |cRXP_LOOT_Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .mob +Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .disablecheckbox
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .disablecheckbox
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .disablecheckbox
    .mob +Snow Leopard
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>Faites le Dun Morogh -> Wetlands deathskip. Suivez la flèche méticuleusement
    >>Ne sautez PAS encore du haut de la montagne
    .zone Wetlands >>Escaladez la montagne, puis descendez les bords irréguliers jusqu'à ce que votre zone change pour les Paluns
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>Sautez de la montagne vers le nord ou le nord-ouest
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r de la Baie de Baradin
    .isQuestAvailable 983
    .target Gardien des âmes
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nagez jusqu'au rivage vers le Port de Menethil
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102,1
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez-lui une|r [Bière au malt Rhapsody |cRXP_BUY_et une|r [Thunder Ale] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez-lui une|r [Thunder Ale] |cRXP_BUY_|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
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
step << Hunter
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kreg Bilmn|r
    >>Achetez 5 stack de [Balle légère]
    .collect 2516,800 --Light Shot
    .target Kreg Bilmn
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Rendez la quête L'antre Gris
    .target Pilot Stonegear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .target Grif Wildheart
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r et les |cRXP_ENEMY_Snow Leopards|r
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
    .goto Dun Morogh,61.36,47.07,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>CLIQUEZ ICI si vous avez du mal << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>|cRXP_WARN_Regardez bien la vidéo avant de tenter de tuer|cRXP_ENEMY_Vagash|r. Il peut être tuer en solo par n'importe quelle classe|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> Cliquez ici pour un exemple vidéo << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r et les |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith QuarryStart
    .goto Dun Morogh,68.379,54.492,60 >> Voyagez jusqu'à la Carrière de Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
    .money <0.0100
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Front-de-Pierre|r
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Skullthumpers|r à l'intérieur ou à l'extérieur de la mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Contremaître Front-de-Pierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #optional
    .isQuestComplete 433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 433 >> Rendez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    #completewith next
    >>Tuez |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r et les |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Voyagez vers |cRXP_FRIENDLY_Pilot Hammerfoot|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step
    .goto Dun Morogh,78.97,37.14
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour son |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Rendez la quête La revanche du pilote
    .target Pilot Hammerfoot
step
    #completewith ShimmerweedCollect
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Acceptez Opération Recombobulation
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Montez en haut de la rampe pour la crête Scintillante
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Tuez les |cRXP_ENEMY_Frostmane Headhunters|r
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
    >>Tuez les|cRXP_ENEMY_Frostmane Seers|r. Dépouillez-les pour leur |cRXP_LOOT_Shimmerweed|r
    >>Ouvrez les |cRXP_PICK_Shimmerweed Baskets|r sur le sol. Récupérez les |cRXP_LOOT_Shimmerweed|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
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
    >>Tuez |cRXP_ENEMY_Elder Crag Boars|r, |cRXP_ENEMY_Ice Claw Bears|r et les |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Rendez la quête Une faveur pour un tonneau d'éternol
    .accept 320 >> Acceptez la quête Retour vers Claquesoufflet
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Rendez la quête La bière brune parfaite
    --.accept 413 >> Accept Shimmer Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Rendez la quête Retour chez Marleth
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
    >>Tuez les |cRXP_ENEMY_Leper Gnomes|r. Dépouillez-les pour leur |cRXP_LOOT_Gears|r et leur |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label xp10
    .xp 9+4175 >>Monter votre expérience jusqu'à 4175+/6500xp
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
    >>Tuez les|cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Montez sur le côté de l'entrée de la Grotte. Descendez dans le Repaire des Frostmane
    .isOnQuest 287
step
    .goto Dun Morogh,22.86,52.16
    >>Descendez dans la petite salle cul-de-sac de la grotte
    >>Ne vous préoccupez pas de votre mort parce que vous vous apprêtez à mourir et ressusciter à Kharanos
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #requires xp10
step
    #optional
    #requires Headhunters
step
    #completewith AcceptTaming
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r à l'intérieur
    .turnin 412 >> Rendez Opération Recombobulation
    .target Razzle Sprysprocket
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet
    .target Pilot Bellowfiz
step
    .xp 10
step << Hunter
    #label AcceptTaming
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .accept 6064 >>Acceptez la quête Dompter la bête
step << Hunter
    .goto Dun Morogh,48.3,56.9
    .use 15911 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
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
    .use 15913 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
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
    .use 15908 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6086 >>Acceptez la quête Entraîner la bête
step << Hunter
    #completewith next
    .goto Dun Morogh,49.0,44.6,30,0
    .goto Dun Morogh,45.7,42.2,30,0
    +Lancez [Apprivoiser une bête] |cRXP_WARN_sur un|cRXP_ENEMY_Ice Claw Bear|r ou un |cRXP_ENEMY_Winter Wolf|r pour le dompter sur votre route pour Ironforge|r
    >>Celui que vous choisissez n'a pas d'importance comme vous dompterez un nouveau familier bientôt à Sombrivage. Passez cette étape une fois que vous avez dompté un familier
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
	.unitscan Ice Claw Bear
    .unitscan Winter Wolf
    .subzoneskip 809 --gates of IF
    .usespell 1515
step << Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Voyagez à Ironforge
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thalgus Thunderfist|r en bas des escaliers
    >>|cRXP_BUY_Acheter un|r [Espingole de chasseur] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2511,1
    .money <0.1324
    .target Thalgus Tonnepoing
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +Équipez l'[Espingole de chasseur]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .trainer >> Apprenez les compétences de votre familier
    .turnin 6086 >> Rendez la quête Entraîner la bête
    .target Belia Thundergranite
step
    #completewith next
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
step
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
step
    .zone Ironforge >> Entrez dans Ironforge
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133912:0|t[Mérou de Sombrivage]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .turnin 291 >> Rendez la quête Les rapports
step
    #label FlyMenethil
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Menethil >> Volez au Port de Menethil
    .target Gryth Thurden
]])
