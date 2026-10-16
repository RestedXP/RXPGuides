if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 1-6 Vallée des Frigères
#displayname 1-6 Vallée des Frigères << !SoD
#displayname 1-7 Vallée des Frigères << SoD
#next 6-11 Dun Morogh << !Hunter
#next 6-11 Dun Morogh (Chasseur);6-11 Dun Morogh << Hunter
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Gnomes et les Nains. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step << Mage
    #completewith next
    +Vous avez sélectionné le guide Mage mono-cible. Le monocible est beaucoup plus sûr qu'un Mage AoE, mais BEAUCOUP plus lent
step << !Gnome Mage
    #season 2
    #completewith next
    +Dans Season of Discovery, vous ne devez PAS commencer hors de la zone de départ de votre race en tant que Mage, car vous serez incapable d'obtenir votre première rune (|T133816:0|t[Gravure de gants (Javelot de glace)])
step << !Warlock
    #season 2 << Warrior
    #optional
    #completewith WolfMeat
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
--XX Everyone except Warlocks, Era warriors drop HS
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Acceptez la quête Tailleur chez les nains
    .target Sten Stoutarm
step << Warlock
#sticky
#label wlrune1
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Ouvrez la |cRXP_PICK_Cantine mâcheroc|r sur le sol. Ouvrez-la pour la |T134419:0|t|cRXP_LOOT_[Rune cauchemardesque]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
#requires wlrune1
#sticky
    #season 2
    .train 403919 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune cauchemardesque]|r |cRXP_WARN_pour apprendre|r la |T133816:0|t[Gravure de gants (Hanter)]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
--XX Era Level 1 Warrior/Warlock training, Era Warlock imp accept start
step << Warrior/Warlock
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
step << Warrior/Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Warrior/Warlock
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grundel Harkin|r à l'intérieur
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r à l'intérieur
    .train 6673 >>Apprenez [Cri de guerre]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'intérieur
    .train 348 >> Apprenez [Immolation]
    .accept 1599 >> Acceptez la quête Les débuts
    .target Alamar Grimm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Utilisez votre Pierre de foyer pour revenir à la Vallée des Frigères
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Détruisez la [Pierre de foyer] dans votre sac, elle n'est plus nécessaire
--XX Era Warriors, Era Softcore Warlocks drop HS
step << Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >> Quittez Anvilmar
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
step << Priest/Mage/Warlock
    #season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    >>|cRXP_WARN_Tuez d'autres |cRXP_ENEMY_Ragged Young Wolves|r si vous n'avez pas assez d'argent|r
    >>|cRXP_WARN_Assurez-vous de garder 10c pour plus tard|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin << Hunter
    >>|cRXP_BUY_Achetez 600|r [Balle légère] |cRXP_BUY_à Adlin|r << Hunter
    .vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
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
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acceptez la quête Une nouvelle menace
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Ouvrez la |cRXP_PICK_Cantine mâcheroc|r sur le sol. Récupérez le |T136222:0|t|cRXP_LOOT_[Souvenir d'un acolyte tourmenté]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Mage
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Ouvrez la |cRXP_PICK_Cantine mâcheroc|r sur le sol. Récupérez les |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r
    >>|cRXP_WARN_NOTE : Vous ne pourrez pas vous apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_ici car vous ne pouvez obtenir qu'un seul|r |T133736:0|t[Manuel de compréhension] |cRXP_WARN_dans votre zone de départ|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << !Paladin !Hunter
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Entrez dans Anvilmar << Rogue/Warlock/Mage
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar << !Rogue !Warlock !Mage
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .accept 1599 >> Acceptez la quête Les débuts
    .turnin 3115 >> Rendez la quête Note de service contaminée << Gnome
    .accept 77666 >> Acceptez la quête Puissance dérobée << Gnome
    .turnin 77666 >> Rendez la quête Puissance dérobée << Gnome
    .train 348 >> Apprenez [Immolation]
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r à l'intérieur
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .accept 77655 >> Acceptez la quête La Rune perdue << Dwarf
    .accept 77656 >> Acceptez la quête La Rune perdue << Gnome
    .train 6673 >>Apprenez [Cri de guerre]
    .trainer >> Apprenez vos sorts de classe
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r à l'intérieur
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .accept 77658 >> Acceptez la quête Triple vol << Dwarf
    .accept 77659 >> Acceptez la quête Triple vol << Gnome
    .train 1784 >>Apprenez [Camouflage]
    .target Solm Hargrin
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r à l'intérieur
    >>|cRXP_WARN_Apprenez|r |T135987:0|t[Mot de pouvoir : Robustesse] |cRXP_WARN_comme vous en aurez besoin pour une quête de classe bientôt|r << Dwarf
    .turnin 3110 >> Rendez la quête Rune bénie << Dwarf
    .accept 5626 >> Acceptez la quête Au service de la Lumière << Dwarf
    .accept 77661 >> Acceptez la quête Méditation sur la Lumière << Dwarf
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .target Branstock Khalder
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_Ciblez l' |cRXP_FRIENDLY_Autel de la Lumière|r à l'intérieur pour recevoir le buff |r |T135934:0|t[Méditation sur la Lumière] |cRXP_WARN_|r
    >>|cRXP_WARN_Si cela ne fonctionne pas, tapez /kneel en ciblant l' |cRXP_FRIENDLY_Autel de la Lumière|r|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >> |cRXP_WARN_Utilisez|r le |T136222:0|t|cRXP_LOOT_[Souvenir d'un acolyte tourmenté]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Pénitence)]
    .aura -410935
    .use 205951
step << Dwarf Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r à l'intérieur
    .turnin 77661 >> Rendez la quête Méditation sur la Lumière
    .target Branstock Khalder
    .isQuestComplete 77661
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock/Dwarf Priest
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>Gravez|cRXP_WARN_ vos |T132961:0|t[Gants en étoffe rapiécés] |ravec|r |T133816:0|t[Gravure de gants (Hanter)] << Warlock
    .engrave 10 >>Gravez|cRXP_WARN_ vos |T132961:0|t[Gants en étoffe rapiécés] |ravec|r |T133816:0|t[Gravure de gants (Pénitence)] << Priest
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r, |cRXP_ENEMY_Burly Rockjaw Troggs|r, |cRXP_ENEMY_Ragged Young Wolves|r, et des |cRXP_ENEMY_Ragged Timber Wolves|r sur la route
    >>Essayez d'éviter les |cRXP_ENEMY_Frostmane Troll Whelps|r
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
    .goto Dun Morogh,26.85,79.83,20 >> Entrez dans la Grotte des Frostmane
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
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .turnin 1599 >> Rendez la quête Les débuts
    .turnin -3115 >> Rendez la quête Note de service contaminée
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Quittez Anvilmar
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
#season 0,1
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
    .accept 183 >> Acceptez la quête Chasseur de sangliers
    .accept 234 >> Acceptez la quête La distribution du courrier de la Vallée des Frigères
    .target Talin Keeneye
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Rendez la quête La distribution du courrier de la Vallée des Frigères
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
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Rendez la quête Chasseur de sangliers
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
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
    .xp 3+1130 >> Monter votre expérience jusqu'à 1130+/1400xp
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
    .xp 3+995 >> Montez votre expérience jusqu'à 995+/1400xp
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
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >> Entrez dans la grotte des trolls
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
    >>Tuez les |cRXP_ENEMY_Novices Crins-de-givre|r à l'intérieur de la grotte des trolls. Dépouillez-les pour leur |cRXP_LOOT_Charmes de plume|r
    >>|cRXP_WARN_Vous avez un temps limité. Ne passez pas ABS et ne vous déconnectez pas.|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 2
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Courbenclume
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
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Rendez la quête Rune gravée << Dwarf
    .train 1978 >>Apprenez [Morsure de serpent]
step << Hunter
    #season 2
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Rendez la quête Rune gravée << Dwarf
    .accept 77660 >> Acceptez la quête Traversée dans les grottes << Dwarf
    .train 1978 >> Apprenez [Morsure de serpent]
step << Paladin
    #season 0,1
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r à l'intérieur
    .turnin 3107 >> Rendez la quête Rune consacrée << Dwarf
    .train 19740 >> Apprenez [Bénédiction de puissance]
    .train 20271 >> Apprenez [Jugement]
    .target Bromos Grummner
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r à l'intérieur
    .turnin 3107 >> Rendez la quête Rune consacrée << Dwarf
    .accept 77657 >> Acceptez la quête Reliques de la Lumière << Dwarf
    .train 19740 >> Apprenez [Bénédiction de puissance]
    .train 20271 >> Apprenez [Jugement]
    .target Bromos Grummner
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .turnin 3115 >> Rendez la quête Note de service contaminée
    .train 172 >>Apprenez [Corruption]
    .target Alamar Grimm
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alamar Grimm|r à l'étage
    .train 172 >>Apprenez [Corruption]
    .turnin 1599 >> Rendez la quête Les débuts
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
step << Warlock
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 15|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
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
    >>Tuez les |cRXP_ENEMY_Rockjaw Troggs|r et les |cRXP_ENEMY_Burly Rockjaw Troggs|r
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
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r. Dépouillez-les pour la |T134419:0|t|cRXP_LOOT_[Rune d'Ivresse de la victoire]|r << Warrior
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Crins-de-givre|r. Dépouillez-les pour le |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r << Paladin
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
    .train 403470 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune d'Ivresse de la victoire]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Ivresse de la victoire)].
    .use 204806
    .itemcount 204806,1
step << Warrior
    #season 2
    #completewith Observations
    #label Victory3
    #requires Victory2
    .equip 10 >>|cRXP_WARN_Équipez une paire de|r |T132938:0|t|cRXP_LOOT_[Gants]|r |cRXP_WARN_si vous en avez une ou si vous en trouvez une|r
    .train 403470,3
step << Warrior
    #season 2
    #completewith Observations
    #requires Victory3
    .engrave 10 >>|cRXP_WARN_Gravlez vos|r |T132938:0|t|cRXP_LOOT_[Gants]|r avec|r |T133816:0|t[Gravure de gants (Ivresse de la victoire)]
    .train 403470,3
step << Paladin
    #season 2
    #completewith Observations
    #label Libram2
    #requires Libram1
    .equip 18,205420 >> |cRXP_WARN_Équipez le|r |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r
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
    .aura 408828 >>|cRXP_WARN_Lancez|r |T135959:0|t[Jugement] |cRXP_WARN_10 fois pour obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram4
    #requires Libram3
    .cast 409920 >>|cRXP_WARN_Utilisez le|r |T134916:0|t|cRXP_LOOT_[Libram de jugement]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe du croisé)]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram5
    #requires Libram4
    .equip 10 >>|cRXP_WARN_Équipez une paire de|r |T132938:0|t|cRXP_LOOT_[Gants]|r |cRXP_WARN_si vous en avez une ou si vous en trouvez une|r
    .train 410002,3
step << Paladin
    #season 2
    #completewith Observations
    #requires Libram5
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132938:0|t|cRXP_LOOT_[Gants]|r avec|r |T133816:0|t[Gravure de gants (Frappe du croisé)]
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
    >>Tuez les |cRXP_ENEMY_Frostmane Troll Whelps|r
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
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    >>Ceci commencera un chronomètre de 5 pour la quête. Ne soyez PAS ABS ou déconnecté pour les prochaines 5 minutes
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
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
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Tuez |cRXP_ENEMY_Grik'nir the Cold|r à l'intérieur. Dépouillez-le pour le |cRXP_LOOT_Grelin Whitebeard's Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue/Hunter
    #season 2
    .goto Dun Morogh,30.773,80.063
    >>Ouvrez la |cRXP_PICK_Cache à butin crins-de-givre|r au sol à l'intérieur. Ouvrez-la pour la |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r << Rogue
    >>Ouvrez la |cRXP_PICK_Cache à butin crins-de-givre|r au sol à l'intérieur. Ouvrez-la pour la |T134419:0|t|cRXP_LOOT_[Rune de la chimère]|r << Hunter
    .collect 204795,1 << Rogue --Rune of Shadowstrike (1)
    .collect 206168,1 << Hunter -- Rune of the Chimera (1)
    .train 400105,1 << Rogue
    .train 410121,1 << Hunter
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << Hunter
    #season 2
    .train 410121 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de la chimère]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Tir de la chimère)]
    .use 206168
    .itemcount 206168,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Équipez une paire de|r |T132952:0|t|cRXP_LOOT_[Gants]|r |cRXP_WARN_si vous avez une ou si vous en trouvez une|r
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #label Chimera1
    .equip 10 >>|cRXP_WARN_Équipez une paire de|r |T132952:0|t|cRXP_LOOT_[Gants]|r |cRXP_WARN_si vous avez une ou si vous en trouvez une|r
    .train 410121,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132952:0|t|cRXP_LOOT_[Gants]|r avec|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)]
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #requires Chimera1
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132952:0|t|cRXP_LOOT_[Gants]|r avec|r |T133816:0|t[Gravure de gants (Tir de la chimère)]
    .train 410121,1
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Quittez la Grotte des Frostmane
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Acceptez la quête Une livraison de thé brûlant
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Rendez la quête Le journal volé
    .accept 282 >> Acceptez la quête Les observations de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    >>Si vous ratez la quête, passez cette étape
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandonnez Une livraison de thé brûlant. Vous la reprendrez plus tard
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Équipez une paire de|r |T132952:0|t|cRXP_LOOT_[Gants]|r |cRXP_WARN_si vous avez une ou si vous en trouvez une|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132952:0|t|cRXP_LOOT_[Gants]|r avec|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
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
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Rendez la quête Une livraison de thé brûlant
    .accept 3365 >> Acceptez la quête Rapporter la Tasse
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .accept 77667 >> Acceptez la quête Recherches sur les sorts << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 77667 >> Rendez la quête Recherches sur les sorts
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate >1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132961:0|t[Gants en étoffe rapiécés] avec|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,3
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .train 1784 >>Apprenez [Camouflage]
    .trainer >>Apprenez vos sorts de classe
    .target Solm Hargrin
