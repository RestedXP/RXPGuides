if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 18-19 Loch Modan
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#next 19-20 Les Carmines


-- LEVEL 18-19 EAST LOCH MODAN QUESTS

step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Achetez un|r |T134410:0|t[Carquois moyen] |cRXP_BUY_et des |r |T132382:0|t[Flèches aiguisées]
    .collect 11362,1 --Medium Quiver (1)
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Samor Festivus|r à l'étage
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Samor Festivus|r n'en a plus en stock|r
    .target Samor Festivus
step << !Druid !Hunter
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir
    .zoneskip Wetlands,1
    .xp <18,1
step << !Druid !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    .goto Ironforge,65.905,88.405 << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner << Warrior
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
    .xp <18,1
step << !Druid !Hunter
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Courtnez|r
    .accept 255 >> Acceptez la quête Mercenaires
    .target Magistrate Bluntnose
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .accept 436 >> Acceptez la quête Les fouilles de Baguefer
    .target Jern Hornhelm
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Voyagez vers le nord jusqu'au Poste d’Algaz
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Montagnard Foudrepique|r
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique << NightElf
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
    #completewith next
   .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
step
    .goto Loch Modan,35.93,22.55
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_Les |cRXP_PICK_Miners' League Crates|r peuvent se trouver tout au long de la Mine|r
    .complete 307,1 -- Miners' Gear (4)
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >> Allez au barrage de Formepierre
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ingénieur en chef Hinderweir VII|r
    .accept 250 >> Acceptez la quête Une sombre menace se dessine
    .target Chief Engineer Hinderweir VII
step
    .goto Loch Modan,56.05,13.24
    >>Cliquez sur le |cRXP_PICK_Suspicious Barrel|r
    .turnin 250 >> Rendez la quête Une sombre menace se dessine
    .accept 199 >> Acceptez la quête Une sombre menace se dessine
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Ingénieur en chef Hinderweir VII|r
    .turnin 199 >> Rendez la quête Une sombre menace se dessine
    .target Chief Engineer Hinderweir VII
step
    #completewith next
    +|cRXP_WARN_Faites attention à ne pas tomber sur les|r |cRXP_ENEMY_Coureurs de la Horde|r|cRXP_WARN_! Il s'agit d'une escouade d'élites composée de 2 |cRXP_ENEMY_Orcs|r et d'un |cRXP_ENEMY_Tauren|r qui patrouillent sur le côté est du Loch (indiqué par la ligne sur votre minicarte)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Voyagez jusqu'au Pavillon des Pérégrins
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .accept 257 >> Acceptez la quête La fanfaronnade d'un chasseur
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << Hunter
    .goto Loch Modan,82.225,62.842
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Claude Erksine|r
    .trainer >> Apprenez les compétences de votre familier
    .target Claude Erksine
step << Hunter
    .goto Loch Modan,82.391,62.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dargh Trait-précis|r
    .trainer >> Apprenez vos sorts de classe
    .target Dargh Trueaim
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marek Cœur-de-fer|r
    .accept 385 >> Acceptez la quête Chasse aux crocilisques
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step
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
    >>Tuez les |cRXP_ENEMY_Busards des montagnes|r
    >>|cRXP_WARN_Vous devez compléter cette quête et revenir à |cRXP_FRIENDLY_Daryl le Jeune|r dans les 15 minutes. Si vous échouez, abandonnez cette quête et reprenez-la de nouveau|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Voyagez vers |cRXP_FRIENDLY_Daryl le Jeune|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Rendez la quête La fanfaronnade d'un chasseur
    .accept 258 >> Acceptez la quête Le défi d'un chasseur
    .target Daryl the Youngling
