if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Vallée des Frigères
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step << !Warlock !Warrior !Shaman
    #softcore << Warlock
    #optional
    #completewith WolfMeat
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Acceptez la quête Tailleur chez les nains
    .target Sten Stoutarm
step << Warrior/Warlock/Shaman
    #season 0,1
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
step << Warrior/Warlock/Shaman
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Warrior/Warlock/Shaman
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grundel Harkin|r à l'intérieur
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
    .train 8017,1 << Shaman
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r à l'intérieur
    .train 6673 >>Apprenez [Cri de guerre]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'intérieur
    .train 348 >> Apprenez [Immolation]
    .accept 1599 >> Acceptez la quête Les débuts
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teo Hammerstorm|r à l'intérieur
    .train 8017 >> Apprenez [Arme Croque-roc]
    .target Teo Hammerstorm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Utilisez votre Pierre de foyer pour revenir à la Vallée des Frigères
    .subzoneskip 77,1
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire

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
    >>Tuez les |cRXP_ENEMY_Jeunes loups décharnés|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de loup coriace|r
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
    .xp 2 >> Montez jusqu'au niveau 2
    .mob Ragged Young Wolf
step << Priest/Mage/Warlock/Shaman
    #season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r << !Shaman
    >>|cRXP_BUY_Achetez 10|r [Refreshing Spring Water] |cRXP_BUY_à Brother Danil|r << Shaman
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r
    .collect 159,15 << !Shaman --Collect Refreshing Spring Water (x15)
    .collect 159,10 << Shaman --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Shaman
    #completewith next << !Hunter
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>|cRXP_BUY_Achetez 600|r [Balle légère] |cRXP_BUY_à Adlin|r << Hunter
    .vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto 1426/0,328.18,-6214.85
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
    .accept 98574 >>Acceptez la quête Note sanctifiée << Gnome Priest
    .accept 98581 >>Acceptez la quête La rune archaïque << Dwarf Shaman
    .target Sten Stoutarm

step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto 1426/0,479.72,-6498.17,20 >> Entrez dans la Grotte des Frostmane
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >> Voyagez vers les |cRXP_ENEMY_Frostmane Novices|r à l'intérieur
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
    >>Tuez les |cRXP_ENEMY_Frostmane Novices|r inside. Dépouillez-les pour leur |cRXP_LOOT_Feather Charms|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 0,1
    #hardcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .hs >> Utilisez votre Pierre de foyer pour revenir à la Vallée des Frigères
    .subzoneskip 77,1
--XX Era hardcore warlocks
step << Warlock
    #season 0,1
    #hardcore
    #optional
    #requires BeginningsHS
    #completewith BeginningsEnd
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
--XX HC Warlocks drop HS (No hearthstone items remain)
step << Warlock
    #season 0,1
    #softcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << Warlock
    #season 0,1
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar << Warlock
step << Warlock
    #season 0,1
    #label BeginningsEnd
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .turnin 1599 >> Rendez la quête Les débuts
    .turnin -3115 >> Rendez la quête Note de service contaminée
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal

step
#season 0,1
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 183 >> Acceptez la quête Chasseur de sangliers
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
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
    >>Tuez les |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
#season 0,1
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Rendez la quête Chasseur de sangliers
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
    .xp 3+1130 >> Monter votre expérience jusqu'à 1130+/1400xp
step
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
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Montez jusqu'au niveau 4
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter/Shaman
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>Vous avez 5 minutes pour retourner à Anvilmar avant que le [Thé brûlant de Durnan] n'expire
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r à l'intérieur
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto 1426/0,365.21,-6091.86
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Rendez la quête Rune gravée << Dwarf
    .train 1978 >>Apprenez [Morsure de serpent]
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .turnin 3115 >> Rendez la quête Note de service contaminée
    .train 172 >>Apprenez [Corruption]
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 98581 >>Rendez la quête La rune archaïque
    .accept 94373 >>Acceptez la quête L'appel de la terre
    .train 8042 >> Apprenez [Horion de terre]
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Acceptez la quête Grund et Gozwin
step << Paladin
    #season 0,1
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r à l'intérieur
    .turnin 3107 >> Rendez la quête Rune consacrée << Dwarf
    .train 19740 >> Apprenez [Bénédiction de puissance]
    .train 20271 >> Apprenez [Jugement]
    .target Bromos Grummner
step << Warlock
#season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Paladin/Warlock/Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Voyagez jusqu'aux collines au nord de la Vallée des Frigères
step << Paladin/Warlock/Hunter
    >>Tuez le |cRXP_ENEMY_Léopard des neiges rôdeur|r
    >>Ramassez le |cRXP_PICK_Journal de mécano de Gozwin|r au sol
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
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
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r << !Shaman
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Frostmane|r. Dépouillez-les pour leur |cRXP_LOOT_Pendentifs d'ours griffeglace|r << Shaman
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .complete 94373,1 << Shaman--Iceclaw Bear Pendant (2)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Rendez la quête La caverne des trolls
    .accept 218 >> Acceptez la quête Le journal volé
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
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
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #optional
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Quittez la Grotte des Frostmane
    .subzoneskip 132
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    >>Si vous ratez la quête, passez cette étape
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter !Shaman
    #optional
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandonnez Une livraison de thé brûlant. Vous la reprendrez plus tard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r et |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .goto 1426/0,567.14,-6363.06
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
    .isQuestAvailable 317

step << Mage
    #season 0,1
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .train 116 >> Apprenez [Eclair de givre]
    .target Marryk Nurribit
step << Rogue
    #season 0,1
    .goto 1426/0,404.91,-6093.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .train 1784 >>Apprenez [Camouflage]
    .target Solm Hargrin
step << Priest
    #season 0,1
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >> Rendez la quête Rune bénie << Dwarf
    .turnin 98574 >> Rendez la quête Note sanctifiée << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Branstock Khalder
step << Warrior
    #season 0,1
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Thran Khorman
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >> Retournez auprès de |cRXP_FRIENDLY_Teo Hammerstorm|r à Anvilmar
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94373 >>Rendez la quête L'appel de la terre
    .accept 94374 >>Acceptez la quête L'appel de la terre
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Acceptez la quête Grund et Gozwin
step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Voyagez jusqu'aux collines au nord de la Vallée des Frigères
step << !Paladin !Warlock !Hunter
    >>Tuez le |cRXP_ENEMY_Léopard des neiges rôdeur|r
    >>Ramassez le |cRXP_PICK_Journal de mécano de Gozwin|r au sol
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Shaman
    .isOnQuest 94374
    .goto 1426/0,582.100,-5907.800
    .cast 8202 >> |cRXP_WARN_Utilisez le|r |T134743:0|t[Sapta de terre] |cRXP_WARN_à la |cRXP_PICK_Pierre des esprits|r pour invoquer la|r |cRXP_FRIENDLY_Manifestation de terre mineure|r
    .use 6635
step << Shaman
    .goto 1426/0,576.500,-5908.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Manifestation de terre mineure::5891|r
    .target Minor Manifestation of Earth::5891
    .turnin 94374 >>Rendez la quête L'appel de la terre
    .accept 94375 >>Acceptez la quête L'appel de la terre
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >> Retournez auprès de |cRXP_FRIENDLY_Teo Hammerstorm|r à Anvilmar
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94375 >>Rendez la quête L'appel de la terre
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Rendez la quête Rapporter la Tasse
    .target Nori Pridedrift
step << Dwarf Priest/Gnome Priest
    #optional
    .xp 4+1690 >> Montez votre expérience jusqu'à 1690+/2100xp
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .turnin 97277 >>Rendez la quête Grund et Gozwin
step << Dwarf Priest/Gnome Priest
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >> Acceptez la quête Au service de la Lumière
    .target Branstock Khalder
step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Montagnard Thalos::1965|r
    .target Mountaineer Thalos::1965
    .turnin 282 >>Rendez la quête Les observations de Senir
    .accept 420 >>Acceptez la quête Les observations de Senir
    .accept 96628 >>Acceptez la quête L'aventurier
step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hands Springsprocket::6782|r
    .target Hands Springsprocket::6782
    .accept 2160 >>Acceptez la quête Des provisions pour Tannok
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Traversez la Passe des Frigères
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Nain/Gnome);11-12 Quête Marcheur du Vide;12-14 Loch Modan (Nain/Gnome);11-13 Loch Modan (Chasseur)
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    >>Gardez tous les |cRXP_LOOT_[Chunks of Boar Meat]|r que vous récupérez pour Ravitailler le Crache-vapeur et ensuite pour monter votre niveau de [Cuisine] plus tard
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
    .goto 1426/0,-499.17,-5644.37
    .xp 5+1325 >> Voyagez à Kharanos. Montez votre expérience jusqu'à 1325+/2800xp en tuant des |cRXP_ENEMY_Sangliers des rochers|r sur la route << Priest
    .xp 5+1595 >> Voyagez à Kharanos. Montez votre expérience jusqu'à 1595+/2800xp en tuant des |cRXP_ENEMY_Sangliers des rochers|r sur la route << !Priest
    .subzoneskip 131
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
--xx 410 the adventurer
--xx 410 the great outdoors
step
    #hardcore
    #completewith next
    .goto 1426/0,-499.17,-5644.37
    .subzone 131 >> Voyagez jusqu'à Kharanos
    .mob Crag Boar