step << Rogue
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >> Rendez la quête Triple vol << Dwarf
    .turnin 77659 >> Rendez la quête Triple vol << Gnome
    .train 921 >>Apprenez [Vol à la tire]
    .trainer >>Apprenez vos sorts de classe
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    >>Apprenez [Mot de pouvoir : Robustesse] et [Soins inférieurs] (Rang 2) comme vous en aurez besoin pour une quête de classe bientôt << Dwarf
    .turnin 3110 >> Rendez la quête Rune bénie << Dwarf
    .accept 5626 >> Acceptez la quête Au service de la Lumière << Dwarf
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 2052 >> Apprenez [Soins inférieurs] (Rang 2) << Dwarf
    .trainer >> Apprenez vos sorts de classe
    .target Branstock Khalder
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Apprenez|r |T135929:0|t[Soins inférieurs] (Rang 2) |cRXP_WARN_comme vous en aurez besoin pour une quête de classe bientôt|r << Dwarf
    .accept 5626 >> Acceptez la quête Au service de la Lumière << Dwarf
    .train 2052 >> Apprenez [Soins inférieurs] (Rang 2) << Dwarf
    .trainer >> Apprenez vos sorts de classe
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Rendez la quête La Rune perdue << Dwarf
    .turnin 77656 >> Rendez la quête La Rune perdue << Gnome
    .trainer >> Apprenez vos sorts de classe
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .train 116 >> Apprenez [Eclair de givre]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 3114 >> Rendez la quête Note de service glyphée << Gnome
    .accept 77667 >> Acceptez la quête Recherches sur les sorts << Gnome
    .train 1459 >> Apprenez [Intelligence des Arcanes]
    .train 116 >> Apprenez [Eclair de givre]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .turnin 77667 >> Rendez la quête Recherches sur les sorts
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipez les|r |T132961:0|t[Gants en étoffe rapiécés]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Gravez vos|r |T132961:0|t[Gants en étoffe rapiécés] avec|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Rendez la quête Note de service codée << Gnome
    .turnin 3109 >> Rendez la quête Rune codée << Dwarf
    .train 1784 >>Apprenez [Camouflage]
    .target Solm Hargrin
step << Rogue
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >> Rendez la quête Triple vol << Dwarf
    .turnin 77659 >> Rendez la quête Triple vol << Gnome
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    >>Apprenez [Mot de pouvoir : Robustesse] et [Soins inférieurs] (Rang 2) comme vous en aurez besoin pour une quête de classe bientôt << Dwarf
    .turnin 3110 >> Rendez la quête Rune bénie << Dwarf
    .accept 5626 >> Acceptez la quête Au service de la Lumière << Dwarf
    .train 1243 >> Apprenez [Mot de pouvoir : Robustesse]
    .train 2052 >> Apprenez [Soins inférieurs] (Rang 2) << Dwarf
    .trainer >> Apprenez vos sorts de classe
    .target Branstock Khalder
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Branstock Khalder|r
    .train 589 >> Apprenez [Mot de l'ombre : Douleur]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Rendez la quête Rune simple << Dwarf
    .turnin 3112 >> Rendez la quête Note de service simple << Gnome
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Rendez la quête La Rune perdue << Dwarf
    .turnin 77656 >> Rendez la quête La Rune perdue << Gnome
    .train 100 >> Apprenez [Charge]
    .train 772 >> Apprenez [Pourfendre]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Quittez Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Rendez la quête Une nouvelle menace
    .target Balir Frosthammer
step << Priest/Mage
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 5|r [Refreshing Spring Water] |cRXP_BUY_à Adlin|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
    .xp >8,1
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
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
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >> Rendez la quête Reliques de la Lumière
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >> Rendez la quête Traversée dans les grottes
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >> Abandonnez Reliques de la Lumière comme vous avez déjà une paire de |T132938:0|t[Gants] équipée << Paladin
    .abandon 77660 >> Abandonnez Traversée dans les grottes comme vous avez déjà une paire de |T132952:0|t[Gants] équipée << Hunter
step
    #label Observations
    >>Parlez au |cRXP_FRIENDLY_Montagnard Thalos|r et à |cRXP_FRIENDLY_Mano Engrenaressort|r
    .turnin 282 >> Rendez la quête Les observations de Senir
    .accept 420 >> Acceptez la quête Les observations de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Acceptez la quête Des provisions pour Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Traversez la Passe des Frigères
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
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh
#displayname 6-12 Dun Morogh << sod !Warlock
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
    #xprate <1.49
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 2145+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << Priest
    .xp 5+2415 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 2145+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << !Priest
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
    .xp 5+1817 >> Voyagez à Kharanos. Tuez des mobs jusqu'à 1817+/2800xp en tuant les |cRXP_ENEMY_Sangliers des rochers|r sur la route << Priest
    .xp 5+2222 >> Voyagez à Kharanos. Tuez des mobs jusqu'à 2222+/2800xp en tuant les |cRXP_ENEMY_Sanglier des rochers|r sur la route << !Priest
    .subzoneskip 131
step
    #xprate >1.59
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+1490 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 1490+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << Priest
    .xp 5+2030 >> Voyagez jusqu'à Kharanos. Montez votre expérience jusqu'à 2030+/2800xp en tuant des |cRXP_ENEMY_Crag Boars|r sur la route << !Priest
    .subzoneskip 131
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >> Voyagez jusqu'à Kharanos
    .mob Crag Boar
step
    #softcore
    #completewith next
    >>Faites en sorte que la zone dans laquelle vous êtes ne soit PAS la Passe des Frigères
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Rendez la quête Les observations de Senir
    .target Senir Whitebeard
step << !Priest
    #xprate <1.5
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >> Monter votre expérience jusqu'à 2690+/2800xp
step << !Priest
    #xprate 1.49-1.59
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2635 >> Montez votre expérience jusqu'à 2635+/2800xp
step << !Priest
    #xprate >1.99
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2580 >> Monter votre expérience jusqu'à 2580+/2800xp
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Apprenez vos sorts de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Achetez le|r [Grimoire de Pacte de Sang (Rang 1)] |cRXP_BUY_ si vous pouvez vous le permettre. Sinon vous pourrez l'acheter plus tard|r
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
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
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
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Hogral Bakkan
step << Mage
    #xprate <1.59
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Magis Sparkmantle|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Magis Sparkmantle
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .accept 5625 >> Acceptez la quête Vêtements de la Lumière
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Lancez |T135929:0|t[Soins inférieurs] (Rang 2) et ensuite |T135987:0|t[Mot de pouvoir : Robustesse] sur le |cRXP_FRIENDLY_Montagnard Dolf|r dehors
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    #xprate <1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .turnin 5625 >> Rendez la quête Vêtements de la Lumière
    .trainer >> Apprenez vos sorts de classe
    .target Maxan Anvol
step << Priest
    #xprate >1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maxan Anvol|r à l'intérieur
    .turnin 5625 >> Rendez la quête Vêtements de la Lumière
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .home >> Liez votre Pierre de Foyer à la Distillerie Tonnebière
    .vendor >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r << Priest/Mage/Warlock
    .target Innkeeper Belm
step << Warrior
    #xprate <1.59
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
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Montez sur le toit de l'auberge de Kharanos, puis sautez sur l'énorme tonneau. Suivez la flèche|r
    >>Ouvrez le |cRXP_PICK_Coffret poussiéreux|r. Récupérez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r] |cRXP_WARN_pour apprendre|r |T236280:0|t[Ombres meurtrières]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Tuez les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #xprate <1.5
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r et |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Ne tuez pas de |cRXP_ENEMY_Young Black Bears|r sur la route|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >> Acceptez la quête L'antre Gris
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step << Warrior/Paladin/Rogue
    #xprate 1.49-1.59
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r et |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Ne tuez pas de |cRXP_ENEMY_Young Black Bears|r sur la route|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >> Acceptez la quête L'antre Gris
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step
    #xprate >1.49 << !Warrior !Paladin !Rogue
    #xprate >1.59 << Warrior/Paladin/Rogue
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Ne tuez pas de |cRXP_ENEMY_Young Black Bears|r sur la route|r
    .accept 317 >> Acceptez la quête Ravitailler le Crache-vapeur
    .target Pilot Bellowfiz
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldin Steelgrill|r et |cRXP_FRIENDLY_Loslor Rudge|r
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
    #completewith QuarryEnd
    .cast 2580 >> Lancez [Découverte de gisements]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith BearFur
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith BearFur
    >>Tuez |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Thick Bear Fur|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Tuez les |cRXP_ENEMY_Sangliers|r. Dépouillez-les pour la |T134026:0|t[Viande de cochon de Dun Morogh]
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
    >>Tuez |cRXP_ENEMY_Young Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Thick Bear Fur|r
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
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
    >>Tuez les |cRXP_ENEMY_Large Crag Boars|r et les |cRXP_ENEMY_Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur]|cRXP_BUY_au marchand|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r en bas des escaliers à l'intérieur
    .train 2575 >>Apprenez [Minage]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
    .target Ragnar Thunderbrew
    .isQuestComplete 384
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
step << Hunter
    #optional
    .xp 6 >> Montez jusqu'au niveau 6
step << Hunter
    #optional
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .train 3044 >> Apprenez [Tir des Arcanes]
    .train 1130 >> Apprenez [Marque du chasseur]
    .target Grif Wildheart
    .money <0.02
step << Hunter
    #season 0,1
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .train 3044 >> Apprenez [Tir des Arcanes]
    .target Grif Wildheart
    .money <0.01
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .train 1130 >> Apprenez [Marque du chasseur]
    >>|cRXP_WARN_Si vous n'avez pas assez d'argent, tuez les mobs autour de Kharanos. Vous aurez besoin de ce sort très bientôt|r
    .target Grif Wildheart
step << Warrior/Rogue/Priest/Mage/Warlock
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step << Warrior/Rogue
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 >> |cRXP_BUY_Achetez-lui autant de|r |T133968:0|t[Pain sorti du four] |cRXP_BUY_que vous pouvez vous le permettre|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 >> |cRXP_BUY_Achetez autant de|r [Lait glacé] |cRXP_BUY_que vous le pouvez|r
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
    .subzone 136 >> Voyagez jusqu'à l'antre Gris
    .isOnQuest 313
step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Voyagez jusqu'à l'antre Gris
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
    >>Tuez les |cRXP_ENEMY_Wendigos|r. Dépouillez-les pour une |cRXP_LOOT_Patte sectionnée de wendigo|r
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
    >>Tuez les |cRXP_ENEMY_Wendigos|r et les |cRXP_ENEMY_Young Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Wendigo Manes|r
    >>N'oubliez pas de garder un oeil sur les [Filons de cuivre] qui possèdent des |cRXP_LOOT_[Rough Stones]|r vous permettant de fabriquer des [Pierre à aiguiser brute] << Warrior/Rogue
    >>N'oubliez pas de garder un oeil sur les [Filons de cuivre] qui possèdent des |cRXP_LOOT_[Rough Stones]|r vous permettant de fabriquer des [Caillou brut] << Paladin
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
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Achetez-lui un|r |T135611:0|t[Tromblon orné] |cRXP_BUY_|r
    >>Si vous ne pouvez pas vous le permettre, passez cette étape
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Rendez la quête Munitions pour Grondetrait
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
    .xp 7 >> Montez jusqu'au niveau 7
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
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
    >>Tuez |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Rendez la quête L'antre Gris
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur]|cRXP_BUY_au marchand|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yarr Hammerstone|r en bas des escaliers à l'intérieur
    .train 2575 >>Apprenez [Minage]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    >>|cRXP_BUY_Achetez une|r [Bière au malt Rhapsody] |cRXP_BUY_au marchand|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Thunderbrew|r à l'extérieur
    .turnin 384 >> Rendez la quête Côtes de sanglier à la bière
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
    .xp 7 >> Montez jusqu'au niveau 7
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
    .xp 8 >> Montez jusqu'au niveau 8
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Hogral Bakkan
    .xp <8,1
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Azar Stronghammer|r à l'intérieur, en haut des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Azar Stronghammer
    .xp <8,1