step
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,61.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.87,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>Tuez les |cRXP_ENEMY_Anciens sangliers des montagnes|r
    >>|cRXP_WARN_Vous devez compléter cette quête et revenir à |cRXP_FRIENDLY_Daryl le Jeune|r dans les 12 minutes. Si vous échouez, abandonnez cette quête et reprenez-la de nouveau|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Voyagez vers |cRXP_FRIENDLY_Daryl le Jeune|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >> Rendez la quête Le défi d'un chasseur
    .target Daryl the Youngling
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vyrin Vent-vif|r
    .goto Loch Modan,81.73,64.15
    .accept 271 >> Acceptez la quête La vengeance de Vyrin
    .target Vyrin Swiftwind
step
    #completewith next
    +|cRXP_WARN_Faites attention à ne pas tomber sur les|r |cRXP_ENEMY_Coureurs de la Horde|r|cRXP_WARN_! Il s'agit d'une escouade d'élites composée de 2 |cRXP_ENEMY_Orcs|r et d'un |cRXP_ENEMY_Tauren|r qui patrouillent sur le côté est du Loch (indiqué par la ligne sur votre minicarte)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,54.7,38.3,200 >> Allez jusqu'à l'île située au milieu du Loch
step
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>Tuez les |cRXP_ENEMY_Crocilisques du loch|r. Dépouillez-les pour leur |cRXP_LOOT_Viande|r et leur |cRXP_LOOT_Peau|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    #completewith next
    +|cRXP_WARN_Faites attention à ne pas tomber sur les|r |cRXP_ENEMY_Coureurs de la Horde|r|cRXP_WARN_! Il s'agit d'une escouade d'élites composée de 2 |cRXP_ENEMY_Orcs|r et d'un |cRXP_ENEMY_Tauren|r qui patrouillent sur le côté est du Loch (indiqué par la ligne sur votre minicarte)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >> Voyagez au Site de fouilles d'Ironband
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magmar Tombebranche|r
    .turnin 436 >> Rendez la quête Les fouilles de Baguefer
    .accept 297 >> Acceptez la quête Réunir les idoles
    .target Magmar Fellhew
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target Prospector Ironband
step
    .goto Loch Modan,66.92,59.89,30,0
    .goto Loch Modan,70.67,60.58,40,0
    .goto Loch Modan,72.86,62.09,20,0
    .goto Loch Modan,71.03,68.89,30,0
    .goto Loch Modan,70.38,62.82
    >>Tuez les |cRXP_ENEMY_Terrassiers Brisepierres|r, les |cRXP_ENEMY_Géomanciens Brisepierres|r et les |cRXP_ENEMY_Troggs berserks|r. Dépouillez-les pour leur |cRXP_LOOT_Idoles|r
    .complete 297,1
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
    .mob Berserk Trogg
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magmar Tombebranche|r
    .turnin 297 >> Rendez la quête Réunir les idoles
    .target Magmar Fellhew
step
    .group
    #completewith next
    .goto Loch Modan,41.21,64.33,100 >> Envolez-vous vers la Falaise de Vieillegriffe
    .isOnQuest 271
step
    .group 3
    .goto Loch Modan,39.43,66.38,10,0
    .goto Loch Modan,41.00,63.03,10,0
    .goto Loch Modan,39.97,61.67,10,0
    .goto Loch Modan,37.81,62.87,15,0
    .goto Loch Modan,36.73,61.08
    >>Tuez le |cRXP_ENEMY_Vieux Noiraud|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Le |cRXP_ENEMY_Vieux Noiraud|r |cRXP_WARN_n'est pas toujours dans sa grotte et peut patrouiller sur le chemin menant aux terres plus basses|r
    >>Le |cRXP_ENEMY_Vieux Noiraud|r |cRXP_WARN_est un Élite de niveau 20|r
    .complete 271,1 -- Ol' Sooty's Head (1)
    .unitscan Ol' Sooty
    .isOnQuest 271
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Voyagez jusqu'au Pavillon des Pérégrins
step
    .goto Loch Modan,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marek Cœur-de-fer|r
    .turnin 385 >> Rendez la quête Chasse aux crocilisques
    .target Marek Ironheart
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .goto Loch Modan,83.49,65.40
    .turnin 271 >> Rendez la quête La vengeance de Vyrin
    .target Daryl the Youngling
    .isQuestComplete 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .goto Loch Modan,83.49,65.40
    .accept 531 >> Acceptez la quête La vengeance de Vyrin
    .target Daryl the Youngling
    .isQuestTurnedIn 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vyrin Vent-vif|r
    .goto Loch Modan,81.73,64.15
    .turnin 531 >> Rendez la quête La vengeance de Vyrin
    .target Vyrin Swiftwind
    .isOnQuest 531