step
    #softcore
    #completewith next
    >>Faites en sorte que la zone dans laquelle vous êtes ne soit PAS la Passe des Frigères
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eric Brillemartel::265813|r
    .target Eric Brighthammer::265813
    .turnin 96628 >>Rendez la quête L'aventurier
    .accept 96608 >>Acceptez la quête Les grands espaces sauvages
step
    .goto 1426/0,-498.400,-5648.400
    >>|cRXP_WARN_Tapez "/assis" dans le chat et attendez une minute autour du feu de camp|r
    .complete 96608,1 -- /sit emote in chat 1/1
    .complete 96608,2 -- Gain boosted rest buff 1/1
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eric Brillemartel::265813|r
    .target Eric Brighthammer::265813
    .turnin 96608 >>Rendez la quête Les grands espaces sauvages
    .accept 96629 >>Acceptez la quête Introduction au camping : la cuisine
step
    #label SenirEnd
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 420 >>Rendez la quête Les observations de Senir
    .accept 98322 >>Acceptez la quête Sécuriser la montagne
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Apprenez vos sorts de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto 1426/0,-526.11,-5639.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_ si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r.
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step
    .goto 1426/0,-523.35,-5590.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Rendez la quête Des provisions pour Tannok << Warrior/Rogue
    .turnin 2160,2 >> Rendez la quête Des provisions pour Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step
    .goto 1426/0,-529.600,-5590.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol::1226|r 
    .target Maxan Anvol::1226
    .accept 5625 >> Acceptez la quête Vêtements de la Lumière << Priest
    .accept 99158 >>Acceptez la quête Aube sur les montagnes
step << Priest
    .goto 1426/0,-453.81,-5668.73
    >>Lancez [Soins inférieurs] (Rang 2) et ensuite [Mot de pouvoir : Robustesse] |cRXP_WARN_sur le |cRXP_FRIENDLY_Mountaineer Dolf|r à l'extérieur|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .turnin 5625 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Magis Sparkmantle
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ingrid Dunwald|r dans le bâtiment à l'étage
    .trainer >> Apprenez vos sorts de classe
    .target Ingrid Dunwald
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas 1 pièce d'argent, ou si vous préférez le faire plus tard|r
    .target Gremlock Pilsnor::1699
    .train 2550 >> Apprenez [Cuisine]
    .turnin 96629 >>Rendez la quête Introduction au camping : la cuisine
    .money <0.0100
step
    #optional
    .isQuestComplete 96629
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    .target Gremlock Pilsnor::1699
    .turnin 96629 >>Rendez la quête Introduction au camping : la cuisine
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Hogral Bakkan
step << Rogue
    .goto 1426/0,-521.97,-5597.65
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
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Granis Swiftaxe
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .vendor >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto 1426/0,-464.45,-5573.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Acceptez la quête Des outils pour Grillacier
    .target Tharek Blackstone
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
    .goto 1426/0,-428.45,-5590.65--c:Dun Morogh,45.290,52.190
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
    #requires DeleteOldDaggers << Rogue
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tognus Flintfire|r
    >>Ceci vous permettra de créer des [Pierre à aiguiser brute] qui vont augmenter vos dégâts des armes de 2 << Warrior/Rogue
    >>Ceci pour permettra de créer des [Caillou brut] qui vont augmenter vos dégâts des armes de 2 << Paladin
    >>Si vous ne voulez pas le faire, vous pouvez passer cette étape
    .train 2018 >> Apprenez [Forge]
    .target Tognus Flintfire