step << Warrior
    #xprate <1.59
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Granis Swiftaxe|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Granis Swiftaxe
    .xp <8,1
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entrez dans le bâtiment de la Forge
step << Gnome Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Glaive]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #xprate <1.59
    #completewith Tundra
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez une|r [Hache large]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #xprate <1.59
    #completewith Tundra
    +Équipez la [Hache large]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
    #completewith Tundra
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez un|r [Maillet en bois]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #xprate <1.59
    #completewith Tundra
    +Équipez le [Maillet en bois]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entrez dans la Distillerie Thunderbrew
step << Warrior/Rogue
    #xprate <1.59
    #completewith Tundra
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .vendor 1247 > |cRXP_BUY_Buy as much|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him as you can afford|r
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
    .subzone 801 >> Voyagez jusqu'à la Vallée de la Brise
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >> Voyagez vers |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,35.237,56.815
    .subzone 801 >> Voyagez jusqu'à la Vallée de la Brise
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >> Voyagez vers |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,38.517,53.927
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter
    #season 2
    .goto Dun Morogh,38.517,53.927
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter
    #season 2
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Voyagez jusqu'au Village de Brassetout
step << !Mage !Priest
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
--XX Forcing this so people are a higher level for second wave of west quests (even on 2x)
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Utilisez |T132212:0|t[Marque du chasseur] sur le |cRXP_ENEMY_Buisson frémissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier tranchecrin|r qui apparaît. Dépouillez-le pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
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
    >>Tuez |cRXP_ENEMY_Fyodi|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r << Hunter
    >>Tuez |cRXP_ENEMY_Fyodi|r. Dépouillez-le pour les |T134939:0|t|cRXP_LOOT_[Notes de sort : GDDOT EG IEVSIR]|r << Mage
    >>Tuez |cRXP_ENEMY_Fyodi|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r << Warrior
    >>|cRXP_WARN_Bien que |cRXP_ENEMY_Fyodi|r s'affiche en tant qu'élite, ses points de vie, dégâts et valeurs d'armure correspondent à ceux d'un mob Normal|r
    >>|cRXP_WARN_Attention, il lance|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 35-80 dégâts de mêlée en touchant. Uniquement à distance)|r
    >>|cRXP_WARN_NOTE :|r La |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r |cRXP_WARN_peut aussi tomber sur chaque mob rare à Dun Morogh, ainsi que de |cRXP_ENEMY_Vagash|r, de |cRXP_ENEMY_Griffe galeuse|r, et du|r |cRXP_ENEMY_Vieux Barbeglace|r << Hunter
    >>|cRXP_WARN_NOTE : Les |r |T134939:0|t|cRXP_LOOT_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_peuvent aussi tomber sur chaque mob rare à Dun Morogh, ainsi que |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Griffe galeuse|r, et le|r |cRXP_ENEMY_Vieux Barbeglace|r << Mage
    >>|cRXP_WARN_NOTE : La|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_peut aussi tomber sur chaque mob rare à Dun Morogh, ainsi que sur|cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Griffe galeuse|r, et le|r |cRXP_ENEMY_Vieux Barbeglace|r << Warrior
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
    .train 410123 >> |cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Tir explosif)]
    .use 206169
    .itemcount 206169,1
step << Mage
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Doigts de givre)]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .itemcount 211779,1 --Comprehension Charm (1)
step << Warrior
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 403476 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_pour apprendre|r |T136048:0|t[Tonnerre furieux]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >> Rendez la quête Une faveur pour un tonneau d'éternol
    .accept 320 >> Acceptez la quête Retour vers Claquesoufflet
    .target Rejold Barleybrew
step
    #hardcore
    #completewith Distracting
    .goto Dun Morogh,47.377,52.523
    .subzone 131 >> Retournez à Kharanos
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
    .xp 7+3735 >>Monter votre expérience jusqu'à 3735+/4500xp
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
    .xp 7+3355 >>Montez votre expérience jusqu'à 3355+/4500xp
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
    .xp 9+6110 >>Montez votre expérience jusqu'à 6110+/7600xp
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
    .xp 7+4360 >>Monter votre expérience jusqu'à 4360+/4500xp
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
    .xp 7+4290 >>Montez votre expérience jusqu'à 4290+/4500xp
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
    .xp 9+7320 >>Montez votre expérience jusqu'à 7320+/7600xp
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
    >>Faites le Dun Morogh -> Wetlands deathskip. Suivez la flèche méticuleusement
    >>Ne sautez pas encore de la montagne
    .zone Wetlands >>Escaladez la montagne, puis descendez les bords irréguliers jusqu'à ce que votre zone change pour les Paluns
    .isQuestAvailable 983
step
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>Sautez de la montagne vers le nord ou le nord-ouest
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r de la Baie de Baradin
    .isQuestAvailable 983
    .target Gardien des âmes
step
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nagez jusqu'au rivage vers le Port de Menethil
    .subzoneskip 150
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
    #softcore
	#completewith Distracting
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
    .subzoneskip 131
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
step << Hunter
    #xprate <1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .target Grif Wildheart
step << Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .accept 6064 >>Acceptez la quête Dompter la bête << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,48.3,56.9
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Rendez la quête Dompter la bête
    .accept 6084 >>Acceptez la quête Dompter la bête
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,49.4,59.4
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Rendez la quête Dompter la bête
    .accept 6085 >>Acceptez la quête Dompter la bête
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,50.4,59.7
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .accept 6086 >>Acceptez la quête Entraîner la bête
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Apprenez vos sorts de classe
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Achetez le|r |T133738:0|t[Grimoire d'Éclair de feu (Rang 2)] |cRXP_BUY_si vous pouvez vous le permettre. Sinon, vous pourrez l'acheter plus tard|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Rogue
    #xprate >1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    >>N'apprenez que [Ambidextrie] et [Sprint]. N'apprenez pas les autres sors pour garder votre argent pour plus tard
    .train 674 >> Apprenez [Ambidextrie]
    .train 2983 >> Apprenez [Sprint]
    .accept 2218 >> Acceptez la quête La voie du salut
    .target Hogral Bakkan
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
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
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Thamner Pol
    .money <0.01
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
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Achetez et équipez un|r [Stylet]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
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
    .vendor 1247 >> |cRXP_BUY_Achetez-lui jusqu'à 15|r [Pain sorti du four] |cRXP_BUY_si vous pouvez vous le permettre|r << Warrior/Rogue
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
    #xprate <1.49 << Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>Choisissez le [Couteau de campeur]. Gardez-le pour plus tard << Rogue
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet << !Rogue
    .turnin 320,3 >> Rendez la quête Retour vers Claquesoufflet << Rogue
    .target Pilot Bellowfiz
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Choisissez le|r |T135637:0|t[Couteau de campeur]
    .turnin 320,3 >> Rendez la quête Retour vers Claquesoufflet
    .target Pilot Bellowfiz
step << Rogue
    #xprate >1.49
    #completewith ShimmerweedCollect
    +|cRXP_WARN_Équipez le|r |T135637:0|t[Couteau de campeur] |cRXP_WARN_dans votre main gauche|r
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
    .goto 1455,18.428,82.995,60 >>Voyagez vers Forgefer
    .zoneskip Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #completewith next
    #label EnterIFRogue
    .goto 1455,18.428,82.995
    .zone Ironforge >>Entrez dans Ironforge
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
    .goto 1455,51.438,16.000,10 >>Voyagez vers |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers à l'intérieur
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers
    .turnin 2218 >> Rendez la quête La voie du salut
    .accept 2238 >> Acceptez la quête Simple subterfuge
    .target Hulfdan Blackbeard
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
    >>Tuez les |cRXP_ENEMY_Prophètes Crins-de-givre|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >> |cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    >>|cRXP_WARN_Vous devez avoir 2 buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
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
    >>Tuez les |cRXP_ENEMY_Prophètes Crins-de-givre|r. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE]|r
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #season 2
    .collect 211779,1 >>Vous devez obtenir un |T135933:0|t[Charme de compréhension] auprès d'un |cRXP_FRIENDLY_Marchand de composants|r pour utiliser les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE]|r
    .train 401768 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE]|r |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Trolls Crins-de-givre|r. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step << Warrior
    #season 2
    >>Tuez les |cRXP_ENEMY_Trolls Crins-de-givre|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de troll coupée|r
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
    >>Utilisez la |T134026:0|t[Viande de cochon de Dun Morogh] près du cadavre à l'intérieur de la grotte pour invoquer |cRXP_ENEMY_Jorul|r
    >>Tuez |cRXP_ENEMY_Jorul|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Contournement]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Contournement]|r |cRXP_WARN_pour apprendre|r |T132175:0|t[Frappe latérale]
    .use 205979
    .itemcount 205979,1
step << !Mage !Warlock
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
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
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
    .target Tundra MacGrann
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_BUY_Achetez-lui jusqu'à 10|r |T132815:0|t[Lait glacé] |cRXP_BUY_|r
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
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
step << Rogue
    #season 2
    #completewith next
    >>Utilisez le |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnomes lépreux|r. Récupérez le |T134269:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Priest
    #season 2
    >>Tuez les |cRXP_ENEMY_Gnomes lépreux|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Dun Morogh,25.164,44.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onin MacHammar|r en haut de la zone d'atterrissage
    >>|cRXP_WARN_Il est|r |T132320:0|t[Camouflé]
    .turnin 2238 >> Rendez la quête Simple subterfuge
    .accept 2239 >> Acceptez la quête Rapport d'Onin
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
    >>Tuez les |cRXP_ENEMY_Leper Gnomes|r. Dépouillez-les pour leur |cRXP_LOOT_Gears|r et leur |cRXP_LOOT_Cogs|r
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
    >>Tuez les |cRXP_ENEMY_Gnomes lépreux|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
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
    >>Utilisez le |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnomes lépreux|r. Récupérez le |T134269:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
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
    >>Tuez |cRXP_ENEMY_Frostmane Headhunters|r à l'intérieur de la grotte
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Montez sur le côté de l'entrée de la Grotte. Descendez dans le Repaire des Frostmane
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
    .xp 9+4280 >> Montez votre expérience jusqu'à 4280+/6500xp
step
    #hardcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Descendez dans la petite salle en cul-de-sac de la grotte s'il n'y a qu'un |cRXP_ENEMY_Exhalombre Crins-de-givre|r ici|r
    >>|cRXP_WARN_Faites attention comme le |cRXP_ENEMY_Grand-père Arctikus|r (rare) peut patrouiller dans ce recoin. Attendez qu'il vienne et s'en aille s'il est actif, ou combattez prudemment au bout du recoin|r
    >>|cRXP_WARN_Sinon, descendez sur la corniche, puis marchez légèrement vers le bas jusqu'à recevoir la complétion de la quête|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Ecorcheurs Crins-de-givre|r peuvent vous tuer d'en bas s'il se trouve dans la mauvaise position lorsque vous montez sur la corniche|r
    .link https://youtu.be/70PX093soq4?si=YcTdPoKW-EplWQAn&t=3019 >> Cliquez ici pour un exemple vidéo
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>Descendez dans la petite salle cul-de-sac de la grotte
    >>Ne vous préoccupez pas de votre mort parce que vous vous apprêtez à mourir et ressusciter à Kharanos
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #optional
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step
    #hardcore
	#completewith next
	.hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
    .target Senir Whitebeard
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Acceptez la quête Dompter la bête
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,48.3,56.9
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Rendez la quête Dompter la bête
    .accept 6084 >>Acceptez la quête Dompter la bête
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,49.4,59.4
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Rendez la quête Dompter la bête
    .accept 6085 >>Acceptez la quête Dompter la bête
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,50.4,59.7
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .accept 6086 >>Acceptez la quête Entraîner la bête
    .target Grif Wildheart
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hogral Bakkan|r dans la salle du fond à l'intérieur
    .accept 2218 >> Acceptez la quête La voie du salut
    .target Hogral Bakkan
    .xp <10,1