step
    .group
    .abandon 271 >> Abandonnez la quête La vengeance de Vyrin
step
    .group
    .goto Loch Modan,73.87,29.64,100 >> Voyagez jusqu'au Bastion des Mo'grosh
    .isOnQuest 255
step
    .group 3
    >>Tuez les |cRXP_ENEMY_Ogres Mo'grosh|r, les |cRXP_ENEMY_Massacreurs Mo'grosh|r et les |cRXP_ENEMY_Brutes Mo'grosh|r
    >>Les |cRXP_ENEMY_Brutes Mo'grosh|r |cRXP_WARN_ne se trouvent que dans les grottes. Nous vous recommandons de ne pas entrer dans la grotte du nord-est et de ne tuer que ceux dans les 2 autres petites grottes|r
    .complete 255,1 -- Mo'grosh Ogre slain (4)
    .mob +Mo'grosh Ogre
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,3 -- Mo'grosh Enforcer slain (4)
    .mob +Mo'grosh Enforcer
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,2 -- Mo'grosh Brute slain (4)
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08,25,0
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08
    .isOnQuest 255
    .mob +Mo'grosh Brute
step
    #completewith next
    +|cRXP_WARN_Faites attention à ne pas tomber sur les|r |cRXP_ENEMY_Coureurs de la Horde|r|cRXP_WARN_! Il s'agit d'une escouade d'élites composée de 2 |cRXP_ENEMY_Orcs|r et d'un |cRXP_ENEMY_Tauren|r qui patrouillent sur le côté est du Loch (indiqué par la ligne sur votre minicarte)|r
    .line Loch Modan,55.5,67.1,60.2,62.0,62.9,57.6,63.7,54.3,64.2,51.8,64.5,46.1,64.2,35.9,63.4,33.7,59.3,24.4,60.2,22.4,57.3,19.4
    .unitscan Haren Swifthoof
    .unitscan Gradok
    .unitscan Thragomm
step
    #completewith FINISHED
    .goto Loch Modan,36.77,46.20,150 >> Voyagez à Thelsamar
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 298 >> Rendez la quête Compte rendu d'avancement des fouilles
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .target Jern Hornhelm
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Magistrat Courtnez|r
    .turnin 255 >> Rendez la quête Mercenaires
    .target Magistrate Bluntnose
    .isQuestComplete 255
step
    .group
    .abandon 255 >> Abandonnez la quête Mercenaires
step
    #label FINISHED
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Rendez la quête Rapport à Forgefer
    .target Prospector Stormpike
step
    .isQuestTurnedIn 2078
    .goto Ironforge,35.90,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bailey Stonemantle|r
    .bankdeposit 5996 >> Déposez les objets suivants dans votre banque:
    >>|T134797:0|t[Élixir de respiration aquatique] (Si vous en possédez) -- 5996
    .target Bailey Stonemantle
step
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Il s'agit d'un objet en approvisionnement limité. Passez cette étape si le |cRXP_FRIENDLY_Coupebraquet Tournepignon|r n'en a pas en stock|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Stormwind
    >>|cRXP_WARN_Montez vos|r |T135966:0|t[Premiers soins] |cRXP_WARN_et votre|r |T133971:0|t[Cuisine] |cRXP_WARN_si nécessaire en attendant le tram|r
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    --.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Click here for a video guide for a logout skip on the tram|r
]])