step << Shaman
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez une|r |T135145:0|t[Canne de marche]
    .target Grawn Thromwyn
    .money <0.0479
    .collect 2495,1 --Walking Stick (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #completewith next
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step
    .goto 1426/0,-431.000,-5582.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tognus Flintfire::1241|r 
    .target Tognus Flintfire::1241
    .accept 98321 >>Acceptez la quête Cargaison de Flammesilex
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
    .goto 1426/0,-632.15,-5466.540
    .target +Pilot Bellowfiz
    .accept 313 >> Acceptez la quête L'antre Gris
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill|r et |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Rendez la quête Des outils pour Grillacier
    .goto 1426/0,-682.23,-5488.94
    .target +Beldin Steelgrill
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Achetez une|r |T134708:0|t[Pioche de mineur]>>|cRXP_BUY_. Si vous ne pouvez pas vous la permettre, passez cette étape|r
    .collect 2901,1 --Mining Pick (1)
    .goto 1426/0,-664.55,-5499.710
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto 1426/0,-660.91,-5528.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r en bas des escaliers à l'intérieur
    >>Si vous ne pouvez pas vous le permettre, passez cette étape
    .train 2575 >>Apprenez [Minage]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith RumbleshotAmmo
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining
step
    #completewith RumbleshotAmmo
    >>Tuez |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Thick Bear Fur|r
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Montagnarde Gretchen::271546|r 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Rendez la quête Sécuriser la montagne
    .accept 98319 >>Acceptez la quête Sécuriser la montagne
step
    #label RumbleshotAmmo
    .goto 1426/0,-371.400,-5746.900
    >>Ouvrez les |cRXP_PICK_Ammo Crate|r. Ramassez les |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    .goto 1426/0,-371.400,-5746.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Montagnarde Gretchen::271546|r 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Rendez la quête Sécuriser la montagne
    .accept 98319 >>Acceptez la quête Sécuriser la montagne
step
    #completewith MountaineerCornelius
    >>Tuez tous les |cRXP_ENEMY_Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Peau de wendigo|r
    >>Ramassez les |cRXP_PICK_Cargaisons de Flammesilex|r au sol à l'intérieur de l'antre Gris
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    #completewith MountaineerCornelius
    .goto 1426/0,-275.000,-5623.200,20 >> Entrez dans l'antre Gris
step
    #label MountaineerCornelius
    .goto 1426/0,-221.800,-5516.300,20,0
    .goto 1426/0,-312.500,-5506.300
    >>Allez jusqu'au cadavre du |cRXP_FRIENDLY_Montagnard Cornelius|r dans l'antre Gris
    >>|cRXP_WARN_Soyez prudent face aux |cRXP_ENEMY_Wendigos|r de haut niveau au fond de la grotte|r
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
    >>Tuez tous les |cRXP_ENEMY_Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Peau de wendigo|r
    >>Ramassez les |cRXP_PICK_Cargaisons de Flammesilex|r au sol à l'intérieur de l'antre Gris
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 136,1
step
    >>Tuez les |cRXP_ENEMY_Jeunes ours noirs|r ou les |cRXP_ENEMY_Ours Griffeglace|r. Dépouillez-les pour leur |cRXP_LOOT_Fourrures d'ours épaisses|r
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
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
    >>Tuez les |cRXP_ENEMY_Grands sangliers des rochers|r et les |cRXP_ENEMY_Sangliers des rochers|r. |cRXP_LOOT_Côtes de sanglier des rochers|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto 1426/0,-641.900,-5471.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pilote Stonegear::1377|r
    .target Pilot Stonegear::1377
    .turnin 313 >>Rendez la quête L'antre Gris
step
    .goto 1426/0,-632.100,-5466.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pilote Bellowfiz::1378|r
    .target Pilot Bellowfiz::1378
    .turnin 317 >>Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >>Acceptez la quête L'éternol
step
    .goto 1426/0,-429.700,-5582.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .target Tognus Flintfire::1241
    .turnin 98321 >>Rendez la quête Cargaison de Flammesilex
step
    #optional
    .xp 7 >> Montez jusqu'au niveau 7
step
    .goto 1426/0,-501.500,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard::1252|r 
    .target Senir Whitebeard::1252
    .accept 287 >>Acceptez la quête Le repaire des Crins-de-givre
step
    #completewith BrewnallVillage
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Montagnarde Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98319 >>Rendez la quête Sécuriser la montagne
    .accept 98323 >>Acceptez la quête Sécuriser la montagne
step
    #optional
    #completewith AfR
    .goto 1426,40.632,62.794,40,0
    .goto 1426/0,-201.51,-6015.520,15 >>Voyagez vers |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step << Hunter
    #optional
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Achetez-lui un|r |T135611:0|t[Tromblon orné] |cRXP_BUY_|r
    >>Si vous ne pouvez pas vous le permettre, passez cette étape
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label AfR
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .target Hegnar Rumbleshot
step
    #optional
    #completewith next
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto 1426/0,99.17,-5572.99,20 >> Voyagez vers |cRXP_FRIENDLY_Tundra MacGrann|r
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto 1426/0,302.27,-5387.58
    .subzone 137 >> Voyagez jusqu'au Village de Brassetout
step << !Mage !Priest !Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Achetez jusqu'à 20|r [Ice Cold Milk] |cRXP_BUY_à Kazan|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label BrewnallVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r et |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 318 >> Rendez la quête L'éternol
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
    .goto 1426/0,315.23,-5378.42--c:Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Acceptez la quête Bières rivales
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
    >>Tuez les |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, et les |cRXP_ENEMY_Snow Leopards|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >> Rendez la quête Une faveur pour un tonneau d'éternol
    .accept 320 >> Acceptez la quête Retour vers Claquesoufflet
    .target Rejold Barleybrew
step
    #completewith Headhunters
    >>Tuez |cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Montez sur le côté de l'entrée de la Grotte. Descendez dans le Repaire des Frostmane
    .isOnQuest 287
step
    #label Headhunters
    .goto 1426/0,628.400,-5579.500,20,0
    .goto 1426/0,696.600,-5674.600,20,0
    .goto 1426/0,746.900,-5614.900,20,0
    .goto 1426/0,695.300,-5528.300,20,0
    .goto 1426/0,657.700,-5544.600
    >>|cRXP_WARN_Entrez dans la grotte du repaire des Frostmane. Restez du côté gauche en vous y engouffrant pour la découvrir|r
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
    >>Tuez |cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter

step
    #hardcore
    #completewith Distracting
    .goto 1426/0,-531.23,-5601.59
    .subzone 131 >> Retournez à Kharanos
--XX if they don't somehow meet xp gate by Kharanos then wcyd

step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 98323 >>Rendez la quête Sécuriser la montagne
    .turnin 287 >>Rendez la quête Le repaire des Crins-de-givre
step
    #optional
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez-lui une|r [Bière au malt Rhapsody |cRXP_BUY_et une|r [Thunder Ale] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez-lui une|r [Thunder Ale] |cRXP_BUY_|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto 1426/0,-551.03,-5598.40,6,0
    .goto 1426/0,-544.38,-5605.92,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jarven Thunderbrew|r en bas des escaliers
    .turnin 308 >> Rendez la quête Distraire Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-547.93,-5607.27
    >>Cliquez sur le |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Rendez la quête Bières rivales
    .accept 311 >> Acceptez la quête Retour chez Marleth
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .turnin 5625 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Magis Sparkmantle
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ingrid Dunwald|r dans le bâtiment à l'étage
    .trainer >> Apprenez vos sorts de classe
    .target Ingrid Dunwald
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Hogral Bakkan
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Granis Swiftaxe
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Apprenez vos sorts de classe
    .target Gimrizz Shadowcog
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew

--Alternative path now for Hunters to hit 10 fast for pet quest
step << Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Gavin::1253|r
    .target Father Gavin::1253
    .turnin 99158 >>Rendez la quête Aube sur les montagnes
step << Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step << Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>CLIQUEZ ICI si vous avez du mal << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .mob Vagash
step << Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step << Hunter
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
step << Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
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
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r à l'extérieur de la mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target Senator Mehr Stonehallow
    .goto 1426/0,-1580.000,-5714.700
step << Hunter
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step << Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step << Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour sa |cRXP_LOOT_Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Rendez la quête La revanche du pilote
    .target Pilot Hammerfoot
step << Hunter
    #completewith ShimmerweedCollect
    .deathskip >> Mourez de l'un des |cRXP_ENEMY_Sangliers des rochers balafrés|r à proximité et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto 1426/0,-463.66,-5474.00,10,0
    .goto 1426/0,-455.83,-5497.90
    .accept 412 >> Acceptez Opération Recombobulation
step
    .isOnQuest 315
    #completewith ShimmerweedCollect
    #optional
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Montez la pente de la montagne à la Crête Scintillante
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
    >>Tuez les |cRXP_ENEMY_Frostmane Seers|r. Dépouillez-les pour leur |cRXP_LOOT_Shimmerweed|r
    >>Ouvrez les |cRXP_PICK_Shimmerweed Baskets|r sur le sol. Récupérez les |cRXP_LOOT_Shimmerweed|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto 1426/0,-94.88,-5647.69
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto 1426/0,-94.88,-5647.69
    >>Lancez [Métamorph|cRXP_WARN_on|re] sur le |cRXP_ENEMY_Old Icebeard|r << Mage
    >>Lancez [Peur] sur le |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r et |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 315 >> Rendez la quête La bière brune parfaite
    .accept 413 >> Acceptez la quête La Brune scintillante
    .goto 1426/0,315.28,-5378.39
    .target +Rejold Barleybrew
    .turnin 311 >> Rendez la quête Retour chez Marleth
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
    >>Tuez les |cRXP_ENEMY_Leper Gnomes|r. Dépouillez-les pour leur |cRXP_LOOT_Gears|r et leur |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step << Hunter
    .xp 10-1720 >> Montez votre expérience jusqu'à ce qu'il ne vous reste que 1720xp pour le niveau 10
    .isQuestAvailable 320
step << Hunter
    #optional
    .xp 10-2040 >> Montez votre expérience jusqu'à ce qu'il ne vous reste que 2040xp pour le niveau 10
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
    .xp 8+4525 >> Montez votre expérience jusqu'à 4525+/5400xp
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
    .xp 9 >> Montez au niveau 9
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .subzoneskip 2102
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .accept 291 >>Acceptez la quête Les rapports
step
    .goto 1426/0,-632.15,-5466.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet
    .target Pilot Bellowfiz
step << Hunter
    .goto 1426/0,-463.66,-5474.00,8,0
    .goto 1426/0,-455.83,-5497.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Rendez Opération Recombobulation
step << Hunter
    #optional
    .xp 10 >> Montez jusqu'au niveau 10
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Acceptez la quête Dompter la bête
    .trainer >> Apprenez vos sorts de classe
step << Hunter
    .goto 1426/0,-576.69,-5745.30--c:Dun Morogh,48.3,56.9
    .use 15911 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6084 >>Acceptez la quête Dompter la bête
step << Hunter
    .goto 1426/0,-630.87,-5827.38--c:Dun Morogh,49.4,59.4
    .use 15913 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6085 >>Acceptez la quête Dompter la bête
step << Hunter
    .goto 1426/0,-680.12,-5837.23--c:Dun Morogh,50.4,59.7
    .use 15908 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6086 >>Acceptez la quête Entraîner la bête
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill::1376|r 
    .target Beldin Steelgrill::1376
    .accept 96408 >>Acceptez la quête Une visite à Dun Morogh
step << Warrior
    #optional
    #completewith WarriorThrown
    +Tuez des créatures jusqu'à avoir 10s30c à vendre au marchand
    .money >0.1030
step << Warrior
    #completewith WarriorThrown
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40 >> Voyagez à Ironforge--c:Ironforge,14.90,87.10
step << Warrior
    #label WarriorThrown
    .goto 1455/0,-1205.65,-5042.12--c:Ironforge,62.237,89.628
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
    +Équipez les [Couteau de lancer perçant]
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
    .goto 1426,53.47,35.02
    >>Quittez Ironforge. Retournez à Dun Morogh
    .zone Dun Morogh >> Voyagez vers Dun Morogh
    .zoneskip Ironforge,1
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 10 en [Cuisine] pour une quête à Auberdine plus tard
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Père Gavin::1253|r
    .target Father Gavin::1253
    .turnin 99158 >>Rendez la quête Aube sur les montagnes
step << !Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Montez le chemin de terre
    .isQuestAvailable 314
step << !Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Ramenez (Kite) |cRXP_ENEMY_Vagash|r jusqu'à|r |cRXP_FRIENDLY_Rudra|r en bas
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>CLIQUEZ ICI si vous avez du mal << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .mob Vagash
step << !Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step << !Hunter
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
step << !Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Rendez la quête Protection du troupeau
    .target Rudra Amberstill
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
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Tuez les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .turnin 96408 >> Rendez la quête Une visite à Dun Morogh
    .accept 96392 >> Acceptez la quête Le guet de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Parlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r pour voir sa double vie
    >>|cRXP_WARN_Vous pouvez sortir de sa Double vue dès que l'objectif se complète|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Appuyez sur Echap pour sortir de la Double vue|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    >>|cRXP_WARN_Vous pouvez sortir de sa Double vue dès que l'objectif se complète|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    >>|cRXP_WARN_Appuyez sur Echap pour sortir de la Double vue|r
    .turnin 96392 >> Rendez la quête Le guet de Farsen
    .accept 96390 >> Acceptez la quête Étouffer le mal dans l’œuf
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step
    #optional
    #completewith next
    .goto 1426/0,-1565.58,-5666.24,60 >> Voyagez jusqu'à la Carrière de Gol'Bolar
    .subzoneskip 134
step
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto 1426/0,-1576.47,-5673.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Achetez jusqu'à 10|r [Pain sorti du four] |cRXP_BUY_au marchand si nécessaire|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Achetez jusqu'à 5|r [Pain sorti du four] |cRXP_BUY_et|r [Lait frais] |cRXP_BUY_au marchand si nécessaire|r << !Warrior !Rogue !Shaman
    .vendor 1237 >> |cRXP_BUY_Achetez-lui jusqu'à 10|r |T133968:0|t[Pains sortis du four] |cRXP_BUY_et|r |T132815:0|t[Lait glacé] |cRXP_BUY_si nécessaire|r << Shaman
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r et à |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.96,-5714.73
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
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
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Rendez la quête Le serviteur public
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
    >>Tuez les |cRXP_ENEMY_Scarred Crag Boars|r et les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
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
    >>Tuez les |cRXP_ENEMY_Scarred Crag Boars|r et les |cRXP_ENEMY_Elder Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith OII
    >>Tuez les |cRXP_ENEMY_Embusqués Mâcherocs|r. Dépouillez-les pour le |T132621:0|t[|cRXP_LOOT_Baril de poudre vide|r]
    .use 268548 >> |cRXP_WARN_Utilisez le|r |T132621:0|t[|cRXP_LOOT_Baril de poudre vide|r] |cRXP_WARN_pour lancer une quête|r
    >>|cRXP_WARN_NOTE: Cet objet a très peu de chance de tomber. Passez cette étape si vous ne le trouvez pas après en avoir fini avec les|r |cRXP_ENEMY_Espions Sombrefers|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >> Acceptez la quête Poudre explosive volée
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tuez les |cRXP_ENEMY_Espions Sombrefers|r. Dépouillez-les pour la |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r]
    .use 274268 >>|cRXP_WARN_Utilisez la|r |T237385:0|t[|cRXP_LOOT_Carte sombrefer|r] |cRXP_WARN_pour lancer une quête|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acceptez la quête La carte souterraine
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Terre-voyant Farsen|r
    .turnin 96390 >> Rendez la quête Étouffer le mal dans l’œuf
    .turnin 96391 >> Rendez la quête La carte souterraine
    .accept 96393 >> Acceptez la quête Incursion dans le Vieux Forgefer
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable Thesten|r
    .turnin 95213 >> Rendez la quête Poudre explosive volée
    .accept 95214 >> Acceptez la quête Poudre explosive volée
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable Thesten|r
    .accept 95214 >> Acceptez la quête Poudre explosive volée
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
    >>Tuez les |cRXP_ENEMY_Embusqués Mâcherocs|r. Dépouillez-les pour leur |cRXP_LOOT_Poudre explosive volée|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Responsable Thesten|r
    .turnin 95214 >> Rendez la quête Poudre explosive volée
    .target Quarrymaster Thesten
step
    #completewith next
    .goto 1426/0,-2165.600,-5609.000,70,0
    .goto 1426/0,-2262.200,-5622.700,20,0
    .goto 1426/0,-2350.700,-5558.700,20 >> Voyagez vers le |cRXP_FRIENDLY_Montagnard Barleybrew|r au passage de la porte Sud
step
    .goto 1426/0,-2447.11,-5479.74
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
    .subzone 924 >> Traversez la porte sud pour le Loch Modan
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entrez dans le bunker. Montez à l'étage
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
step
    #optional
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >> Voyagez à Thelsamar
    .isOnQuest 414
step
    #completewith HonorStudents << Dwarf/Gnome
    #completewith ThelsaHS << !Dwarf !Gnome
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin 414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entrez dans l'auberge de Thelsamar
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r à l'intérieur
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .xp >14,1
--XX Skip if 14+
step << !Hunter
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r << !Rogue
    >>|cRXP_WARN_Ils sont utilisés pour fabriquer des|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_sur les bateaux pour monter le niveau de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_sans perdre de temps|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label ThelsaHS
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r à l'intérieur
    .home >> Liez votre Pierre de Foyer à Thelsamar
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >> Sortez de l'auberge de Thelsamar
step << Hunter
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenhild Sombreserre|r
    .accept 86667 >> Acceptez la quête Enneigement
    .target Grenhild Darktalon
step << Dwarf/Gnome
    #label HonorStudents
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Acceptez la quête L'honneur des étudiants
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin 414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 10 en [Cuisine] pour une quête à Auberdine plus tard
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] plus tard
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith Algaz
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>Gardez tous vos |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_pour monter votre niveau de [Cuisine] plus tard
    >>|cRXP_WARN_Ne changez pas vos plans pour cet objectif pour l'instant. Vous reviendrez au Loch Modan bientôt|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Voyagez vers le Poste d'Algaz
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Entrez dans le bunker. Montez à l'étage
step
    #label Stormpike1
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
step << !Hunter
    #completewith next
    .goto 1432/0,-2503.500,-4815.300,15,0
    .goto 1426/0,-2353.100,-4897.100,15 >> Voyagez jusqu'au |cRXP_FRIENDLY_Pilote Hammerfoot|r par le passage de la porte Nord