step << !Warrior !Rogue !Paladin
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
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brenwyn Wintersteel|r en bas des escaliers
    >>|cRXP_BUY_Achetez des|r [Dague de lancer équilibrée] |cRXP_BUY_à Brenwyn|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
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
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>Marchez sur le bord du sol en métal sur le point de repère
    .zone Dun Morogh >>Positionnez votre personnage jusqu'à ce qu'il apparaisse en train de flotter, puis déconnectez-vous avant de vous reconnecter
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
step << Warrior/Mage
    #season 2
    #sticky
    #optional
    #label rune1
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r << Warrior
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour les |T134939:0|t|cRXP_LOOT_[Notes de sort : GDDOT EG IEVSIR]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
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
step << Warrior
    #season 2
    #optional
    #requires rune1
    .train 403476 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_pour apprendre|r |T136048:0|t[Tonnerre furieux]
    .use 204809
    .itemcount 204809,1
step << Mage
    #optional
    #season 2
    #requires rune1
    #completewith GolBolarQuarry
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] des |cRXP_FRIENDLY_Vendeurs de composants|r pour utiliser les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre]
    .use 203753
step
    .goto Dun Morogh,63.082,49.851
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
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Voyagez jusqu'à la Carrière de Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Apprenez [Cuisine]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Achetez jusqu'à 10|r [Pain sorti du four] |cRXP_BUY_au marchand si nécessaire|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Achetez jusqu'à 5|r [Pain sorti du four] |cRXP_BUY_et|r [Lait frais] |cRXP_BUY_au marchand si nécessaire|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r et à |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
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
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r et les |cRXP_ENEMY_Briseurs d'os Mâcherocs|r. Dépouillez-les pour leur |T132889:0|t[Étoffes de lin] << Dwarf Paladin
    >>|cRXP_WARN_Gardez les|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_pour une quête à venir|r << Dwarf Paladin
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
    #requires PalaCloth << Paladin -->1.49 or higher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Foreman Stonebrow|r et à |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Rendez la quête Le serviteur public
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
    .xp 10 >> Montez jusqu'au niveau 10
    .mob Rockjaw Skullthumper
step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Espion Sombrefer|r. Récupérez la |T134331:0|t[Note de Ratnoir] et le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Espions Sombrefers|r. Récupérez la |T134331:0|t[Note de Ratnoir]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Espion Sombrefer|r. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Utilisez n'importe lequel des|r |T134327:0|t[|cRXP_LOOT_Morceaux de la carte]|r |cRXP_WARN_pour les combiner en la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Dun Morogh|r]
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
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
    .train 403475,1 << Warrior
    .train 398196,1 << Rogue
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Junni Colacier|r
    >>|cRXP_WARN_Après avoir remis les trois objets, vous recevrez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour apprendre|r |T135291:0|t[Dévaster]
    .use 204703
    .skipgossip
    .target Junni Steelpass
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Utilisez la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Dun Morogh|r] |cRXP_WARN_sous le petit pont. Cela va faire apparaître un|cRXP_PICK_ |rTrésor enfoui|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>Ouvrez le |cRXP_PICK_Trésor enfoui|r. Récupérez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r] |cRXP_WARN_pour apprendre|r |T134536:0|t[Tireur rapide]
    .use 203991
    .itemcount 203991,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Parlez à |cRXP_FRIENDLY_Ratnoir|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
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
step << Warrior/Mage
    #season 2
    #optional
    #completewith next
    >>Tuez |cRXP_ENEMY_Griffe galeuse|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r << Warrior
    >>Tuez |cRXP_ENEMY_Griffe galeuse|r. Dépouillez-le pour les |T134939:0|t|cRXP_LOOT_[Notes de sort : GDDOT EG IEVSIR]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto Dun Morogh,78.97,37.14
    >>Tuez |cRXP_ENEMY_Mangeclaw|r. Dépouillez-le pour son |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_pour apprendre|r |T136048:0|t[Tonnerre furieux]
    .use 204809
    .itemcount 204809,1
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] des |cRXP_FRIENDLY_Vendeurs de composants|r pour utiliser les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_LOOT_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_pour apprendre|r |T236227:0|t[Doigts de givre]
    .use 203753
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>|cRXP_WARN_Choisissez la|r |T135641:0|t[Dague d'artisan]|cRXP_WARN_. Gardez-la pour plus tard|r << Rogue
    .turnin 417 >> Rendez la quête La revanche du pilote << !Rogue
    .turnin 417,1 >> Rendez la quête La revanche du pilote << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>Choisissez la [Dague d'artisan]
    .turnin 417,1 >> Rendez la quête La revanche du pilote
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
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
    .subzone 924 >> Traversez la porte sud pour le Loch Modan
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
    .xp >14,1 << !Warrior !Dwarf/!Paladin
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entrez dans le bunker. Montez à l'étage
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .accept 267 >> Acceptez la quête La menace trogg
    .target Captain Rugelfuss
    .xp >14,1 << !Warrior !Dwarf/!Paladin
--XX Skip if 14+ unless warr
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
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r à l'intérieur
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .xp >14,1
--XX Skip if 14+
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>|cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r << !Rogue
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49 << Paladin
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r à l'intérieur
    .home >> Liez votre Pierre de Foyer à Thelsamar
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >> Sortez de l'auberge de Thelsamar
step << Dwarf/Gnome
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
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
    .dungeon DM << Human
step << Human
    #xprate <1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique << Mage/Warlock/Rogue
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #softcore
    #completewith flyIF
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .target Gardien des âmes
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entrez dans l'auberge de Thelsamar
step
    #optional
    #label Thelsamar1
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Poêlâtre|r à l'intérieur
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step << Dwarf Paladin
    #xprate 1.49-1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6885 >> Montez votre expérience jusqu'à 6885+/8800xp
step << Dwarf Paladin
    #xprate >1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6225 >> Montez votre expérience jusqu'à 6225+/8800xp
step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Rendez la quête L'honneur des étudiants
    .accept 6391 >> Acceptez la quête Voyage vers Forgefer
    .target Thorgrum Borrelson
step
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
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
    .goto 1455,51.438,16.000,10 >>Voyagez vers |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers à l'intérieur
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Voyagez vers |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers à l'intérieur
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers
    .turnin 2218 >> Rendez la quête La voie du salut
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers
    .turnin 2239 >> Rendez la quête Rapport d'Onin
    .target Hulfdan Blackbeard
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #label Cunning
    #completewith Ride
    +|cRXP_WARN_Équipez la|r |T135662:0|t[Lame de ruse] |cRXP_WARN_en main droite|r
    .use 7298
    .itemcount 7298,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #requires Cunning
    #completewith Ride
    +|cRXP_WARN_Équipez la|r |T135641:0|t[Dague d'artisan] |cRXP_WARN_dans votre main gauche|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #xprate <1.59
    #season 2
    .goto Ironforge,51.913,13.383
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r dehors. Récupérez la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    >>|cRXP_WARN_L'ouvrir invoquera deux |cRXP_ENEMY_Agresseurs coupe-gorges|r de niveau 10 qui vous attaqueront|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #xprate <1.59
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
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
    .goto Ironforge,51.521,26.311,10 >>Voyagez vers |cRXP_FRIENDLY_Golnir Rochorteil|r à l'intérieur du bâtiment
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
    .goto Ironforge,51.521,26.311,10 >>Voyagez vers |cRXP_FRIENDLY_Golnir Rochorteil|r à l'intérieur du bâtiment
step << Dwarf/Gnome
    #xprate <1.59 << Rogue
    #season 0,1 << Rogue
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>Voyagez vers |cRXP_FRIENDLY_Golnir Rochorteil|r à l'intérieur du bâtiment
step
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Golnir Rochorteil|r à l'intérieur
    .turnin 6391 >> Rendez la quête Voyage vers Forgefer
    .accept 6388 >> Acceptez la quête Gryth Thurden
    .target Golnir Bouldertoe
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Ne prenez PAS de trajet en vol !|r
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .accept 6392 >> Acceptez la quête Retourner vers Brock
    .target Gryth Thurden
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Voyagez vers le |cRXP_FRIENDLY_Sénateur Barin Rougepierre|r
step
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Rendez la quête Les rapports
    .target Senator Barin Redstone
step
    #xprate <1.5 << Dwarf Paladin
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Ne prenez PAS de trajet en vol !|r
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .accept 6392 >> Acceptez la quête Retourner vers Brock
    .target Gryth Thurden
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,23.131,6.143,12 >>Voyagez vers |cRXP_FRIENDLY_Brandur Martel-de-fer|r
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Acceptez la quête Le Tome de divinité
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
    .goto 1455,27.622,12.177,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 2999 >>Rendez la quête Le Tome de divinité
    .accept 1645 >>Acceptez la quête Le Tome de divinité
    .turnin 1645 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Utilisez le [|T133739:0|t|cRXP_LOOT_The Tome of Divinity|r] pour commencer la quête|r
    .accept 1646 >>Acceptez la quête Le Tome de divinité
    .use 6916
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 1646 >>Rendez la quête Le Tome de divinité
    .accept 1647 >>Acceptez la quête Le Tome de divinité
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrouille le long du cercle extérieur de Forgefer entre la Taverne de Brûlepierre et le Centre des visiteurs|r
    .turnin 1647 >>Rendez la quête Le Tome de divinité
    .accept 1648 >>Acceptez la quête Le Tome de divinité
    .turnin 1648 >>Rendez la quête Le Tome de divinité
    .accept 1778 >>Acceptez la quête Le Tome de divinité
    .unitscan John Turner
step << Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barim Jurgenstaad|r
    >>|cRXP_BUY_Achetez-lui 5|r |T135933:0|t[Charmes de compréhension] |cRXP_BUY_|r
    >>|cRXP_WARN_Ceux-ci sont nécessaires pour apprendre les runes|r
    .collect 211779,5
    .target Barim Jurgenstaad
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
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
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
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
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >> Dirigez-vous l'escalier en dessous de |cRXP_FRIENDLY_Tiza Forgeguerre|r
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
    .goto 1455,27.622,12.177,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    #xprate >1.49
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 1778 >>Rendez la quête Le Tome de divinité
    .accept 1779 >>Acceptez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Forgeguerre|r en haut des escaliers
    .turnin 1779 >>Rendez la quête Le Tome de divinité
    .accept 1783 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Martel-de-fer|r en bas des escaliers
    .trainer >> Apprenez vos sorts de classe
    .target Brandur Ironhammer
step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith DRT
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur le pilier au-dessus de |cRXP_FRIENDLY_Bink|r, puis marchez légèrement vers l'est jusqu'à la position de la flèche. Positionnez votre personnage jusqu'à ce qu'il semble flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,35.743,74.853,30,0
    .goto 1455,39.105,78.213,30,0
    .goto 1455,49.422,81.849
    >>Marchez sur le bord du sol en métal sur le point de repère
    .goto 1455,76.414,51.226,20 >>Positionnez votre personnage jusqu'à ce qu'il apparaisse en train de flotter, puis déconnectez-vous avant de vous reconnecter
    .zoneskip Ironforge,1
    .isQuestAvailable 418 --XX only if you havent turned it in yet
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur la Tête du Griffon. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Ironforge,1
    .isQuestTurnedIn 418 --XX only if you have turned in (don't need to go toward AH)
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ssf
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur la Tête du Griffon. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Ironforge,1
step << Paladin
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Voyagez vers |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur de l'auberge
    .train 425621,1
step << Paladin
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Bruart|r pour le combattre
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r
    >>|cRXP_WARN_Emmenez-le à l'étage vers le balcon, puis sautez hors de l'auberge et lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si vous en avez besoin|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Souvenez-vous d'utiliser|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur lui|r
    >>|cRXP_WARN_Ne lancez PAS|r |T135906:0|t[Bénédiction de puissance] |cRXP_WARN_accidentellement sur lui|r
    >>|cRXP_WARN_Emmenez-le à l'étage vers le balcon, puis sautez hors de l'auberge et lancez|r |T135920:0|t[Lumière sacrée] |cRXP_WARN_si vous en avez besoin|r
    >>|cRXP_WARN_Après avoir vaincu |cRXP_ENEMY_Bruart|r:|r
    >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à nouveau pour recevoir la |T134419:0|t[Rune de Réprimandes]
    >>|cRXP_WARN_S'il ne vous donne pas la|r |T134419:0|t[Rune de Réprimandes]|cRXP_WARN_, vous pourriez avoir besoin de combattre |cRXP_ENEMY_Bruart|r de nouveau|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune de Réprimandes] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Réprimandes)]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Gravez votre|r |T134596:0|t|cRXP_LOOT_[Pantalon]|r avec|r |T134596:0|t[Gravure de pantalon (Réprimandes)]
    >>|cRXP_WARN_Souvenez-vous de placer|r |T134919:0|t[Réprimandes] |cRXP_WARN_sur vos barres d'action|r
    .train 425621,3
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r et à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Apprenez les compétences Armes de jet et Masses à deux mains si vous ne l'avez pas fait auparavant
    .train 2567 >> Apprenez la compétence Armes de jet
    .target +Bixi Wobblebonk
    .goto Ironforge,62.237,89.628
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .goto Ironforge,61.177,89.508
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
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Voyagez vers |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur de l'auberge
    .train 425447,1
step << Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r à l'intérieur
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Bruart|r pour le combattre
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Emmenez-le vers le balcon d'en haut, puis sautez hors de l'auberge et utilisez un|r |T133688:0|t[Bandage] |cRXP_WARN_si vous en avez/si nécessaire|r
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
    >>Vainquez |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Soyez prudent comme il lance|r |T132939:0|t[Revers] |cRXP_WARN_(vous étourdit pendant 2 secondes)|r
    >>|cRXP_WARN_Emmenez-le vers le balcon d'en haut, puis sautez hors de l'auberge et utilisez un|r |T133688:0|t[Bandage] |cRXP_WARN_si vous en avez/si nécessaire|r
    >>|cRXP_WARN_Après avoir vaincu |cRXP_ENEMY_Bruart|r:|r
    >>Parlez à |cRXP_FRIENDLY_Bruuk Barbe-d'orge|r de nouveau pour recevoir la |T134419:0|t[Rune d’assaut frénétique]
    >>|cRXP_WARN_S'il ne vous donne pas la|r |T134419:0|t[Rune d’assaut frénétique]|cRXP_WARN_, vous pourriez avoir besoin de combattre |cRXP_ENEMY_Bruart|r de nouveau|r
    >>|cRXP_WARN_NOTE : Cela peut être difficile à faire seul. Vous devriez peut-être chercher de l'aide, sinon vous pourrez refaire cette étape plus tard dans le guide|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[Rune d’assaut frénétique] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Assaut frénétique)]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Gravez votre|r |T134596:0|t|cRXP_LOOT_[Pantaton]|r |cRXP_WARN_avec|r |T134596:0|t[Gravure de pantalon (Assaut frénétique)]
    .train 425447,3
step << skip --logout skip << Paladin/Warrior
    #season 2
    #optional
    #completewith DRT
    .goto 1455,72.481,74.910
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur les bougies sur la table. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto Ironforge,70.86,85.83,15 >>Voyagez vers |cRXP_FRIENDLY_Belia Tonnegranit|r
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .turnin 6086 >> Rendez la quête Entraîner la bête
    .target Belia Thundergranite
step << skip --logout skip << Hunter
    #optional
    #completewith DRT
    .goto 1455,70.408,85.520
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Placez-vous sur le canon. Effectuez un Logout skip en vous déconnectant et vous reconnectant|r
step
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu dans le Tram des profondeurs
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
step
    >>Utilisez le |T133942:0|t[Pipeau du dératiseur] sur les |cRXP_FRIENDLY_Rats des profondeurs|r dans le Tram des profondeurs
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu dans le Tram des profondeurs
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .timer 11,Chasse au rat dans les profondeurs RP
    .accept 6662 >> Acceptez la quête Mon frère, Nipsy
    .target Monty
----
step
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
step
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
step
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
step
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
step
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
step
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
----
step
    #label TramEnd
    >>|cRXP_WARN_Prenez le Tram des profondeurs du côté Hurlevent|r
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins]|cRXP_WARN_ en attendant le Tram vers Hurlevent si nécessaire|r << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nipsy|r sur la plateforme centrale du côté Hurlevent dans le Tram des profondeurs
    .turnin 6662 >> Rendez la quête Mon frère, Nipsy
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step
    #optional
    #completewith Order
    .abandon 6662 >> Abandonnez la quête Mon frère, Nipsy
step
    #optional
    #completewith Order
    .zone Stormwind City >> Entrez dans Stormwind
    .isOnQuest 1338
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
    .target Grimand Elmore
step
    #label Order
    .goto StormwindClassic,58.091,16.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
    .target Furen Longbeard
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    #season 2
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Parlez au |cRXP_FRIENDLY_Frère Romulus|r
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
    >>Descendez les escaliers dans le côté ouest de la crypte de la cathédrale
    .goto StormwindClassic,32.86,24.77,8 >>Allez vers la |cRXP_LOOT_Note calcinée|r dans la crypte
    .train 410015,1
step << Paladin
    #season 2
    .goto StormwindClassic,32.86,24.87
    >>Ramassez la |cRXP_LOOT_Note calcinée|r à côté des bougies
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step << Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Apprenez vos sorts de classe
    .turnin 5634 >> Rendez la quête Prière du désespoir
    .target High Priestess Laurena
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 13908 >> Apprenez Prière du désespoir
    .target High Priestess Laurena
step << Warrior
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Apprenez vos sorts de classe
    .accept 1638 >> Acceptez la quête L'entraînement du guerrier
    .target Ilsa Corbin
step << Warrior
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Entrez dans la Taverne
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Rendez la quête L'entraînement du guerrier
    .accept 1639 >> Acceptez la quête Bartleby le poivrot
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Rendez la quête Bartleby le poivrot
    .accept 1640 >> Acceptez la quête Battre Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Vainquez |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Rendez la quête Battre Bartleby
    .accept 1665 >> Acceptez la quête Tasse de Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Rendez la quête Tasse de Bartleby
    .target Harry Burlguard
step << Warlock
    #optional
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
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Achetez la compétence pour porter des épées à une main << Rogue/Mage
    .trainer >>Apprenez la compétence Bâtons << Priest/Hunter
    .trainer >>Achetez la compétence pour porter les Épées à une main et les Bâtons << Warlock
    .trainer >>Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin
    .target Woo Ping
step << Dwarf Paladin
    #xprate <1.5
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Allison|r
    .home >> Liez votre Pierre de foyer à Hurlevent
    .target Innkeeper Allison
]])

RXPGuides.RegisterGuide([[
#xprate >1.49
#classic
#tbc
#season 0,1
#version 1
<< Gnome Warlock
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 11-12 Quête Marcheur du Vide
#displayname 12-13 Quête Marcheur du Vide << SoD
#next 12-14 Loch Modan (Nain/Gnome)

step
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1688 >> Acceptez la quête Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step
    #optional
    #completewith next
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Quittez Stormwind
step
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
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
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Hogger|r en boucle et utilisez vos DoTs pour le tuer|r
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #softcore
    #optional
    #completewith next
    .deathskip >> Mourez et ressuscitez à Comté-de-l'Or
step
    .goto Elwynn Forest,42.108,65.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176,3 >> Rendez la quête On recherche : "Lardeur"
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
    >>Tuez les |cRXP_ENEMY_Sangliers Rochecuirs|r. Dépouillez-les pour obtenir leur |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
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
    >>Tuez les |cRXP_ENEMY_Sangliers Rochecuirs|r. Dépouillez-les pour obtenir leur |T133970:0|t|cRXP_LOOT_[Morceaux de viande de sanglier]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les sangliers que vous rencontrez|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Tuez |cRXP_ENEMY_Surena Caledon|r. Dépouillez-la pour son |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Concentrez-vous sur le fait de tuer |cRXP_ENEMY_Surena Caledon|r très rapidement|r
    >>Lancez [Peur] |cRXP_WARN_sur |cRXP_ENEMY_Morgan the Collector|r en boucle|r
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
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
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
    >>Tuez les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour leur |T133970:0|t|cRXP_LOOT_[Viandes de loup maigre]|r
    >>|cRXP_WARN_Ne changez pas votre route pour le faire maintenant. Tuez et dépouillez simplement tous les loups que vous rencontrez|r
    .collect 2672,50,86,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Acceptez la quête Des gnolls encombrants
    .target Guard Parker
step
    #xprate >1.49
    .goto Redridge Mountains,29.31,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shawn|r
    >>Faites attention aux créatures de haut niveau sur la route
    .accept 3741 >> Acceptez la quête Le collier d'Hilary
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
    >>|cRXP_WARN_Nagez sous l'eau et vérifiez les emplacements où il peut apparaître. Il y a 8 emplacements avec 2 apparitions en même temps|r.
    >>Ouvrez la |cRXP_PICK_Boue luisante|r. Récupérez le |cRXP_LOOT_Collier d'Hilary|r
    .complete 3741,1 --Hilary's Necklace (1)
    .isOnQuest 3741
step
    #xprate >1.49
    .goto Redridge Mountains,29.24,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hilary|r depuis le lac en lui parlant pendant un saut
    >>|cRXP_WARN_Vous pouvez lui parler en étant dans le lac en sautant directement sous elle|r
    .turnin 3741 >> Rendez la quête Le collier d'Hilary
    .target Hilary
    .isQuestComplete 3741
step
    #xprate >1.49
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Rendez la quête Des gnolls encombrants
    .target Deputy Feldon
step
    #xprate <1.49
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
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
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
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement au Loch Modan très bientôt:|r
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
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
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Rendez la quête Surena Caledon
    .accept 1689 >> Acceptez la quête Le lien
    .target Gakin the Darkbinder
step
    #optional
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 7728 >> Utilisez l'[Echarpe de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step
    .goto StormwindClassic,25.154,77.406
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .use 6928
    .mob Summoned Voidwalker
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1689 >> Rendez la quête Le lien
    .target Gakin the Darkbinder
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
<< Alliance !Hunter
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Nain/Gnome)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Nain/Gnome)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +Lancez |T136126:0|t[Connexion] à plusieurs reprises jusqu'à ce que vous ayez moins de 10% de points de vie en vous dirigeant vers |cRXP_FRIENDLY_Dungar Grangodet|r
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Grangodet|r.
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step << Warlock
    #softcore
    #optional
    #completewith next
    >>Lancez |T136126:0|t[Connexion] à plusieurs reprises jusqu'à ce que vous ayez moins de 10% de points de vie, puis sautez du rebord (PAS dans l'eau) à côté du Maître des vols et mourez intentionnellement
    .deathskip >> Ressuscitez au Gardien des âmes.
    .target Gardien des âmes
step
    #optional
    #completewith next
    .subzone 87 >> Voyagez vers Goldshire
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
    >>|cRXP_WARN_Prioritisez l'apprentissage de |r |T132147:0|t[Ambidextrie]
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Apprenez vos sorts de classe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Acceptez la quête Péril en la rivière
    .accept 47 >> Acceptez la quête L'échange de poussière d'or