step << !Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Acceptez la quête Le pilote perdu
    .target Pilot Hammerfoot
step << !Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>Cliquez sur le |cRXP_PICK_Dwarven Corpse|r sur le sol
    .turnin 419 >> Rendez la quête Le pilote perdu
    .accept 417 >> Acceptez la quête La revanche du pilote
step << !Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour son |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << !Hunter
    #xprate <1.49 << Rogue
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>|cRXP_WARN_Choisissez la|r |T135641:0|t[Dague d'artisan]|cRXP_WARN_. Gardez-la pour plus tard|r << Rogue
    .turnin 417 >> Rendez la quête La revanche du pilote << !Rogue
    .turnin 417,1 >> Rendez la quête La revanche du pilote << Rogue
    .target Pilot Hammerfoot
step << !Hunter
    #completewith flyIF
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Hunter
    #completewith flyIF
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 2101 -- stoutlager inn
    .subzoneskip 144 -- thelsamar
    .target Gardien des âmes
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r à l'intérieur
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step << Dwarf/Gnome
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Rendez la quête L'honneur des étudiants
    .accept 6391 >> Acceptez la quête Voyage vers Forgefer
    .target Thorgrum Borrelson
step
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455/0,-1120.93,-4708.06,10 >>Voyagez vers |cRXP_FRIENDLY_Golnir Rochorteil|r à l'intérieur du bâtiment
step << Dwarf/Gnome
    .goto 1455/0,-1120.93,-4708.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Golnir Rochorteil|r à l'intérieur
    .turnin 6391 >> Rendez la quête Voyage vers Forgefer
    .accept 6388 >> Acceptez la quête Gryth Thurden
    .target Golnir Bouldertoe
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eldrun Brise-tempête::258098|r 
    .target Eldrun Stormbreaker::258098
    .accept 94449 >>Acceptez la quête L'appel du feu
    .trainer >> Apprenez vos sorts de classe
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto 1455/0,-1026.28,-4872.56,12 >>Voyagez vers le |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r--c:Ironforge,39.550,57.490
step
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Rendez la quête Les rapports
    .target Senator Barin Redstone
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Ne prenez PAS de trajet en vol !|r
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .accept 6392 >> Acceptez la quête Retourner vers Brock
    .target Gryth Thurden
step << Shaman
    .goto 1455/0,-1208.100,-5037.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Kelomir Main-de-fer|r
    >>|cRXP_BUY_Achetez un|r |T135154:0|t[Bâton]
    .collect 854,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Kelomir Ironhand
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith DRT
    .equip 16,854 >> Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto 1455/0,-1197.200,-5041.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Stonehand|r et à |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .trainer >> Apprenez les compétences d'armes que vous voulez avec l'argent qu'il vous reste
    .target Buliwyf Stonehand
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Apprenez les compétences Armes de jet et Masses à deux mains si vous ne l'avez pas fait auparavant
    .train 2567 >> Apprenez la compétence Armes de jet
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Couteau de lancer perçant] |cRXP_BUY_à Brenwyn|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith DRT
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith DRT
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto 1455/0,-1273.83,-5022.08,15 >>Voyagez vers |cRXP_FRIENDLY_Belia Tonnegranit|r
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .turnin 6086 >> Rendez la quête Entraîner la bête
    .trainer >> Apprenez les compétences de votre familier
    .target Belia Thundergranite
step << Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .trainer >> Apprenez vos sorts de classe
    .target Regnus Thundergranite
step << Dawrf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grandprêtre Rohan|r  
    .turnin 5639 >> Rendez la quête Prière du désespoir
    .trainer >> Apprenez vos sorts de classe
    .target High Priest Rohan
step << Priest/Mage/Warlock
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Achetez les objets suivants si vous pouvez vous les permettre :|r
    >>|T134711:0|t[Huile de sorcier mineure] |cRXP_WARN_et|r |T133906:0|t[Sagerelle fumée]
    >>|cRXP_WARN_Regardez aussi si vous pouvez trouver une|r |T132317:0|t[Baguette] |cRXP_WARN_avec un DPS important que vous pouvez équiper maintenant/bientôt|r
    >>|cRXP_WARN_Elles vous procureront une grande augmentation de vos dégâts dans les premiers niveaux. Si vous ne désirez pas le faire ou ne pouvez pas le faire, passez cette étape.|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement au Loch Modan très bientôt et pour augmenter votre compétence de|r |T133971:0|t[Cuisine] |cRXP_BUY_|r
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement au Loch Modan très bientôt:|r
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Liez votre Pierre de Foyer à Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step << Hunter
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << Hunter
    #optional
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
step << !Hunter
    #label DRT
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Entrez dans le Tram des profondeurs
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu dans le Tram des profondeurs
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step << !Hunter
    >>Utilisez le |T133942:0|t[Pipeau du dératiseur] sur les |cRXP_FRIENDLY_Rats des profondeurs|r dans le Tram des profondeurs
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu dans le Tram des profondeurs
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .timer 11,Chasse au rat dans les profondeurs RP
    .accept 6662 >> Acceptez la quête Mon frère, Nipsy
    .target Monty
step << !Hunter skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label TramEnd
    >>|cRXP_WARN_Prenez le Tram des profondeurs du côté Hurlevent|r
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins]|cRXP_WARN_ en attendant le Tram vers Hurlevent si nécessaire|r << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nipsy|r sur la plateforme centrale du côté Hurlevent dans le Tram des profondeurs
    .turnin 6662 >> Rendez la quête Mon frère, Nipsy
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << !Hunter
    #optional
    #completewith Order
    .abandon 6662 >> Abandonnez la quête Mon frère, Nipsy
step << !Hunter
    #optional
    #completewith Order
    .zone Stormwind City >> Entrez dans Stormwind
    .isOnQuest 1338
step << !Hunter
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step << !Hunter
    #label Order
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,325.68,-8688.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Ilsa Corbin
step << Warrior
    #optional
    #completewith next
    .goto 1453/0,401.29,-8741.21,17,0
    .goto 1453/0,417.13,-8636.5,12 >> Entrez dans la Taverne
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Rendez la quête L'entraînement du guerrier
    .accept 1639 >> Acceptez la quête Bartleby le poivrot
    .target Harry Burlguard
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Rendez la quête Bartleby le poivrot
    .accept 1640 >> Acceptez la quête Battre Bartleby
    .target Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>Vainquez |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Rendez la quête Battre Bartleby
    .accept 1665 >> Acceptez la quête Tasse de Bartleby
    .target Bartleby
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
    .target Harry Burlguard
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step << !Hunter
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue/Mage
    .trainer >>Apprenez la compétence Bâtons << Priest/Hunter
    .trainer >>Achetez la compétence pour porter les Épées à une main et les Bâtons << Warlock
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>|cRXP_WARN_Gardez bien 10 pièces d'argent pour apprendre vos sorts plus tard|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.1922
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    >>|cRXP_WARN_Gardez bien 10 pièces d'argent pour apprendre vos sorts plus tard|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .money <0.1922
step << Rogue
    #optional
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#forever
#season 0,1
<< Alliance !Hunter
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Nain/Gnome)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Nain/Gnome)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +|cRXP_WARN_Lancez|r |T136126:0|t[Connexion] |cRXP_WARN_en boucle jusqu'à avoir moins de 10% de vie en vous dirigeant vers|r |cRXP_FRIENDLY_Dungar Longdrink|r
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step << Warlock
    #softcore
    #optional
    #completewith next
    >>|cRXP_WARN_Lancez|r |T136126:0|t[Connexion] |cRXP_WARN_en boucle jusqu'à avoir moins de 10% de vie, puis sautez du rebord (PAS dans l'eau) à côté du maître du Vol et mourez volontairement|r
    .deathskip >> Ressuscitez au Gardien des âmes.
    .target Gardien des âmes
step
    #optional
    #completewith next
    .subzone 87 >> Voyagez vers Goldshire
step << skip
    .goto 1429/0,73.95,-9465.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .accept 62 >> Acceptez la quête La mine de Fondugouffre
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .accept 60 >> Acceptez la quête Les bougies de Kobolds
step << Mage/Rogue
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Prioritisez l'apprentissage de |r |T132147:0|t[Ambidextrie]
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Apprenez vos sorts de classe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .accept 40 >> Acceptez la quête Péril en la rivière
    --.accept 47 >> Accept Gold Dust Exchange
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step << Warlock
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto 1429/0,683.40,-9667.93
    .target Deputy Rainer
step << Warlock
    #completewith next
    >>Le [|cRXP_LOOT_Gold Pickup Schedule|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    >>|cRXP_ENEMY_Gruff Swiftbite|r est un mob rare, qui possède un taux de chance de tomber cet objet de 100%
    .use 1307 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gold Pickup Schedule|r] pour commencer la quête|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acceptez la quête Le collecteur
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
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Hogger|r en boucle et utilisez vos DoTs pour le tuer|r
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >> Acceptez la quête Princesse doit mourir !
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483

--
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r et à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >> Acceptez la quête Le collier perdu
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.67
    .accept 88 >> Acceptez la quête Princesse doit mourir !
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto 1429/0,38.41,-9923.69
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
step << skip
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Les mobs niveau 5 peuvent être gris pendant cette quête. Faites-la quand même car vous aurez besoin de cette quête pour en débloquer les suites
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    .goto 1429/0,193.00,-9832.40,50,0
    .goto 1429/0,129.73,-9844.49
    >>Entrez et explorez la mine de Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step << skip
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Les mobs niveau 5 peuvent être gris pendant cette quête. Faites-la quand même car vous aurez besoin de cette quête pour en débloquer les suites
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #softcore
    #completewith GoldshireTurnins
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << skip
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >> Voyagez vers Goldshire
step << skip
    #hardcore
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .target Remy "Two Times"
step << skip --Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 176,3 >> Rendez la quête On recherche : "Lardeur"
    .isQuestComplete 176
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
step << skip
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .turnin 123 >> Rendez la quête Le collecteur
    .isOnQuest 123
step << skip --Warlock
    .isQuestTurnedIn 123
    .goto 1429/0,74.02,-9465.52
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 147 >> Acceptez la quête Chasse à l'homme
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
step << skip
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
    .target Remy "Two Times"
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
--

step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >> Voyagez à l'est vers le |cRXP_FRIENDLY_Garde Thomas|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .accept 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 52 >> Acceptez la quête Protéger la frontière
step
    #completewith BundleOT
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Tuez en priorité tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Cliquez sur |cRXP_PICK_A half-eaten body|r sur le sol
    .goto 1429/0,-986.35,-9336.06
    .turnin 37 >> Acceptez la quête Trouver les gardes disparus
    .accept 45 >> Acceptez la quête La destinée de Rolf
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
step
    #era
    #completewith next
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol. Ils se trouvent sous les arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Murlocs|r aux alentours peuvent vous attaquer lorsque vous cliquerez sur le |r |cRXP_PICK_Cadavre de Rolf|r
    >>|cRXP_ENEMY_Murloc Foragers|r vont utiliser [Boire une potion mineure] qui les soignera de 61-68 points de vie
    .turnin 45 >> Rendez la quête La destinée de Rolf
    .accept 71 >> Acceptez la quête Faire son rapport au garde Thomas
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
    >>Ramassez les |cRXP_LOOT_Bundles of Wood|r sur le sol, à la base des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
step
    #completewith WaterloggedToolbox
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >> Acceptez la quête En aval
    .target Ormin Pelford
step
    >>Ramassez la |cRXP_PICK_Scie détrempée|r au sol
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>Ramassez la |cRXP_PICK_Hache détrempée|r au sol
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>Ramassez la |cRXP_PICK_Boîte à outils détrempée|r au sol
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .goto 1429/0,-1119.800,-9931.300
    >>Tuez |cRXP_ENEMY_Coassie|r. Dépouillez-le pour la |T134169:0|t[|cRXP_LOOT_Tête de Coassie|r]
    .use 247826 >> |cRXP_WARN_Utilisez la|r |T134169:0|t[|cRXP_LOOT_Tête de Coassie|r] |cRXP_WARN_pour lancer une quête|r
    >>|cRXP_WARN_Il s'agit d'un élite de niveau 11. Passez cette étape si vous n'arrivez pas à le tuer|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>Acceptez la quête La tête de Coassie
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
    >>Tuez les |cRXP_ENEMY_Prowlers|r et les |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step << Warlock
    .isOnQuest 147
    .goto 1429/0,-932.35,-9806.53
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>Tuez |cRXP_ENEMY_Morgan the Collector|r. Dépouillez-le pour son|cRXP_LOOT_The Collector's Ring|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto 1429/0,-932.35,-9806.53
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    .goto 1429/0,-869.87,-9768.10
    >>Tuez |cRXP_ENEMY_Princess|r. Dépouillez-la pour son |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesse|r |cRXP_WARN_ramènera avec elle ses deux|r |cRXP_ENEMY_Entourage porcin|r
    >>|cRXP_ENEMY_Princess|r utilisera aussi [Assaut fulgurant] qui inflige de lourd dégâts
    >>Gardez 100 points de rage avant d'engager |cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_Soyez sûrs que [Évasion] soit prêt. Si vous avez du mal, vous pouvez utiliser la barrière avec des Armes de Jet, elle n'arrivera pas à vous toucher et vous pourrez gagner du temps << Rogue
    >>Soyez prêt à utiliser une [Potion de soins mineure]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Cliquez ici pour un exemple vidéo << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 39 >> Acceptez la quête Remettre le rapport de Thomas
    .accept 109 >> Acceptez la quête Aller voir Gryan Roidemantel
    .xp <9,1
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Rendez la quête En aval
    .target Ormin Pelford