step << Warlock
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step << Paladin
    #season 2
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 176 >> Acceptez la quête On recherche : "Lardeur"
    .goto Elwynn Forest,24.548,74.672
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
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    >>Le [|cRXP_LOOT_Gold Pickup Schedule|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    >>|cRXP_ENEMY_Gruff Swiftbite|r est un mob rare, qui possède un taux de chance de tomber cet objet de 100%
    .use 1307 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gold Pickup Schedule|r] pour commencer la quête|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acceptez la quête Le collecteur
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
    >>Tuez |cRXP_ENEMY_Hogger|r. Dépouillez-les pour leur |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r peut apparaître à de nombreux endroits
    >>Cette quête est difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Voyagez vers |cRXP_FRIENDLY_Ada Gelhardt|r sur l'île
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Paladin
    #season 2
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Parlez à |cRXP_FRIENDLY_Ada Gelhardt|r pour commencer le combat
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
    >>Vainquez |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Souvenez-vous de lancer|r |T135924:0|t[Sceau du Croisé] |cRXP_WARN_sur elle|r
    >>|cRXP_WARN_Soyez prudent, elle lance|r |T136197:0|t[Horion de l'ombre] |cRXP_WARN_(inflige instantanément 45 dégâts d'ombre. Coûte 75 mana. Vous devriez la tuer assez vite pour qu'elle ne le lance que 3 fois)|r
    >>|cRXP_WARN_Après avoir vaincu |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Parlez à |cRXP_FRIENDLY_Ada Gelhardt|r de nouveau pour recevoir le |T134419:0|t[Testament de martyr]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX Must have had the Charred Note to unlock the dialogue
step << Paladin
    #season 2
    #sticky
    .destroy 205864 >> Supprimez la |T134939:0|t[Note calciné] de vos sacs, comme vous n'en avez plus besoin
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Utilisez le|r |T134419:0|t[Testament de martyr] |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Sceau du martyr)]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
step << Paladin
    #season 2
    .goto Westfall,36.24,54.52
    .engrave 5 >>|cRXP_WARN_Gravez votre|r |T134596:0|t|cRXP_LOOT_[Plastron]|r avec|r |T133815:0|t[Gravure de plastron - Sceau du martyr]
    >>|cRXP_WARN_Souvenez-vous de placer|r |T135961:0|t[Sceau du martyr] |cRXP_WARN_sur vos barres d'action. Il est meilleur que le|r |T132325:0|t[Sceau de piété] |cRXP_WARN_et le|r |T132347:0|t[Sceau d'autorité] |cRXP_WARN_(jusqu'à ce que vous obteniez|r |T133815:0|t[Gravure de plastron (Tempête divine)]|cRXP_WARN_)|r
    .train 410015,3
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
    #completewith next
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Dépouillez-les pour leur |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>Les mobs niveau 5 peuvent être gris pendant cette quête. Faites-la quand même car vous aurez besoin de cette quête pour en débloquer les suites
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,38.677,81.778,50,0
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
    #softcore
    #completewith GoldshireTurnins
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >> Voyagez vers Goldshire
step
    #hardcore
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .target Remy "Two Times"
step << Paladin
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 176,2 >> Rendez la quête On recherche : "Lardeur"
    .isQuestComplete 176
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 176,3 >> Rendez la quête On recherche : "Lardeur"
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
step
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Rendez la quête Le collecteur
    .isOnQuest 123
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 147 >> Acceptez la quête Chasse à l'homme
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .accept 61 >> Acceptez la quête Une cargaison pour Hurlevent
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    >>Ne vendez PAS le [Sac de billes]. C'est un objet incroyablement précieux jusqu'au niveau 60
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
step
    #completewith next
    .goto Elwynn Forest,73.973,72.179,30 >> Voyagez à l'est vers le |cRXP_FRIENDLY_Garde Thomas|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Rendez la quête Inquiétudes supplémentaires
    .target Guard Thomas
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
    .mob +Young Forest Bear
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
step
    #completewith Deed
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur [|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Westfall Deed|r] pour commencer la quête|r
    >>Le [|cRXP_LOOT_Westfall Deed|r] ne tombe que très rarement. Ignorez cette étape si vous n'arrivez pas à l'avoir
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acceptez la quête Titre de propriété de Froncebouille
step << Warlock
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
    #era
    #completewith next
    >>Tuez les |cRXP_ENEMY_Defias Bandits|r. Dépouillez-les pour leur |cRXP_LOOT_ Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>Tuez |cRXP_ENEMY_Princess|r. Dépouillez-la pour son |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesse|r |cRXP_WARN_ramènera avec elle ses deux|r |cRXP_ENEMY_Entourage porcin|r
    >>|cRXP_ENEMY_Princess|r utilisera aussi [Assaut fulgurant] qui inflige de lourd dégâts
    .complete 88,1
    .mob Princess
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
    .isOnQuest 83
step
    #era
    #softcore
    #sticky
    #completewith next
    .deathskip >>Mourez et ressuscitez au Gardien des âmes si vous êtes bas en vie, sinon revenez simplement et rendez la quête
    .target Gardien des âmes
step
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Rendez la quête Articles rouges en lin
    .isQuestComplete 83
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
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Rendez la quête Une cargaison pour Hurlevent
    >>Choisissez en récompense de quête les [Roquette explosive]. Elles infligent de bon dégâts et peuvent être utilisées pour "Split pull" ce qui peut être incroyablement utile
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling", cette vidéo est courte et très utile à apprendre
    .target Morgan Pestle
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
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
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes plus rapidement au Loch Modan très bientôt:|r
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
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
    .cast 7728 >> Utilisez l'[Echarpe de pierre de sang] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #softcore
    #completewith next
    +Lancez |T136126:0|t[Connexion] en remontant vers |cRXP_FRIENDLY_Gakin le Tisse-noir|r comme vous allez bientôt faire un deathskip
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Rendez la quête Le lien
step << Warlock
    #softcore
    .deathskip >> Mourez et ressuscitez au Gardien des âmes en utilisant |T136126:0|t[Connexion] et en vous tenant sur le bûcher près de vous
    .target Gardien des âmes
step
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Quittez Stormwind. Voyagez vers Goldshire
step << Warlock
    #era
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >> Rendez la quête Chasse à l'homme
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >> Rendez la quête Chasse à l'homme
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Rendez la quête Remettre le rapport de Thomas
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Apprenez vos sorts de classe
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
step << Dwarf Paladin
    >>Tuez les |cRXP_ENEMY_Rivepattes chétifs|r et les |cRXP_ENEMY_Estafettes Rivepattes|r. Dépouillez-les pour leur |T132889:0|t[Étoffe de lin]
    >>|cRXP_WARN_Assurez-vous d'avoir 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour votre prochaine quête de classe (Paladin)|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Farmer Furlbrow|r et à |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Acceptez la quête Le cadeau oublié
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 151 >> Acceptez la quête Pauvre Vieille Blanchette !
    .accept 36 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saldean le fermier|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Acceptez la quête Les champs de mort
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> Rendez la quête Le ragoût de la marche de l'Ouest
    .accept 38 >> Acceptez la quête Le ragoût de la marche de l'Ouest
    .accept 22 >> Acceptez la quête La tourte au foie de broche-tripes
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
    .goto Westfall,56.33,47.52
    .turnin 109 >> Rendez la quête Aller voir Gryan Roidemantel
    .accept 12 >> Acceptez la quête La milice du peuple
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 12 >> Acceptez la quête La milice du peuple
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Danuvin|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >> Acceptez la quête Patrouilles dans la marche de l'Ouest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Éclaireur Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Acceptez la quête Les masques en cuir rouge
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .fly Stormwind >> Volez à Stormwind << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >> Utilisez votre Pierre de foyer pour revenir au Loch Modan
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
]])