step
    #completewith next
    .subzone 798 >> Voyagez à la tour de Crête
step
    .isOnQuest 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Merell Ross::248277|r
    .target Merell Ross::248277
    .turnin 91740 >>Rendez la quête La tête de Coassie
step
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Acceptez la quête Des gnolls encombrants
step
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    >>Faites attention aux créatures de haut niveau sur la route
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .fly Stormwind >> Volez à Stormwind
    .target Ariena Stormfeather
step << skip
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>Choisissez en récompense de quête les [Roquette explosive]. Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
step
    #ah
    .goto 1453/0,660.28,-8814.55--c:Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement à la Marche de l'Ouest:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .target Auctioneer Jaxon
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Rendez la quête Surena Caledon
    .accept 1689 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 7728 >> Utilisez l'[Echarpe de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >> Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #softcore
    #completewith next
    +Commencez à lancer [Connexion] |cRXP_WARN_sur votre route retour pour |cRXP_FRIENDLY_Gakin the Darkbinder|r car vous allez mourir volontairement bientôt|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >> Rendez la quête Le lien
step << Warlock
    #softcore
    .deathskip >> |cRXP_WARN_Mourez et ressuscitez au Gardien des âmes en utilisant|r |T136126:0|t[Connexion] |cRXP_WARN_et en vous plaçant sur le Feu à côté de vous|r
    .target Gardien des âmes
step
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >> Quittez Stormwind. Voyagez vers Goldshire
step << Warlock
    #era
    .isOnQuest 147
    .goto 1429/0,74.02,-9465.52
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >> Rendez la quête Chasse à l'homme
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
step
    #era
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .target Marshal Dughan
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Joséphine Carson|r
    .trainer >> Apprenez vos sorts de classe
    .target Josephine Carson
    .xp <12,1
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
    .xp <12,1
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
    .xp <12,1
step << Mage/Priest/Rogue
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Montez en haut des escaliers dans l'auberge
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Apprenez vos sorts de classe
    .xp <12,1
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .trainer >> Apprenez vos sorts de classe
    .xp <12,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Apprenez vos sorts de classe
    .xp <12,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Rendez la quête Princesse doit mourir !
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << Dwarf Paladin
    #loop
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>Tuez les |cRXP_ENEMY_Rivepattes chétifs|r et les |cRXP_ENEMY_Estafettes Rivepattes|r. Dépouillez-les pour leur |T132889:0|t[Étoffe de lin]
    >>|cRXP_WARN_Assurez-vous d'avoir 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour votre prochaine quête de classe (Paladin)|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r
    .target Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 184 >> Rendez la quête Titre de propriété de Froncebouille
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .accept 9 >> Acceptez la quête Les champs de mort
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
step
    #optional
    .isQuestComplete 38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Rendez la quête Le ragoût de la marche de l'Ouest
step
    #optional
    .isQuestComplete 22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Rendez la quête La tourte au foie de broche-tripes
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes ou courez vers la Colline des Sentinelles
    .target Gardien des âmes
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .accept 12 >> Acceptez la quête La milice du peuple
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 12 >> Acceptez la quête La milice du peuple
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
step << Dwarf Paladin
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 1537,1
step << Dwarf Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Volez à Ironforge
    .target Thor
    .zoneskip Ironforge
    .zoneskip Loch Modan
step << !Paladin
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << !Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Thor
    .zoneskip Ironforge
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Nain/Gnome)
#next 13-15 Marche de l’Ouest;14-16 Sombrivage
#defaultfor Gnome/Dwarf

step -- dont delete
    #label LochStart
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto 1455/0,-896.47,-4601.65,12 >>Voyagez vers |cRXP_FRIENDLY_Brandur Martel-de-fer|r
step << Dwarf Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Acceptez la quête Le Tome de divinité
    .target Brandur Ironhammer
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 2999 >>Rendez la quête Le Tome de divinité
    .accept 1645 >>Acceptez la quête Le Tome de divinité
    .turnin 1645 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Utilisez le [|T133739:0|t|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1646 >>Acceptez la quête Le Tome de divinité
    .use 6916
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 1646 >>Rendez la quête Le Tome de divinité
    .accept 1647 >>Acceptez la quête Le Tome de divinité
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrouille le long du cercle extérieur de Forgefer entre la Taverne de Brûlepierre et le Centre des visiteurs|r
    .turnin 1647 >>Rendez la quête Le Tome de divinité
    .accept 1648 >>Acceptez la quête Le Tome de divinité
    .turnin 1648 >>Rendez la quête Le Tome de divinité
    .accept 1778 >>Acceptez la quête Le Tome de divinité
    .unitscan John Turner
step << Dwarf Paladin
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >> Dirigez-vous l'escalier en dessous de |cRXP_FRIENDLY_Tiza Forgeguerre|r
step << Dwarf Paladin
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 1778 >>Rendez la quête Le Tome de divinité
    .accept 1779 >>Acceptez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Forgeguerre|r en haut des escaliers
    .turnin 1779 >>Rendez la quête Le Tome de divinité
    .accept 1783 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Paladin
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r
    .target Yanni Stoutheart
step << !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Achetez des|r |T133968:0|t[Pain sorti du four] |cRXP_BUY_si nécessaire|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Achetez-lui des|r |T133968:0|t[Pain sorti du four] |cRXP_BUY_et du|r |T132815:0|t[Lait glacé] |cRXP_BUY_ si nécessaire|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenhild Sombreserre|r
    .accept 86667 >> Acceptez la quête Enneigement
    .target Grenhild Darktalon
step
    #completewith next
    .goto 1432/0,-2619.200,-5783.300,20,0
    .goto 1432/0,-2534.38,-5648.28,5 >>Allez jusqu'au tas de neige au sol juste à l'extérieur du tunnel de la porte sud
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> |cRXP_WARN_Utilisez le|r |T1387609:0|t[Bocal en céramique] |cRXP_WARN_en vous plaçant sur le tas de neige pour récupérer le|r |T1387609:0|t[Bocal de neige]
    .complete 86667,1 -- Jar of Snow 1/1
step << Shaman
    #completewith shamfire
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >> Voyagez par la porte Sud
step << Shaman
    #completewith shamfire
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >> Voyagez vers |cRXP_FRIENDLY_Bruegs Flammené|r dans la grotte en haut de la montagne
step << Shaman
    #label shamfire
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bruegs Flammené::257597|r
    .target Bruegs Kindleborn::257597
    .turnin 94449 >>Rendez la quête L'appel du feu
    .accept 94465 >>Acceptez la quête L'appel du feu
step << Shaman
    .isOnQuest 94465
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >> Descendez prudemment de la montagne pour arriver au Loch Modan
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >> Montez le sentier de montagne vers |cRXP_FRIENDLY_Braldir Houppecendre::257808|r
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Braldir Houppecendre::257808|r
    .target Braldir Ashmantle::257808
    .turnin 94465 >>Rendez la quête L'appel du feu
    .accept 94466 >>Acceptez la quête L'appel du feu
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverMine
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    #arrowtext |cRXP_WARN_Vous avez 10 minutes pour rendre la quête !|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norric Lochthane|r
    >>|cRXP_WARN_N'oubliez pas de rendre cette quête avant que les 10 minutes du|r |T1387609:0|t[Bocal de neige] n'expire
    .turnin 86667 >> Rendez la quête Enneigement
    .target Norric Lochthane
step << Shaman
    #loop
    .goto 1432/0,-3287.400,-4868.000,45,0
    .goto 1432/0,-3397.500,-4870.800,45,0
    .goto 1432/0,-3337.300,-4998.400,45,0
    >>Tuez les |cRXP_ENEMY_Prophètes Brisepierre|r. Dépouillez-les pour leur |cRXP_LOOT_Bourse de réactifs|r
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    >>Tuez les |cRXP_ENEMY_Géomanciens Rat des tunnels|r. Dépouillez-les pour leur |cRXP_LOOT_Goudron de feu|r << Shaman 
    >>Vous ne pouvez trouver les |cRXP_ENEMY_Géomanciens Rat des tunnels|r |cRXP_WARN_que à l'intérieur de la mine|r << Shaman
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
    .goto 1432/0,-2972.96,-4835.187,20 >> Entrez dans la mine du Ru d'argent
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto 1432/0,-2984.82,-4902.33
    >>Ouvrez les |cRXP_PICK_Caisses de la Ligue des mineurs|r à l'intérieur de la mine. Récupérez-y les |cRXP_LOOT_Equipements de mineur|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto 1432/0,-2984.82,-4902.33
    >>Ouvrez les |cRXP_PICK_Caisses de la Ligue des mineurs|r à l'intérieur de la mine. Récupérez-y les |cRXP_LOOT_Equipements de mineur|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Achetez-lui|r |T133476:0|t[Lourde masse à pointes] |cRXP_BUY_OU le|r |T133053:0|t[Maillet en bois de fer] |cRXP_BUY_s'ils sont disponibles|r
    >>|cRXP_WARN_Si vous ne pouvez pas vous le permettre, alors gagnez de l'argent en tuant les |cRXP_ENEMY_Rats des tunnels|r à proximité jusqu'à ce que vous en ayez assez|r
    >>|cRXP_WARN_Faites cela rapidement comme un autre joueur pourrait l'acheter avant vous|r
    >>|cRXP_WARN_Si vous ne souhaitez pas le faire, passez cette étape|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Achetez-lui|r |T133476:0|t[Lourde masse à pointes] |cRXP_BUY_OU le|r |T133053:0|t[Maillet en bois de fer] |cRXP_BUY_s'ils sont disponibles|r
    >>|cRXP_WARN_Si vous ne pouvez pas vous le permettre, alors gagnez de l'argent en tuant les |cRXP_ENEMY_Rats des tunnels|r à proximité jusqu'à ce que vous en ayez assez|r
    >>|cRXP_WARN_Faites cela rapidement comme un autre joueur pourrait l'acheter avant vous|r
    >>|cRXP_WARN_Si vous ne souhaitez pas le faire ou préfériez essayer d'acheter une arme moins chère/meilleure à l'Hôtel des ventes, ignorez cette étape|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Équipez la|r |T133476:0|t[Lourde masse à pointes]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Équipez le|r |T133053:0|t[Maillet en bois de fer]
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    >>Tuez les |cRXP_ENEMY_Géomanciens Rat des tunnels|r. Dépouillez-les pour leur |cRXP_LOOT_Goudron de feu|r << Shaman
    >>Vous ne pouvez trouver les |cRXP_ENEMY_Géomanciens Rat des tunnels|r |cRXP_WARN_que à l'intérieur de la mine|r << Shaman
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith PawsDelivery
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    .goto 1432,24.279,17.959,15 >> Entrez dans le bunker
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
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
    >>Tuez  les|cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entrez dans l'auberge de Thelsamar
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step
    #label FlintTinder
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_WARN_Ils sont utilisés pour fabriquer des|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_sur les bateaux pour monter le niveau de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_sans perdre de temps|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step
    .goto 1432/0,-2729.40,-5534.96
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
    .isOnQuest 224
    .isOnQuest 267
step
    #label RatAbandon
    #optional
    .goto 1432/0,-2729.40,-5534.96
    .xp 13+9600 >> Montez votre expérience jusqu'à 9600+/11400xp
    >>|cRXP_WARN_Si vous prévoyez de faire le donjon de la Salle des Thanes à Ironforge, passez cette étape|r
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >> Montez le sentier de montagne vers |cRXP_FRIENDLY_Braldir Houppecendre::257808|r à nouveau
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Braldir Houppecendre::257808|r
    .target Braldir Ashmantle::257808
    .turnin 94466 >>Rendez la quête L'appel du feu
    .accept 94467 >>Acceptez la quête L'appel du feu
step << Shaman
    #completewith next
    .goto 1432/0,-2873.800,-5672.500
    .cast 8898 >> |cRXP_WARN_Continuez sur le chemin|r
    .use 6636 >>|cRXP_WARN_Utilisez le|r |T134732:0|t[Sapta de feu] |cRXP_WARN_près de la statue de pierre pour invoquer la|r |cRXP_ENEMY_Manifestation de feu mineure|r
step << Shaman
    .goto 1432/0,-2873.800,-5672.500
    >>Tuez la |cRXP_ENEMY_Manifestation de feu mineure|r. Dépouillez-la pour la |cRXP_LOOT_Braise rougeoyante|r
    .complete 94467,1 -- Glowing Ember (1)
step << Shaman
    .goto 1432/0,-2870.700,-5674.600
    >>Cliquez sur le |cRXP_PICK_Brasero de la Flamme Dormante|r
    .turnin 94467 >>Rendez la quête L'appel du feu
    .accept 94468 >>Acceptez la quête L'appel du feu
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> Montez le chemin de terre et ensuite descendez dans le bunker
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Shaman
    #completewith shamfire2
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >> Voyagez par la porte Sud
step << Shaman
    #completewith shamfire2
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >> Voyagez vers |cRXP_FRIENDLY_Bruegs Flammené|r dans la grotte en haut de la montagne à nouveau
step << Shaman
    #label shamfire2
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bruegs Flammené::257597|r
    .target Bruegs Kindleborn::257597
    .turnin 94468 >>Rendez la quête L'appel du feu
step << Shaman
    .isQuestTurnedIn 94468
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >> Descendez prudemment de la montagne pour arriver au Loch Modan
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
    >>Cliquez sur la |cRXP_PICK_Boîte de pêche abandonnée|r au fond du lac
    >>|cRXP_WARN_NOTE : Elle peut apparaître à plusieurs endroits différents. Faites le tour à la nage jusqu'à ce que vous voyiez le point d'exclamation sur votre minicarte|r
    >>|cRXP_WARN_Soyez prudent face aux|r Jeunes battrodons|cRXP_ENEMY_ de haut niveau|r
    .accept 86614 >>Acceptez la quête L’argent des vagues
    .xp <13,1
step
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Rendez la quête L’argent des vagues
    .xp <13,1
step << !Dwarf/!Paladin
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Volez à Ironforge
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
    .zone Dun Morogh >> Voyagez vers Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto 1426/0,-2055.23,-5784.31
    .cast 8593 >>|cRXP_WARN_Utilisez le|r |T133439:0|t[Symbole de vie] |cRXP_WARN_sur |cRXP_FRIENDLY_Narm Faulk|r au sol|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto 1426/0,-2055.23,-5784.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Rendez la quête Le Tome de divinité
    .accept 1784 >>Acceptez la quête Le Tome de divinité
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .goto 1426/0,-2004.94,-5863.50,20,0
    .goto 1426/0,-2031.04,-5905.53
    >>Tuez les |cRXP_ENEMY_Dark Iron Spies|r. Dépouillez-les pour leur |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
    .isQuestComplete 1784
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ironforge
    .bindlocation 1537,1
    .cooldown item,6948,>2,1
    .zoneskip Ironforge
step << Dwarf Paladin
    #optional
    .isQuestComplete 1784
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40,0--c:Ironforge,14.90,87.10
    .zone Ironforge >> Retournez à Forgefer

----Start of <1.5x IF->Westfall Section----

step << Rogue
    .goto 1455/0,-1197.27,-5041.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Main-de-Pierre|r à l'intérieur
    .train 196 >> Acheter la compétence pour porter des haches à une main
    .target Buliwyf Stonehand
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldruk Ruinefront|r
    .trainer >> Apprenez vos sorts de classe
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto 1455/0,-913.38,-4577.31,6,0
    .goto 1455/0,-906.11,-4632.030,10 >> Voyagez vers |cRXP_FRIENDLY_Muiredon|r à l'étage
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Rendez la quête Le Tome de divinité
    .accept 1785 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eldrun Brise-tempête::258098|r 
    .target Eldrun Stormbreaker::258098
    .trainer >> Apprenez vos sorts de classe
step << Mage/Priest/Warlock
    #ssf
    .goto 1455/0,-894.15,-4659.43,8,0
    .goto 1455/0,-880.66,-4660.39,5,0
    .goto 1455/0,-896.50,-4653.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harick Boulderdrum|r en bas des escaliers
    >>|cRXP_WARN_Achetez-lui une|r |T135468:0|t[Baguette fumante] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    .goto 1455/0,-928.48,-4614.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur le pilier au-dessus de |cRXP_FRIENDLY_Bink|r, puis marchez légèrement vers l'est jusqu'à la position de la flèche. Positionnez votre personnage jusqu'à ce qu'il semble flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << Dwarf Rogue/Gnome Rogue
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto 1455/0,-1124.38,-4647.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers
    .turnin 2218 >> Rendez la quête La voie du salut
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    .goto 1455/0,-1120.72,-4650.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Apprenez vos sorts de classe
    .target Fenthwick
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn
step << Warlock
    #optional
    #label Jubahl
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >> Entrez dans la maison de |cRXP_FRIENDLY_Jubahl Corpseseeker|r
step << Warlock
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Achetez un|r [Grimoire de Consumer l'ombre (Rang 1)] |cRXP_BUY_et un|r [Grimoire de Sacrifice (Rang 1)] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Allez sur le lit, puis sautez sur la bibliothèque. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Bilban Cléamornifles|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner

step -- dont delete
    #label LochEnd

step << skip --logout skip << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur le présentoir d'armes. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor 5175 >> |cRXP_BUY_Achetez-lui un|r |T133024:0|t[Tube en bronze] |cRXP_BUY_s'il en a en stock|r
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
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Stormwind City
step << skip
    #optional
    #label WestfallTramCook1
    #completewith WestfallTramEnd
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>|cRXP_WARN_Sur le tram lorsqu'il arrive :|r
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins]|cRXP_WARN_ en attendant le Tram vers Hurlevent si nécessaire|r << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    .zone Stormwind City >> Prenez le Tram des profondeurs pour vous rendre à Hurlevent
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Achetez-lui un|r |T133024:0|t[Tube en bronze] |cRXP_BUY_s'il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acceptez la quête Débuts modestes
    .target Baros Alexston
    .xp <15,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre ou prenez une meilleure arme à l'Hôtel des ventes|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +Équipez la [Cimeterre]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez une|r |T135144:0|t[Baguette magique supérieure] |cRXP_BUY_si vous pouvez vous la permettre|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Achetez-lui une|r |T135468:0|t[Baguette fumante] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #ah
    #optional
    +Équipez la [Baguette de fonte]
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
#group RestedXP Guide Forever (A)
#subgroup Guide Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Chasseur)
#next 14-16 Sombrivage
#defaultfor Dwarf

step -- dont delete
    #label NormalRouteStart
step
    #completewith next
    .goto 1426/0,-2443.41,-5560.120,15,0
    .goto 1432/0,-2602.54,-5832.73,20 >> Voyagez jusqu'au Loch Modan
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    .accept 224 >> Acceptez la quête À la défense des terres du roi
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .target Captain Rugelfuss
    .accept 267 >> Acceptez la quête La menace trogg
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin -414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto 1432/0,-2954.42,-5394.10
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
step
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >> Liez votre Pierre de Foyer à Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Acceptez la quête L'honneur des étudiants
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto 1432/0,-2929.87,-5424.84
    .turnin 6387 >> Rendez la quête L'honneur des étudiants
    .accept 6391 >> Acceptez la quête Voyage vers Forgefer
step
    #completewith RTB
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto 1455/0,-1120.93,-4708.06
    .turnin 6391 >> Rendez la quête Voyage vers Forgefer
    .accept 6388 >> Acceptez la quête Gryth Thurden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto 1455/0,-1058.62,-4836.37,20,0
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    .turnin 291 >> Rendez la quête Les rapports
    .isOnQuest 291
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .turnin 6086 >> Rendez la quête Entraîner la bête
step << Hunter
    #label RTB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto 1455/0,-1152.40,-4821.13
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .accept 6392 >> Acceptez la quête Retourner vers Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .goto 1455/0,-1152.40,-4821.13
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
step << Hunter
    .goto 1432/0,-2982.01,-5286.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vrok Tromblexplose|r
    >>|cRXP_BUY_Acheter un|r [Espingole de chasseur] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +Équipez l'[Espingole de chasseur]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #completewith BraveSoul
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
    #completewith next
    .goto 1432/0,-2651.61,-4817.15,100 >> Voyagez vers le nord jusqu'au Poste d’Algaz
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
step << Human
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
    #label BraveSoul
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Entrez dans la mine du Ru d'argent
step
    .goto 1432/0,-2984.82,-4902.33
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_Les |cRXP_PICK_Miners' League Crates|r peuvent se trouver tout au long de la Mine|r
    >>|cRXP_WARN_Vous pourrez faire cette quête à un niveau supérieur si vous souhaitez la passer pour l'instant|r
    .complete 307,1 -- Miners' Gear (4)
step
    #completewith RatEar
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
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    >>Les |cRXP_ENEMY_Rats des tunnels|r |cRXP_WARN_peuvent apparaître partout dans le Loch Modan. Vérifiez votre Carte pour leur emplacements|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto 1432/0,-2954.42,-5394.10
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
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
    >>Tuez les |cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    .turnin 224 >> Rendez la quête À la défense des terres du roi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r
    .target Captain Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    .turnin 267 >> Rendez la quête La menace trogg
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>Allez jusqu'au tas de neige au sol juste à l'extérieur du tunnel de la porte sud
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> |cRXP_WARN_Utilisez le|r |T1387609:0|t[Bocal en céramique] |cRXP_WARN_en vous plaçant sur le tas de neige pour récupérer le|r |T1387609:0|t[Bocal de neige]
    .complete 86667,1 -- Jar of Snow 1/1
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_Vous avez 10 minutes pour rendre la quête !|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Norric Lochthane|r
    >>|cRXP_WARN_N'oubliez pas de rendre cette quête avant que les 10 minutes du|r |T1387609:0|t[Bocal de neige] n'expire
    .turnin 86667 >> Rendez la quête Enneigement
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
    >>Cliquez sur la |cRXP_PICK_Boîte de pêche abandonnée|r au fond du lac
    >>|cRXP_WARN_NOTE : Elle peut apparaître à plusieurs endroits différents. Faites le tour à la nage jusqu'à ce que vous voyiez le point d'exclamation sur votre minicarte|r
    >>|cRXP_WARN_Soyez prudent face aux|r Jeunes battrodons|cRXP_ENEMY_ de haut niveau|r
    .accept 86614 >>Acceptez la quête L’argent des vagues
    .xp <13,1
step
    #optional
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Rendez la quête L’argent des vagues
    .xp <13,1
step
    #completewith next
    .goto 1432/0,-3783.63,-5713.77,80 >> Voyagez au Site de fouilles d'Ironband
step
    .goto 1432/0,-3812.43,-5694.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target Prospector Ironband
step
    #completewith next
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25 >> Voyagez jusqu'au Pavillon des Pérégrins
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .accept 257 >> Acceptez la quête La fanfaronnade d'un chasseur
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
    >>Tuez les |cRXP_ENEMY_Busards des montagnes|r
    >>|cRXP_WARN_Vous devez compléter cette quête et revenir à |cRXP_FRIENDLY_Daryl le Jeune|r dans les 15 minutes. Si vous échouez, abandonnez cette quête et reprenez-la de nouveau|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .goto 1432/0,-4296.68,-5690.590
    .turnin 257 >> Rendez la quête La fanfaronnade d'un chasseur
    .target Daryl the Youngling
step
    .goto 1432/0,-4269.26,-5653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xandar Bonnebarbe|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>|cRXP_WARN_Ils sont utilisés pour fabriquer des|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_sur les bateaux pour monter le niveau de votre|r |T133971:0|t[Cuisine] |cRXP_WARN_sans perdre de temps|r
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #hardcore
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3020.95,-5359.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 298 >> Rendez la quête Compte rendu d'avancement des fouilles
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .target Jern Hornhelm
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step
    #optional
    .goto 1455/0,-1188.54,-4761.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Apprenez [Cuisine]
step
    .goto 1455/0,-1303.75,-4631.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Rendez la quête Rapport à Forgefer
    .target Prospector Stormpike
step
    #completewith EnterSW
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Stormwind City
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
    .timer 11,Chasse au rat dans les profondeurs RP
    .accept 6662 >> Acceptez la quête Mon frère, Nipsy
step
    >>|cRXP_WARN_Prenez le Tram des profondeurs du côté Hurlevent|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nipsy|r sur la plateforme centrale du côté Hurlevent dans le Tram des profondeurs
    .turnin 6662 >> Rendez la quête Mon frère, Nipsy
    .target Nipsy
step
    #label EnterSW
    .zone Stormwind City >> Entrez dans Stormwind
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto 1453/0,685.22,-8387.23
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto 1453/0,600.07,-8427.22
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto 1453/0,613.0,-8796.03
    .trainer >>Apprenez la compétence Bâtons

step --dont delete
    #label NormalRouteEnd

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Achetez-lui une|r |T134335:0|t[Verroterie brillante] |cRXP_BUY_et trois|r |T134324:0|t[Asticots] |cRXP_BUY_. Ils servent pour une quête donnant 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilbert Gray::267118|r 
    .target Gilbert Gray::267118
    .accept 95065 >>Acceptez la quête L'heure de la pêche
    .turnin 95065 >>Rendez la quête L'heure de la pêche
--Hunter going Darkshore, rest Westfall
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>|cRXP_WARN_Fabriquez un|r |T135805:0|t[Feu de camp basique] |cRXP_WARN_(dans votre onglet de Cuisine)|r
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])