RXPGuides.RegisterGuide([[
#era/som--h
#classic
#tbc
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Nain/Gnome)
#displayname 12-15 Loch Modan << SoD !Warlock
#displayname 13-15 Loch Modan << SoD Warlock
#next 13-15 Marche de l’Ouest;14-16 Sombrivage
#defaultfor Gnome/Dwarf


step << Rogue
    #xprate >1.49
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre, ou achetez des meilleures armes à l'Hôtel des ventes|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate >1.49
    #optional
    #label Scimitar1
    #completewith KeenT
    +|cRXP_WARN_Équipez la|r |T135343:0|t[Cimeterre] |cRXP_WARN_dans votre main droite|r
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #xprate >1.49
    #optional
    #requires Scimitar1
    #completewith KeenT
    +|cRXP_WARN_Équipez la|r |T135343:0|t[Cimeterre] |cRXP_WARN_dans votre main gauche|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #label CutlassE
    #completewith KeenT
    +Équipez le [Coutelas] dans votre main droite
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #requires CutlassE
    #completewith KeenT
    +|cRXP_WARN_Équipez la|r |T135346:0|t[Dague d'artisan] |cRXP_WARN_en main gauche|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith next
    .goto 1453,57.764,61.412,6 >> Entrez dans la boutique Marchandise quotidienne
step << Rogue
    #optional
    #label KeenT
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Achetez-lui les|r |T135425:0|t[Couteaux de lancer effilé] |cRXP_BUY_|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Achetez-lui les|r |T135641:0|t[Dagues de lancer équilibrées] |cRXP_BUY_chez lui|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    +Équipez les [Couteau de lancer perçant]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    +Équipez les [Dague de lancer équilibrée]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate 1.49-1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
step
    #xprate >1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
    .dungeon !DM
step
    #season 0,1 << Paladin
    #xprate >1.49
    .hs >> Utilisez votre Pierre de foyer pour revenir au Loch Modan
    .cooldown item,6948,>180--wait for cd if <3min
    .zoneskip Loch Modan
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    #optional
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Volez jusqu'au Loch Modan
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
    .goto Ironforge,23.131,6.143,12 >>Voyagez vers |cRXP_FRIENDLY_Brandur Martel-de-fer|r
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Acceptez la quête Le Tome de divinité
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
    .goto 1455,27.622,12.177,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 2999 >>Rendez la quête Le Tome de divinité
    .accept 1645 >>Acceptez la quête Le Tome de divinité
    .turnin 1645 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Utilisez le [|T133739:0|t|cRXP_LOOT_Tome de divinité|r] pour commencer la quête|r
    .accept 1646 >>Acceptez la quête Le Tome de divinité
    .use 6916
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 1646 >>Rendez la quête Le Tome de divinité
    .accept 1647 >>Acceptez la quête Le Tome de divinité
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrouille le long du cercle extérieur de Forgefer entre la Taverne de Brûlepierre et le Centre des visiteurs|r
    .turnin 1647 >>Rendez la quête Le Tome de divinité
    .accept 1648 >>Acceptez la quête Le Tome de divinité
    .turnin 1648 >>Rendez la quête Le Tome de divinité
    .accept 1778 >>Acceptez la quête Le Tome de divinité
    .unitscan John Turner
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >> Dirigez-vous l'escalier en dessous de |cRXP_FRIENDLY_Tiza Forgeguerre|r
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
    .goto 1455,27.622,12.177,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Tiza Battleforge|r en haut des escaliers
step << Dwarf Paladin
    #xprate <1.5
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 1778 >>Rendez la quête Le Tome de divinité
    .accept 1779 >>Acceptez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Forgeguerre|r en haut des escaliers
    .turnin 1779 >>Rendez la quête Le Tome de divinité
    .accept 1783 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Paladin
    #xprate <1.5
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Achetez-lui une|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r
    .target Yanni Stoutheart
step << !Hunter
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Achetez des|r |T133968:0|t[Pain sorti du four] |cRXP_BUY_si nécessaire|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Achetez-lui des|r |T133968:0|t[Pain sorti du four] |cRXP_BUY_et du|r |T132815:0|t[Lait glacé] |cRXP_BUY_ si nécessaire|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Rendez la quête Retourner vers Brock
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    >>|cRXP_WARN_Ne vous attardez sur cette quête car vous allez probablement la passer|r
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
    .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto Loch Modan,35.93,22.55
    >>Ouvrez les |cRXP_PICK_Caisses de la Ligue des mineurs|r à l'intérieur de la mine. Récupérez-y les |cRXP_LOOT_Equipements de mineur|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto Loch Modan,35.93,22.55
    >>Ouvrez les |cRXP_PICK_Caisses de la Ligue des mineurs|r à l'intérieur de la mine. Récupérez-y les |cRXP_LOOT_Equipements de mineur|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto Loch Modan,42.867,9.885
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
    .goto Loch Modan,42.867,9.885
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
    #xprate >1.59
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
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
    .goto 1432,24.279,17.959,12 >> Entrez dans le bunker
step
    #optional
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto Loch Modan,24.77,18.40
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
    .isQuestComplete 416
step
    #xprate >1.59
    #optional
    #sticky
    #label RatAbandon
    .abandon 416 >> Abandonnez la quête Chasse au rat
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entrez dans l'auberge de Thelsamar
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
    .target Vidra Hearthstove
step << !Dwarf/!Paladin --XX Dwarf palas need to do class q
    #season 0,1 << Warrior/Mage --SoD warriors and mages need to do rune (Quick Strike, Living Bomb)
    #optional
    #sticky
    #label DefenseAbandon
    .abandon 224 >> Abandonnez la quête À la défense des terres du roi
    .xp <14,1
step << !Dwarf/!Paladin
    #season 0,1 << Warrior/Mage
    #optional
    #sticky
    #label TroggAbandon
    .abandon 267 >> Abandonnez la quête La menace trogg
    .xp <14,1
step
    #label FlintTinder
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Yanni|r
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
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
    #season 0,1 << Warrior/Mage
    #xprate <1.5
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+9600 >> Montez votre expérience jusqu'à 9600+/11400xp
step
    #season 0,1 << Warrior
    #xprate 1.49-1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+8700 >> Tuez des mobs jusqu'à ce que votre expérience soit à 8700+/11400xp
step
    #season 0,1 << Warrior
    #xprate >1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+7800 >> Tuez des mobs jusqu'à ce que votre expérience soit à 7800+/11400xp
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Montez le chemin de terre et ensuite descendez dans le bunker
step
    #label TroggEnd
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .turnin 267 >> Rendez la quête La menace trogg
    .target Captain Rugelfuss
    .isQuestComplete 267 << !Dwarf/!Paladin
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Rendez la quête À la défense des terres du roi
    .target Mountaineer Cobbleflint
    .isQuestComplete 224 << !Dwarf/!Paladin
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Volez à Ironforge
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
    .zone Dun Morogh >> Voyagez vers Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_Utilisez le|r |T133439:0|t[Symbole de vie] |cRXP_WARN_sur |cRXP_FRIENDLY_Narm Faulk|r au sol|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Rendez la quête Le Tome de divinité
    .accept 1784 >>Acceptez la quête Le Tome de divinité
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Tuez les |cRXP_ENEMY_Dark Iron Spies|r. Dépouillez-les pour leur |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy

----Start of <1.5x IF->Westfall Section----

step << Mage/Priest/Warlock
    #xprate <1.5
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harick Boulderdrum|r en bas des escaliers
    >>|cRXP_WARN_Achetez-lui une|r |T135468:0|t[Baguette fumante] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    #xprate <1.5
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
step << Priest
    #xprate <1.5
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur le pilier au-dessus de |cRXP_FRIENDLY_Bink|r, puis marchez légèrement vers l'est jusqu'à la position de la flèche. Positionnez votre personnage jusqu'à ce qu'il semble flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.5
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers
    .turnin 2218 >> Rendez la quête La voie du salut
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate <1.5
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Apprenez vos sorts de classe
    .target Fenthwick
step << Warlock
    #xprate <1.5
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn
step << Warlock/Rogue
    #xprate <1.5
    #optional
    #label Jubahl
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >> Entrez dans la maison de |cRXP_FRIENDLY_Jubahl Corpseseeker|r
step << Warlock
    #xprate <1.5
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Achetez un|r [Grimoire de Consumer l'ombre (Rang 1)] |cRXP_BUY_et un|r [Grimoire de Sacrifice (Rang 1)] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #xprate <1.5
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Allez sur le lit, puis sautez sur la bibliothèque. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Bilban Cléamornifles|r
step << Warrior
    #xprate <1.5
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
step << skip --logout skip << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Sautez sur le présentoir d'armes. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Coupebraquet Tournepignon|r
    .vendor 5175 >> Achetez un [Tube en bronze] |cRXP_BUY_à Neal (si il en a en stock)|r
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
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Stormwind City
step << !Paladin
    #xprate <1.5
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
step << !Paladin
    #xprate <1.5
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
step << !Paladin
    #xprate <1.5
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
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
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
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
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
    >>|cRXP_WARN_Montez le niveau de compétence de vos|r |T135966:0|t[Premiers soins]|cRXP_WARN_ en attendant le Tram vers Hurlevent si nécessaire|r << Rogue/Warrior/Paladin
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
    .zone Stormwind City >> Prenez le Tram des profondeurs pour vous rendre à Hurlevent
step << Dwarf Paladin
    #xprate <1.5
	#completewith PaladinTrainSW
    .hs >> Utilisez votre Pierre de foyer pour revenir à Stormwind
step << Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
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
    .goto StormwindClassic,42.51,33.51,20 >> Voyagez jusqu'à la Cathédrale de Stormwind
step << Paladin
    #xprate <1.5
    #label PaladinTrainSW
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Apprenez vos sorts de classe
    .target Arthur the Faithful
step << Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acceptez la quête Débuts modestes
    .target Baros Alexston
step
    #xprate <1.5
    #completewith Fly2WF
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> Achetez un [Tube en bronze] |cRXP_BUY_à Neal (si il en a en stock)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acceptez la quête Débuts modestes
    .target Baros Alexston
step << Rogue
    #xprate <1.5
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre ou prenez une meilleure arme à l'Hôtel des ventes|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate <1.5
    #optional
    #completewith next
    +Équipez la [Cimeterre]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez une|r |T135144:0|t[Baguette magique supérieure] |cRXP_BUY_si vous pouvez vous la permettre|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << !Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Achetez des|r |cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_et/ou|r |cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_pour monter le niveau de compétence de votre|r [Cuisine] |cRXP_BUY_plus tard|r
    >>Vous aurez besoin d'un niveau de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement à la Marche de l'Ouest et à Sombrivage:|r
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
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
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Achetez-lui une|r |T135468:0|t[Baguette fumante] |cRXP_WARN_|r
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
    +Équipez la [Baguette de fonte]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #xprate <1.5
    #label Fly2WF
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Volez vers la Marche de l'Ouest
    .target Dungar Longdrink

----End of <1.5x IF->Westfall Section----
----Start of >1.5x+ IF->Darkshore Section----

step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Effectuez un Logout skip dans la mine pour vous téléporter vers Forgefer
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> CLIQUEZ ICI pour un guide vidéo
step << Dwarf Rogue/Gnome Rogue
    #xprate 1.49-1.59
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hulfdan Barbe-noire|r en bas des escaliers
    .turnin 2218 >> Rendez la quête La voie du salut
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate >1.49
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Apprenez vos sorts de classe
    .target Fenthwick
step << Rogue
    #xprate >1.49
    #optional
    #requires Salvation
step << Warlock
    #xprate >1.49
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn
step << Warlock
    #xprate >1.49
    #optional
    #label Jubahl
    #completewith next
    .goto 1455,53.164,7.037,10 >> Entrez dans la maison de |cRXP_FRIENDLY_Jubahl Corpseseeker|r
step << Warlock
    #xprate >1.49
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Achetez un|r [Grimoire de Consumer l'ombre (Rang 1)] |cRXP_BUY_et un|r [Grimoire de Sacrifice (Rang 1)] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Jubahl Corpseseeker
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10 >> Voyagez vers |cRXP_FRIENDLY_Muiredon Forgeguerre|r à l'étage
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muiredon Forgeguerre|r en haut des escaliers
    .turnin 1784 >>Rendez la quête Le Tome de divinité
    .accept 1785 >>Acceptez la quête Le Tome de divinité
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tiza Forgeguerre|r en haut des escaliers
    .turnin 1785 >>Rendez la quête Le Tome de divinité
    .target Tiza Battleforge
step << Paladin
    #xprate >1.49
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Beldruk Ruinefront|r
    .trainer >> Apprenez vos sorts de classe
    .target Beldruk Doombrow
step << skip --logout skip << Paladin
    #xprate >1.49
    #ssf
    #hardcore << !Human
    #optional
    .goto 1455,25.254,10.981
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur l'un des piliers au-dessus de |cRXP_FRIENDLY_Toldren Fer-du-fond|r, positionnez votre personnage jusqu'à ce qu'il semble flotter, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << Mage
    #xprate >1.49
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dink|r
    .trainer >> Apprenez vos sorts de classe
    .target Dink
step << Priest
    #xprate >1.49
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
step << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harick Boulderdrum|r en bas des escaliers
    >>|cRXP_WARN_Achetez-lui une|r |T135468:0|t[Baguette fumante] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Warrior
    #xprate >1.49
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Dirigez-vous vers |cRXP_FRIENDLY_Bilban Cléamornifles|r
step << Warrior
    #xprate >1.49
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
step << Warrior
    #xprate >1.49
    #optional
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Apprenez la compétence Armes de jet
    .target Bixi Wobblebonk
step << skip --logout skip << Warrior
    #xprate >1.49
    #optional
    #ssf
    #hardcore << !Human
    #completewith next
    .goto 1455,48.046,83.707
    >>Marchez sur le bord du sol en métal sur le point de repère
    .zone Dun Morogh >>Positionnez votre personnage jusqu'à ce qu'il apparaisse en train de flotter, puis déconnectez-vous avant de vous reconnecter
    .zoneskip Ironforge,1
step << Rogue
    #xprate >1.49
    #ah
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenil Furie-d'acier|r en bas des escaliers
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre ou prenez une meilleure arme à l'Hôtel des ventes|r
    .collect 2027,1 --Scimitar
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grenil Furie-d'acier|r en bas des escaliers
    >>|cRXP_BUY_Achetez-lui jusqu'à 2|r |T135343:0|t[Cimeterres] |cRXP_BUY_si vous pouvez vous le permettre|r
    .collect 2027,1 --Scimitar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Rogue
    #xprate >1.49
    #optional
    #completewith next
    +Équipez la [Cimeterre]
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
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur le présentoir d'armes. Effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #sticky
    #label Wand1
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Achetez une|r |T135144:0|t[Baguette magique supérieure] |cRXP_BUY_si vous pouvez vous la permettre|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans Sombrivage:|r
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
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
    +Équipez la [Baguette magique supérieure]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << skip --logout skip
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur la |cRXP_PICK_Boîte aux lettres|r, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>17.49 << Mage/Priest/Warlock
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harick Boulderdrum|r en bas des escaliers
    >>|cRXP_WARN_Achetez-lui une|r |T135468:0|t[Baguette fumante] |cRXP_WARN_|r
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
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur le porte-vêtements, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Ironforge,1
step << skip --logout skip << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    #hardcore << !Human
    .goto 1455,23.197,16.959
    .zone Dun Morogh >>|cRXP_WARN_Sautez sur le porte-vêtements, puis effectuez un Logout skip en vous déconnectant et en vous reconnectant|r
    .zoneskip Ironforge,1
step << Dwarf/Gnome
    #xprate >1.49
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Volez aux Paluns
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #hardcore << !Human
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Quittez Ironforge
step
    #xprate >1.49
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Dirigez-vous vers l'endroit pour passer de Dun Morogh -> Wetlands (skip)
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
    >>Regardez la vidéo pour un guide du skip en premier lieu!
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Wetlands Crocolisks|r et les |cRXP_ENEMY_Murlocs|r en passant par l'eau|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> Cliquez ici pour un guide vidéo
    .goto Wetlands,12.1,60.3,80 >> Voyagez vers le Port de Menethil
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
    >>Faites le Dun Morogh -> Wetlands deathskip. Suivez la flèche méticuleusement
    >>Ne sautez pas encore de la montagne
    .goto 1415,44.910,52.030,15 >>|cRXP_WARN_Escaladez la montagne, puis descendez en passant le motif dentelé jusqu'à ce que votre zone change en la Grande mer|r
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
    >>Sautez de la montagne vers le nord ou le nord-ouest
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Spirit Healer|r de la Baie de Baradin
    .isQuestAvailable 984
    .target Gardien des âmes
step << Human
    #xprate >1.49
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nagez jusqu'au rivage vers le Port de Menethil
    .subzoneskip 150
step
    #xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r dans l'étage inférieure de la caserne
    .vendor 1448 >> Achetez un [Tube en bronze] |cRXP_BUY_à Neal (si il en a en stock)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Quittez le donjon de Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
    #xprate >1.49
    #hardcore << !Human
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r à l'extérieur
    .fp Wetlands>> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
    #xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r à l'intérieur
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
step
    #xprate >1.49
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Allez sur le quai du bateau pour Auberdine
    .zoneskip Darkshore
step
    #xprate >1.49
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
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
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage

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
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh (Chasseur)
#displayname 6-11 Dun Morogh
#next 11-13 Loch Modan (Chasseur)
#defaultfor Dwarf Hunter



step
    #completewith ribs1
    >>Tuez les |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur|cRXP_LOOT_[Chunks of Boar Meat]|r et leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Voyagez jusqu'à Kharanos
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Rendez la quête Les observations de Senir
    .target Senir Whitebeard
step
    #label ribs1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ragnar Tonnebière|r.
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Acceptez la quête Côtes de sanglier à la bière
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannok Frosthammer|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Rendez la quête Des provisions pour Tannok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Liez votre Pierre de foyer à Kharanos
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
#xprate <1.5
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Acceptez la quête Munitions pour Grondetrait
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
step
    #completewith BoarRibs2
    >>Tuez |cRXP_ENEMY_Crag Boars|r et les |cRXP_ENEMY_Large Crag Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Rendez la quête Ravitailler le Crache-vapeur
    .accept 318 >> Acceptez la quête L'éternol
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .train 3044 >> Apprenez [Tir des Arcanes]
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
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Tuez les |cRXP_ENEMY_Wendigos|r et les |cRXP_ENEMY_Young Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .xp 7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acceptez la quête La réserve volée de Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Ouvrez le |cRXP_PICK_MacGrann's Meat Locker|r. Ramassez le |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Attendez que le |cRXP_ENEMY_Old Icebeard|r patrouille en dehors de la Grotte. Une fois qu'il a patrouillé en dehors de sa Grotte vous pouvez y entrer et ramasser le |r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> Cliquez ici pour l'exemple vidéo
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Rendez la quête La réserve volée de Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Rendez la quête L'éternol
    .accept 319 >> Acceptez la quête Une faveur pour un tonneau d'éternol
    .accept 315 >> Acceptez la quête La bière brune parfaite
step
    #label BoarRibs2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Acceptez la quête Bières rivales
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
    >>Tuez |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r et les |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #xprate <1.5
    .goto Dun Morogh,46.726,53.826
    >>Terminez de collecter les Côtes de sanglier
    .complete 384,1
    .xp 8-1400 >>Montez votre expérience jusqu'à ce qu'il ne vous reste que 1400xp pour le niveau 8.
step
    #xprate >1.49
    .goto Dun Morogh,46.726,53.826
    >>Terminez de collecter les Côtes de sanglier
    .complete 384,1
    .xp 8-2100 >>Montez votre expérience jusqu'à ce qu'il ne vous reste que 2100xp pour le niveau 8.
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Courez et suivez la flèche de près dans les prochaines étapes pour faire un deathskip vers les Paluns
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Montez la montagne vers le nord
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Suivez-la jusqu'ici
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Continuez à courir droit vers le nord, sautez en bas et mourez une fois que le channel de Discussion Générale change en Les Paluns, puis ressuscitez au Port de Menethil
    .target Gardien des âmes
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Nagez jusqu'au rivage
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
    #softcore
	#completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step
    #hardcore
    #completewith next
    .goto Dun Morogh,49.622,48.612,60 >> Voyagez jusqu'à Kharanos
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Rendez la quête L'antre Gris
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Acceptez la quête Le repaire des Crins-de-givre
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Apprenez vos sorts de classe
    .train 5116>> Apprenez [Trait de choc]
    .target Grif Wildheart
step
#optional
    #completewith FinishShimmerweed
    >>Tuez |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r et les |cRXP_ENEMY_Snow Leopards|r
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
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>CLIQUEZ ICI pour la méthode << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Acceptez la quête Protection du troupeau
    .target Rudra Amberstill
step << Hunter
    #season 2
    #completewith next
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .train 410123,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour sa |cRXP_LOOT_Fang|r
    >>Guidez-le (Kite) vers le garde au sud du ranch. Faites bien en sorte de lui infliger au moins 51%+ de dégâts
    >>|cRXP_WARN_Regardez bien la vidéo avant de tenter de tuer|cRXP_ENEMY_Vagash|r. Il peut être tuer en solo par n'importe quelle classe|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> Cliquez ici pour un exemple vidéo << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> Cliquez ici pour un exemple vidéo << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Hunter
    #season 2
    .train 410123 >> |cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Tir explosif]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Tir explosif)]
    .use 206169
    .itemcount 206169,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    .goto Dun Morogh,69.084,56.330
    .target Foreman Stonebrow
    >>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .accept 432 >> Acceptez la quête Ces satanés Troggs !
step
#loop
    .goto Dun Morogh,67.5,59.4,40,0
    .goto Dun Morogh,70.2,57.6,40,0
    .goto Dun Morogh,67.5,59.4,0
    .goto Dun Morogh,70.2,57.6,0
    >>Tuez les |cRXP_ENEMY_Brise-crânes Mâcherocs|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    .goto Dun Morogh,69.084,56.330
    .target Foreman Stonebrow
    >>Parlez au |cRXP_FRIENDLY_Contremaître Front-de-pierre|r
    .turnin 432 >> Rendez la quête Ces satanés Troggs !
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
    #hardcore
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
step
    #softcore
    .goto Dun Morogh,47.11,55.01
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step
    #xprate >1.49
    .xp 10
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Acceptez la quête Dompter la bête
step << Hunter
#xprate >1.49
    .goto Dun Morogh,48.3,56.9
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6084 >>Acceptez la quête Dompter la bête
step << Hunter
#xprate >1.49
    .goto Dun Morogh,49.4,59.4
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6085 >>Acceptez la quête Dompter la bête
step << Hunter
#xprate >1.49
    .goto Dun Morogh,50.4,59.7
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6086 >>Acceptez la quête Entraîner la bête
step
#xprate <1.5
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
    >>Tuez les |cRXP_ENEMY_Frostmane Seers|r. Dépouillez-les pour leur |cRXP_LOOT_Shimmerweed|r
    >>Les |cRXP_LOOT_Shimmerweed|r peuvent aussi être ramassées dans les |cRXP_PICK_Shimmerweed Baskets|r sur le sol
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << Hunter
#optional
    #season 2
    #completewith next
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_Lancez|r |T132212:0|t[Marque du chasseur] |cRXP_WARN_sur le|r |cRXP_ENEMY_Buisson bruissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier tranchecrin|r qui apparaît. Dépouillez-le pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
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
    >>Tuez |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r et les |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step << Hunter
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_Lancez|r |T132212:0|t[Marque du chasseur] |cRXP_WARN_sur le|r |cRXP_ENEMY_Buisson bruissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier tranchecrin|r qui apparaît. Dépouillez-le pour la|T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r] |cRXP_WARN_pour apprendre|r |T132177:0|t[Maître tireur]
    .use 206155
    .train 410113,1
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
    .accept 413 >> Acceptez la quête La Brune scintillante
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Rendez la quête Retour chez Marleth
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Entrez dans le Repaire des Frostmane
step
#sticky
#label explore
    >>Descendez cette endroit précis pour découvrir le Repaire des Frostmane. Si il y a des mobs en bas, tuez les normalement et ne descendez PAS
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
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
step
#requires explore
#xprate <1.5
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
    #xprate <1.5
    .xp 10-1470 >> Montez votre expérience jusqu'à ce qu'il ne vous reste que 1450xp pour le niveau 10
step
#requires explore
    #hardcore
    #completewith KharanosTurnins
    .goto Dun Morogh,46.7,53.7,200 >> Voyagez à Kharanos. Tuez des mobs sur la route
step
#requires explore
    #completewith next
    #softcore
    .deathskip >> Mourez et ressuscitez à Kharanos
step
#requires explore
    #label KharanosTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Rendez la quête Le repaire des Crins-de-givre
    .accept 291 >> Acceptez la quête Les rapports
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Rendez Opération Recombobulation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 320 >> Rendez la quête Retour vers Claquesoufflet
    .isOnQuest 320
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Acceptez la quête Dompter la bête
step << Hunter
#xprate <1.5
    .goto Dun Morogh,48.3,56.9
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6084 >>Acceptez la quête Dompter la bête
step << Hunter
#xprate <1.5
    .goto Dun Morogh,49.4,59.4
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6085 >>Acceptez la quête Dompter la bête
step << Hunter
#xprate <1.5
    .goto Dun Morogh,50.4,59.7
    >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Rendez la quête Dompter la bête
    .target Grif Wildheart
    .accept 6086 >>Acceptez la quête Entraîner la bête
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Voyagez jusqu'à la Carrière de Gol'Bolar
step
    .goto Dun Morogh,68.671,55.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .accept 433 >> Acceptez la quête Le serviteur public
    .target Senator Mehr Stonehallow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Tuez les |cRXP_ENEMY_Briseurs d'os Mâcheroc|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Sénateur Mehr Sacrepierre|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Rendez la quête Le serviteur public
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Apprenez la Cuisine auprès de Ghilm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Rendez la quête La Brune scintillante
    .accept 414 >> Acceptez la quête Une bière brune pour Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Chasseur)
#displayname 11-13 Loch Modan << !SoD
#displayname 12-15 Loch Modan << SoD
#next 14-16 Sombrivage
#defaultfor Dwarf

step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,20 >> Voyagez jusqu'au Loch Modan
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> Acceptez la quête À la défense des terres du roi
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .target Captain Rugelfuss
    .accept 267 >> Acceptez la quête La menace trogg
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .turnin -414 >> Rendez la quête Une bière brune pour Kadrell
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >> Liez votre Pierre de Foyer à Thelsamar
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Acceptez la quête L'honneur des étudiants
    .target Brock Stoneseeker
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Rendez la quête Voyage vers Forgefer
    .accept 6388 >> Acceptez la quête Gryth Thurden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Rendez la quête Les rapports
    .isOnQuest 291
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belia Tonnegranit|r
    .turnin 6086 >> Rendez la quête Entraîner la bête
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Rendez la quête Gryth Thurden
    .accept 6392 >> Acceptez la quête Retourner vers Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Volez jusqu'au Loch Modan
    .target Gryth Thurden
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Rendez la quête Retourner vers Brock
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
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
    .goto Loch Modan,23.85,17.92,100 >> Voyagez vers le nord jusqu'au Poste d’Algaz
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
    .dungeon DM << Human
step << Human
    #xprate <1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Stormpike|r à l'intérieur du bunker
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 307 >> Acceptez la quête Bas les pattes !
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
step
    .goto Loch Modan,35.93,22.55
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
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r patrouille le long de la route pour Thelsamar
    .target Mountaineer Kadrell
    .turnin 416 >> Rendez la quête Chasse au rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Rendez la quête Les boudins de Thelsamar
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
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Rendez la quête À la défense des terres du roi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> Rendez la quête La menace trogg
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >> Voyagez au Site de fouilles d'Ironband
step
#xprate <1.5
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Acceptez la quête Compte rendu d'avancement des fouilles
    .target Prospector Ironband
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Voyagez jusqu'au Pavillon des Pérégrins
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .accept 257 >> Acceptez la quête La fanfaronnade d'un chasseur
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
    >>Tuez les |cRXP_ENEMY_Busards des montagnes|r
    >>|cRXP_WARN_Vous devez compléter cette quête et revenir à |cRXP_FRIENDLY_Daryl le Jeune|r dans les 15 minutes. Si vous échouez, abandonnez cette quête et reprenez-la de nouveau|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl le Jeune|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Rendez la quête La fanfaronnade d'un chasseur
    .target Daryl the Youngling
step
    #xprate <1.5
    .goto Loch Modan,82.496,63.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xandar Bonnebarbe|r
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r
    >>Ils sont utilisés pour fabriquer des [Feu de camp basique] sur les bateaux et les trams pour monter le niveau de votre [Cuisine] sans perdre de temps
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
#xprate <1.5
    #hardcore
    .hs >> Utilisez votre Pierre de foyer pour revenir à Thelsamar
step
#xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step
#xprate <1.5
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jern Casque-à-cornes|r
    .turnin 298 >> Rendez la quête Compte rendu d'avancement des fouilles
    .accept 301 >> Acceptez la quête Rapport à Forgefer
    .target Jern Hornhelm
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Apprenez [Cuisine]
step
#xprate <1.5
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Rendez la quête Rapport à Forgefer
    .target Prospector Stormpike
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_Entrez dans le Tram des profondeurs|r
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
    >>Montez en niveau vos [Premiers soins] si nécessaire en attendant pour le Tram
    >>Vous aurez besoin d'un niveau de compétence en [Premiers soins] de 80 pour une quête au niveau 24 << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nipsy|r lorsque vous sortez du Tram
    >>|cRXP_FRIENDLY_Nipsy|r est sur la plateforme au centre
    .turnin 6662 >> Rendez la quête Mon frère, Nipsy
    .target Nipsy
step
    .zone Stormwind City >> Entrez dans Stormwind
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Apprenez la compétence Bâtons
step
    #ah
    .goto Stormwind City,53.612,59.764
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
    .goto Stormwind City,53.612,59.764
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
    #softcore
    .hs >> Utilisez votre Pierre de foyer pour revenir au Loch Modan
step
    #softcore
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Voyagez vers le nord jusqu'au Poste d’Algaz
step
    #softcore
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >> Rendez la quête Livraison pour Foudrepique
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step
    #softcore
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Wetlands >> Volez aux Paluns
    .target Thorgrum Borrelson
step << skip --logout skip
    #hardcore
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Effectuez un Logout skip dans le Tram. Cliquez ici pour l'exemple vidéo|r
step
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Quittez Ironforge
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Dirigez-vous vers l'endroit pour passer de Dun Morogh -> Wetlands (skip)
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
    >>Regardez la vidéo pour un guide du skip en premier lieu!
    >>Faites le skip Dun Morogh -> Wetlands sans mourir (deathless)
    >>|cRXP_WARN_Évitez les |cRXP_ENEMY_Wetlands Crocolisks|r et les |cRXP_ENEMY_Murlocs|r en passant par l'eau|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> Cliquez ici pour un guide vidéo
    .goto Wetlands,12.1,60.3,80 >> Voyagez vers le Port de Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Samor Festivus|r à l'étage
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Samor Festivus|r n'en a plus en stock|r
    .target Samor Festivus
step
    #hardcore
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Prenez le chemin de vol des Paluns
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Allez sur le quai du bateau pour Auberdine
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
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
    >>Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Augmentez votre niveau de|r |T135966:0|t[Premiers soins] |cRXP_WARN_en attendant le bateau pour Sombrivage si nécessaire|r
    .zone Darkshore >> Prenez le bateau pour Sombrivage
]])
