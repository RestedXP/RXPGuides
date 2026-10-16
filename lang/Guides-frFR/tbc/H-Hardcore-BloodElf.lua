if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 1-6 Bois des Chants éternels
#version 7
#subgroup RXP Guide de survie TBC 1-30
#defaultfor BloodElf
#next 6-10 Bois des Chants éternels


step << !BloodElf
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Elfes de Sang. Nous vous recommandons pas de faire votre zone 1-6 à cette endroit vu qu'il n'y pas de quête pour ceux qui ne sont pas Elfes de Sang. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Erona|r
    .accept 8325 >> Acceptez la quête La reconquête de l'île de Haut-Soleil
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,37.70,23.26,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    >>Tuez les |cRXP_ENEMY_Mana Wyrms|r
    .complete 8325,1 --Kill Mana Wyrm (x8)
    .mob Mana Wyrm
step
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Erona|r
    .turnin 8325 >> Rendez la quête La reconquête de l'île de Haut-Soleil
    .accept 8326 >> Acceptez la quête Des mesures regrettables
    .accept 8328 >> Acceptez Mirages Training << Mage
    .accept 8563 >> Acceptez Warlock Training << Warlock
    .accept 8564 >> Acceptez Priest Training << Priest
    .accept 9392 >> Acceptez Rogue Training << Rogue
	.accept 9393 >> Acceptez Hunter Training << Hunter
    .accept 9676 >> Acceptez Paladin Training << Paladin
    .target Magistrix Erona
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossière] |cRXP_BUY_à Shara jusqu'à ce que votre|r [Carquois] |cRXP_BUY_soit plein|r << Hunter
    >>|cRXP_BUY_Achetez des|r [Eau de source] |cRXP_BUY_à Shara|r << Warlock/Mage/Priest
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,8336,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (x10)
    .target Shara Sunwing
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Julia|r
    .turnin 8328 >> Rendez Mirages Training
    .accept 10068 >> Acceptez Well Watcher Solanian
    .train 1459 >> Apprenez vos sorts de classe
    .target Julia Sunstriker
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8563 >> Rendez Warlock Training
    .accept 10073 >> Acceptez Well Watcher Solanian
    .accept 8344 >> Acceptez Windows to the Source
    .trainer>> Train your class spells
    .target Summoner Teli'Larien
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arena|r
    .turnin 8564 >> Rendez Priest Training
    .accept 10072 >> Acceptez Well Watcher Solanian
    .train 1243 >> Apprenez vos sorts de classe
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kariel|r
    .turnin 9392 >> Rendez Rogue Training
    .accept 10071 >> Acceptez Well Watcher Solanian
    .target Pathstalker Kariel
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sallina|r
    .turnin 9393 >> Rendez Hunter Training
    .accept 10070 >> Acceptez Well Watcher Solanian
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jesthenis|r
    .turnin 9676 >> Rendez Paladin Training
    .accept 10069 >> Acceptez Well Watcher Solanian
    .target Jesthenis Sunstriker
step
    #completewith next
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>Montez à l'étage
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solanian|r, |cRXP_FRIENDLY_Ithanas|r, et à |cRXP_FRIENDLY_Helion|r
    .turnin 10068 >> Rendez La sorcellerie Troll Solanian << Mage
    .turnin 10069 >> Rendez La sorcellerie Troll Solanian << Paladin
    .turnin 10070 >> Rendez La sorcellerie Troll Solanian << Hunter
    .turnin 10071 >> Rendez La sorcellerie Troll Solanian << Rogue
    .turnin 10072 >> Rendez La sorcellerie Troll Solanian << Priest
    .turnin 10073 >> Rendez La sorcellerie Troll Solanian << Warlock
    .accept 8330 >> Acceptez la quête Les possessions de Solanian
    .accept 8345 >> Acceptez la quête Le sanctuaire de Dath'Remar
    .target +Well Watcher Solanian
    .goto Eversong Woods,38.76,19.36
    .accept 8336 >> Acceptez la quête Pour une poignée d'esquilles
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .accept 8346 >> Acceptez la quête L'insatiable soif
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
step << Warlock
    #completewith next
    >>Lancez [Ponction de mana] et tuez les |cRXP_ENEMY_Mana Wyrms|r et les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les pour leur |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step << Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Springpaw Lynxes|r et les |cRXP_ENEMY_Springpaw Cubs|r. Dépouillez-les pour leur |cRXP_LOOT_Collars|r
    .complete 8326,1 --Lynx Collar (8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step << Warlock
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Montez la rampe
step << Warlock
    #requires RunRamp
    #completewith next
    >>Lancez [Ponction de mana] et tuez les |cRXP_ENEMY_Arcane Wraiths|r et les |cRXP_ENEMY_Tainted Arcane Wraiths|r. Dépouillez les |cRXP_ENEMY_Arcane Wraiths|r pour leur |cRXP_LOOT_Essences|r et les deux pour leur |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .complete 8344,1 --Wraith Essence (4)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock
	#label ArcaneSliver
    #loop
    .goto Eversong Woods,31.57,29.31,0
    .goto Eversong Woods,31.57,29.31,30,0
    .goto Eversong Woods,31.25,27.07,30,0
    .goto Eversong Woods,30.90,27.66,30,0
    .goto Eversong Woods,30.55,26.98,30,0
    .goto Eversong Woods,31.10,26.83,30,0
    >>Tuez un |cRXP_ENEMY_Tainted Arcane Wraith|r. Dépouillez-le pour son |cRXP_LOOT_Essence|r et ses [|cRXP_LOOT_Tainted Arcane Sliver|r].
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tainted Arcane Sliver|r] pour commencer la quête|r
    .complete 8344,2 --Tainted Wraith Essence (1)
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Acceptez la quête L'esquille arcanique contaminée
    .mob Tainted Arcane Wraith
    .use 20483
step << Warlock
    #loop
    .goto Eversong Woods,30.45,29.10,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    >>Lancez [Ponction de mana] et tuez les |cRXP_ENEMY_Arcane Wraiths|r et les |cRXP_ENEMY_Tainted Arcane Wraiths|r. Dépouillez les |cRXP_ENEMY_Arcane Wraiths|r pour leur |cRXP_LOOT_Essences|r et les deux pour leur |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8344,1 --Wraith Essence (4)
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock
    #loop
    .goto Eversong Woods,30.45,29.10,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    .xp 3+200 >> Montez votre expérience jusqu'à 200+/1400xp
step << Warlock
    #hardcore
    #completewith FistfulTI
    .goto Eversong Woods,37.18,18.94,50 >>Parlez à |cRXP_FRIENDLY_Helion|r et |cRXP_FRIENDLY_Ithanas|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helion|r et |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >> Rendez la quête L'insatiable soif
    .turnin 8338 >> Rendez la quête L'esquille arcanique contaminée
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Rendez la quête Pour une poignée d'esquilles
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8346
step << Warlock
    #label FistfulTI
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helion|r et |cRXP_FRIENDLY_Ithanas|r
    .turnin 8338 >> Rendez la quête L'esquille arcanique contaminée
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Rendez la quête Pour une poignée d'esquilles
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step << Warlock
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_Achetez des|r [Eau de source] |cRXP_BUY_à Shara|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,8327,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8344 >> Rendez Windows to the Source
    .train 172 >> Apprenez vos sorts de classe
    .target Summoner Teli'Larien
    .xp <4,1
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8344 >> Rendez Windows to the Source
    .target Summoner Teli'Larien
step << Warlock
	#completewith Measures
	.cast 688 >>Lancez [Invocation d'un diablotin]
step << Warlock
    .goto Eversong Woods,38.86,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yasmine|r
    >>|cRXP_BUY_Achetez un|r [Grimoire de Pacte de sang] |cRXP_BUY_ à Gina|r
    .collect 16321,1,8327,1 --Grimoire of Blood Pact (1)
    .target Yasmine Teli'Larien
    .train 6307,1 --Blood Pact (Rank 1)
step
    #label Collars
    #loop
    .goto Eversong Woods,37.37,18.31,0
    .goto Eversong Woods,37.37,18.31,35,0
    .goto Eversong Woods,39.36,18.83,35,0
    .goto Eversong Woods,39.85,16.63,35,0
    .goto Eversong Woods,40.61,16.24,35,0
    .goto Eversong Woods,40.37,18.80,35,0
    .goto Eversong Woods,40.48,20.38,35,0
    .goto Eversong Woods,39.42,22.28,35,0
    .goto Eversong Woods,35.98,24.22,35,0
    >>Tuez les |cRXP_ENEMY_Springpaw Lynxes|r et les |cRXP_ENEMY_Springpaw Cubs|r. Dépouillez-les pour leur |cRXP_LOOT_Collars|r
    .complete 8326,1 --Collect Lynx Collar (x8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step
    #label Measures
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Erona|r
    .turnin 8326 >> Rendez la quête Des mesures regrettables
    .accept 8327 >> Acceptez la quête Se présenter à Lanthan Perilon
    .target Magistrix Erona
step << !Warlock
    #completewith Journal
    >>Lancez [Ponction de mana] et tuez les |cRXP_ENEMY_Mana Wyrms|r et les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les pour leur |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step << Warlock
    #completewith Journal
    >>Utilisez [Ponction de mana] sur les créatures avec du mana
    .complete 8346,1 << !Warlock --Mana Tap creature (x6)
    .mob Mana Wyrm
step
    #label Report
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanthan|r
    .turnin 8327 >> Rendez la quête Se présenter à Lanthan Perilon
    .accept 8334 >> Acceptez la quête Agression
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>Ramassez le |cRXP_PICK_Journal|r sur le sol
    .complete 8330,3 --Collect Solanian's Journal (x1)
step << !Warlock
    #completewith RedOrb
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r
    *Lancez [Ponction de mana] |cRXP_WARN_sur les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les |cRXP_ENEMY_Feral Tenders|r pour leur|r |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
step << Warlock
    #completewith RedOrb
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r
    *Utilisez [P|cRXP_WARN_on|rction de mana] sur les |cRXP_ENEMY_Feral Tenders|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
    .isOnQuest 8346
step << Warlock
    #optional
    #completewith RedOrb
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r << Warlock
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .isNotOnQuest 8346
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>Ramassez le |cRXP_PICK_Scrying Orb|r sur la plateforme
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step << !Warlock
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r
    *Lancez [Ponction de mana] |cRXP_WARN_sur les |cRXP_ENEMY_Feral Tenders|r. Dépouillez-les |cRXP_ENEMY_Feral Tenders|r pour leur|r |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
step << Warlock
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r
    *Lancez [P|cRXP_WARN_on|rction de mana] sur les |cRXP_ENEMY_Feral Tenders|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
    .isOnQuest 8346
step << Warlock
    #optional
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>Tuez les |cRXP_ENEMY_Tenders|r et les |cRXP_ENEMY_Feral Tenders|r << Warlock
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .isNotOnQuest 8346
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanthan|r
    .turnin 8334 >> Rendez la quête Agression
    .accept 8335 >> Acceptez la quête Felendren le Banni
    .target Lanthan Perilon
step << !Warlock
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Lancez [Ponction de mana] et tuez les |cRXP_ENEMY_Mana Wyrms|r. Dépouillez-les pour leur |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 << !Warlock --Mana Tap creature (x6)
    .disablecheckbox
    .mob Mana Wyrm
step << !Warlock !Rogue
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .xp 4-360 >> Montez votre expérience jusqu'à 1740+/2100xp << !Warlock
step << !Warlock !Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helion|r et |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >> Rendez la quête L'insatiable soif
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Rendez la quête Pour une poignée d'esquilles
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8346
step << !Warlock !Rogue
    #label FistfulTI
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ithanas|r
    .turnin 8336 >> Rendez la quête Pour une poignée d'esquilles
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step << Mage/Priest
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_Achetez des|r [Eau de source] |cRXP_BUY_à Shara|r
    .vendor >>Vendez tout ce dont nous n'avez pas besoin
    .collect 159,10,8336,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Julia|r
    .train 116 >> Apprenez vos sorts de classe
    .target Julia Sunstriker
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arena|r
    .train 589 >> Apprenez vos sorts de classe
    .target Matron Arena
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sallina|r
    .train 1978 >> Apprenez vos sorts de classe
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jesthenis|r
    .train 20271 >> Apprenez vos sorts de classe
    .target Jesthenis Sunstriker
step
    #completewith RunRamp
    >>Lancez [Ponctio] sur les créatures avec du mana
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>Cliquez sur le |cRXP_PICK_Shrine of Dath'Remar|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .goto Eversong Woods,31.33,22.74
    >>Ramassez le |cRXP_PICK_Scroll|r sur le sol
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Montez la rampe
step
    #requires RunRamp
    #completewith Academy
    >>Lancez [Ponction de mana] sur les créatures avec du mana
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Arcane Wraith
step << !Warlock
    #completewith Academy
    >>Tuez un |cRXP_ENEMY_Tainted Arcane Wraith|r. Dépouillez-le pour son [|cRXP_LOOT_Tainted Arcane Sliver|r].
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tainted Arcane Sliver|r] pour commencer la quête|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Acceptez la quête L'esquille arcanique contaminée
    .mob Tainted Arcane Wraith
    .use 20483
step
    #label Academy
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>Tuez les |cRXP_ENEMY_Arcane Wraiths|r et les |cRXP_ENEMY_Tainted Arcane Wraiths|r en vous dirigeant vers l'Académie
    >>Tuez |cRXP_ENEMY_Felendren the Banished|r tout en haut. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .mob +Arcane Wraith
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .mob +Tainted Arcane Wraith
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob +Felendren the Banished
step << !Warlock
    .goto Eversong Woods,30.84,27.13
    >>Tuez un |cRXP_ENEMY_Tainted Arcane Wraith|r. Dépouillez-le pour son [|cRXP_LOOT_Tainted Arcane Sliver|r].
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Tainted Arcane Sliver|r] pour commencer la quête|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Acceptez la quête L'esquille arcanique contaminée
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à l'Île de Haut-Soleil
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Lancez [P|cRXP_WARN_on|rction de mana] sur les |cRXP_ENEMY_Mana Wyrms|r
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>Montez à l'étage
step
    #label SolanianB
    .goto Eversong Woods,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solanian|r
    .turnin 8330 >> Rendez la quête Les possessions de Solanian
    .turnin 8345 >> Rendez la quête Le sanctuaire de Dath'Remar
    .target Well Watcher Solanian
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ithanas|r
    .turnin 8336 >> Rendez la quête Pour une poignée d'esquilles
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8336
step
    #label SolanianB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helion|r
    .turnin 8338 >> Rendez la quête L'esquille arcanique contaminée << !Warlock
    .turnin 8346 >> Rendez la quête L'insatiable soif
    .goto Eversong Woods,37.18,18.94
    .target +Arcanist Helion
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanthan|r
    .turnin 8335 >> Rendez la quête Felendren le Banni
    .accept 8347 >> Acceptez la quête Aider les estafettes
    .target Lanthan Perilon
step
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    .xp 5+1800 >> Montez votre expérience jusqu'à 1800+/2800xp
step
    #completewith next
    .goto Eversong Woods,38.91,30.27,30,0
    .goto Eversong Woods,40.41,32.21,30 >>Traversez le Pont
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alarion|r
    .turnin 8347 >> Rendez la quête Aider les estafettes
    .accept 9704 >> Acceptez la quête Tuée par les Déshérités
    .target Outrunner Alarion
step
    .goto Eversong Woods,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au cadavre du |cRXP_FRIENDLY_Outrunner|r sur le sol
    .turnin 9704 >> Rendez la quête Tuée par les Déshérités
    .accept 9705 >> Acceptez la quête Récupérer un paquet
    .target Slain Outrunner
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alarion|r
    .turnin 9705 >> Rendez la quête Récupérer un paquet
    .accept 8350 >> Acceptez la quête Achever la livraison
    .target Outrunner Alarion
step
    #loop
    .goto Eversong Woods,45.97,43.35,0
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .xp 5+2690 >> Monter votre expérience jusqu'à 2690+/2800xp
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 6-10 Bois des Chants éternels
#defaultfor BloodElf/Undead
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 10-12 Bois des Chants éternels

step
    .goto Eversong Woods,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jarondis|r
    .accept 8472 >> Acceptez la quête Un mauvais fonctionnement
    .target Magister Jaronis
step
    #completewith FalconHS
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entrez dans l'auberge
step << BloodElf
    #label FalconHS
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    .turnin 8350 >> Rendez la quête Achever la livraison
    .home >> Liez votre Pierre de Foyer à Ironforge Square
    .target Innkeeper Delaniel
    .bindlocation 3665
step << !BloodElf
    #label FalconHS
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    .home >> Liez votre Pierre de Foyer à Ironforge Square
    .target Innkeeper Delaniel
    .bindlocation 3665
step << Priest/Mage/Warlock/Warrior/Rogue
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Montez à l'étage
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r à l'étage
    .accept 9489 >> Purifiez la Malebrèche << BloodElf
    .train 591 >>Apprenez vos sorts de classe
    .target Ponaris
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r à l'étage
    .train 143 >>Apprenez vos sorts de classe
    .target Garridel
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r à l'étage
    .train 695 >>Apprenez vos sorts de classe
    .target Celoenus
step << Warrior/Rogue
    .goto Eversong Woods,48.58,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kanaria|r à l'étage
    .train 3273 >>Apprenez [Premiers soins]
    .target Kanaria
step << Mage/Warlock/Priest
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r
    .collect 1179,5,8468,1 --Ice Cold Milk (5)
    .money <0.0119
    .target Innkeeper Delaniel
step
    #completewith next
    .goto Eversong Woods,47.86,47.76,8,0
    .goto Eversong Woods,47.79,47.35,8 >> Sortez à l'extérieur
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Wanted Poster|r et à |cRXP_FRIENDLY_Aeldon|r
    .accept 8468 >> Acceptez Wanted: Thaelis the Hungerer
    .goto Eversong Woods,48.18,46.31
    .accept 8463 >> Acceptez la quête Les cristaux de mana instables
    .target +Aeldon Sunbrand
    .goto Eversong Woods,48.17,46.00
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noellene|r
    .train 639 >>Apprenez vos sorts de classe
    .target Noellene
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannaria|r à l'étage
    .train 1757 >>Apprenez vos sorts de classe
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 3044 >>Apprenez vos sorts de classe
    .target Hannovia
step << Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Achetez la compétence pour porter des épées à une main << Rogue
    .target Duelist Larenis
    .money <0.11
step << Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 9c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Geron|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (3s 82c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Geron|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .target Geron
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior/Paladin/Rogue
    #optional
    #completewith Thaelis
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Thaelis
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Ramassez les |cRXP_PICK_Unstable Mana Crystal Boxes|r sur le sol
    >>Tuez les |cRXP_ENEMY_Arcane Patrollers|r. Dépouillez-les pour leur |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob +Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>Tuez |cRXP_ENEMY_Thaelis the Hungerer|r. Dépouillez-le pour sa |cRXP_LOOT_Thaelis's Head|r
    .complete 8468,1 --Collect Thaelis's Head (x1)
    .mob Thaelis the Hungerer
step
    #loop
    .goto Eversong Woods,47.22,37.39,0
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    .goto Eversong Woods,40.70,41.12,40,0
    .goto Eversong Woods,40.77,43.15,40,0
    .goto Eversong Woods,43.03,42.97,40,0
    .goto Eversong Woods,44.23,45.21,40,0
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Ramassez les |cRXP_PICK_Unstable Mana Crystal Boxes|r sur le sol
    >>Tuez les |cRXP_ENEMY_Arcane Patrollers|r. Dépouillez-les pour leur |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob +Arcane Patroller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jarondis|r, |cRXP_FRIENDLY_Kan'ren|r, et à |cRXP_FRIENDLY_Aeldon|r
    .turnin 8472 >> Rendez la quête Un mauvais fonctionnement
    .accept 8895 >> Acceptez la quête Une livraison au sanctum septentrional
    .target +Magister Jaronis
    .goto Eversong Woods,47.26,46.31
    .turnin 8468 >> Rendez Wanted: Thaelis the Hungerer
    .target +Sergeant Kan'ren
    .goto Eversong Woods,47.77,46.58
    .turnin 8463 >> Rendez la quête Les cristaux de mana instables
    .accept 9352 >> Acceptez la quête Les intrusions darnassiennes
    .target +Aeldon Sunbrand
    .goto Eversong Woods,48.17,46.00
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noellene|r
    .train 853 >>Apprenez vos sorts de classe
    .target Noellene
	.xp <8,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannaria|r à l'étage
    .train 6760 >>Apprenez vos sorts de classe
    .target Tannaria
	.xp <8,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Apprenez vos sorts de classe
    .target Hannovia
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entrez dans l'auberge
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Montez à l'étage
	.xp <8,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r à l'étage
    .train 5143 >>Apprenez vos sorts de classe
    .target Garridel
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r à l'étage
    .train 980 >>Apprenez vos sorts de classe
    .target Celoenus
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daestra|r à l'étage
    >>|cRXP_BUY_Achetez le|r [Grimoire d’Éclair de feu (Rang 2)] |cRXP_BUY_à Daestra|r
    .collect 16302,1,8491,1 --Grimoire of Firebolt Rank 2
    .target Daestra
	.xp <8,1
    .train 7799,1
step << Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Achetez la compétence pour porter des épées à une main << Rogue
    .target Duelist Larenis
    .money <0.11
step << Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 9c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Geron|r
    .collect 2488,1,8491,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (3s 82c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Geron|r
    .collect 2494,1,8491,1 --Collect Stiletto
    .target Geron
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior/Paladin/Rogue
    #optional
    #completewith Caidanis
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Caidanis
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith BuyFood1
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entrez dans l'auberge
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_et du|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
step
    #label BuyFood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_et du|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>Voyagez vers |cRXP_FRIENDLY_Caidanis|r
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caidanis|r
    .turnin 8895 >> Rendez la quête Une livraison au sanctum septentrional
    .accept 9119 >> Acceptez la quête Panne au sanctum occidental
    .target Ley-Keeper Caidanis
step
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ralen|r
    .accept 9035 >> Acceptez Roadside Ambush
    .target Apprentice Ralen
step
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meledor|r
    .turnin 9035 >> Rendez Roadside Ambush
    .accept 9062 >> Acceptez Soaked Pages
    .target Apprentice Meledor
step
    .goto Eversong Woods,44.34,62.00
    >>Ramassez le |cRXP_PICK_Grimoire|r sous l'eau
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meledor|r
    .turnin 9062 >> Rendez Soaked Pages
    .accept 9064 >> Acceptez Taking the Fall
    .target Apprentice Meledor
step << BloodElf Priest
    #completewith next
    >>Lancez [Mot de pouvoir : Robustesse] sur les |cRXP_FRIENDLY_Eversong Rangers|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >> Acceptez la quête La Malebrèche
    .target Ranger Jaela
step << BloodElf Priest
    .goto Eversong Woods,50.19,50.88,-1
    .goto Eversong Woods,50.24,50.96,-1
    .goto Eversong Woods,50.29,51.02,-1
    .goto Eversong Woods,50.34,51.04,-1
    .goto Eversong Woods,50.41,51.00,-1
    .goto Eversong Woods,50.46,50.91,-1
    >>Lancez [Mot de pouvoir : Robustessse] sur les |cRXP_FRIENDLY_Eversong Rangers|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .turnin 9064 >> Rendez Taking the Fall
    .accept 9066 >> Acceptez Swift Discipline
    .target Instructor Antheol
step
    #loop
    .goto Eversong Woods,50.82,56.49,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    >>Tuez les |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jaela|r
    .turnin 8475 >> Rendez la quête La Malebrèche
    .target Ranger Jaela
step << Paladin/Priest/Mage
    .goto Eversong Woods,45.19,56.43
    >>Utilisez le [Bât|cRXP_WARN_on|rnet disciplinaire] sur |cRXP_FRIENDLY_Ralen|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Paladin/Priest/Mage
    .goto Eversong Woods,44.88,61.03
    >>Utilisez le [Bât|cRXP_WARN_on|rnet disciplinaire] sur |cRXP_FRIENDLY_Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velania|r
    .turnin 9119 >> Rendez la quête Panne au sanctum occidental
    .accept 8486 >> Acceptez Arcane Instability
    .target Ley-Keeper Velania
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Manawraiths|r et les |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    #loop
    .goto Eversong Woods,36.77,60.99,0
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49,30,0
    >>Tuez un |cRXP_ENEMY_Darnassian Scout|r. Dépouillez-le pour ses [|cRXP_LOOT_Incriminating Documents|r]
    >>|cRXP_WARN_Utilisez les [|cRXP_LOOT_Incriminating Documents|r] pour commencer la quête|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482,1 --Incriminating Documents (1)
    .accept 8482 >> Acceptez la quête Les documents compromettants
    .mob Darnassian Scout
    .use 20765
step
    #loop
	.goto Eversong Woods,35.57,61.41,0
	.goto Eversong Woods,35.57,61.41,40,0
	.goto Eversong Woods,34.41,60.64,40,0
	.goto Eversong Woods,35.02,56.58,40,0
	.goto Eversong Woods,35.82,58.36,40,0
	.goto Eversong Woods,36.20,60.28,40,0
    >>Tuez les |cRXP_ENEMY_Manawraiths|r et les |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velania|r
    .turnin 8486 >> Rendez Arcane Instability
    .turnin 9352 >> Rendez la quête Les intrusions darnassiennes
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hathvelion|r
    .accept 8884 >> Acceptez la quête Des têtes de poisson à la pelle
    .target Hathvelion Sungaze
step
    #loop
    .goto Eversong Woods,26.45,58.14,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    >>Tuez les |cRXP_ENEMY_Grimscale Foragers|r et les |cRXP_ENEMY_Grimscale Seers|r. Dépouillez-les pour leur |cRXP_LOOT_Heads|r et les [|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r]
    >>|cRXP_WARN_Utilisez [|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r] pour commencer la quête|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters
    .accept 8887 >> Acceptez la quête Les portulans perdus du capitaine Kelisendra
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step << Warlock/Hunter/Rogue
    #loop
    .goto Eversong Woods,27.47,56.54,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    .xp 7+3195 >> Montez votre expérience jusqu'à 3195+/4500xp
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8884 >> Rendez Fish Heads, Fish Heads...
    .accept 8885 >> Accept Les Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step << Warlock/Hunter/Rogue
    #completewith next
    .goto Eversong Woods,46.70,49.09,20,0
    .goto Eversong Woods,46.69,48.02,20 >> Voyagez vers |cRXP_FRIENDLY_Aeldon|r
step << Warlock/Hunter/Rogue
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Rendez la quête Les documents compromettants
    .accept 8483 >> Accept Les Dwarven Spy
    .target Aeldon Sunbrand
step << Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Achetez la compétence pour porter des épées à une main << Rogue
    .target Duelist Larenis
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannaria|r à l'étage
    .train 6760 >>Apprenez vos sorts de classe
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Apprenez vos sorts de classe
    .target Hannovia
step << Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entrez dans l'auberge
step << Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Montez à l'étage
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r à l'étage
    .train 980 >>Apprenez vos sorts de classe
    .target Celoenus
step << Warlock
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daestra|r à l'étage
    >>|cRXP_BUY_Achetez le|r [Grimoire d’Éclair de feu (Rang 2)] |cRXP_BUY_à Daestra|r
    .collect 16302,1,8491,1 --Grimoire of Firebolt Rank 2
    .target Daestra
    .train 7799,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 9c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Geron|r
    .collect 2488,1,8491,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (3s 82c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Geron|r
    .collect 2494,1,8491,1 --Collect Stiletto
    .target Geron
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    #optional
    #completewith Caidanis
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Caidanis
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warlock/Hunter/Rogue
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>Parlez à |cRXP_FRIENDLY_Anvilward|r
    .timer 28,Prospecteur Garde-enclume RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Warlock/Hunter/Rogue
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>Attendez le temps du RP
    >>Tuez |cRXP_ENEMY_Prospector Anvilward|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step << Warlock/Hunter/Rogue
    .goto Eversong Woods,45.19,56.43
    >>Utilisez le [Bâtonnet disciplinaire] sur |cRXP_FRIENDLY_Ralen|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Warlock/Hunter/Rogue
    .goto Eversong Woods,44.88,61.03
    >>Utilisez le [Bâtonnet disciplinaire] sur |cRXP_FRIENDLY_Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Montez à l'étage
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Degolien|r
    .accept 8892 >> Acceptez Situation at Sunsail Anchorage
    .target Ranger Degolien
    --TODO: Beta check if 9256 is a needed prereq for this quest
step
    #completewith next
    .goto Eversong Woods,43.67,71.31,8 >>Descendez les escaliers
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marniel|r et |cRXP_FRIENDLY_Ardeyn|r
    .accept 9358 >> Acceptez la quête Le forestier Sareyn
    .target +Marniel Amberlight
    .goto Eversong Woods,43.67,71.31
    .accept 9258 >>Acceptez la quête Le bosquet incendié
    .target +Ardeyn Riverwind
    .goto Eversong Woods,43.58,71.20
step
    #completewith next
    .goto Eversong Woods,44.04,70.35,0
    >>|cRXP_BUY_Achetez des|r [Petite sacoches marrons] |cRXP_BUY_à|r |cRXP_FRIENDLY_Halis|r |cRXP_BUY_si vous avez besoin de sacs|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Halis Dawnstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velan|r et |cRXP_FRIENDLY_Landra|r
    .accept 8491 >> Acceptez Pelt Collection
    .target +Velan Brightoak
    .goto Eversong Woods,44.72,69.63
    .accept 9395 >> Acceptez Le havre de Saltheril
    .accept 9254 >> Acceptez la quête L'apprentie égarée
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
step
    #completewith Sunsail
    .goto Eversong Woods,42.28,72.62,40,0
    .goto Eversong Woods,40.90,72.87,40,0
    .goto Eversong Woods,39.59,73.65,40,0
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltheril|r
    .turnin 9395 >>Rendez la quête Le havre de Saltheril
    .accept 9067 >>Accept Les Party Never Ends
    .target Lord Saltheril
step
    #label Sunsail
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelisendra|r et |cRXP_FRIENDLY_Velendris|r
    .turnin 8887 >> Rendez la quête Les portulans perdus du capitaine Kelisendra
    .accept 8886 >> Acceptez Grimscale Pirates!
    .target +Captain Kelisendra
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >> Acceptez Lost Armaments
    .target +Velendris Whitemorn
    .goto Eversong Woods,36.36,66.78
step
    #completewith Aldaron
    >>Tuez les |cRXP_ENEMY_Wretched Thugs|r et les |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #loop
    .goto Eversong Woods,34.66,68.00,0
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,25,0
    .goto Eversong Woods,30.54,69.24,25,0
    .goto Eversong Woods,31.40,70.90,25,0
    >>Ramassez les |cRXP_PICK_Armament Boxes|r sur le sol près des |cRXP_ENEMY_Wretched|r et à l'intérieur du bâtiment
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velendris|r
    .turnin 8480 >>Rendez Lost Armaments
    .accept 9076 >>Acceptez Wretched Ringleader
    .target Velendris Whitemorn
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>Montez dans le bâtiment
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>Kill |cRXP_ENEMY_Aldaron the Reckless|r tout en haut. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob Aldaron the Reckless
step
    .goto Eversong Woods,31.40,70.90,0
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,30,0
    .goto Eversong Woods,30.54,69.24,30,0
    .goto Eversong Woods,31.40,70.90,30,0
    >>Tuez les |cRXP_ENEMY_Wretched Thugs|r et les |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #completewith next
    .goto Eversong Woods,29.53,72.32,40,0
    .goto Eversong Woods,27.73,71.83,40,0
    .goto Eversong Woods,26.53,74.16,40,0
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>Tuez les |cRXP_ENEMY_Grimscale Murlocs|r et les |cRXP_ENEMY_Grimscale Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Cargo|r
    >>Ramassez les |cRXP_PICK_Cargo Barrels|r sur le sol
    >>Utilisez [Torrent arcanique] pour interrompre les [Soins rapides] des |cRXP_ENEMY_Grimscale Oracles|r << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,24.36,72.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.24,65.65,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.36,72.66,40,0
    >>Tuez |cRXP_ENEMY_Mmmrrrggglll|r. Dépouillez-le pour son |cRXP_LOOT_Ring of Mmmrrrggglll|r
    >>Il patrouille non loin de sa zone
    >>Utilisez [Torrent arcanique] pour interrompre les [Vague de soins] de |cRXP_ENEMY_Mmmrrrggglll|r << BloodElf
    .complete 8885,1 --Collect Ring of Mmmrrrggglll (x1)
    .unitscan Mmmrrrggglll
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,25.24,65.65,50,0
    .goto Eversong Woods,24.89,66.85,50,0
    .goto Eversong Woods,25.81,68.16,50,0
    .goto Eversong Woods,25.68,68.93,50,0
    .goto Eversong Woods,24.66,68.47,50,0
    .goto Eversong Woods,24.32,69.66,50,0
    .goto Eversong Woods,25.09,71.12,50,0
    .goto Eversong Woods,24.36,72.66,50,0
    >>Tuez les |cRXP_ENEMY_Grimscale Murlocs|r et les |cRXP_ENEMY_Grimscale Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Cargo|r
    >>Ramassez les |cRXP_PICK_Cargo Barrels|r sur le sol
    >>Utilisez [Torrent arcanique] pour interrompre le [Soins rapides] de |cRXP_ENEMY_Grimscale Oracles|r << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8885 >> Turn in Les Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kelisendra|r et |cRXP_FRIENDLY_Velendris|r
    .turnin 8886 >> Rendez Grimscale Pirates!
    .target +Captain Kelisendra
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >> Rendez Wretched Ringleader
    .target +Velendris Whitemorn
    .goto Eversong Woods,36.36,66.78
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossières] |cRXP_BUY_et des|r [Flèches pointues] |cRXP_BUY_à Halis|r. |cRXP_BUY_Achetez des|r [Petites sacoches marrons] |cRXP_BUY_à Halis|r |cRXP_BUY_si vous avez besoin de sacs|r
    .collect 2512,200,9252,1 << Hunter --Rough Arrow (200)
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
    .itemcount 2512,<200
	.xp >10,1
step << Hunter
    #optional
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Achetez des|r [Flèches pointues] |cRXP_BUY_à Halis|r. |cRXP_BUY_Achetez des|r [Petites sacoches marrons] |cRXP_BUY_à Halis|r |cRXP_BUY_si vous avez besoin de sacs|r
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
step << !Hunter
    #completewith Sareyn
    .goto Eversong Woods,44.04,70.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Achetez-lui des|r [Petite sacoche marron] |cRXP_BUY_si nécessaire|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Halis Dawnstrider
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Montez à l'étage
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Degolien|r
    .turnin 8892 >>Rendez Situation at Sunsail Anchorage
    .accept 9359 >>Acceptez Farstrider Retreat
    .target Ranger Degolien
step
    #completewith Sareyn
    .goto Eversong Woods,43.70,71.56,8 >>Descendez les escaliers
step
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >> Rendez Pelt Collection
    .target Velan Brightoak
    .isQuestComplete 8491
step
    #label Sareyn
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sareyn|r
    .turnin 9358 >> Rendez la quête Le forestier Sareyn
    .accept 9252 >> Acceptez la quête La défense de Brise-Clémente
    .target Ranger Sareyn
step
    #completewith Notes
    >>Tuez les |cRXP_ENEMY_Rotlimb Marauders|r
    >>Faites attention comme les |cRXP_ENEMY_Rotlimb Marauders|r lancent [Toucher de maladie] (Sort instantané infligeant 15 de dégâts)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step
    #loop
    .goto Eversong Woods,50.89,80.74,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    >>Tuez les |cRXP_ENEMY_Darkwraiths|r
    >>Faites attention comme les |cRXP_ENEMY_Darkwraiths|r lancent [Enrager] (augmente les dégâts et la vitesse d'attaque) lorsqu'ils sont bas en vie
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirveda|r
    .turnin 9254 >> Rendez la quête L'apprentie égarée
    .accept 8487 >> Acceptez la quête Le sol contaminé
    .target Apprentice Mirveda
step
    #loop
    .goto Eversong Woods,54.13,71.21,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Ramassez les |cRXP_PICK_Tainted Soil Piles|r sur le sol
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirveda|r
    >>Attendez le temps du RP
    .turnin 8487 >> Rendez la quête Le sol contaminé
    .timer 9,Le sol contaminé RP
    .accept 8488 >> Acceptez la quête Des résultats inattendus
    .target Apprentice Mirveda
step
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>Tuez |cRXP_ENEMY_Gharsul the Remorseless|r et les |cRXP_ENEMY_Angershades|r pour protéger |cRXP_FRIENDLY_Mirveda|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
step
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mirveda|r
    .turnin 8488 >> Rendez la quête Des résultats inattendus
    .accept 9255 >> Acceptez la quête Les notes de recherche
    .target Apprentice Mirveda
step
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Tuez les |cRXP_ENEMY_Rotlimb Marauders|r
    >>Faites attention comme les |cRXP_ENEMY_Rotlimb Marauders|r lancent [Toucher de maladie] (Sort instantané infligeant 15 de dégâts)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step << !Warlock !Warrior/!Undead
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 9+5800 >> Montez votre expérience jusqu'à 5800+/6500xp
step << Undead Warlock/Undead Warrior
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 9+5950 >> Montez votre expérience jusqu'à 5950+/6500xp
step << !Warlock !Warrior/!Undead
    #completewith ExitFalcon
    .hs >> Dirigez-vous vers la place de l'Epervier
    .bindlocation 3665,1
    .subzoneskip 3665
step << Undead Warlock/Undead Warrior
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .turnin 9066 >> Rendez Swift Discipline
    .target Instructor Antheol
step << Undead Warlock/Undead Warrior
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entrez dans Silvermoon
step << Undead Warlock/Undead Warrior
    #completewith next
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Entrez dans l'auberge
step << Undead Warlock/Undead Warrior
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Suntouched|r
    >>|cRXP_BUY_Achetez la|r [Cuvée spéciale de Solegrâce] |cRXP_BUY_à Suntouched|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
    .isOnQuest 9067
step << Undead Warrior
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,78.90,43.25,20 >>Voyagez vers |cRXP_FRIENDLY_Belil|r
step << Undead Warrior
    .goto Silvermoon City,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belil|r
    .train 2580 >> Apprenez [Minage]. Ceci vous permettra de trouver les |cRXP_LOOT_[Rough Stones]|r dans les Filons de cuivre pour fabriquer les [Pierre à aiguiser] (+2 dégâts des armes pendant 1 heure) << Paladin/BloodElf Rogue/Undead Rogue
    .target Belil
    .skill blacksmithing,1
step << Undead Warrior
    .goto Silvermoon City,78.41,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelan|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Zelan|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Zelan
    .skill blacksmithing,1
    .skill mining,1
step << Undead Warrior
    #completewith Defending
    .cast 2580 >> Lancez [Découverte de gisements]
step << Undead Warlock/Undead Warrior
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Prenez l'|cRXP_PICK_[Orbe de transposition]|r pour Undercity
    .isQuestAvailable 1473 << Warlock
    .isQuestAvailable 1819 << Warrior
step << Undead Warlock
    #completewith next
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>Prenez l'ascenseur pour descendre dans Undercity
    .isQuestAvailable 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>Voyagez vers |cRXP_FRIENDLY_Carendin|r
    .isQuestAvailable 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r
    .accept 1473 >>Acceptez la quête La créature du Vide
    .target Carendin Halgar
step << Undead Warlock
    #optional
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 707 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Richard|r
    .train 705 >> Apprenez vos sorts de classe
    .target Richard Kerwin
    .xp <12,1
step << Undead Warlock
    #completewith next
    .goto Tirisfal Glades,61.75,64.96
    .zone Tirisfal Glades >> Quittez Undercity
    .isOnQuest 1473
step << Undead Warlock
    .goto Tirisfal Glades,51.44,67.69,15,0
    .goto Tirisfal Glades,51.06,67.57
    >>Ramassez la |cRXP_PICK_Creature of the Void Chest|r sur le sol
    .complete 1473,1 --Creature of the Void (1)
step << Undead Warlock
    #completewith next
    .goto Undercity,66.16,1.05,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>Prenez l'ascenseur pour descendre dans Undercity
    .isOnQuest 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>Voyagez vers |cRXP_FRIENDLY_Carendin|r
    .isOnQuest 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r
    .turnin 1473 >>Rendez la quête La créature du Vide
    .accept 1471 >>Acceptez la quête Le lien
    .target Carendin Halgar
step << Undead Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>Utilisez les [Runes d'invocation] au cercle d'invocation
    .use 6284
step << Undead Warlock
    .goto Undercity,86.64,27.10
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Rendez la quête Le lien
    .target Carendin Halgar
step << Undead Warrior
    #completewith WarDefStance
    .goto Tirisfal Glades,61.52,53.20,80 >> Voyagez jusqu'à Brill
    .subzoneskip 159
step << Undead Warrior
    #optional
    .abandon 1505 >>Abandonnez Le vétéran Uzzek
    .isOnQuest 1505
step << Undead Warrior
    #optional
    .abandon 1498 >>Abandonnez La voie de la défense
    .isOnQuest 1498
step << Undead Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Acceptez la quête Parler à Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Undead Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Rendez la quête Parler à Dillinger
    .accept 1819 >> Acceptez la quête Ulag le Fendeur
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Undead Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>Cliquez sur le Déclencheur du mausolée sur le sol. Cela va invoquer |cRXP_ENEMY_Ulag.|r. Tuez-le
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Undead Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Rendez la quête Ulag le Fendeur
    .accept 1820 >> Acceptez la quête Parler à Coleman
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step << Undead Warrior
    #label WarDefStance
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Coleman|r dans l'auberge
    .turnin 1820 >>Rendez la quête Parler à Coleman
    .isQuestTurnedIn 1819
step << Undead Warlock/Undead Warrior
    #completewith ExitFalcon
    .hs >>Dirigez-vous vers la place de l'Epervier
    .bindlocation 3665,1
    .subzoneskip 3665
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_et du|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
step
    #optional
    #label Buyfood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_et du|r [Pain sorti du four] |cRXP_BUY_à Delaniel|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
step << Warrior/Paladin/Priest/Mage
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Rendez la quête Les documents compromettants
    .accept 8483 >> Accept Les Dwarven Spy
    .target Aeldon Sunbrand
step << Warrior/Paladin/Priest/Mage
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>Parlez à |cRXP_FRIENDLY_Anvilward|r
    .timer 28,Prospecteur Garde-enclume RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Warrior/Paladin/Priest/Mage
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>Attendez le temps du RP
    >>Tuez |cRXP_ENEMY_Prospector Anvilward|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aeldon|r
    .turnin 8483 >> Rendez la quête L'espion des nains
    .target Aeldon Sunbrand
step
    #optional
    .goto Eversong Woods,45.02,37.68
    .xp 10 >> Montez jusqu'au niveau 10
step << Warrior/Rogue
    #optional
    +Équipez la [Lame de forestier légèrement usée]
    .use 23396
    .itemcount 23396,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Paladin
    #optional
    +Équipez la [Lame de forestier légèrement usée]
    .use 23396
    .itemcount 23396,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Achetez la compétence pour porter des épées à une main << Rogue
    .target Duelist Larenis
    .money <0.11
step << Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Gladius] (5s 9c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Glaive] |cRXP_BUY_à Geron|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendez votre surplus. Vendez votre arme si elle vous donne assez d'argent pour un [Stylet] (3s 82c). Vous reviendrez plus tard si vous n'avez pas encore assez d'argent
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Achetez un|r [Stylet] |cRXP_BUY_à Geron|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .target Geron
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior/Paladin/Rogue
    #optional
    #completewith Antheol2
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Antheol2
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noellene|r
    .train 633 >>Apprenez vos sorts de classe
    .target Noellene
	.xp <10,1
    .xp >12,1
step << Paladin
    #optional
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Noellene|r
    .accept 9677 >> Acceptez Summons from Knight-Lord Bloodvalor
    .train 19834 >>Apprenez vos sorts de classe
    .target Noellene
	.xp <12,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tannaria|r à l'étage
    .train 2983 >>Apprenez vos sorts de classe
    .target Tannaria
	.xp <10,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 13165 >>Apprenez vos sorts de classe
    .target Hannovia
	.xp <10,1
	.xp >12,1
step << Hunter
    #optional
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannovia|r
    .train 14281 >>Apprenez vos sorts de classe
    .target Hannovia
	.xp <12,1
step << Mage/Priest/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entrez dans l'auberge
	.xp <10,1
step << Mage/Priest/Warlock
    #completewith MaPrWaTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Montez à l'étage
	.xp <10,1
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r à l'étage
    .turnin 9489 >> Purifiez la Malebrèche << BloodElf
    .train 8092 >>Apprenez vos sorts de classe
    .target Ponaris
	.xp <10,1
    .xp >12,1
step << Priest
    #optional
    #label MaPrWaTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r à l'étage
    .turnin 9489 >> Purifiez la Malebrèche << BloodElf
    .train 592 >>Apprenez vos sorts de classe
    .target Ponaris
	.xp <12,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r à l'étage
    .train 7300 >>Apprenez vos sorts de classe
    .target Garridel
	.xp <10,1
    .xp >12,1
step << Mage
    #optional
    #label MaPrWaTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r à l'étage
    .train 145 >>Apprenez vos sorts de classe
    .target Garridel
	.xp <12,1
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r à l'étage
    .train 707 >>Apprenez vos sorts de classe
    .target Celoenus
    .xp <10,1
    .xp >12,1
step << Warlock
    #optional
    #label MaPrWaTrain2
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r à l'étage
    .train 705 >>Apprenez vos sorts de classe
    .target Celoenus
    .xp <12,1
step
    #label ExitFalcon
    #completewith Antheol2
    .goto Eversong Woods,46.65,49.13,40 >>Quittez la place de l’Épervier
step << BloodElf Warlock
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entrez dans Silvermoon
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Entrez dans l'auberge
step << BloodElf Warlock
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Suntouched|r
    >>|cRXP_BUY_Achetez la|r [Cuvée spéciale de Solegrâce] |cRXP_BUY_à Suntouched|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
    .isOnQuest 9067
step << BloodElf Warlock
    #completewith TheStone
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entrez dans le bâtiment, puis descendez les escaliers
    .isQuestAvailable 9529
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .accept 9529 >>Accept Les Stone
    .train 707 >>Apprenez vos sorts de classe
    .target Talionia
    .xp <10,1
    .xp >12,1
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .accept 9529 >>Accept Les Stone
    .train 705 >>Apprenez vos sorts de classe
    .target Talionia
    .xp <12,1
step << BloodElf Warlock
    #label TheStone
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .accept 9529 >>Accept Les Stone
    .target Talionia
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Eversong Woods,56.66,50.11
    .zone Eversong Woods >>Quittez Lune-d'Argent
step
    #label Antheol2
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .turnin 9066 >> Rendez Swift Discipline
    .accept 9402 >> Acceptez la quête Va chercher ! << Mage
    .target Instructor Antheol
step << Mage
    .goto Eversong Woods,54.87,56.37
    >>Ramassez la |cRXP_PICK_Azure Phial|r sous l'eau
    .complete 9402,1 --Azure Phial (1)
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .turnin 9402 >>Rendez Fetch!
    .accept 9403 >>Accept Les Purest Water
    .target Instructor Antheol

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 10-12 Bois des Chants éternels
#defaultfor !Tauren
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 12-14 Les Terres Fantômes

step << Orc Hunter/Troll Hunter
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,74.82,36.86,20,0
    .goto Silvermoon City,91.23,38.75,20 >>Voyagez vers |cRXP_FRIENDLY_Ileda|r
step << Orc Hunter/Troll Hunter
    .goto Silvermoon City,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ileda|r
    .train 202 >>Achetez la compétence pour porter des épées à deux mains
    .target Ileda
    .money <0.1000
step << Orc/Troll/Tauren
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Quittez Lune-d'Argent
step << Orc/Troll/Tauren
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Apprenez le trajet de Vol vers Lune-d'Argent
    .target Skymistress Gloaming
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .accept 9402 >>Acceptez la quête Va chercher !
    .target Instructor Antheol
step << Troll Mage
    .goto Eversong Woods,54.87,56.37
    >>Ramassez la |cRXP_PICK_Azure Phial|r sous l'eau
    .complete 9402,1 --Azure Phial (1)
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .turnin 9402 >>Rendez Fetch!
    .accept 9403 >>Accept Les Purest Water
    .target Instructor Antheol
step << Undead/BloodElf
    #completewith next
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalene|r
    >>|cRXP_BUY_Achetez les|r [Hors-d'oeuvre preste-patte] |cRXP_BUY_à Zalene|r
    .collect 22776,1,9067,1 --Collect Springpaw Appetizers
    .target Zalene Firstlight
    .isOnQuest 9067
step << Mage/Priest/Warlock
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zalene|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Delaniel|r
    .collect 1179,20,8476,1 --Ice Cold Milk (20)
    .target Zalene Firstlight
step << !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9359 >>Voyagez à la Retraite des pérégrins << !Tauren !Troll !Orc
    .accept 8476 >> Acceptez la quête L'empiètement des Amani << !Troll
    .accept 9484 >> Acceptez la quête Dompter la bête << BloodElf Hunter
    .target Lieutenant Dawnrunner
    --TODO: Beta check if 8476 can be accepted without having 9359 for non blood elves
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Achetez un|r [Arc courbe composite] |cRXP_BUY_et des|r [Flèche grossières] |cRXP_BUY_à Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .collect 2515,2000,9144,1 --Sharp Arrow (2000)
    .target Paelarin
    .money <0.2252 << Orc/Troll
    .money <0.2144 << BloodElf
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
--VV Paelarin doesn't talk to Trolls
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossières] |cRXP_BUY_à Paelarin|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Paelarin
    .money <0.0500 << Orc/Troll
    .money <0.0480 << BloodElf
step << Hunter !Troll
    #optional
    #completewith Otembe
    +Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arathel|r
    .train 2018 >> Apprenez [Forge]. Vous apprendrez [Minage] plus tard ce qui vous permettre de fabriquer des [Pierre à aiguiser] (+2 aux dégâts des armes pendant 1 hour) << Paladin/BloodElf Rogue/Undead Rogue
    >>Vous pouvez ne pas apprendre la [Forge] si vous le souhaitez << Paladin/BloodElf Rogue/Undead Rogue
    .accept 8477 >> Accept Les Spearcrafter's Hammer
    .target Arathel Sunforge
step << BloodElf Hunter
    #loop
    .goto Eversong Woods,60.48,58.86,0
    .goto Eversong Woods,61.65,65.46,40,0
    .goto Eversong Woods,64.19,68.21,40,0
    .goto Eversong Woods,63.75,66.40,40,0
    .goto Eversong Woods,64.06,61.14,40,0
    .goto Eversong Woods,63.90,60.17,40,0
    .goto Eversong Woods,62.62,60.38,40,0
    .goto Eversong Woods,60.48,58.86,40,0
    >>Utilisez le [Bâtonnet de domptage] à la portée maximale sur un |cRXP_ENEMY_Crazed Dragonhawk|r
    >>Ne tuez PAS les |cRXP_ENEMY_Elder Springpaws|r
    .complete 9484,1 --Tame a Crazed Dragonhawk
    .mob Crazed Dragonhawk
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9484 >> Rendez la quête Dompter la bête
    .accept 9486 >> Acceptez la quête Dompter la bête
    .target Lieutenant Dawnrunner
step << BloodElf Hunter
    #loop
    .goto Eversong Woods,59.62,57.24,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    >>Utilisez le [Bâtonnet de domptage] à la portée maximale sur un |cRXP_ENEMY_Elder Springpaw|r
    .complete 9486,1 --Tame an Elder Springpaw
    .mob Elder Springpaw
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9486 >> Rendez la quête Dompter la bête
    .accept 9485 >> Acceptez la quête Dompter la bête
    .target Lieutenant Dawnrunner
step << Undead/BloodElf
    #completewith Otembe
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step << Mage
    .goto Eversong Woods,64.16,72.62
    >>Utilisez la [Flasque azur] sous la cascade
    .complete 9403,1 --Filled Azure Phial (1)
    .use 23566
step << !Troll
    #completewith Marosh
    >>Tuez les |cRXP_ENEMY_Amani Berserkers|r et les |cRXP_ENEMY_Amani Axe Throwers|r
    >>Faites attention comme les |cRXP_ENEMY_Amani Berserkers|r lancent [Enrager] (augmente les dégâts et la vitesse d'attaque) lorsqu'ils sont bas en vie
    .complete 8476,1 --Kill Amani Berserker (x5)
    .mob +Amani Berserker
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob +Amani Axe Thrower
step
    #label Otembe
    .goto Eversong Woods,70.10,72.28
    >>Tuez |cRXP_ENEMY_Spearcrafter Otembe|r. Dépouillez-le pour son |cRXP_LOOT_Marteau|r
    .complete 8477,1 --Collect Otembe's Hammer (x1)
    .mob Spearcrafter Otembe
step
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ven'jashi|r dans la cage
    .accept 8479 >> Acceptez Zul'Marosh
    .target Ven'jashi
step
    #completewith next
    .goto Eversong Woods,62.57,79.72,15,0
    .goto Eversong Woods,62.25,80.08,8,0
    .goto Eversong Woods,61.83,79.89,8,0
    .goto Eversong Woods,61.90,79.63,8 >>Escaladez la hutte vers |cRXP_ENEMY_Zul'Marosh|r
step
    .goto Eversong Woods,62.51,79.68
    >>Kill |cRXP_ENEMY_Chieftain Zul'Marosh|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r et les [|cRXP_LOOT_Amani Invasion Plans|r]
    >>|cRXP_WARN_Utilisez les [|cRXP_LOOT_Amani Invasion Plans|r] pour commencer la quête|r
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360 --Collect Amani Invasion Plans (x1)
    .accept 9360 >> Acceptez Amani Invasion
    .mob Chieftain Zul'Marosh
    .use 23249
step
    #label Marosh
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ven'jashi|r dans la cage
    .turnin 8479 >> Rendez Zul'Marosh
    .target Ven'jashi
step << !Troll
    #loop
    .goto Eversong Woods,70.90,71.63,0
    .goto Eversong Woods,70.90,71.63,40,0
    .goto Eversong Woods,68.12,70.88,40,0
    .goto Eversong Woods,68.54,73.15,40,0
    .goto Eversong Woods,69.23,74.08,40,0
    .goto Eversong Woods,69.39,76.51,40,0
    .goto Eversong Woods,71.65,76.95,40,0
    .goto Eversong Woods,71.45,78.94,40,0
    .goto Eversong Woods,70.49,81.45,40,0
    .goto Eversong Woods,70.43,82.60,40,0
    .goto Eversong Woods,68.82,83.40,40,0
    .goto Eversong Woods,68.89,80.37,40,0
    >>Tuez les |cRXP_ENEMY_Amani Berserkers|r et les |cRXP_ENEMY_Amani Axe Throwers|r
    >>Faites attention comme les |cRXP_ENEMY_Amani Berserkers|r lancent [Enrager] (augment les dégâts et la vitesse d'attaque) lorsqu'ils sont bas en vie
    .complete 8476,1 --Kill Amani Berserker (x5)
    .mob +Amani Berserker
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob +Amani Axe Thrower
step << Undead/BloodElf
    #completewith next
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 8476 >> Rendez Amani Encroachment << !Troll
    .turnin 9360 >> Rendez Amani Invasion
    .accept 9363 >> Acceptez Warning Fairbreeze Village
    .target Lieutenant Dawnrunner
step << BloodElf Hunter
    #completewith next
    .zone Ghostlands >>Voyagez jusqu'aux Terres Fantômes
step << BloodElf Hunter
    #loop
    .goto Ghostlands,49.07,16.77,0
    .goto Ghostlands,55.08,12.75,90,0
    .goto Ghostlands,49.07,16.77,90,0
    .goto Ghostlands,44.65,19.14,90,0
    .goto Ghostlands,35.40,21.13,90,0
    .goto Ghostlands,31.32,26.22,90,0
    .goto Ghostlands,25.64,30.23,90,0
    >>Utilisez le [Bâtonnet de domptage] à la portée maximale sur une |cRXP_ENEMY_Mistbat|r
    .complete 9485,1 --Tame a Mistbat
    .mob Mistbat
    .use 23703
step << BloodElf Hunter
    #completewith FlySMC
    .subzone 3488 >> Voyagez à Tranquillien
step << BloodElf Hunter
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r
    .accept 9327 >> Accept Les Forsaken
    .target Arcanist Vandril
step << BloodElf Hunter
    .goto Ghostlands,44.78,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mavren|r
    .turnin 9327 >> Turn in Les Forsaken
    .accept 9758 >> Acceptez Retourner voir Jaina Vandril
    .target High Executor Mavren
step << BloodElf Hunter
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lymel|r
    .accept 9130 >> Acceptez la quête Des marchandises de Lune-d’Argent
    .target Quartermaster Lymel
    --TODO: Test, not available on pserver
step << BloodElf Hunter
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r
    .turnin 9758 >> Rendez Retourner voir Jaina Vandril
    .accept 9138 >> Acceptez Suncrown Village
    .target Arcanist Vandril
step << BloodElf Hunter
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathi|r
    .accept 9152 >> Acceptez Tomber's Supplies
    .target Rathis Tomber
step << BloodElf Hunter
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .turnin 9130 >> Rendez la quête Des marchandises de Lune-d’Argent
    .accept 9133 >> Acceptez la quête Un vol jusqu'à Lune-d'Argent
    .target Skymaster Sunwing
step << BloodElf Hunter
    #label FlySMC
    #completewith FairBreezeHunter1
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .fly Silvermoon City >> Volez jusqu'à Lune-d'Argent
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step
    #completewith AmaniTurnins
    .subzone 3464 >>Voyagez à la Retraite des pérégrins
step << Undead/BloodElf
    #completewith AmaniTurnins
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step
    #label AmaniTurnins
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 8476 >> Rendez Amani Encroachment << !Troll
    .turnin 9360 >> Rendez Amani Invasion
    .accept 9363 >> Acceptez Warning Fairbreeze Village
    .turnin 9485 >> Rendez la quête Dompter la bête << BloodElf Hunter
    .accept 9673 >> Acceptez Beast Training << BloodElf Hunter
    .target Lieutenant Dawnrunner
step << Undead/BloodElf
    #completewith MagiApp
    +Rappelez-vous de ne PAS vendre les [Hors-d'oeuvre preste-patte] et la [Cuvée spéciale de Solegrâce] << Warlock
    +Rappelez-vous de ne PAS vendre les [Hors-d'oeuvre preste-patte] << !Warlock
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Achetez un|r [Arc courbe composite] |cRXP_BUY_à|r |cRXP_FRIENDLY_Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    #optional
    #completewith HunterTrain
    +Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arathel|r
    .turnin 8477 >> Turn in Les Spearcrafter's Hammer
    .target Arathel Sunforge
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >> Montez la rampe vers |cRXP_FRIENDLY_Duskwither|r
step
    #label MagiApp
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duskwither|r
    .accept 8888 >> Accept Les Magister's Apprentice
    .target Magister Duskwither
step << Undead/BloodElf
    #completewith Wylliethen1
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loralthalis|r
    .turnin 8888 >> Turn in Les Magister's Apprentice
    .accept 8889 >> Acceptez Deactivating the Spire
    .accept 9394 >> Acceptez Where's Wyllithen?
    .target Apprentice Loralthalis
step
    #label Wylliethen1
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wyllithen|r
    .turnin 9394 >> Rendez Where's Wyllithen?
    .accept 8894 >> Acceptez Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step
    #completewith DeactivationComplete
    >>Tuez les |cRXP_ENEMY_Mana Serpents|r et les |cRXP_ENEMY_Ether Fiends|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .mob +Mana Serpent
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob +Ether Fiend
step
    #completewith next
    .goto Eversong Woods,68.95,51.95
    .cast 26566 >>Cliquez sur l' |cRXP_PICK_Orb of Translocation|r tout en haut des escaliers
step
    .goto Eversong Woods,68.24,51.56,15,0
    .goto Eversong Woods,68.57,51.61,15,0
    .goto Eversong Woods,68.96,51.95
    >>Cliquez sur le |cRXP_PICK_Floating Green Crystal|r
    .complete 8889,1 --First Power Source Deactivated (x1)
step
    #completewith next
    .goto Eversong Woods,69.16,52.01,8,0
    .goto Eversong Woods,69.09,51.74,8,0
    .goto Eversong Woods,68.93,51.69,8 >> Montez à l'étage
step
    #sticky
    #label Journalt
    .goto Eversong Woods,69.24,52.11,0,0
    >>Cliquez sur le |cRXP_PICK_Journal|r sur la table
    .accept 8891 >> Acceptez Abandoned Investigations
step
    >>Cliquez sur le |cRXP_PICK_Floating Green Crystal|r
    .complete 8889,2 --Second Power Source Deactivated (x1)
    .goto Eversong Woods,68.80,52.00,8,0
    .goto Eversong Woods,68.96,51.94
step
    #requires Journalt
    #completewith next
    .goto Eversong Woods,69.57,52.12,12,0
    .goto Eversong Woods,69.82,52.50,12,0
    .goto Eversong Woods,69.76,52.98,12,0
    .goto Eversong Woods,69.64,53.35,15 >> Montez à l'étage
step
    #requires Journalt
    .goto Eversong Woods,69.64,53.35
    >>Cliquez sur le |cRXP_PICK_Floating Green Crystal|r
    >>|cRXP_WARN_Ne cliquez PAS sur l' |cRXP_PICK_Orb of Translocation|r|r
    .complete 8889,3 --Third Power Source Deactivated (x1)
step
    #label DeactivationComplete
    .goto Eversong Woods,69.61,53.47
    .cast 26572 >>Cliquez sur l' |cRXP_PICK_Orb of Translocation|r pour retournez en bas
    .isOnQuest 8889
step
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    >>Tuez les |cRXP_ENEMY_Mana Serpents|r et les |cRXP_ENEMY_Ether Fiends|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .mob +Mana Serpent
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob +Ether Fiend
step
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wyllithen|r
    .turnin 8894 >> Rendez Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step << skip --!BloodElf/!Warlock
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+6375 >> Montez votre expérience jusqu'à 6375+/8700xp
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loralthalis|r
    .turnin 8889 >> Rendez Deactivating the Spire
    .accept 8890 >> Acceptez Word from the Spire
    .target Apprentice Loralthalis
step << BloodElf/Undead
    #loop
    .goto Eversong Woods,59.62,57.24,0
    .goto Eversong Woods,66.28,57.66,40,0
    .goto Eversong Woods,64.60,61.15,40,0
    .goto Eversong Woods,63.72,64.26,40,0
    .goto Eversong Woods,62.22,65.24,40,0
    .goto Eversong Woods,60.20,65.87,40,0
    .goto Eversong Woods,68.15,68.11,40,0
    .goto Eversong Woods,65.72,69.53,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r et les |cRXP_ENEMY_Elder Springpaws|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step << Undead/BloodElf
    #completewith Spire
    +Rappelez-vous de ne PAS vendre les [Hors-d'oeuvre preste-patte] et la [Cuvée spéciale de Solegrâce] << Warlock
    +Rappelez-vous de ne PAS vendre les [Hors-d'oeuvre preste-patte] << !Warlock
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Achetez un|r [Arc courbe composite] |cRXP_BUY_à|r |cRXP_FRIENDLY_Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    #optional
    #completewith HunterTrain
    +Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >> Montez la rampe vers |cRXP_FRIENDLY_Duskwither|r
step
    #label Spire
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duskwither|r
    .turnin 8890 >> Rendez Word from the Spire
    .turnin 8891 >> Rendez Abandoned Investigations
    .target Magister Duskwither
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .turnin 9403 >>Turn in Les Purest Water
    .accept 9404 >>Acceptez Recently Living
    .target Instructor Antheol

    --Start Silvermoon visit 1

step << BloodElf !Warlock/Undead !Warlock
    #completewith SMtraining01
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entrez dans Silvermoon
step << BloodElf !Warlock/Undead !Warlock
    #completewith next
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Entrez dans l'auberge
step << BloodElf !Warlock/Undead !Warlock
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Suntouched|r
    >>|cRXP_BUY_Achetez la|r [Cuvée spéciale de Solegrâce] |cRXP_BUY_à Suntouched|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
    .isOnQuest 9067
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,78.90,43.25,20 >>Voyagez vers |cRXP_FRIENDLY_Belil|r
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    .goto Silvermoon City,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belil|r
    .train 2580 >> Apprenez [Minage]. Ceci vous permettra de trouver les |cRXP_LOOT_[Rough Stones]|r dans les Filons de cuivre pour fabriquer les [Pierre à aiguiser] (+2 dégâts des armes pendant 1 heure) << Paladin/BloodElf Rogue/Undead Rogue
    .target Belil
    .skill blacksmithing,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    .goto Silvermoon City,78.41,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelan|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Zelan|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Zelan
    .skill blacksmithing,1
    .skill mining,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #completewith Defending
    .cast 2580 >> Lancez [Découverte de gisements]
step << BloodElf Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Voyagez vers |cRXP_FRIENDLY_Celana|r
step << BloodElf Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Achetez un|r |T135490:0|t[Arc renforcé] |cRXP_BUY_auprès d'elle|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << BloodElf Hunter
    #completewith SMtraining01
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Voyagez vers |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Voyagez vers |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,1
step << BloodElf Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Voyagez vers |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Voyagez vers |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,<1
step << BloodElf Hunter
    .goto Silvermoon City,82.20,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halthenis|r
    .turnin 9673 >> Rendez Beast Training
    .train 4187 >> Apprenez les compétences de votre familier
    .target Halthenis
step << BloodElf Hunter
    .goto Silvermoon City,82.39,26.09 << BloodElf
    .goto Silvermoon City,84.71,28.05 << !BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tana|r << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zandine|r << !BloodElf
    >>Mettez [Dressage des bêtes] sur vos barres d'action. Pour apprendre des compétences à votre familier << BloodElf
    .train 14281 >> Apprenez vos sorts de classe
    .target Tana << BloodElf
    .target Zandine << !BloodElf
	.xp <12,1
step << BloodElf Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Achetez un|r |T135490:0|t[Arc renforcé] |cRXP_BUY_auprès d'elle|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << BloodElf Hunter
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sathren|r
    .turnin 9133 >> Rendez la quête Un vol jusqu'à Lune-d'Argent
    .accept 9134 >> Acceptez Skymistress Gloaming
    .target Sathren Azuredawn
step << BloodElf !Warlock/Undead !Warlock
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Quittez Lune-d'Argent
    .zoneskip Ghostlands
step << BloodElf Hunter
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gloaming|r
    .turnin 9134 >> Rendez Skymistress Gloaming
    .accept 9135 >> Acceptez Return to Quartermaster Lymel
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step
    #optional
    #label SMtraining01
step << BloodElf !Hunter !Warlock/Undead
    #completewith Defending
    .hs >> Dirigez-vous vers la place de l'Epervier
    .cooldown item,6948,>0
    .bindlocation 3665,1
    .subzoneskip 3665

    --end Silvermoon visit 1

step << Mage/Priest/Undead Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entrez dans l'auberge
    .cooldown item,6948,>0
	.xp <12,1
step << Mage/Priest/Undead Warlock
    #completewith FalconPMTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Montez à l'étage
    .cooldown item,6948,>0
	.xp <12,1
step << Priest
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r à l'étage
    .train 1244 >>Apprenez vos sorts de classe
    .target Ponaris
    .cooldown item,6948,>0
	.xp <12,1
    .xp >14,1
step << Priest
    #label FalconPMTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponaris|r à l'étage
    .train 8122 >>Apprenez vos sorts de classe
    .target Ponaris
    .cooldown item,6948,>0
	.xp <14,1
step << Mage
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r à l'étage
    .train 7300 >>Apprenez vos sorts de classe
    .target Garridel
    .cooldown item,6948,>0
	.xp <12,1
    .xp >14,1
step << Mage
    #label FalconPMTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garridel|r à l'étage
    .train 145 >>Apprenez vos sorts de classe
    .target Garridel
    .cooldown item,6948,>0
	.xp <14,1
step << Undead Warlock
    #optional
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r à l'étage
    .train 705 >>Apprenez vos sorts de classe
    .target Celoenus
    .cooldown item,6948,>0
    .xp <12,1
    .xp >14,1
step << Undead Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celoenus|r à l'étage
    .train 6222 >>Apprenez vos sorts de classe
    .target Celoenus
    .cooldown item,6948,>0
    .xp <14,1
step << BloodElf/Undead
    #loop
    .goto Eversong Woods,46.63,63.83,0
    .goto Eversong Woods,46.63,63.83,40,0
    .goto Eversong Woods,45.04,65.51,40,0
    .goto Eversong Woods,46.57,65.84,40,0
    .goto Eversong Woods,45.24,67.85,40,0
    .goto Eversong Woods,46.66,67.71,40,0
    .goto Eversong Woods,47.05,68.83,40,0
    .goto Eversong Woods,42.89,65.47,40,0
    .goto Eversong Woods,38.45,65.63,40,0
    >>Tuez les |cRXP_ENEMY_Springpaw Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .target Springpaw Stalker
step
    #completewith PartyisOver
    .subzone 3462 >>Voyagez jusqu'au Village de Brise-clémente
step << Undead/BloodElf
    #label Defending
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sareyn|r
    .turnin 9252 >> Rendez la quête La défense de Brise-Clémente
    .accept 9253 >> Acceptez la quête Le garderune Deryan
    .target Ranger Sareyn
step << Undead/BloodElf
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >> Rendez Pelt Collection
    .target Velan Brightoak
step
    .goto Eversong Woods,44.0,70.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Achetez les|r [Fagot de feux d'artifice] |cRXP_BUY_à Halis|r
    .collect 22777,1,9067,1 --Bundle of Fireworks (1)
    .target Halis Dawnstrider
    .isOnQuest 9067
step << Undead/BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landra|r, |cRXP_FRIENDLY_Degolien|r, et à |cRXP_FRIENDLY_Ardeyn|r à l'étage
    .accept 9144 >>Acceptez la quête Disparu dans les terres Fantômes
    .turnin 9255 >>Rendez la quête Les notes de recherche
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Rendez la quête Avertir le village de Brise-Clémente
    .target +Ranger Degolien
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>Acceptez la quête Le bosquet incendié
    .target +Ardeyn Riverwind
    .goto Eversong Woods,43.58,71.20
step << !Undead !BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landra|r, |cRXP_FRIENDLY_Degolien|r, et à |cRXP_FRIENDLY_Ardeyn|r à l'étage
    .accept 9144 >>Acceptez la quête Disparu dans les terres Fantômes
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Rendez la quête Avertir le village de Brise-Clémente
    .target +Ranger Degolien
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>Acceptez la quête Le bosquet incendié
    .target +Ardeyn Riverwind
    .goto Eversong Woods,43.58,71.20
step
    #label PartyisOver
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saltheril|r
    .turnin 9067 >>Turn in Les Party Never Ends
    .target Lord Saltheril
    .isQuestComplete 9067
step
    #completewith next
    .destroy 23500 >> Détruisez l'[Invitation à la fête du Havre de Saltheril] de vos sacs, vous en aurez plus besoin
step
    #label SGrove
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larianna|r
    .turnin 9258 >> Rendez la quête Le bosquet incendié
    .accept 8473 >> Acceptez la quête Une triste tâche
    .target Larianna Riverwind
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Withered Green Keepers|r
    >>Faites attention comme ils disposent de la capacité [Frappe] qui double leur dégâts initiaux
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
step
    .goto Eversong Woods,35.10,84.05,10,0
    .goto Eversong Woods,34.91,84.34
    >>Tuez |cRXP_ENEMY_Old Whitebark|r. Dépouillez-le pour son [|cRXP_LOOT_Old Whitebark's Pendant|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Old Whitebark's Pendant|r] pour commencer la quête|r
    >>|cRXP_ENEMY_Old Whitebark|r a un temps de réapparition de 7 minutes et 30 secondes
    .collect 23228,1,8474,1 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >> Acceptez la quête Le pendentif du vieux Blanchécorce
    .mob Old Whitebark
    .use 23228
step
    #loop
	.goto Eversong Woods,36.07,83.10,0
	.goto Eversong Woods,36.07,83.10,40,0
	.goto Eversong Woods,36.21,85.47,40,0
	.goto Eversong Woods,33.24,87.69,40,0
	.goto Eversong Woods,32.05,87.25,40,0
	.goto Eversong Woods,32.63,83.57,40,0
	.goto Eversong Woods,33.46,81.99,40,0
	.goto Eversong Woods,34.47,83.08,40,0
    >>Tuez les |cRXP_ENEMY_Withered Green Keepers|r
    >>Faites attention comme ils disposent de la capacité [Frappe] qui double leur dégâts initiaux
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
step
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larianna|r
    .turnin 8473 >> Rendez la quête Une triste tâche
    .turnin 8474 >> Rendez la quête Le pendentif du vieux Blanchécorce
    .accept 10166 >> Acceptez la quête La mémoire de Blanchécorce
    .target Larianna Riverwind
step
    #completewith next
    .goto Eversong Woods,37.79,86.25
    .cast 33980 >> Utilisez le [Old Whitebark's Pendant] pour invoquer |cRXP_ENEMY_Whitebark's Spirit|r
    .use 28209
    .isOnQuest 10166
step
    .goto Eversong Woods,37.79,86.25
    >>Vainquez contre le |cRXP_ENEMY_Whitebark's Spirit|r
    >>Parlez au |cRXP_FRIENDLY_Whitebark's Spirit|r après l'avoir vaincu
    .turnin 10166 >> Rendez la quête La mémoire de Blanchécorce
    .target Whitebark's Spirit
    .use 28209
step << Undead/BloodElf
    .goto Eversong Woods,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deryan|r
    .turnin 9253 >> Rendez la quête Le garderune Deryan
    .accept 8490 >> Abandonnez Renforcer nos défenses
    .target Runewarden Deryan
step << Mage
    #loop
    .goto Eversong Woods,53.02,82.14,0
    .goto Eversong Woods,53.02,82.14,40,0
    .goto Eversong Woods,53.85,80.72,40,0
    .goto Eversong Woods,53.58,78.32,40,0
    .goto Eversong Woods,53.51,77.64,40,0
    .goto Eversong Woods,55.14,76.10,40,0
    .goto Eversong Woods,55.63,74.22,40,0
    >>Tuez les |cRXP_ENEMY_Eversong Green Keepers|r. Dépouillez-les pour leur |cRXP_LOOT_Living Branch|r
    .complete 9404,1 --Living Branch (x1)
    .mob Eversong Green Keeper
step << Mage
    #optional
    #completewith next
    +Faites attention à ne pas vendre accidentellement votre |cRXP_LOOT_[Living Branch]|r
    .isQuestComplete 9404
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnstrider|r et |cRXP_FRIENDLY_Thedra|r
    .turnin 9144 >> Rendez la quête Disparu dans les terres Fantômes
    .target +Courier Dawnstrider
    .goto Eversong Woods,48.98,88.99
    .accept 9147 >> Accept Les Fallen Courier
    .target +Apothecary Thedra
    .goto Eversong Woods,49.02,89.05
step << Undead/BloodElf
    #completewith next
    .cast 28247 >>Utilisez le [Cristal infusé] à la pierre runique
    .use 22693
step << Undead/BloodElf
    .goto Eversong Woods,55.12,84.23
    >>Défendez le [Cristal infusé] des |cRXP_ENEMY_Enraged Wraiths|r
    >>Faites attention ! Les |cRXP_ENEMY_Enraged Wraiths|r peuvent taper fort quand ils sont enragés
    .complete 8490,1 --Runestone Energized: 1/1
    .mob Enraged Wraith
    --TODO: Test needed, too dangerous? 3 lvl 10 mobs spawn at the same time with enrage
step << Undead/BloodElf
    .goto Eversong Woods,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Deryan|r
    .turnin 8490 >> Abandonnez Renforcer nos défenses
    .target Runewarden Deryan
    .isQuestComplete 8490
step << BloodElf Warlock
    #completewith next
    >>Tuez les |cRXP_ENEMY_Starving Ghostclaws|r et les |cRXP_ENEMY_Mistbats|r. Dépouillez-les pour leur |cRXP_LOOT_Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step << BloodElf Warlock
    .goto Ghostlands,43.66,15.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Purple Shard|r sur le sol
    .turnin 9529 >>Turn in Les Stone
    .accept 9619 >>Accept Les Rune of Summoning
step << BloodElf Warlock
    #completewith next
    .subzone 3490 >>Voyagez au Village Brume-d'or
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,27.51,15.75,10,0
    .goto Ghostlands,27.35,15.01,8,0
    .goto Ghostlands,26.17,15.61,8,0
    .goto Ghostlands,26.09,14.56,8,0
    .goto Ghostlands,26.44,14.24,8,0
    .goto Ghostlands,26.74,14.38,8 >>Montez à l'étage
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,26.99,15.24
    .cast 30208 >>Utilisez la [Pierre de Vide] pour invoquer un |cRXP_ENEMY_Summoned Voidwalker|r
    .use 23732
step << BloodElf Warlock
    .goto Ghostlands,26.99,15.24
    >>Tuez le |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 9619,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 23732
step
    #loop
    .goto Ghostlands,47.81,12.66,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    .goto Ghostlands,46.75,13.42,40,0
    .goto Ghostlands,45.74,14.35,40,0
    .goto Ghostlands,44.94,16.92,40,0
    .goto Ghostlands,44.84,18.84,40,0
    .goto Ghostlands,45.36,19.92,40,0
    .goto Ghostlands,47.43,20.19,40,0
    .goto Ghostlands,48.56,19.02,40,0
    .goto Ghostlands,49.52,17.34,40,0
    .goto Ghostlands,51.08,16.71,40,0
    .goto Ghostlands,52.00,18.05,40,0
    .goto Ghostlands,55.22,14.72,40,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    >>Tuez les |cRXP_ENEMY_Starving Ghostclaws|r et les |cRXP_ENEMY_Mistbats|r. Dépouillez-les pour leur |cRXP_LOOT_Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thedra|r et |cRXP_FRIENDLY_Dawnstrider|r
    .turnin 9147 >> Turn in Les Fallen Courier
    .target +Apothecary Thedra
    .goto Eversong Woods,49.02,89.05
    .accept 9148 >> Accept Voyagez à Tranquillien
    .target +Courier Dawnstrider
    .goto Eversong Woods,48.98,88.99
step
    #completewith next
    .subzone 3488 >> Voyagez à Tranquillien
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r
    .turnin 9148 >> Turn in Voyagez à Tranquillien
    .accept 9327 >> Accept Les Forsaken << BloodElf
    .accept 9329 >> Accept Les Forsaken << !BloodElf
    .target Arcanist Vandril
step
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .fp Tranquillien >> Prenez le chemin de vol de Telaar
    .target Skymaster Sunwing
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mavren|r
    .turnin 9327 >> Turn in Les Forsaken << BloodElf
    .turnin 9329 >> Turn in Les Forsaken << !BloodElf
    .accept 9758 >> Acceptez Retourner voir Jaina Vandril
    .target High Executor Mavren
step << !Orc !Troll !Tauren
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalarin|r
    .home >> Liez votre Pierre de Foyer à Tranquillien
    .target Innkeeper Kalarin
    .bindlocation 3488
step << BloodElf !Hunter
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lymel|r
    .accept 9130 >> Acceptez la quête Des marchandises de Lune-d’Argent
    .target Quartermaster Lymel
    --TODO: Test, not available on pserver
step << BloodElf Hunter
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lymel|r
    .turnin 9130 >> Rendez Return to Quartermaster Lymel
    .target Quartermaster Lymel
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r
    .turnin 9758 >> Rendez Retourner voir Jaina Vandril
    .accept 9138 >> Acceptez Suncrown Village
    .target Arcanist Vandril
step << BloodElf !Hunter
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .turnin 9130 >> Rendez la quête Des marchandises de Lune-d’Argent
    .accept 9133 >> Acceptez la quête Un vol jusqu'à Lune-d'Argent
    .target Skymaster Sunwing

    --Silvermoon segment 2

step
    #completewith FlyGhostlands
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .fly Silvermoon >> Volez jusqu'à Lune-d'Argent
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step << BloodElf !Hunter
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sathren|r
    .turnin 9133 >> Rendez la quête Un vol jusqu'à Lune-d'Argent
    .accept 9134 >> Acceptez Skymistress Gloaming
    .target Sathren Azuredawn
step << Druid
    #optional
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harene|r
    .train 8936 >> Apprenez vos sorts de classe
    .target Harene Plainwalker
	.xp <12,1
	.xp >14,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harene|r
    .train 782 >> Apprenez vos sorts de classe
    .target Harene Plainwalker
	.xp <14,1
step << Priest/Mage
    #completewith SMtraining02
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Voyagez vers |cRXP_FRIENDLY_Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Voyagez vers |cRXP_FRIENDLY_Zaedana|r << Mage
    .cooldown item,6948,<0
step << Priest
    #optional
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheolan|r
    .train 1244 >> Apprenez vos sorts de classe
    .target Lotheolan
    .cooldown item,6948,<0
	.xp <12,1
	.xp >14,1
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheolan|r
    .train 8122 >> Apprenez vos sorts de classe
    .target Lotheolan
    .cooldown item,6948,<0
	.xp <14,1
step << Mage
    #optional
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaedana|r
    .train 145 >> Apprenez vos sorts de classe
    .target Zaedana
    .cooldown item,6948,<0
	.xp <12,1
	.xp >14,1
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaedana|r
    .train 1460 >> Apprenez vos sorts de classe
    .target Zaedana
    .cooldown item,6948,<0
	.xp <14,1
step << Rogue
    #completewith SMtraining02
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Voyagez vers |cRXP_FRIENDLY_Zelanis|r
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    >>Faites bien en sorte d'avoir appris [Crochetage] et [Camouflage] pour une quête plus tard
    .accept 9532 >> Accept Trouvez Keltus Darkleaf
    .train 2983 >>Apprenez vos sorts de classe
    .target Zelanis
    .train 2983,1
    .xp <10,1
    .xp >14,1
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    >>Faites bien en sorte d'avoir appris [Crochetage] et [Camouflage] pour une quête plus tard
    .accept 9532 >> Accept Trouvez Keltus Darkleaf
    .train 1758 >>Apprenez vos sorts de classe
    .target Zelanis
    .train 1758,1
    .xp <14,1
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    >>Faites bien en sorte d'avoir appris [Crochetage] et [Camouflage] pour une quête plus tard
    .accept 9532 >> Accept Trouvez Keltus Darkleaf
    .target Zelanis
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    .train 921 >> Apprenez [Crochetage] pour une quête plus tard
    .train 1784 >> Apprenez [Camouflage] pour une quête à venir
    .train 921,1
    .train 1784,1
    .target Zelanis
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    .train 1784 >> Apprenez [Camouflage] pour une quête plus tard
    .target Zelanis
step << BloodElf Rogue
    #optional
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    .train 921 >> Apprenez [Crochetage] pour une quête plus tard
    .target Zelanis
step << !BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    .train 2983 >>Apprenez vos sorts de classe
    .target Zelanis
    .xp <10,1
    .xp >14,1
step << !BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    .train 1758 >>Apprenez vos sorts de classe
    .target Zelanis
    .xp <14,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #optional
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,78.90,43.25,20 >>Voyagez vers |cRXP_FRIENDLY_Belil|r
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #optional
    .goto Silvermoon City,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belil|r
    .train 2580 >> Apprenez [Minage]. Ceci vous permettra de trouver les |cRXP_LOOT_[Rough Stones]|r dans les Filons de cuivre pour fabriquer les [Pierre à aiguiser] (+2 dégâts des armes pendant 1 heure) << Paladin/BloodElf Rogue/Undead Rogue
    .target Belil
    .skill blacksmithing,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #optional
    .goto Silvermoon City,78.41,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelan|r
    >>|cRXP_BUY_Achetez une|r [Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Zelan|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Zelan
    .skill blacksmithing,1
    .skill mining,1
step << Paladin
    #completewith FirstTrialB
    .goto Silvermoon City,89.02,37.03,12,0
    .goto Silvermoon City,89.26,35.20,15 >>Voyagez vers |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    #optional
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9677 >>Rendez Summons from Knight-Lord Bloodvalor
    .accept 9678 >>Accept Les First Trial
    .target Knight-Lord Bloodvalor
    .isOnQuest 9677
step << Paladin
    #label FirstTrialB
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bloodvalor|r
    .accept 9678 >>Accept Les First Trial
    .target Knight-Lord Bloodvalor
step << Paladin
    #optional
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>Sautez sur l'un des bancs en bas pour ne pas avoir à monter les escaliers
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .train 19834 >>Apprenez vos sorts de classe
	.target Ithelis
	.target Osselan
	.xp <12,1
	.xp >14,1
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>Sautez sur l'un des bancs en bas pour ne pas avoir à monter les escaliers
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .train 647 >>Apprenez vos sorts de classe
	.target Ithelis
	.target Osselan
	.xp <14,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Voyagez vers |cRXP_FRIENDLY_Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Achetez un|r |T135490:0|t[Arc renforcé] |cRXP_BUY_auprès d'elle|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMtraining02
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Voyagez vers |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Voyagez vers |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Voyagez vers |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Voyagez vers |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,<1
step << Hunter
    .goto Silvermoon City,82.39,26.09 << BloodElf
    .goto Silvermoon City,84.71,28.05 << !BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tana|r << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zandine|r << !BloodElf
    >>Mettez [Dressage des bêtes] sur vos barres d'action. Pour apprendre des compétences à votre familier << BloodElf
    .train 14281 >> Apprenez vos sorts de classe
    .target Tana << BloodElf
    .target Zandine << !BloodElf
	.xp <12,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Achetez un|r |T135490:0|t[Arc renforcé] |cRXP_BUY_auprès d'elle|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << BloodElf Warlock
    #completewith RuneOS
    .goto Silvermoon City,66.92,59.84,30,0
    .goto Silvermoon City,69.32,59.09,20,0
    .goto Silvermoon City,73.50,58.21,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entrez dans le bâtiment, puis descendez les escaliers
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Turn in Les Rune of Summoning
    .train 705 >> Apprenez vos sorts de classe
    .target Talionia
    .xp <12,1
    .xp >14,1
    .train 705,1
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Turn in Les Rune of Summoning
    .train 6222 >> Apprenez vos sorts de classe
    .target Talionia
    .xp <14,1
    .xp >16,1
    .train 6222,1
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Turn in Les Rune of Summoning
    .train 1455 >> Apprenez vos sorts de classe
    .target Talionia
    .xp <16,1
    .train 1455,1
step << BloodElf Warlock
    #label RuneOS
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Turn in Les Rune of Summoning
    .target Talionia
step << Rogue
    #completewith Louis
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Prenez l'|cRXP_PICK_[Orbe de transposition]|r pour Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Louis
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Prenez l'ascenseur pour descendre dans Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    #completewith Louis
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Prenez le chemin de vol de Undercity
    .target Michael Garrett
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Achetez deux|r [Coutelas] |cRXP_BUY_au marchand|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 851,<2
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 851,<1
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Achetez deux|r [Cimeterre] |cRXP_BUY_au marchand|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Achetez une|r [Cimeterre] |cRXP_BUY_au marchand|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Achetez deux|r [Coutelas] |cRXP_BUY_au marchand|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 2027,<2 --Scimitar (2)
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #label Louis
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Achetez un|r [Coutelas] |cRXP_BUY_à Gunther|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 2027,<1 --Scimitar (1)
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20 >>Prenez l'ascenseur pour remonter vers Silvermoon
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Prenez |cRXP_PICK_l'Orbe de transposition|r pour Silvermoon
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .zoneskip Silvermoon City

    --end silvermoon segment 2

step
    #completewith FlyGhostlands
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Quittez Lune-d'Argent
step << BloodElf !Hunter
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gloaming|r
    .turnin 9134 >> Rendez Skymistress Gloaming
    .accept 9135 >> Acceptez Return to Quartermaster Lymel
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step
    #optional
    #label SMtraining02
step
    #label FlyGhostlands
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Volez jusqu'à Tranquillien
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathi|r
    .accept 9152 >> Acceptez Tomber's Supplies
    .target Rathis Tomber

]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 12-14 Les Terres Fantômes
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 14-16 Les Tarides


step
    .goto Ghostlands,57.54,14.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Dying Blood Elf|r sur le sol
    .accept 9315 >> Acceptez Anok'suten
    .target Dying Blood Elf
    .group
step << !Paladin
    #completewith next
    >>Tuez les |cRXP_ENEMY_Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
    .group 0
step << Paladin
    #completewith FirstT
    >>Tuez les |cRXP_ENEMY_Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    #loop
    .goto Ghostlands,62.86,11.04,0
    .goto Ghostlands,59.47,12.43,20,0
    .goto Ghostlands,59.83,10.22,20,0
    .goto Ghostlands,58.92,9.19,20,0
    .goto Ghostlands,60.72,9.46,20,0
    .goto Ghostlands,61.74,9.63,20,0
    .goto Ghostlands,62.86,11.04,20,0
    .goto Ghostlands,63.26,9.50,20,0
    .goto Ghostlands,62.76,12.68,20,0
    .goto Ghostlands,63.52,13.39,20,0
    .goto Ghostlands,62.00,14.21,20,0
    .goto Ghostlands,60.70,14.39,20,0
    .goto Ghostlands,60.34,16.13,20,0
    .goto Ghostlands,59.92,13.83,20,0
    >>Tuez |cRXP_ENEMY_Anok'suten|r. Il patrouille dans le sens anti-horaire autour de la ville et passe dans les bâtiments
    >>Il demande de l'aide aux |cRXP_ENEMY_Nerubis Guards|r dans une portée de 60 yards lorsqu'il a moins de 50% de vie
    .complete 9315,1 --Kill Anok'suten (x1)
    .unitscan Anok'suten
    .group 2
step << !Paladin
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    >>Tuez les |cRXP_ENEMY_Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step << Paladin
    #completewith next
    >>Nagez vers l'Île
    .goto Ghostlands,68.53,8.66,20 >>Entrez à l'intérieur de la grotte
step << Paladin
    #completewith next
    .goto Ghostlands,68.41,7.42
    .cast 3365 >>Cliquez sur le |cRXP_PICK_Gilded Brazier|r pour invoquer |cRXP_ENEMY_Sangrias Stillblade|r
step << Paladin
    #label FirstT
    .goto Ghostlands,68.50,9.77
    >>Tuez |cRXP_ENEMY_Sangrias Stillblade|r
    .complete 9678,1 --Undergo the First Trial
    .mob Sangrias Stillblade
step << Paladin
    #loop
	.goto Ghostlands,68.61,10.24,0
	.goto Ghostlands,68.61,10.24,30,0
	.goto Ghostlands,69.93,9.00,30,0
	.goto Ghostlands,70.52,5.81,30,0
	.goto Ghostlands,69.54,4.65,30,0
	.goto Ghostlands,68.63,4.93,30,0
	.goto Ghostlands,66.76,5.54,30,0
	.goto Ghostlands,66.70,6.58,30,0
	.goto Ghostlands,67.41,9.70,30,0
    >>Tuez les |cRXP_ENEMY_Nerubis Guards|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valanna|r
    .accept 9143 >> Acceptez Dealing with Zeb'Sora
    .target Ranger Valanna
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .accept 9157 >> Acceptez la quête Rituels oubliés
    .target Geranis Whitemorn
step
    #loop
	.goto Ghostlands,73.64,14.43,0
	.goto Ghostlands,73.64,14.43,30,0
	.goto Ghostlands,73.77,11.83,30,0
	.goto Ghostlands,74.70,11.89,30,0
	.goto Ghostlands,74.75,9.70,30,0
	.goto Ghostlands,75.89,8.49,30,0
	.goto Ghostlands,76.87,8.54,30,0
	.goto Ghostlands,78.20,9.68,30,0
	.goto Ghostlands,77.70,12.61,30,0
	.goto Ghostlands,75.88,10.23,30,0
	.goto Ghostlands,76.00,13.71,30,0
    >>Tuez les |cRXP_ENEMY_Shadowpine Rippers|r et les |cRXP_ENEMY_Shadowpine Witches|r. Dépouillez-les pour leur |cRXP_LOOT_Troll Ears|r
    .complete 9143,1 --Collect Zeb'Sora Troll Ear (x6)
    .mob Shadowpine Ripper
    .mob Shadowpine Witch
step
    #completewith next
    .subzone 3496 >>Voyagez à l'enclave des Pérégrins
step
    .goto Ghostlands,73.48,32.15,15,0
    .goto Ghostlands,72.50,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedina|r
    .accept 9158 >> Acceptez la quête Les porteurs de la peste
    .target Farstrider Sedina
step
    .goto Ghostlands,72.21,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krenn'an|r
    .accept 9274 >>Acceptez la quête Les esprits des noyés
    .target Ranger Krenn'an
step << !Mage
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Heron|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r Achetez du [Lait frais]|cRXP_BUY_et|r des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r << Paladin
    .collect 1179,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0500 << Priest/Mage/Warlock/Druid
    .money <0.0540 << Paladin
    .isOnQuest 9158
    .xp >15,1
step << !Mage
    #optional
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Achetez du|r [Lait frais] |cRXP_BUY_à Heron|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Buy|r Achetez des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Buy|r Achetez du [Lait frais]|cRXP_BUY_et|r des [Lutjan à longue mâchoire]|cRXP_BUY_au marchand|r << Paladin
    .collect 1179,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0250 << Priest/Mage/Warlock/Druid
    .money <0.0290 << Paladin
    .isOnQuest 9158
    .xp >15,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Côtelette de mouton]|cRXP_BUY_au marchand|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Côtelette de mouton] |cRXP_BUY_au marchand|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
step
    #optional
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Côtelette de mouton]|cRXP_BUY_au marchand|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Côtelette de mouton] |cRXP_BUY_au marchand|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
step
    #completewith AquantionKill
    >>Tuez les |cRXP_ENEMY_Ravening Apparitions|r et les |cRXP_ENEMY_Vengeful Apparitions|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .mob +Ravening Apparition
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob +Vengeful Apparition
step
    #loop
    .goto Ghostlands,73.42,22.88,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,71.31,15.24,30,0
    .goto Ghostlands,71.11,15.38,30,0
    .goto Ghostlands,71.16,13.76,30,0
    .goto Ghostlands,70.65,13.67,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    >>Ramassez les |cRXP_PICK_Glistening Mud Piles|r sous l'eau pour les |cRXP_LOOT_Wavefront Medallions|r
    .complete 9157,1 --Collect Wavefront Medallion (x8)
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .turnin 9157 >> Rendez la quête Rituels oubliés
    .accept 9174 >> Acceptez la quête Vaincre Aquantion
    .target Geranis Whitemorn
    .group
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .turnin 9157 >> Rendez la quête Rituels oubliés
    .target Geranis Whitemorn
step
    #completewith next << !Mage !Priest
    #completewith AquantionKill << Priest/Mage
    .goto Ghostlands,71.32,14.93
    .cast 28226 >> Cliquez sur l' |cRXP_PICK_Altar|r pour invoquer |cRXP_ENEMY_Aquantion|r
    .isOnQuest 9174
    .group 0
step
    .goto Ghostlands,71.31,14.58
    >>Tuez |cRXP_ENEMY_Aquantion|r
    >>Il a autant de vie qu'un mob elite et inflige des dégâts de givre
    >>Il est insensible à [Torrent arcanique] et [Marteau de la justice] << BloodElf Paladin
    >>Il est insensible à [Marteau de la justice] << !BloodElf Paladin
    >>Il est insensible à [Torrent arcanique] et [Peur] << BloodElf Warlock
    >>Il est insensible à [Peur] << !BloodElf Warlock
    >>Il est insensible à [Torrent arcanique] et [Cri psychique] << BloodElf Priest
    >>Il est insensible à [Cri psychique] << !BloodElf Priest
    >>Il est insensible à [Torrent arcanique], [Éclair de givre], [Nova de givre] et [Armure de givre] << BloodElf Mage
    >>Il est insensible à [Éclair de givre], [Nova de givre] et [Armure de givre] << !BloodElf Mage
    >>Appliquez-vous [Atténuer la magie] avant de l'invoquer << Mage
    >>Il est insensible à [Torrent arcanique] et [Suriner] << BloodElf Rogue
    >>Il est insensible à [Suriner] << !BloodElf Rogue
    >>Il est insensible à [Torrent arcanique] << BloodElf Hunter
    >>Trouvez un groupe pour le tuer si nécessaire << !Hunter !Warlock
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
    .train 8122,3 << Priest
    .train 604,3 << Mage
    .isOnQuest 9174
    .group 2
step << Priest/Mage
    #optional
    .goto Ghostlands,71.31,14.58
    >>Tuez |cRXP_ENEMY_Aquantion|r
    >>Il a autant de vie qu'un mob elite et inflige des dégâts de givre
    >>Il est insensible à [Torrent arcanique] << BloodElf Priest
    >>Il est insensible à [Torrent arcanique], [Éclair de givre], [Nova de givre] et [Armure de givre] << BloodElf Mage
    >>Il est insensible à [Éclair de givre], [Nova de givre] et [Armure de givre] << !BloodElf Mage
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
    .isOnQuest 9174
    .group 2
step
    #optional
    #label AquantionKill
step
    #label Aquantion
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .turnin 9174 >> Rendez Vanquishing Aquantion
    .target Geranis Whitemorn
    .isQuestComplete 9174
    .group
step
    #loop
    .goto Ghostlands,71.99,28.39,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    >>Tuez les |cRXP_ENEMY_Ravening Apparitions|r et les |cRXP_ENEMY_Vengeful Apparitions|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .mob +Ravening Apparition
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob +Vengeful Apparition
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valanna|r
    .turnin 9143 >> Rendez Dealing with Zeb'Sora
    .accept 9146 >> Acceptez Rapport au Lieutenant Doren Helios
    .target Ranger Valanna
step
    #optional
    #completewith SuncrownTurnin
    .destroy 22639 >>Détruisez les [Oreille de troll de Zeb'Sora], vous n'en aurez plus besoin
step
    #label Enclave2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Krenn'an|r et |cRXP_FRIENDLY_Helios|r
    .turnin 9274 >>Abandonnez Les esprits des noyés
    .target +Ranger Krenn'an
    .goto Ghostlands,72.21,29.78
    .turnin 9146 >> Rendez Rapport au Lieutenant Doren Helios
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
step
    #completewith SuncrownTurnin
    .subzone 3488 >> Voyagez à Tranquillien
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r et au |cRXP_FRIENDLY_Wanted Poster|r
    .turnin 9315 >>Rendez Anok'suten
    .turnin 9138 >>Rendez Suncrown Village
    .accept 9139 >>Acceptez Goldenmist Village
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >> Accept Wanted:Knucklerot et les Luzran
    .goto Ghostlands,48.35,31.67
    .target Arcanist Vandril
    .isQuestComplete 9315
    .group
step
    #label SuncrownTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r et au |cRXP_FRIENDLY_Wanted Poster|r
    .turnin 9138 >>Rendez Suncrown Village
    .accept 9139 >>Acceptez Goldenmist Village
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >> Accept Wanted:Knucklerot et les Luzran
    .goto Ghostlands,48.35,31.67
    .target Arcanist Vandril
    .group
step
    #label SuncrownTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r et au |cRXP_FRIENDLY_Wanted Poster|r
    .turnin 9138 >>Rendez Suncrown Village
    .accept 9139 >>Acceptez Goldenmist Village
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .target Arcanist Vandril
    .solo
step << Mage/Priest/Warlock
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez les|r [Bottes d'apprenti] |cRXP_BUY_à Vredigar|r
    .collect 22991,1,9281,1 --Collect Apprentice Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Hunter
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez les|r [Bottes passe-marais] |cRXP_BUY_et la|r [Flamberge de Tranquillien] |cRXP_BUY_à Vredigar|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .collect 28164,1,9281,1 << Hunter --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Rogue/Shaman/Hunter
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez les|r [Bottes passe-marais] |cRXP_BUY_à Vredigar|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<1
step << Hunter
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez la|r [Flamberge de Tranquillien] |cRXP_BUY_à Vredigar|r
    .collect 28164,1,9281,1 << Hunter --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez les|r [Grèves de volontaire] |cRXP_BUY_et la|r [Flamberge de Tranquillien] |cRXP_BUY_à Vredigar|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemStat 8,LEVEL,<15
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez les|r [Grèves de volontaire] |cRXP_BUY_à Vredigar|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez la|r [Flamberge de Tranquillien] |cRXP_BUY_à Vredigar|r
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Mage/Priest/Warlock
    #optional
    #completewith ManaEssence
    +Équipez les [Bottes d'apprenti]
    .use 22991
    .itemcount 22991,1
    .itemStat 8,LEVEL,<15
step << Rogue/Shaman/Hunter
    #optional
    #completewith ManaEssence
    +Équipez les [Bottes passe-marais]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter
    #optional
    #label Huntertbc1
    #completewith ManaEssence
    +Équipez les [Bottes passe-marais] et la [Flamberge de Tranquillien]
    .use 22992
    .use 28164
    .itemcount 22992,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Hunter
    #optional
    #label Huntertbc2
    #requires Huntertbc1
    #completewith ManaEssence
    +Équipez les [Bottes passe-marais]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter
    #optional
    #requires Huntertbc2
    #completewith ManaEssence
    +Équipez la [Flamberge de Tranquillien]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin
    #optional
    #label Paladinwep1
    #completewith ManaEssence
    +Équipez les [Grèves de volontaire] et la [Flamberge de Tranquillien]
    .use 22993
    .use 28164
    .itemcount 22993,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin
    #optional
    #label Paladinwep2
    #requires Paladinwep1
    #completewith ManaEssence
    +Équipez les [Grèves de volontaire]
    .use 22993
    .itemcount 22993,1
    .itemStat 8,LEVEL,<15
step << Paladin
    #optional
    #requires Paladinwep2
    #completewith ManaEssence
    +Équipez la [Flamberge de Tranquillien]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzithen|r
    .accept 9149 >> Accept Les Plagued Coast
    .target Apothecary Renzithen
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez le|r [Perce-gorge] |cRXP_BUY_et la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si ils sont disponibles|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez les|r [Perce-gorge] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan01
    #completewith ManaEssence
    +Équipez les [Perce-gorge] et la [Cimeterre sinistre]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan01
    #completewith ManaEssence
    +Équipez la [Cimeterre sinistre]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan01
    #completewith ManaEssence
    +Équipez les [Perce-gorge]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzithen|r
    .accept 9149 >> Accept Les Plagued Coast
    .target Apothecary Renzithen
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzithen|r, |cRXP_FRIENDLY_Rathiel|r, |cRXP_FRIENDLY_Dame|r, |cRXP_FRIENDLY_Maltendis|r, et à |cRXP_FRIENDLY_Darenis|r
    .accept 9149 >> Accept Les Plagued Coast
    .target +Apothecary Renzithen
    .goto Ghostlands,47.67,34.87
    .accept 9155 >> Accept Traversez la Malebrèche
    .target +Deathstalker Rathiel
    .goto Ghostlands,46.02,33.58
    --.accept 9193 >> Accept Investigate the Amani Catacombs
    --.target +Advisor Valwyn
    --.goto Ghostlands,45.17,32.37,10,0
    --.goto Ghostlands,44.84,32.81
    .accept 9160 >>Acceptez Investigate An'daroth
    .target +Dame Auriferous
    .goto Ghostlands,44.88,32.51
    --.accept 9199 >> Accept Troll Juju
    .accept 9192 >> Acceptez Trouble at the Underlight Mines
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>Acceptez Salvaging the Past
    .target +Magister Darenis
    .goto Ghostlands,46.02,31.95
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiel|r, |cRXP_FRIENDLY_Dame|r, |cRXP_FRIENDLY_Maltendis|r, et à |cRXP_FRIENDLY_Darenis|r
    .accept 9155 >> Accept Traversez la Malebrèche
    .target +Deathstalker Rathiel
    .goto Ghostlands,46.02,33.58
    --.accept 9193 >> Accept Investigate the Amani Catacombs
    --.target +Advisor Valwyn
    --.goto Ghostlands,45.17,32.37,10,0
    --.goto Ghostlands,44.84,32.81
    .accept 9160 >>Acceptez Investigate An'daroth
    .target +Dame Auriferous
    .goto Ghostlands,44.88,32.51
    --.accept 9199 >> Accept Troll Juju
    .accept 9192 >> Acceptez Trouble at the Underlight Mines
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>Acceptez Salvaging the Past
    .target +Magister Darenis
    .goto Ghostlands,46.02,31.95
step
    #label SanctumOTM
    .goto Ghostlands,35.18,32.85,100 >>Voyagez vers le Sanctum de la Lune
    .isOnQuest 9150
step
    #label ManaEssence
    #loop
    .goto Ghostlands,35.18,32.85,0
    .goto Ghostlands,35.18,32.85,40,0
    .goto Ghostlands,34.58,31.04,40,0
    .goto Ghostlands,33.15,30.13,40,0
    .goto Ghostlands,31.39,29.83,40,0
    .goto Ghostlands,30.52,31.32,40,0
    .goto Ghostlands,30.24,33.02,40,0
    .goto Ghostlands,32.08,34.65,40,0
    .goto Ghostlands,32.53,35.72,40,0
    .goto Ghostlands,33.63,36.13,40,0
    .goto Ghostlands,34.11,34.93,40,0
    >>Tuez les |cRXP_ENEMY_Arcane Devourers|r et les |cRXP_ENEMY_Mana Shifters|r. Dépouillez-les pour leur |cRXP_LOOT_Mana Essence|r
    .complete 9150,1 --Collect Crystallized Mana Essence (x8)
    .mob Arcane Devourer
    .mob Mana Shifter
step
    .goto Ghostlands,33.55,26.55
    >>Ramassez les |cRXP_PICK_Box of Supplies|r dans la caravane
    .complete 9152,1 --Collect Rathis Tomber's Supplies (x1)
step << !BloodElf/!Rogue
    #completewith Andaroth
    .goto Ghostlands,37.69,20.68,40,0
    >>Tuez les |cRXP_ENEMY_Spindleweb Spiders|r. Dépouillez-les pour leur |cRXP_LOOT_Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step << BloodElf Rogue
    #completewith KeltusD
    .goto Ghostlands,37.69,20.68,40,0
    >>Tuez les |cRXP_ENEMY_Spindleweb Spiders|r. Dépouillez-les pour leur |cRXP_LOOT_Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith Andaroth
    >>Tuez les |cRXP_ENEMY_Sentinel Spies|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step << BloodElf Rogue
    #label KeltusD
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keltus|r
    >>Ne tuez PAS le |cRXP_ENEMY_Sentinel Leader|r
    >>|cRXP_FRIENDLY_Keltus|r peut être bugué. Si il n'est pas présent, nagez vers le Bois des Chants éternels et revenez
    .turnin 9532 >> Turn in Trouvez Keltus Darkleaf
    .accept 9460 >> Acceptez Combining Forces
    .target Keltus Darkleaf
step << BloodElf Rogue
    #completewith next
    >>Voyagez vers le |cRXP_PICK_Shrine|r
    .complete 9160,2 --Investigate An'daroth
step << BloodElf Rogue
    #loop
    .goto Ghostlands,37.05,14.03,0
    .goto Ghostlands,37.05,14.03,30,0
    .goto Ghostlands,38.45,13.16,30,0
    .goto Ghostlands,37.33,13.50,30,0
    .goto Ghostlands,35.87,11.73,30,0
    .goto Ghostlands,35.41,11.93,30,0
    .goto Ghostlands,36.33,13.66,30,0
    .goto Ghostlands,35.98,14.48,30,0
    >>|T132320:0|tUtilisez [Camouflage] et ensuite [Vol à la tire] sur le |cRXP_ENEMY_Sentinel Leader|r pour son |cRXP_LOOT_Lacy Handkerchief|r
    >>Si elle vous prend en cible, enfuyez-vous et recommencez
    .complete 9460,1 --Lacy Handkerchief (x1)
    .mob Sentinel Leader
step
    #label Andaroth
    .goto Ghostlands,36.94,15.73
    >>Voyagez vers le |cRXP_PICK_Shrine|r
    .complete 9160,2 --Investigate An'daroth
step
    #loop
	.goto Ghostlands,38.21,17.44,0
	.goto Ghostlands,38.21,17.44,35,0
	.goto Ghostlands,36.67,17.00,35,0
	.goto Ghostlands,35.87,14.42,35,0
	.goto Ghostlands,34.77,12.01,35,0
	.goto Ghostlands,35.94,11.58,35,0
	.goto Ghostlands,38.51,13.19,35,0
	.goto Ghostlands,37.50,14.67,35,0
    >>Tuez les |cRXP_ENEMY_Sentinel Spies|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step << BloodElf Rogue
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keltus|r
    >>|cRXP_FRIENDLY_Keltus|r peut être bugué. Si il n'est pas présent, nagez vers le Bois des Chants éternels et revenez
    .turnin 9460 >> Rendez Combining Forces
    .accept 9618 >> Acceptez Return the Reports
    .target Keltus Darkleaf
step
    #loop
    .goto Ghostlands,29.08,15.17,0
    .goto Ghostlands,29.08,15.17,30,0
    .goto Ghostlands,27.21,12.88,30,0
    .goto Ghostlands,25.83,14.98,30,0
    .goto Ghostlands,24.14,14.29,30,0
    .goto Ghostlands,23.41,16.01,30,0
    .goto Ghostlands,24.71,16.39,30,0
    .goto Ghostlands,26.35,17.43,30,0
    .goto Ghostlands,27.08,15.48,30,0
    >>Tuez les |cRXP_ENEMY_Quel'dorei Ghosts|r et les |cRXP_ENEMY_Quel'dorei Wraiths|r
    >>Faites attention car ils utilisent [Évasion] (Augmente leur chance d'esquive) lorsqu'ils ont moins de 50% de vie << Rogue/Paladin
    .complete 9139,1 --Kill Quel'dorei Ghost (x6)
    .mob +Quel'dorei Ghost
    .complete 9139,2 --Kill Quel'dorei Wraith (x4)
    .mob +Quel'dorei Wraith
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Spindleweb Spiders|r. Dépouillez-les pour leur |cRXP_LOOT_Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith next
    .goto Ghostlands,18.88,13.73,80 >>Voyagez vers le Rivage
step
    #loop
    .goto Ghostlands,18.88,13.73,0
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17,40,0
    >>Tuez les |cRXP_ENEMY_Zombified Grimscales|r et les |cRXP_ENEMY_Withered Grimscales|r. Dépouillez-les pour leur |cRXP_LOOT_Plagued Murloc Spines|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Zombified Grimscale|r lancent|r [Fatigue fiévreuse] (réduit l'Intelligence et l'Esprit de 6 pendant 10 min) << !Rogue !Warrior
    >>|cRXP_WARN_Faites attention aux |cRXP_ENEMY_Withered Grimscale|r qui lancent|r [Agilité diminuée] (réduit l'Agilité de 18 pendant 5 min)  << !Mage !Priest !Warlock
    >>Sortez de leur portée pour l'éviter
    .complete 9149,1 --Collect Plagued Murloc Spine (x6)
    .mob Zombified Grimscale
    .mob Withered Grimscale
step
    #optional
    #loop
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17,40,0
    .xp 14-4460 >>Montez votre expérience jusqu'à ce qu'il ne vous reste que 4460xp pour le niveau 14
    .itemcount 22644,<5
step
    #optional
    #loop
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17,40,0
    .xp 14-5510 >>Montez votre expérience jusqu'à ce qu'il ne vous reste que 5510xp pour le niveau 14
    .itemcount 22644,5
step << BloodElf/Undead
    #completewith TranqTurnins2
    .hs >> Utilisez votre Pierre de foyer pour revenir à Tranquillien
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #completewith TranqTurnins2
    .subzone 3488 >>Voyagez à Tranquillien
    .cooldown item,6948,<0 << BloodElf/Undead
step << BloodElf/Undead
    .goto Ghostlands,48.43,30.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Chef Mouldier|r
    .turnin 9171 >>Rendez la quête Il faut que ça croustille !
    .target Master Chef Mouldier
    .itemcount 22644,5
step
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzithen|r
    .turnin 9149 >> Turn in Les Plagued Coast
    .target Apothecary Renzithen
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darenis|r
    .turnin 9150 >> Rendez Salvaging the Past
    --.accept 9151 >> Accept The Sanctum of the Sun
    .target Magister Darenis
step
    #completewith TranqTurnins2
    #optional
    .destroy 22580 >>Détruisez l'[Essence de mana cristallisée] comme vous n'en avez plus besoin
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dame|r
    .turnin 9160 >> Rendez Investigate An'daroth
    .accept 9163 >> Acceptez Into Occupied Territory
    .target Dame Auriferous
step << !BloodElf !Undead
    .goto Ghostlands,48.43,30.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Master Chef Mouldier|r
    .turnin 9171 >>Rendez la quête Il faut que ça croustille !
    .target Master Chef Mouldier
    .itemcount 22644,5
step
    .goto Ghostlands,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r
    .turnin 9139 >> Voyagez au Village Brume-d'or
    .accept 9140 >> Acceptez Windrunner Village
    .target Arcanist Vandril
step
    .goto Ghostlands,47.27,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathis|r
    .turnin 9152 >> Rendez Tomber's Supplies
    .target Rathis Tomber
step
    #label TranqTurnins2
    .goto Ghostlands,47.27,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathis|r
    .vendor >>|cRXP_BUY_Achetez des|r [Parchemins] |cRXP_BUY_à Rathis si il en a en stock|r
    .target Rathis Tomber
    .subzoneskip 3488,1
step << !Hunter !Shaman !Warrior !Druid
    #completewith SMTraining3
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .fly Silvermoon >> Volez jusqu'à Lune-d'Argent
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step << !Hunter !Shaman !Warrior !Druid
    #completewith SMTraining3
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entrez dans Silvermoon
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Antheol|r
    .turnin 9404 >>Rendez Recently Living
    .target Instructor Antheol
    .itemcount 23553,1
step << BloodElf Rogue/Undead Rogue
    .goto Silvermoon City,79.48,58.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Velandra|r
    .home >>Liez votre Pierre de Foyer à Theramore City
    .target Innkeeper Velandra
    .bindlocation 3487
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    .turnin 9618 >>Rendez Return the Reports << BloodElf
    .train 1758 >>Apprenez vos sorts de classe
    .target Zelanis
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheolan|r
    .train 598 >> Apprenez vos sorts de classe
    .target Lotheolan
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaedana|r
    .train 2137 >> Apprenez vos sorts de classe
    .target Zaedana
step << skip --Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zandine|r
    .train 14318 >> Apprenez vos sorts de classe
    .target Zandine
    --hunter has no useful lvl 14 spells
step << Warlock
    #completewith next
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entrez dans le bâtiment, puis descendez les escaliers
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Apprenez vos sorts de classe
    .target Talionia
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9678 >>Turn in Les First Trial
    .accept 9681 >>Acceptez A Study in Power
    .target Knight-Lord Bloodvalor
step << Paladin
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bachi|r
    .train 647 >>Apprenez vos sorts de classe
    .target Champion Bachi
step << Paladin
    .goto Silvermoon City,92.62,37.53,4,0
    .goto Silvermoon City,92.06,36.23
    >>Sautez dans le trou derrière |cRXP_FRIENDLY_Bachi|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Astalor|r
    .turnin 9681 >>Rendez A Study in Power
    .accept 9684 >>Acceptez Apportez la Lumière << wotlk
    .accept 63866 >>Acceptez Apportez la Lumière << tbc
    .target Magister Astalor Bloodsworn
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin wotlk
    .goto Silvermoon City,92.61,36.80
    >>Utilisez le [Calice chatoyant] sur un |cRXP_FRIENDLY_Magister|r
    .complete 9684,1 --Collect Filled Shimmering Vessel
    .target Blood Elf Magister
    .use 24157
step << Paladin tbc
    .goto Silvermoon City,92.61,36.80
    >>Utilisez le [Calice chatoyant] sur |cRXP_FRIENDLY_M'uru|r
    .complete 63866,1 --Collect Filled Shimmering Vessel
    .target M'uru
    .use 185956
step << Paladin
    #completewith next
    .goto Silvermoon City,90.82,37.55,12,0
    .goto Silvermoon City,87.41,36.85,12,0
    .goto Silvermoon City,87.30,31.73,10,0
    .goto Silvermoon City,87.11,29.92,8,0
    .goto Silvermoon City,86.36,30.72,8,0
    .goto Silvermoon City,89.00,36.95,10,0
    .goto Silvermoon City,89.26,35.20,8 >>Revenez vers |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9684 >>Rendez Apportez la Lumière << wotlk
    .turnin 63866 >>Rendez Apportez la Lumière << tbc
    .accept 9685 >>Acceptez Redeeming the Dead
    .target Knight-Lord Bloodvalor
 step << Paladin
    #completewith next
    .goto Silvermoon City,82.04,58.31,8,0
    .goto Silvermoon City,80.90,57.53,8 >>Entrez dans l'auberge
step << Paladin
    #completewith next
    .goto Silvermoon City,79.61,56.25,8,0
    .goto Silvermoon City,80.09,55.56,8,0
    .goto Silvermoon City,80.61,56.51,8,0
    .goto Silvermoon City,80.16,60.24,8 >>Voyagez vers |cRXP_FRIENDLY_Stillblade|r
step << Paladin
    .goto Silvermoon City,80.16,60.24
    >>Utilisez le [Calice chatoyant rempli] sur |cRXP_FRIENDLY_Stillblade|r
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
    .target Blood Knight Stillblade
    .use 24184
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Voyagez vers |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9685 >>Rendez Redeeming the Dead
    .target Knight-Lord Bloodvalor
step
    #optional
    #label SMTraining3
step << !Orc !Troll !Tauren
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Prenez l'|cRXP_PICK_[Orbe de transposition]|r pour Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
step << !Orc !Troll !Tauren
    #completewith RFCPowerPickup
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Prenez l'ascenseur pour descendre dans Undercity
    .dungeon RFC
step << !Orc !Troll !Tauren
    #completewith next
    .goto Undercity,51.99,64.54,10,0
    .goto Undercity,46.25,73.22,10,0
    .goto Undercity,45.32,78.32,10,0
    .goto Undercity,46.26,83.91,10,0
    .goto Undercity,49.03,87.92,10,0
    .goto Undercity,52.94,89.60,10 >>Entrez dans le Quartier Royal
    .dungeon RFC
step << !Orc !Troll !Tauren
    #label RFCPowerPickup
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Acceptez la quête Le pouvoir de détruire...
    .target Varimathras
    .dungeon RFC
step << !Orc !Troll !Tauren
    #completewith Durotar
    .zone Tirisfal Glades >>Prenez l’ascenseur pour remonter au niveau supérieur et quitter Undercity
    .dungeon RFC
step << !Orc !Troll !Tauren
    #completewith Durotar
    .zone Tirisfal Glades >>Quittez Undercity
    .dungeon !RFC
step << !Orc !Troll !Tauren
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Montez la Tour des Zeppelins
    .zone Durotar >>Prenez le Zeppelin pour Durotar
step << Druid
    #completewith next
    .cast 18960 >>Lancer [Téléportation : Reflet-de-Lune]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 5178 >> Apprenez vos sorts de classe
    .target Loganaar
step << Orc/Troll/Tauren
    .hs >>Utilisez votre Pierre de foyer pour vous revenir à la Croisée
    .bindlocation 380,1
    .zoneskip The Barrens
    .use 6948

]])



RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 16-18 Les Terres Fantômes
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 18-21 Les Terres Fantômes


step
    #optional
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darenis|r
    .accept 9151 >> Accept Les Sanctum of the Sun
    .target Magister Darenis
    .xp <17,1
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r
    .accept 9193 >> Acceptez L'enquête au camp Catacombs
    .target Advisor Valwyn
step
    .goto Ghostlands,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dame|r
    .accept 9163 >> Acceptez Into Occupied Territory
    .target Dame Auriferous
step
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mavren|r
    .accept 9173 >> Acceptez Retaking Windrunner Spire
    .target High Executor Mavren
step
    .goto Ghostlands,44.74,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maltendis|r
    .accept 9199 >> Acceptez Troll Juju
    .accept 9192 >> Acceptez Trouble at the Underlight Mines
    .target Deathstalker Maltendis
step << !BloodElf !Undead
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalarin|r
    .home >> Liez votre Pierre de Foyer à Tranquillien
    .target Innkeeper Kalarin
    .bindlocation 3488
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    .turnin 10372 >> Rendez A Discreet Inquiry
    .accept 9491 >> Acceptez Greed
    .target Eralan
    .isOnQuest 10372
step << Rogue
    #optional
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    .accept 9491 >> Acceptez Greed
    .target Eralan
    .isQuestTurnedIn 10372
step
    #completewith next
    .subzone 3496 >>Voyagez à l'enclave des Pérégrins
step
    #label FarEnclave2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedina|r
    .accept 9158 >> Acceptez la quête Les porteurs de la peste
    .target Farstrider Sedina
    .goto Ghostlands,72.50,32.14
    .isQuestAvailable 9158
step << Hunter
    #completewith next
    .goto Ghostlands,48.48,31.36,0
    +|cRXP_WARN_Abandonnez votre animal familier actuel. Sinon, parlez à|r |cRXP_FRIENDLY_Paniar|r |cRXP_WARN_à Tranquillien pour faire garder votre animal familier actuel|r
    .target Paniar
step << Hunter
    #loop
    .goto Ghostlands,72.68,41.63,0
    .goto Ghostlands,69.61,31.21,40,0
    .goto Ghostlands,66.93,35.04,40,0
    .goto Ghostlands,69.21,36.19,40,0
    .goto Ghostlands,68.34,39.28,40,0
    .goto Ghostlands,66.16,42.71,40,0
    .goto Ghostlands,68.48,46.50,40,0
    .goto Ghostlands,71.08,44.62,40,0
    .goto Ghostlands,72.68,41.63,40,0
    .goto Ghostlands,73.06,39.68,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,73.82,36.71,40,0
    .goto Ghostlands,76.03,36.52,40,0
    .goto Ghostlands,76.39,34.86,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,77.29,31.89,40,0
    .goto Ghostlands,77.16,27.58,40,0
    .goto Ghostlands,76.07,25.13,40,0
    .goto Ghostlands,74.82,29.77,40,0
    .train 16830 >>|cRXP_WARN_Lancez|r |T132164:0|t[Apprivoise une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Lynx griffe-fantôme|r. Attaquez les mobs avec celui-ci pour apprendre|r |T132140:0|t[Griffe (Rang 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Cliquez ici pour plus d'information sur le dressage des familiers|r
    .mob Ghostclaw Lynx
step
    #optional
    .goto Ghostlands,49.33,42.94,60,0
    #loop
    .goto Ghostlands,69.79,35.78,0
    .goto Ghostlands,60.28,48.06,60,0
    .goto Ghostlands,66.61,47.13,60,0
    .goto Ghostlands,68.66,39.81,60,0
    .goto Ghostlands,69.79,35.78,60,0
    .goto Ghostlands,73.81,37.97,60,0
    .goto Ghostlands,76.46,28.25,60,0
    >>Tuez les |cRXP_ENEMY_Ghostclaw Lynxes|r
    >>|cRXP_ENEMY_Ghostclaw Lynxes|r |cRXP_WARN_partagent les points d'apparition avec |cRXP_ENEMY_Vampiric Mistbats|r. Tuez-les aussi s'il n'y a pas assez de |cRXP_ENEMY_Ghostclaw Lynxes|r autour|r
    .complete 9158,1 --Kill Ghostclaw Lynx (x10)
    .mob Ghostclaw Lynx
    .isOnQuest 9158
step
    #label FarEnclave2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedina|r, |cRXP_FRIENDLY_Solanna|r, au |cRXP_FRIENDLY_Wanted Poster|r, et à |cRXP_FRIENDLY_Helios|r
    .turnin 9158 >> Rendez Bearers of the Plague
    .accept 9159 >> Acceptez Curbing the Plague
    .target +Farstrider Sedina
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Accept Attaquez on Zeb'Tela
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .accept 9215 >>Abandonnez Rapportez-moi la tête de Kel'gash !
    .goto Ghostlands,72.24,31.14
    .accept 9214 >>Acceptez Shadowpine Weaponry
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
    .group
step
    #label FarEnclave2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedina|r, |cRXP_FRIENDLY_Solanna|r, et à |cRXP_FRIENDLY_Helios|r
    .turnin 9158 >> Rendez Bearers of the Plague
    .accept 9159 >> Acceptez Curbing the Plague
    .target +Farstrider Sedina
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Accept Attaquez on Zeb'Tela
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .accept 9214 >>Acceptez Shadowpine Weaponry
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
    .solo
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .accept 9157 >> Acceptez la quête Rituels oubliés
    .target Geranis Whitemorn
    .maxlevel 17
    .isQuestAvailable 9157
step
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,71.31,15.24,30,0
    .goto Ghostlands,71.11,15.38,30,0
    .goto Ghostlands,71.16,13.76,30,0
    .goto Ghostlands,70.65,13.67,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88
    >>Récupérez |cRXP_PICK_Wavefront Medallions|r dans les |cRXP_PICK_Glistening Mud Piles|r sous l'eau
    .complete 9157,1 --Collect Wavefront Medallion (x8)
    .isOnQuest 9157
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .turnin 9157 >> Rendez la quête Rituels oubliés
    .accept 9174 >> Acceptez la quête Vaincre Aquantion
    .target Geranis Whitemorn
    .isOnQuest 9157
step
    #optional
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .accept 9174 >> Acceptez la quête Vaincre Aquantion
    .target Geranis Whitemorn
    .isQuestTurnedIn 9157
    .isQuestAvailable 9174
step
    #completewith next << !Mage !Priest
    #completewith AquantionKill << Priest/Mage
    .goto Ghostlands,71.32,14.93
    .cast 28226 >> Cliquez sur l' |cRXP_PICK_Altar|r pour invoquer |cRXP_ENEMY_Aquantion|r
    .solo
step
    .goto Ghostlands,71.31,14.58
    >>Tuez |cRXP_ENEMY_Aquantion|r
    >>Il a autant de vie qu'un mob elite et inflige des dégâts de givre
    >>Il est insensible à [Torrent arcanique] et [Marteau de la justice] << BloodElf Paladin
    >>Il est insensible à [Marteau de la justice] << !BloodElf Paladin
    >>Il est insensible à [Torrent arcanique] et [Peur] << BloodElf Warlock
    >>Il est insensible à [Peur] << !BloodElf Warlock
    >>Il est insensible à [Torrent arcanique] et [Cri psychique] << BloodElf Priest
    >>Il est insensible à [Cri psychique] << !BloodElf Priest
    >>Il est insensible à [Torrent arcanique], [Éclair de givre], [Nova de givre] et [Armure de givre] << BloodElf Mage
    >>Il est insensible à [Éclair de givre], [Nova de givre] et [Armure de givre] << !BloodElf Mage
    >>N'oubliez pas de vous appliquer [Atténuer la magie] avant de l'invoquer << Mage
    >>Il est insensible à [Torrent arcanique] et [Suriner] << BloodElf Rogue
    >>Il est insensible à [Suriner] << !BloodElf Rogue
    >>Il est insensible à [Torrent arcanique] << BloodElf Hunter
    >>Trouver un groupe pour le tuer si nécessaire << !Hunter !Warlock
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
    .train 8122,3 << Priest
    .train 604,3 << Mage
    .solo
step << Priest/Mage
    #label AquantionKill
    #optional
    .goto Ghostlands,71.31,14.58
    >>Tuez |cRXP_ENEMY_Aquantion|r
    >>Il a autant de vie qu'un mob elite et inflige des dégâts de givre
    >>Il est insensible à [Torrent arcanique] << BloodElf Priest
    >>Il est insensible à [Torrent arcanique], [Éclair de givre], [Nova de givre] et [Armure de givre] << BloodElf Mage
    >>Il est insensible à [Éclair de givre], [Nova de givre] et [Armure de givre] << !BloodElf Mage
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
    .solo
step
    #label Aquantion
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Geranis|r
    .turnin 9174 >> Rendez Vanquishing Aquantion
    .target Geranis Whitemorn
    .solo
step
    #completewith SLurker
    >>Tuez les |cRXP_ENEMY_Vampiric Mistbats|r
    >>Faites attention à leur sort [Toucher drainant] et son vol de vie
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat
step
    #completewith next
    .subzone 3506 >>Voyagez au Domaine d'Andilien
step
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vor'el|r
    .accept 9281 >> Acceptez Nettoyer le passage
    .target Apprentice Vor'el
step
    #completewith SLurker
    >>Tuez les |cRXP_ENEMY_Gangled Cannibals|r et les |cRXP_ENEMY_Risen Hungerers|r. Dépouillez-les |cRXP_ENEMY_Risen Hungerers|r pour leur |cRXP_LOOT_Rotting Hearts|r
    >>Faites attention aux |cRXP_ENEMY_Gangled Cannibals|r qui lancent [Enrager] (augmente les dégâts et la vitesse d'attaque) lorsqu'ils sont bas en vie
    >>Faites attention aux |cRXP_ENEMY_Risen Hungerers|r qui lancent [Sangsue] (vol de vie infligeant 10 de dégâts)
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .collect 22641,10,9216,1 --Rotting Hearts (10)
    .disablecheckbox
    .mob Risen Hungerer
    .mob Gangled Cannibal
step
    #loop
	.goto Ghostlands,26.17,37.11,0
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
    >>Tuez les |cRXP_ENEMY_Spindleweb Spiders|r. Dépouillez-les pour leur |cRXP_LOOT_Spider Legs|r
    >>Faites attention à leur [Poison]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .disablecheckbox
    .mob Spindleweb Lurker
    .itemcount 22644,<5
step
    #label SLurker
    #loop
	.goto Ghostlands,26.17,37.11,0
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
    >>Tuez les |cRXP_ENEMY_Spindleweb Lurkers|r
    >>Faites attention à leur [Poison]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .mob Spindleweb Lurker
    .itemcount 22644,5
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Blackpaw Gnolls|r, |cRXP_ENEMY_Blackpaw Scavengers|r, et les |cRXP_ENEMY_Blackpaw Shamans|r
    >>Ne vous attardez pas sur cette partie pour l'instant
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob +Blackpaw Gnoll
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob +Blackpaw Scavenger
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob +Blackpaw Shaman
step
    .goto Ghostlands,31.44,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shatharia|r
    .accept 9207 >> Acceptez Underlight Ore Samples
    .target Apprentice Shatharia
step
    #optional
    #loop
    .goto Ghostlands,30.72,46.23,0
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    >>Tuez les |cRXP_ENEMY_Blackpaw Gnolls|r, |cRXP_ENEMY_Blackpaw Scavengers|r, et les |cRXP_ENEMY_Blackpaw Shamans|r. Dépouillez-les pour leur |cRXP_LOOT_Underlight Ore|r
    >>Vous pouvez aussi miner les |cRXP_PICK_Underlight Ore|r dans les gisements dans les mines de Terradiance
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob +Blackpaw Gnoll
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob +Blackpaw Scavenger
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob +Blackpaw Shaman
    .complete 9207,1 --Collect Underlight Ore (x6)
    .skill mining,1
step
    #loop
    .goto Ghostlands,30.72,46.23,0
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    >>Tuez les |cRXP_ENEMY_Blackpaw Gnolls|r, |cRXP_ENEMY_Blackpaw Scavengers|r, et les |cRXP_ENEMY_Blackpaw Shamans|r. Dépouillez-les pour leur |cRXP_LOOT_Underlight Ore|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob +Blackpaw Gnoll
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob +Blackpaw Scavenger
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob +Blackpaw Shaman
    .complete 9207,1 --Collect Underlight Ore (x6)
step
    #completewith next
    .cast 7840 >> Utilisez la [Potion de Nage rapide] pour traverser à la nage plus rapidement
    .use 6372
    .itemcount 6372,1
step
    >>Ramassez les |cRXP_PICK_Night Elf Plans|r sur le sol, à l'intérieur des tentes, ou sur les tables
    .complete 9163,2 --Collect Night Elf Plans: An'owyn (x1)
    .goto Ghostlands,12.80,25.09,8,0
    .goto Ghostlands,12.54,24.81,8,0
    .goto Ghostlands,12.85,23.93
    .complete 9163,1 --Collect Night Elf Plans: An'daroth (x1)
    .goto Ghostlands,14.77,26.61,8,0
    .goto Ghostlands,13.70,26.83,8,0
    .goto Ghostlands,12.53,26.51
step
    #completewith next
    .goto Ghostlands,10.13,23.77,12,0
    .goto Ghostlands,10.12,23.04,12,0
    .goto Ghostlands,10.44,22.58,12 >>Courez sur le haut du bateau
step
    .goto Ghostlands,10.44,22.58
    >>Ramassez les |cRXP_PICK_Night Elf Plans|r sur la table
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Darnassian Huntresses|r lancent|r [Frappe] (Sort instantané infligeant le double des déga^ts)
    .complete 9163,3 --Collect Night Elf Plans: Scrying on the Sin'dorei (x1)
step
    #completewith next
    .subzone 3491 >>Voyagez au Village de Coursevent
step
    #loop
    .goto Ghostlands,20.37,48.76,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    .goto Ghostlands,21.10,47.74,30,0
    .goto Ghostlands,19.58,45.15,45,0
    .goto Ghostlands,21.99,43.70,30,0
    .goto Ghostlands,20.01,40.51,30,0
    .goto Ghostlands,18.38,42.74,30,0
    .goto Ghostlands,15.89,42.54,30,0
    .goto Ghostlands,16.93,46.43,30,0
    .goto Ghostlands,16.46,48.48,30,0
    .goto Ghostlands,18.20,53.81,30,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    >>Tuez les |cRXP_ENEMY_Phantasmal Seekers|r et les |cRXP_ENEMY_Stonewing Slayers|r. Dépouillez-les pour leur |cRXP_LOOT_Phantasmal Subtance|r et leur |cRXP_LOOT_Gargoyle Fragments|r
    .complete 9140,1 --Collect Phantasmal Substance (x6)
    .mob +Phantasmal Seeker
    .complete 9140,2 --Collect Gargoyle Fragment (x4)
    .mob +Stonewing Slayer
    .isOnQuest 9140
step
    #optional
    #completewith SpireT
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>Tuez les |cRXP_ENEMY_Greater Spindlewebs|r et les |cRXP_ENEMY_Ghostclaw Ravagers|r. Dépouillez-les pour leur |cRXP_ENEMY_Greater Spindlewebs|r pour leur |cRXP_LOOT_Spider Legs|r
    >>Faites attention car ces créatures peuvent être difficiles à cause de leur différence de niveau << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #completewith SpireT
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>Tuez les |cRXP_ENEMY_Greater Spindlewebs|r et les |cRXP_ENEMY_Ghostclaw Ravagers|r
    >>Faites attention car ces créatures peuvent être difficiles à cause de leur différence de niveau << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #label SpireT
    .goto Ghostlands,17.21,58.09,80 >> Voyagez à la flèche de Coursevent
    .isOnQuest 9173
step
    #completewith next
    >>Dépouillez les |cRXP_ENEMY_Fallen Rangers|r et les |cRXP_ENEMY_Deatholme Acolytes|r pour leur [|cRXP_LOOT_The Lady's Necklace|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Lady's Necklace|r] pour commencer la quête|r
    .collect 22597,1,9175 --Collect The Lady's Necklace (x1)
    .accept 9175 >> Accept Les Lady's Necklace
    .use 22597
step
    #loop
    .goto Ghostlands,17.21,58.09,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    >>Tuez les |cRXP_ENEMY_Fallen Rangers|r et les |cRXP_ENEMY_Deatholme Acolytes|r
    >>Faites attention, ces créatures peuvent être difficiles
    .complete 9173,1 --Deatholme Acolyte (8)
    .mob +Deatholme Acolyte
    .complete 9173,2 --Fallen Ranger (10)
    .mob +Fallen Ranger
step
    #loop
    .goto Ghostlands,17.21,58.09,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    >>Dépouillez les |cRXP_ENEMY_Fallen Rangers|r et les |cRXP_ENEMY_Deatholme Acolytes|r pour leur [|cRXP_LOOT_The Lady's Necklace|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_The Lady's Necklace|r] pour commencer la quête|r
    .collect 22597,1,9175,1 --Collect The Lady's Necklace (x1)
    .accept 9175 >> Accept Les Lady's Necklace
    .use 22597
step
    #optional
    #loop
    .goto Ghostlands,34.06,57.57,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    >>Tuez les |cRXP_ENEMY_Greater Spindlewebs|r et les |cRXP_ENEMY_Ghostclaw Ravagers|r. Dépouillez-les pour leur |cRXP_ENEMY_Greater Spindlewebs|r pour leur |cRXP_LOOT_Spider Legs|r
    >>Faites attention car ces créatures peuvent être difficiles à cause de leur différence de niveau << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #loop
    .goto Ghostlands,18.75,60.74,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    >>Tuez les |cRXP_ENEMY_Greater Spindlewebs|r et les |cRXP_ENEMY_Ghostclaw Ravagers|r
    >>Faites attention car ces créatures peuvent être difficiles à cause de leur différence de niveau << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #label Hungerers
    #loop
    .goto Ghostlands,37.13,48.38,0
    .goto Ghostlands,37.13,48.38,40,0
    .goto Ghostlands,37.63,45.56,40,0
    .goto Ghostlands,39.64,43.05,40,0
    .goto Ghostlands,37.56,41.68,40,0
    .goto Ghostlands,39.82,39.35,40,0
    .goto Ghostlands,37.78,38.23,40,0
    .goto Ghostlands,39.66,35.69,40,0
    .goto Ghostlands,38.29,33.03,40,0
    .goto Ghostlands,40.23,31.75,40,0
    .goto Ghostlands,38.77,29.82,40,0
    .goto Ghostlands,40.76,28.98,40,0
    >>Tuez les |cRXP_ENEMY_Gangled Cannibals|r et les |cRXP_ENEMY_Risen Hungerers|r. Dépouillez-les |cRXP_ENEMY_Risen Hungerers|r pour leur |cRXP_LOOT_Rotting Hearts|r
    >>Faites attention comme les |cRXP_ENEMY_Gangled Cannibals|r lancent [Enrager] (augmente les dégâts et la vitesse d'attaque) lorsqu'ils sont bas en vie
    >>Faites attention comme les |cRXP_ENEMY_Risen Hungerers|r lancent [Sangsue] (Vol de vie de 10 dégâts)
    >>Les |cRXP_ENEMY_Gangled Cannibals|r |cRXP_WARN_et les |cRXP_ENEMY_Risen Hungerers|r partagent leurs respawns. Tuez les deux pour faire respawn ceux dont vous avez besoin|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .mob +Risen Hungerer
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .mob +Gangled Cannibal
    .collect 22641,10,9216,1 --Rotting Hearts (10)
    .disablecheckbox
step
    #completewith TranqVisit3
    .subzone 3488 >> Voyagez à Tranquillien
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiel|r
    .turnin 9155 >> Turn in Traversez la Malebrèche
    .target Deathstalker Rathiel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dame|r
    .turnin 9163 >> Rendez Into Occupied Territory
    .accept 9166 >> Acceptez Deliver the Plans to An'telas
    .target +Dame Auriferous
    .goto Ghostlands,44.88,32.51
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à  |cRXP_FRIENDLY_Mavren|r
    .turnin 9173 >> Rendez Retaking Windrunner Spire
    .turnin 9175 >> Turn in Les Lady's Necklace
    .accept 9177 >> Acceptez Journey to Undercity << !BloodElf
    .accept 9180 >> Acceptez Journey to Undercity << BloodElf
    .target +High Executor Mavren
    .goto Ghostlands,44.77,32.44
step
    .goto Ghostlands,44.74,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maltendis|r
    .turnin 9192 >> Rendez Trouble at the Underlight Mines
    .target Deathstalker Maltendis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mouldier|r
    .accept 9171 >> Acceptez la quête Il faut que ça croustille !
    .turnin 9171 >> Rendez la quête Il faut que ça croustille !
    .target +Master Chef Mouldier
    .goto Ghostlands,48.43,30.93
    .itemcount 22644,5
    .addquestitem 22644,9171
    .isQuestAvailable 9171
step
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vandril|r
    .turnin 9140 >> Voyagez au Village de Coursevent
    .target Arcanist Vandril
    .isOnQuest 9140
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darenis|r
    .accept 9151 >> Accept Les Sanctum of the Sun
    .target Magister Darenis
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    #label TranqVisit3
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step
    #loop
    .goto Ghostlands,46.71,40.79,0
    .goto Ghostlands,46.71,40.79,40,0
    .goto Ghostlands,46.90,42.95,40,0
    .goto Ghostlands,45.96,43.99,40,0
    .goto Ghostlands,44.32,47.56,40,0
    .goto Ghostlands,45.56,52.25,40,0
    .goto Ghostlands,48.41,53.36,40,0
    .goto Ghostlands,48.63,56.38,40,0
    .goto Ghostlands,52.05,51.17,40,0
    .goto Ghostlands,51.57,46.46,40,0
    .goto Ghostlands,52.85,44.28,40,0
    >>Tuez les |cRXP_ENEMY_Vampiric Mistbats|r
    >>Faites attention à leur sort [Toucher drainant] et son vol de vie
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat

    --TODO: Knucklerot and Luzran warnings whenever in western side of Ghostlands

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guide de Survie (H)
<< Horde
#name 18-21 Les Terres Fantômes
#version 7
#subgroup RXP Guide de survie TBC 1-30
#next 21-24 Stonetalon/The Barrens

step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    .turnin 10372 >> Rendez A Discreet Inquiry
    .accept 9491 >> Acceptez Greed
    .target Eralan
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    .accept 9491 >> Acceptez Greed
    .target Eralan
    .isQuestTurnedIn 10372
step << Rogue wotlk
    #completewith Clearing
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez des|r [Poison instantané] |cRXP_BUY_à Eralan|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez le|r [Perce-gorge] |cRXP_BUY_et la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si ils sont disponibles|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez les|r [Perce-gorge] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan3
    #completewith Clearing
    +Équipez les [Perce-gorge] et la [Cimeterre sinistre]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan3
    #completewith Clearing
    +Équipez la [Cimeterre sinistre]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan3
    #completewith Clearing
    +Équipez les [Perce-gorge]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .subzone 3493 >>Voyagez vers le Sanctum du Soleil
step
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Quallestis|r et |cRXP_FRIENDLY_Kaendris|r
    .turnin 9207 >> Rendez Underlight Ore Samples
    .target +Magister Quallestis
    .goto Ghostlands,54.95,48.49
    .accept 9282 >> Acceptez la quête L'enclave des Pérégrins
    .target +Magister Kaendris
    .goto Ghostlands,55.07,48.83
    .isOnQuest 9207
step
    #optional
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaendris|r
    .accept 9282 >> Acceptez la quête L'enclave des Pérégrins
    .target Magister Kaendris
    .goto Ghostlands,55.07,48.83
step
    #optional
    #completewith Enclave2
    .destroy 22634 >>Détruisez les [Minerai de terradiance] comme vous n'en avez plus besoin
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Montez à l'étage
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Idonis|r
    .turnin 9151 >> Turn in Les Sanctum of the Sun
    .accept 9220 >> Acceptez War on Deatholme
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Idonis|r
    .accept 9220 >> Acceptez War on Deatholme
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith next
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,57.04,45.01,40,0
    .goto Ghostlands,60.07,42.43,40,0
    .goto Ghostlands,60.29,35.63,40 >>Voyagez vers |cRXP_FRIENDLY_Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylastor|r
    .turnin 9166 >> Rendez Deliver the Plans to An'telas
    .accept 9169 >> Acceptez la quête Désactiver An’owyn
    .target Magister Sylastor
    .isOnQuest 9166
step
    #optional
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylastor|r
    .accept 9169 >> Acceptez la quête Désactiver An’owyn
    .target Magister Sylastor
    .isQuestTurnedIn 9166
step
    #completewith Enclave2
    .subzone 3496 >>Voyagez à l'enclave des Pérégrins
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narina|r
    >>|cRXP_BUY_Achetez un|r |T135490:0|t[Arc renforcé] |cRXP_BUY_et|r |T132382:0|t[Sharp Flèches] |cRXP_BUY_auprès d'elle|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.4101 << BloodElf
    .money <0.4312 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narina|r
    >>|cRXP_BUY_Achetez un|r |T135490:0|t[Arc renforcé] |cRXP_BUY_auprès d'elle|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Narina
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narina|r
    >>|cRXP_BUY_Achetez des|r [Flèche grossières] |cRXP_BUY_à Narina|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.0480 << BloodElf
    .money <0.0500 << Troll/Orc
step
    #label Enclave2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sedina|r
    .turnin 9159 >> Rendez Curbing the Plague
    .target Farstrider Sedina
    .goto Ghostlands,72.50,32.14
    .isOnQuest 9159
step
    #optional
    .abandon 9274 >> Abandonnez Les esprits des noyés
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>Montez la rampe à l'est
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Venustus|r
    .accept 9275 >> Acceptez A Little Dash of Seasoning
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>Montez la rampe à l'ouest
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vynna|r
    .turnin 9282 >> Turn in Les Farstrider Enclave
    .accept 9161 >> Accept Les Traitor's Shadow
    .target Ranger Vynna

    --wip

step
    #completewith TrollR1
    >>Tuez les |cRXP_ENEMY_Mummified Headhunters|r et les |cRXP_ENEMY_Shadowpine Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,68.08,29.39,50,0
    .goto Ghostlands,66.24,28.55,12 >> Entrez dans la Crypte
    .isOnQuest 9199
step << Rogue
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>|T136058:0|t[Crochetez] les |cRXP_PICK_Burial Chests|r sur le sol à l'intérieur de la Crypte. Ramassez les |cRXP_LOOT_Gold Band|r
    >>Cliquez les |cRXP_PICK_Mummified Troll Remains|r sur le sol pour les brûler
    .skill lockpicking,18 >> Montez votre compétence de [Crochetage] jusqu'à 18
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
    .skill lockpicking,18,1
step << !Rogue
    #completewith next
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,62.91,30.75,12,0
    >>Cliquez les |cRXP_PICK_Mummified Troll Remains|r sur le sol pour les brûler
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,62.91,31.77
    >>Entrez dans la salle des bûchers
    .complete 9193,2 --Investigate the Amani Catacombs
step
    #label TrollR1
    #loop
	.goto Ghostlands,62.60,31.00,0
	.goto Ghostlands,62.60,31.00,12,0
	.goto Ghostlands,62.41,31.34,12,0
	.goto Ghostlands,62.32,31.81,12,0
	.goto Ghostlands,62.41,32.23,12,0
	.goto Ghostlands,62.63,32.56,12,0
	.goto Ghostlands,63.22,32.55,12,0
	.goto Ghostlands,63.44,32.18,12,0
	.goto Ghostlands,63.50,31.74,12,0
	.goto Ghostlands,63.43,31.29,12,0
	.goto Ghostlands,63.21,30.98,12,0
    >>Cliquez les |cRXP_PICK_Mummified Troll Remains|r sur le sol pour les brûler
    >>Ne parlez PAS encore à |cRXP_FRIENDLY_Lilatha|r
    >>Vérifiez la salle principale si la salle des bûchers n'a plus de restes de momies restant
    .complete 9193,1,8 --Mummified Troll Remains Burned (x10)
step
    #loop
    .goto Ghostlands,63.35,29.57,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    >>Tuez les |cRXP_ENEMY_Mummified Headhunters|r et les |cRXP_ENEMY_Shadowpine Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,62.93,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lilatha|r pour commencer l'escorte
    .accept 9212,1 >> Acceptez Escape from the Catacombs
    .target Ranger Lilatha
step
    #completewith TrollR
    >>Tuez les |cRXP_ENEMY_Mummified Headhunters|r et les |cRXP_ENEMY_Shadowpine Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #label PittedG
    #completewith Lilatha
    >>|T136058:0|tUtilisez [Crochetage] sur les |cRXP_PICK_Burial Chests|r sur le sol à l'intérieur des Crypte. Dépouillez-les pour le |cRXP_LOOT_Pitted Gold Band|r
    >>Cliquez les |cRXP_PICK_Mummified Troll Remains|r sur le sol pour les brûler
    >>TERMINEZ cette partie avant de quitter les Catacombes
    .skill lockpicking,20 >> Montez votre niveau de [Crochetage] à 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Rogue
    #requires PittedG
    #completewith Lilatha
    >>|T136058:0|t[Crochetez] les |cRXP_PICK_Burial Chests|r sur le sol à l'intérieur de la Crypte en attendant |cRXP_FRIENDLY_Lilatha|r. Ceux-ci peuvent contenir de la nourriture, des potions, et des couteaux de lancer
step << !Rogue
    #completewith Lilatha
    >>Cliquez les |cRXP_PICK_Mummified Troll Remains|r sur le sol pour les brûler
    >>TERMINEZ cette partie avant de quitter les Catacombes
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Paladin/Druid/Priest
    #completewith Lilatha
    .cast 19834 >>Mettez votre [Bénédiction de puissance] sur |cRXP_FRIENDLY_Lilatha|r << Paladin
    .cast 5232 >>Mettez votre [Marque du fauve] sur |cRXP_FRIENDLY_Lilatha|r << Druid
    .cast 1244 >>Mettez votre [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Lilatha|r << Priest
    .target Ranger Lilatha
step
    #label Lilatha
    >>|cRXP_WARN_Escort|rez |cRXP_FRIENDLY_Lilatha|r
    >>|cRXP_WARN_Un |cRXP_ENEMY_Shadowpine Oracle|r et un |cRXP_ENEMY_Mummified Headhunter|r vont apparaître sur |cRXP_FRIENDLY_Lilatha|r à peu près à 60 yards après avoir quitté les Catacombes|r
    .goto Ghostlands,67.93,28.98,40,0
    .goto Ghostlands,71.09,32.01,40,0
    .goto Ghostlands,72.24,30.10
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
    .target Ranger Lilatha
step << Rogue
    #label TrollR
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>|T136058:0|tUtilisez [Crochetage] sur les |cRXP_PICK_Burial Chests|r sur le sol à l'intérieur des Crypte. Dépouillez-les pour le |cRXP_LOOT_Pitted Gold Band|r
    >>Cliquez les |cRXP_PICK_Mummified Troll Remains|r sur le sol pour les brûler
    .skill lockpicking,20 >> Montez votre niveau de [Crochetage] à 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step << !Rogue
    #label TrollR
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>Cliquez les |cRXP_PICK_Mummified Troll Remains|r sur le sol pour les brûler
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>Tuez les |cRXP_ENEMY_Mummified Headhunters|r et les |cRXP_ENEMY_Shadowpine Oracles|r. Dépouillez-les pour leur |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #optional
    #completewith SadT
    +Équipez le [Grand couteau de lancer]
    .use 25874
    .itemcount 25874,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.0 << wotlk
step
    .goto Ghostlands,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Helios|r
    .turnin 9212 >> Rendez Escape from the Catacombs
    .target Captain Helios
step << Warlock TBC
    #optional
    +Utilisez le [Grimoire de Sacrifice] et le [Grimoire de Consumer l'ombre]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    #optional
    +Utilisez le [Grimoire de Sacrifice]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    #optional
    +Utilisez le [Grimoire de Consumer l'ombre]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Rogue
    #completewith SadT
    .hs >> Utilisez votre Pierre de foyer pour revenir à Tranquillien
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez|r [Poison instantané] |cRXP_BUY_à Eralan|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    #label SadT
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    .turnin 9491 >>Rendez Greed
    .accept 10548 >>Accept Les Sad Truth
    .target Eralan
step << Rogue
    #optional
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    .accept 10548 >>Accept Les Sad Truth
    .target Eralan
    .isQuestTurnedIn 9491
step << Rogue
    #optional
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez le|r [Perce-gorge] |cRXP_BUY_et la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si ils sont disponibles|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez les|r [Perce-gorge] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan4
    #completewith Clearing
    +Équipez les [Perce-gorge] et la [Cimeterre sinistre]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan4
    #completewith Clearing
    +Équipez la [Cimeterre sinistre]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan4
    #completewith Clearing
    +Équipez les [Perce-gorge]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .goto Ghostlands,78.82,19.81,15,0
    .goto Ghostlands,80.04,20.58,10,0
    .goto Ghostlands,80.27,19.82,10,0
    .goto Ghostlands,79.88,18.97,10,0
    .goto Ghostlands,79.63,18.58,10,0
    .goto Ghostlands,79.63,17.57,10 >>Montez au dernier étage du bâtiment
step
    .goto Ghostlands,79.63,17.57
    >>Cliquez sur le |cRXP_PICK_Book|r sur le sol
    .turnin 9161 >> Turn in Les Traitor's Shadow
    .accept 9162 >> Acceptez Hints of the Past
step << Rogue
    #completewith next
    >>|T136058:0|t[Crochetez] les |cRXP_PICK_Primitive Chests|r sur le sol près des ruines. Dépouillez-les pour la |cRXP_LOOT_Archaeologist's Shrunken Head|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #loop
    .goto Ghostlands,74.73,43.27,0
    .goto Ghostlands,76.95,34.45,40,0
    .goto Ghostlands,79.55,35.99,40,0
    .goto Ghostlands,81.57,39.31,40,0
    .goto Ghostlands,78.58,38.63,40,0
    .goto Ghostlands,75.89,38.65,40,0
    .goto Ghostlands,77.00,42.39,40,0
    .goto Ghostlands,77.04,44.69,40,0
    .goto Ghostlands,75.12,45.29,40,0
    .goto Ghostlands,74.73,43.27,40,0
    >>Tuez les |cRXP_ENEMY_Shadowpine Shadowcasters|r et les |cRXP_ENEMY_Shadowpine Headhunters|r. Dépouillez-les pour leur |cRXP_LOOT_Shadowcaster Maces|r et leur |cRXP_LOOT_Headhunter Axes|r
    .complete 9276,1 --Kill Shadowpine Shadowcaster (x8)
    .mob +Shadowpine Shadowcaster
    .complete 9276,2 --Kill Shadowpine Headhunter (x8)
    .mob +Shadowpine Headhunter
    .complete 9214,2 --Collect Shadowcaster Mace (x3)
    .mob +Shadowpine Shadowcaster
    .complete 9214,1 --Collect Headhunter Axe (x3)
    .mob +Shadowpine Headhunter
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Côtelette de mouton]|cRXP_BUY_au marchand|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Côtelette de mouton] |cRXP_BUY_au marchand|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .isOnQuest 9276
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Côtelette de mouton]|cRXP_BUY_au marchand|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Côtelette de mouton] |cRXP_BUY_au marchand|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .isOnQuest 9276
    .xp <15,1
    .xp >30,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solanna|r
    .turnin 9276 >> Turn in Attaquez on Zeb'Tela
    .accept 9277 >> Acceptez Assault on Zeb'Nowa
    .goto Ghostlands,72.33,31.24
    .target Farstrider Solanna
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>Montez la rampe à l'ouest
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vynna|r
    .turnin 9162 >> Rendez Hints of the Past
    .accept 9172 >> Acceptez Rapport au Lieutenant Doren Kaendris
    .target Ranger Vynna
step << Rogue
    #completewith KelGash
    >>|T136058:0|t[Crochetez] les |cRXP_PICK_Primitive Chests|r sur le sol. Dépouillez-les pour la |cRXP_LOOT_Archaeologist's Shrunken Head|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #completewith KelGash
    .goto Ghostlands,69.63,50.08,50,0
    .goto Ghostlands,69.64,51.43,50,0
    .goto Ghostlands,69.63,52.41,50,0
    .goto Ghostlands,67.54,50.89,50,0
    .goto Ghostlands,65.73,53.82,50,0
    .goto Ghostlands,68.41,54.61,50,0
    >>Tuez les |cRXP_ENEMY_Shadowpine Catlords|r et les |cRXP_ENEMY_Shadowpine Hexxers|r. Dépouillez-les pour leur |cRXP_LOOT_Catlord Claws|r et leur |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob +Shadowpine Catlord
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob +Shadowpine Hexxer
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob +Shadowpine Catlord
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob +Shadowpine Hexxer
step
    .goto Ghostlands,67.60,57.98,12,0
    .goto Ghostlands,68.25,57.78
    >>Cliquez sur le |cRXP_PICK_Fresh Fish Rack|r
    .complete 9275,3 --Poison the Fresh Fish Rack (x1)
step
    .goto Ghostlands,65.11,66.74
    >>Cliquez sur le |cRXP_PICK_Raw Meat Rack|r
    .complete 9275,1 --Poison the Raw Meat Rack (x1)
step
    .goto Ghostlands,63.04,74.99
    >>Cliquez sur le |cRXP_PICK_Smoked Meat Rack|r
    .complete 9275,2 --Poison the Smoked Meat Rack (x1)
step
    #loop
	.goto Ghostlands,61.16,75.58,0
	.goto Ghostlands,61.16,75.58,50,0
	.goto Ghostlands,60.28,73.66,50,0
	.goto Ghostlands,61.68,71.27,50,0
	.goto Ghostlands,61.81,71.16,50,0
	.goto Ghostlands,61.46,68.82,50,0
	.goto Ghostlands,64.27,73.63,50,0
	.goto Ghostlands,64.34,73.03,50,0
	.goto Ghostlands,61.46,73.38,50,0
	.goto Ghostlands,64.22,73.82,50,0
	.goto Ghostlands,63.93,73.70,50,0
	.goto Ghostlands,63.90,72.99,50,0
	.goto Ghostlands,64.87,70.28,50,0
	.goto Ghostlands,65.31,70.32,50,0
	.goto Ghostlands,64.70,67.70,50,0
	.goto Ghostlands,65.42,66.39,50,0
	.goto Ghostlands,64.66,64.07,50,0
    .xp 19 >> Montez jusqu'au niveau 19
step
    #completewith next
    .goto Ghostlands,65.29,79.31,12,0
    .goto Ghostlands,65.77,79.73,8,0
    .goto Ghostlands,65.93,80.68,8,0
    .goto Ghostlands,65.59,80.72,8 >> Montez à l'étage
    .group
step
    .goto Ghostlands,65.29,79.46
    >>Tuez |cRXP_ENEMY_Kel'gash the Wicked|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    >>Évitez les sorts de|cRXP_ENEMY_Kel'gash the Wicked|r [Éclair] et [Rapetisser] en vous cachant (LoS) autour du pilier pour interrompre chacun de ses sorts. Faites en sorte d'avoir tous vos cooldowns prêts
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .isOnQuest 9215
    .group 2
step
    #optional
    #label KelGash
step << Rogue
    #completewith next
    .goto Ghostlands,69.63,50.08,40,0
    .goto Ghostlands,69.64,51.43,40,0
    .goto Ghostlands,69.63,52.41,40,0
    .goto Ghostlands,67.54,50.89,40,0
    .goto Ghostlands,65.73,53.82,40,0
    .goto Ghostlands,68.41,54.61,40,0
    >>Tuez les |cRXP_ENEMY_Shadowpine Catlords|r et les |cRXP_ENEMY_Shadowpine Hexxers|r. Dépouillez-les pour leur |cRXP_LOOT_Catlord Claws|r et leur |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob +Shadowpine Catlord
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob +Shadowpine Hexxer
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob +Shadowpine Catlord
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob +Shadowpine Hexxer
step << Rogue
    #loop
    .goto Ghostlands,61.16,75.58,0
    .goto Ghostlands,61.16,75.58,10,0
    .goto Ghostlands,60.28,73.66,10,0
    .goto Ghostlands,61.68,71.27,10,0
    .goto Ghostlands,61.81,71.16,10,0
    .goto Ghostlands,61.46,68.82,10,0
    .goto Ghostlands,64.27,73.63,10,0
    .goto Ghostlands,64.34,73.03,8,0
    .goto Ghostlands,61.46,73.38,10,0
    .goto Ghostlands,64.22,73.82,8,0
    .goto Ghostlands,63.93,73.70,8,0
    .goto Ghostlands,63.90,72.99,10,0
    .goto Ghostlands,64.87,70.28,10,0
    .goto Ghostlands,65.31,70.32,10,0
    .goto Ghostlands,64.70,67.70,10,0
    .goto Ghostlands,65.42,66.39,10,0
    .goto Ghostlands,64.66,64.07,10,0
    >>|T136058:0|t[Crochetez] les |cRXP_PICK_Primitive Chests|r sur le sol près des ruines. Dépouillez-les pour la |cRXP_LOOT_Archaeologist's Shrunken Head|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #loop
    .goto Ghostlands,61.23,75.22,0
    .goto Ghostlands,61.23,75.22,40,0
    .goto Ghostlands,61.50,71.88,40,0
    .goto Ghostlands,61.76,67.88,40,0
    .goto Ghostlands,63.70,64.30,40,0
    .goto Ghostlands,65.33,66.10,40,0
    .goto Ghostlands,64.67,67.30,40,0
    .goto Ghostlands,65.10,70.20,40,0
    .goto Ghostlands,63.84,73.07,40,0
    .goto Ghostlands,63.04,74.16,40,0
    .goto Ghostlands,64.51,77.99,40,0
    >>Tuez les |cRXP_ENEMY_Shadowpine Catlords|r et les |cRXP_ENEMY_Shadowpine Hexxers|r. Dépouillez-les pour leur |cRXP_LOOT_Catlord Claws|r et leur |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob +Shadowpine Catlord
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob +Shadowpine Hexxer
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob +Shadowpine Catlord
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob +Shadowpine Hexxer
step
    #loop
	.goto Ghostlands,57.70,67.55,0
	.goto Ghostlands,57.70,67.55,30,0
	.goto Ghostlands,58.19,67.07,30,0
	.goto Ghostlands,58.89,65.55,30,0
	.goto Ghostlands,58.37,62.88,30,0
	.goto Ghostlands,57.24,63.00,30,0
	.goto Ghostlands,56.35,65.01,30,0
	.goto Ghostlands,56.49,68.12,30,0
    >>Tuez les |cRXP_ENEMY_Sentinel Infiltrators|r. Dépouillez-les pour leur |cRXP_LOOT_Controlling Orb|r
    .collect 23191,1,9169,1 --Collect Crystal Controlling Orb (x1)
    .mob Sentinel Infiltrator
    .isOnQuest 9169
step
    .goto Ghostlands,58.18,65.14
    >>Cliquez sur le |cRXP_PICK_Moon Crystal|r
    .complete 9169,1 --Collect Night Elf Moon Crystal Deactivated (x1)
    .isOnQuest 9169
step
    #completewith Enclave4
    .subzone 3496 >>Voyagez à l'enclave des Pérégrins
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solanna|r et |cRXP_FRIENDLY_Helios|r
    .turnin 9277 >> Rendez Assault on Zeb'Nowa
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >> Rendez Shadowpine Weaponry
    .turnin 9215 >> Abandonnez Rapportez-moi la tête de Kel'gash !
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
    .isQuestComplete 9215
    .group
step
    #label Enclave4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Solanna|r et |cRXP_FRIENDLY_Helios|r
    .turnin 9277 >> Rendez Assault on Zeb'Nowa
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >> Rendez Shadowpine Weaponry
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
step
    #optional
    .abandon 9215 >> Abandonnez Rapportez-moi la tête de Kel'gash !
step << Paladin/Rogue/Warrior
    #optional
    #completewith StoneOL
    +Équipez l'[Epée finiment travaillée]
    .use 23410
    .itemcount 23410,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.2
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>Montez la rampe à l'est
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Venustus|r
    .turnin 9275 >> Rendez A Little Dash of Seasoning
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,65.22,38.14,15,0
    .goto Ghostlands,63.85,38.10,15,0
    .goto Ghostlands,60.29,35.63,40 >>Voyagez vers |cRXP_FRIENDLY_Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylastor|r
    .turnin 9169 >> Rendez Deactivate An'owyn
    .target Magister Sylastor
    .isOnQuest 9169
step << !Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,45.17,32.37,50 >> Retournez à Tranquillien
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,47.67,34.87,40 >> Retournez à Tranquillien
    .isQuestAvailable 9151
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez|r [Poison instantané] |cRXP_BUY_à Eralan|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez le|r [Perce-gorge] |cRXP_BUY_et la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si ils sont disponibles|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête à venir << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si elle en a en stock|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête plus tard << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez les|r [Perce-gorge] |cRXP_BUY_à Eralan si elle en a en stock|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête plus tard << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête à venir << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .target Eralan
    .isQuestAvailable 9151
step << Rogue
    #optional
    #label Eralan5
    #completewith Truth
    +Équipez les [Perce-gorge] et la [Cimeterre sinistre]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan5
    #completewith Truth
    +Équipez la [Cimeterre sinistre]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan5
    #completewith Truth
    +Équipez les [Perce-gorge]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darenis|r, |cRXP_FRIENDLY_Valwyn|r, et à |cRXP_FRIENDLY_Maltendis|r
    .accept 9151 >> Accept Les Sanctum of the Sun
    .target +Magister Darenis
    .goto Ghostlands,46.02,31.95
    .turnin 9193 >> Rendez la quête Enquête dans les catacombes des Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Rendez la quête Les jujus trolls
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #label Truth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valwyn|r et |cRXP_FRIENDLY_Maltendis|r
    .turnin 9193 >> Rendez la quête Enquête dans les catacombes des Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Rendez la quête Les jujus trolls
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Paladin wotlk
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .fly Silvermoon >> Volez jusqu'à Lune-d'Argent
    .target Skymaster Sunwing
    .xp <20,1
    .zoneskip Silvermoon City
step << Paladin wotlk
    #completewith SMTraining44
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entrez dans Silvermoon
    .xp <20,1
step << Paladin wotlk
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Voyagez vers |cRXP_FRIENDLY_Bloodvalor|r
    .xp <20,1
step << Paladin wotlk
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9685 >>Rendez Redeeming the Dead
    .target Knight-Lord Bloodvalor
    .xp <20,1
step << Paladin wotlk
    #label SMTraining44
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>Sautez sur l'un des bancs en bas pour ne pas avoir à monter les escaliers
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .train 34769 >>Apprenez [Invocation d'un cheval de guerre]
	.target Ithelis
	.target Osselan
    .xp <20,1
step << Warlock TBC
    #optional
    +Utilisez le [Grimoire de Sacrifice] et le [Grimoire de Consumer l'ombre]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    #optional
    +Utilisez le [Grimoire de Sacrifice]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    #optional
    +Utilisez le [Grimoire de Consumer l'ombre]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Druid
	#completewith DruidTrain5
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 783 >> Apprenez vos sorts de classe << wotlk
    .train 8925 >> Apprenez vos sorts de classe << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 8938 >> Apprenez vos sorts de classe
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrain5
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .train 6756 >> Apprenez vos sorts de classe
	.target Loganaar
    .cooldown item,6948,>0
	.xp <20,1
step << Druid/Paladin wotlk
    #completewith ReportMK
    .hs >> Utilisez votre Pierre de foyer pour revenir à Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Paladin wotlk
    #completewith ReportMK
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Cheval de guerre thalassien] sur vos barres d'action
    .cast 34769 >> Montez votre [Cheval de guerre thalassien]
    .train 34769,3
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez la|r [Robe d'apothicaire] |cRXP_BUY_à Vredigar|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez le|r [Gilet de nécrotraqueur] |cRXP_BUY_à Vredigar|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +Équipez la [Robe d'apothicaire]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith StoneOL
    +Équipez le [Gilet de nécrotraqueur]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #completewith next
    .subzone 3493 >>Voyagez vers le Sanctum du Soleil
step
    #label ReportMK
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaendris|r
    .turnin 9172 >> Rendez Rapport au Lieutenant Doren Kaendris
    .accept 9176 >> Accept Les Twin Ziggurats
    .goto Ghostlands,55.07,48.83
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Montez à l'étage
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Idonis|r
    .turnin 9151 >> Turn in Les Sanctum of the Sun
    .accept 9220 >> Acceptez War on Deatholme
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Idonis|r
    .accept 9220 >> Acceptez War on Deatholme
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith Hearts
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>Tuez |cRXP_ENEMY_Knucklerot|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Évitez le [Poison corrosif] de |cRXP_ENEMY_Knucklerot|r en l'interrompant avec [Marteau de la justice] << Paladin
    >>Évitez le [Poison corrosif] de |cRXP_ENEMY_Knucklerot|r en l'interrompant avec [Coup de pied] << Rogue
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_est immunisé contre|r |T136183:0|t[Peur] << Warlock/Priest
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être ralenti et enraciné par|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et|r |T135848:0|t[Veilleur du puits Solanian] << Mage
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être enraciné par|r |T136100:0|t[Sarments] << Druid
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être ralenti par|r |T136102:0|t[Totem de lien terrestre] << Shaman
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être ralenti par|r |T132316:0|t[Brise-genou] << Warrior
    >>Il patrouille dans les alentours, son chemin est marqué sur votre carte
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
    .group 3
step
    #completewith Deatholme1
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>Tuez |cRXP_ENEMY_Luzran|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Faites attention,|r Luzran|cRXP_ENEMY_ |rlance|r |T132338:0|t[Enchaînement] |cRXP_WARN_et|r |T132939:0|t[Frappe] |cRXP_WARN_(vous projette dans les airs)|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_est immunisé contre|r |T136183:0|t[Peur] << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti et enraciné par|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et|r |T135848:0|t[Veilleur du puits Solanian] << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être enraciné par|r |T136100:0|t[Sarments] << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti par|r |T136102:0|t[Totem de lien terrestre] << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti par|r |T132316:0|t[Brise-genou] << Warrior
    >>Il patrouille dans les alentours, son chemin est marqué sur votre carte
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
    .group 3
step
    #completewith next
    .goto Ghostlands,40.57,48.56,12,0
    .goto Ghostlands,40.42,49.40,10 >>Entrez dans la Ziggurat
step
    .goto Ghostlands,40.37,49.75
    >>Ouvrez le |cRXP_PICK_Worn Chest|r à l'intérieur pour la |cRXP_LOOT_Stone|r
    .complete 9176,1 --Collect Stone of Flame (x1)
step
    #completewith next
    .goto Ghostlands,34.34,48.77,12,0
    .goto Ghostlands,34.31,48.03,10 >>Entrez dans la Ziggurat
step
    #label StoneOL
    .goto Ghostlands,34.30,47.67
    >>Ouvrez le |cRXP_PICK_Worn Chest|r à l'intérieur pour la |cRXP_LOOT_Stone|r
    .complete 9176,2 --Collect Stone of Light (x1)
step
    #label Hearts
    #completewith next
    >>Tuez les |cRXP_ENEMY_Risen Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Rotting Hearts|r
    >>Tuez les |cRXP_ENEMY_Dreadbone Sentinels|r et les |cRXP_ENEMY_Deathcage Sorcerers|r. Dépouillez-les pour leur |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Dreadbone Sentinels|r lancent |r [Coup de bouclier] (Interruption)
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob +Risen Stalker
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob +Dreadbone Sentinel
    .mob +Deathcage Sorcerer
step
    #label Deatholme1
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >> Entrez dans Mortholme
    .isOnQuest 9220
step << Paladin/Druid/Shaman
    #loop
    .goto Ghostlands,36.41,87.05,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    >>Tuez les |cRXP_ENEMY_Eyes of Dar'Khan|r, |cRXP_ENEMY_Nerubis Centurions|r, et les |cRXP_ENEMY_Wailers|r
    >>|cRXP_WARN_Faites attention au|r |T136067:0|t[Poison mortel]|cRXP_ENEMY_ des|r Nerubis Centurions|cRXP_WARN_ car il inflige 31 dégâts tous les 10 secondes (cumulable). Lancez|r |T135949:0|t[Purification] |cRXP_WARN_pour l'enlever|r << Paladin
    >>|cRXP_WARN_Faites attention au|r |T136067:0|t[Poison mortel]|cRXP_ENEMY_ des|r Nerubis Centurions|cRXP_WARN_ car il inflige 31 dégâts tous les 10 secondes (cumulable). Lancez|r |T136067:0|t[Guérison du poison] |cRXP_WARN_pour l'enlever|r << Druid
    >>|cRXP_WARN_Faites attention au|r |T136067:0|t[Poison mortel]|cRXP_ENEMY_ des|r Nerubis Centurions|cRXP_WARN_ car il inflige 31 dégâts tous les 10 secondes (cumulable). Lancez|r |T136067:0|t[Guérison des toxines] |cRXP_WARN_pour l'enlever|r << Shaman
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .mob +Eye of Dar'Khan
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .mob +Nerubis Centurion
    .complete 9220,3 --Kill Wailer (x6)
    .mob +Wailer
    .train 1152,3 << Paladin
    .train 8946,3 << Druid
    .train 526,3 << Shaman
step
    #loop
    .goto Ghostlands,36.41,87.05,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    >>Tuez les |cRXP_ENEMY_Eyes of Dar'Khan|r, |cRXP_ENEMY_Nerubis Centurions|r, et les |cRXP_ENEMY_Wailers|r
    >>|cRXP_WARN_Faites attention au|r |T136067:0|t[Poison mortel]|cRXP_ENEMY_ des|r Nerubis Centurions|cRXP_WARN_ car il inflige 31 dégâts tous les 10 secondes (cumulable)|r
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .mob +Eye of Dar'Khan
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .mob +Nerubis Centurion
    .complete 9220,3 --Kill Wailer (x6)
    .mob +Wailer
step
    #completewith RDraught
    .hs >> Utilisez votre Pierre de foyer pour revenir à Tranquillien
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #completewith RDraught
    .subzone 3488 >>Voyagez à Tranquillien
    .cooldown item,6948,<0
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_au marchand|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Achetez des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Achetez du|r [Jus de melon] |cRXP_BUY_et des|r [Pastèque claquevigne] |cRXP_BUY_à Kalarin|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .cooldown item,6948,>0
    .xp <15,1
    .xp >30,1
step
    #completewith Aminel
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >> Montez à l'étage
step
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acceptez Rotting Hearts
    .turnin 9216 >>Rendez Rotting Hearts
    .accept 9218 >>Acceptez Spinal Dust
    .turnin 9218 >>Rendez Spinal Dust
    .target Magistrix Aminel
    .itemcount 22641,10
    .itemcount 22642,10
step
    #optional
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aminel|r
    .accept 9218 >>Acceptez Spinal Dust
    .turnin 9218 >>Rendez Spinal Dust
    .target Magistrix Aminel
    .itemcount 22642,10
step
    #optional
    #label Aminel
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acceptez Rotting Hearts
    .turnin 9216 >>Rendez Rotting Hearts
    .target Magistrix Aminel
    .itemcount 22641,10
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez la|r [Robe d'apothicaire] |cRXP_BUY_à Vredigar|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez le|r [Gilet de nécrotraqueur] |cRXP_BUY_à Vredigar|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +Équipez la [Robe d'apothicaire]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    #completewith StoneOL
    +Équipez le [Gilet de nécrotraqueur]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step
    #label Truth2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valwyn|r et |cRXP_FRIENDLY_Maltendis|r
    .turnin 9193 >> Rendez la quête Enquête dans les catacombes des Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Rendez la quête Les jujus trolls
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiel|r
    .turnin 9156 >> Turn in Wanted:Knucklerot et les Luzran
    .target Deathstalker Rathiel
    .isQuestComplete 9156
    .group
step << Rogue wotlk
    #completewith Eralan6
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez|r [Poison instantané] |cRXP_BUY_à Eralan|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez le|r [Perce-gorge] |cRXP_BUY_et la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si ils sont disponibles|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête plus tard << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si elle en a en stock|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête plus tard << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez les|r [Perce-gorge] |cRXP_BUY_à Eralan si elle en a en stock|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête plus tard << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>Gardez la [Dague lamefeuille] comme vous en aurez besoin pour une quête plus tard << tbc
    .turnin 10548,1 >>Turn in Les Sad Truth << tbc
    .turnin 10548 >>Turn in Les Sad Truth << wotlk
    .target Eralan
    .isQuestAvailable 9151
step << Rogue
    #optional
    #label Eralan6
    #completewith Jurion
    +Équipez les [Perce-gorge] et la [Cimeterre sinistre]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan6
    #completewith Jurion
    +Équipez la [Cimeterre sinistre]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan6
    #completewith Jurion
    +Équipez les [Perce-gorge]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .subzone 3493 >>Voyagez vers le Sanctum du Soleil
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaendris|r
    .turnin 9176 >> Turn in Les Twin Ziggurats
    .accept 9167 >> Accept Les Traitor's Destruction
    .target Magister Kaendris
    .group
step
    #label TwinZ
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaendris|r
    .turnin 9176 >> Turn in Les Twin Ziggurats
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Montez à l'étage
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Idonis|r et |cRXP_FRIENDLY_Janeda|r
    .turnin 9220 >> Entrez dans Mortholme
    .accept 9170 >> Acceptez Dar'Khan's Lieutenants
    .target +Magister Idonis
    .goto Ghostlands,54.87,48.55
    .accept 9877 >> Acceptez A Restorative Draught
    .target +Arcanist Janeda
    .goto Ghostlands,54.82,48.35
step
    #completewith next
    .subzone 3488 >> Voyagez à Tranquillien
step
    #label RDraught
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzithen|r
    .turnin 9877 >>Rendez A Restorative Draught
    .accept 9164 >>Acceptez Captives at Deatholme
    .target Apothecary Renzithen
step
    #completewith next
    .subzone 3506 >>Voyagez au Domaine d'Andilien
step
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vor'el|r
    .turnin 9281 >> Rendez la quête Nettoyer le passage
    .target Apprentice Vor'el
    .isOnQuest 9281
step
    #optional
    #label Clearing
step
    #completewith Varnis
    .cast 28486 >>Utilisez le [Breuvage de plaie-du-Fléau]
    .use 22779
    .itemcount 22779,1
step
    #completewith Luzran
    >>Tuez les |cRXP_ENEMY_Risen Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Rotting Hearts|r
    >>Tuez les |cRXP_ENEMY_Dreadbone Sentinels|r et les |cRXP_ENEMY_Deathcage Sorcerers|r. Dépouillez-les pour leur |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Dreadbone Sentinels|r lancent |r [Coup de bouclier] (Interruption)
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob +Risen Stalker
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob +Dreadbone Sentinel
    .mob +Deathcage Sorcerer
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Luzran|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Luzran|r apparaît à la Ziggourat sanguinolente (à l'ouest), et patrouille en descendant la Malebrêche, puis la remonte jusqu'à ce qu'il atteigne la rivière
    >>|cRXP_WARN_Faites attention,|r Luzran|cRXP_ENEMY_ |rlance|r |T132338:0|t[Enchaînement] |cRXP_WARN_et|r |T132939:0|t[Frappe] |cRXP_WARN_(vous projette dans les airs)|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_est immunisé contre|r |T136183:0|t[Peur] << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti et enraciné par|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et|r |T135848:0|t[Veilleur du puits Solanian] << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être enraciné par|r |T136100:0|t[Sarments] << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti par|r |T136102:0|t[Totem de lien terrestre] << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti par|r |T132316:0|t[Brise-genou] << Warrior
    >>Il patrouille dans les alentours, son chemin est marqué sur votre carte
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
    .group 3
step
    #loop
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    .goto Ghostlands,40.58,48.42,50,0
    .goto Ghostlands,40.76,47.73,50,0
    .goto Ghostlands,41.84,46.91,50,0
    .goto Ghostlands,41.49,45.52,50,0
    .goto Ghostlands,39.69,46.64,50,0
    .goto Ghostlands,39.27,47.41,50,0
    .goto Ghostlands,37.53,49.81,50,0
    .goto Ghostlands,36.15,51.63,50,0
    .goto Ghostlands,35.26,52.16,50,0
    .goto Ghostlands,33.69,52.57,50,0
    .goto Ghostlands,31.89,54.85,50,0
    .goto Ghostlands,30.16,55.32,50,0
    .goto Ghostlands,27.71,55.36,50,0
    .goto Ghostlands,25.79,55.11,50,0
    .goto Ghostlands,24.53,53.16,50,0
    .goto Ghostlands,23.79,51.34,50,0
    .goto Ghostlands,22.22,48.11,50,0
    .goto Ghostlands,21.93,46.53,50,0
    .goto Ghostlands,22.05,44.27,50,0
    .goto Ghostlands,22.14,42.83,50,0
    .goto Ghostlands,22.10,40.09,50,0
    .goto Ghostlands,22.66,38.42,50,0
    .goto Ghostlands,23.67,37.62,50,0
    .goto Ghostlands,26.79,37.49,50,0
    .goto Ghostlands,27.94,38.01,50,0
    .goto Ghostlands,29.05,37.85,50,0
    .goto Ghostlands,30.25,36.63,50,0
    .goto Ghostlands,29.87,34.81,50,0
    .goto Ghostlands,27.12,26.04,50,0
    .goto Ghostlands,25.31,15.03,50,0
    .goto Ghostlands,40.58,48.42,50,0
    >>Tuez |cRXP_ENEMY_Knucklerot|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>Évitez le [Poison corrosif] de |cRXP_ENEMY_Knucklerot|r en l'interrompant avec [Marteau de la justice] << Paladin
    >>Évitez le [Poison corrosif] de |cRXP_ENEMY_Knucklerot|r en l'interrompant avec [Coup de pied] << Rogue
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_est immunisé contre|r |T136183:0|t[Peur] << Warlock/Priest
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être ralenti et enraciné par|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et|r |T135848:0|t[Veilleur du puits Solanian] << Mage
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être enraciné par|r |T136100:0|t[Sarments] << Druid
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être ralenti par|r |T136102:0|t[Totem de lien terrestre] << Shaman
    >>|cRXP_ENEMY_Putrepoing|r |cRXP_WARN_peut être ralenti par|r |T132316:0|t[Brise-genou] << Warrior
    >>Il patrouille dans les alentours, son chemin est marqué sur votre carte
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
    .group 3
step
    #loop
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    .goto Ghostlands,34.35,49.33,50,0
    .goto Ghostlands,34.18,50.75,50,0
    .goto Ghostlands,34.27,52.13,50,0
    .goto Ghostlands,35.59,52.11,50,0
    .goto Ghostlands,36.15,51.60,50,0
    .goto Ghostlands,37.01,52.90,50,0
    .goto Ghostlands,37.70,59.57,50,0
    .goto Ghostlands,37.30,63.89,50,0
    .goto Ghostlands,36.97,68.06,50,0
    .goto Ghostlands,36.39,68.31,50,0
    .goto Ghostlands,36.77,65.23,50,0
    .goto Ghostlands,37.87,60.95,50,0
    .goto Ghostlands,38.12,57.42,50,0
    .goto Ghostlands,38.20,53.38,50,0
    .goto Ghostlands,37.93,49.52,50,0
    .goto Ghostlands,37.65,48.77,50,0
    .goto Ghostlands,37.57,44.63,50,0
    .goto Ghostlands,37.95,41.65,50,0
    .goto Ghostlands,38.66,38.08,50,0
    .goto Ghostlands,39.29,33.57,50,0
    .goto Ghostlands,39.64,31.98,50,0
    .goto Ghostlands,34.35,49.33,50,0
    >>Tuez |cRXP_ENEMY_Luzran|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Luzran|r apparaît à la Ziggourat sanguinolente (à l'ouest), et patrouille en descendant la Malebrêche, puis la remonte jusqu'à ce qu'il atteigne la rivière
    >>|cRXP_WARN_Faites attention,|r Luzran|cRXP_ENEMY_ |rlance|r |T132338:0|t[Enchaînement] |cRXP_WARN_et|r |T132939:0|t[Frappe] |cRXP_WARN_(vous projette dans les airs)|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_est immunisé contre|r |T136183:0|t[Peur] << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti et enraciné par|r |T135846:0|t[Eclair de givre] |cRXP_WARN_et|r |T135848:0|t[Veilleur du puits Solanian] << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être enraciné par|r |T136100:0|t[Sarments] << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti par|r |T136102:0|t[Totem de lien terrestre] << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_peut être ralenti avec|r |T132316:0|t[Brise-genou] << Warrior
    >>Il patrouille dans les alentours, son chemin est marqué sur votre carte
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
    .group 3
step
    #optional
    #label Luzran
step
    #label Hearts2
    #loop
    .goto Ghostlands,36.25,70.35,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    >>Tuez les |cRXP_ENEMY_Risen Stalkers|r. Dépouillez-les pour leur |cRXP_LOOT_Rotting Hearts|r
    >>Tuez les |cRXP_ENEMY_Dreadbone Sentinels|r et les |cRXP_ENEMY_Deathcage Sorcerers|r. Dépouillez-les pour leur |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_Faites attention comme les |cRXP_ENEMY_Dreadbone Sentinels|r lancent |r [Coup de bouclier] (Interruption)
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob +Risen Stalker
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob +Dreadbone Sentinel
    .mob +Deathcage Sorcerer
step
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >> Entrez dans Mortholme
    .isOnQuest 9164
step
    #completewith next
    .goto Ghostlands,31.70,73.64,10,0
    .goto Ghostlands,31.78,72.91,10 >>Entrez dans la crypte
step
    #label Jurion
    .goto Ghostlands,32.19,73.08,8,0
    >>Tuez |cRXP_ENEMY_Jurion the Deceiver|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Enith|r sur le sol
    .complete 9170,3 --Kill Jurion the Deceiver (x1)
    .mob +Jurion the Deceiver
    .goto Ghostlands,32.10,74.45,-1
    .complete 9164,1 --Apothecary Enith Rescued
    .target +Apothecary Enith
    .goto Ghostlands,32.15,73.95,-1
    .skipgossip
step
    #completewith next
    .goto Ghostlands,32.19,73.08,8,0
    .goto Ghostlands,31.78,72.91,10,0
    .goto Ghostlands,31.70,73.64,10 >>Quittez la crypte
step
    .goto Ghostlands,37.36,79.33
    >>Tuez |cRXP_ENEMY_Mirdoran the Fallen|r
    .complete 9170,1 --Kill Mirdoran the Fallen (x1)
    .mob Mirdoran the Fallen
step
    #completewith Varnis
    .goto Ghostlands,37.51,84.18,30,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,40.98,83.22,15 >>Voyagez vers |cRXP_FRIENDLY_Varnis|r
step
    #completewith next
    .goto Ghostlands,41.24,83.04,15,0
    >>Tuez |cRXP_ENEMY_Borgoth the Bloodletter|r si il est présent près de |cRXP_FRIENDLY_Varnis|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Varnis
    .goto Ghostlands,40.98,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varnis|r sur la table
    .complete 9164,2 --Apprentice Varnis Rescued
    .target Apprentice Varnis
    .skipgossip
step
    #completewith next
    .goto Ghostlands,35.24,88.23,15,0
    .goto Ghostlands,35.77,89.13,15,0
    >>Vérifiez si |cRXP_ENEMY_Masophet the Black|r est présent à l'intérieur de la première Ziggourat. Tuez-le si c'est le cas
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    #completewith Vedoran
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.79,89.93,15 >>Voyagez vers |cRXP_FRIENDLY_Vedoran|r
 step
    #completewith next
    >>Tuez |cRXP_ENEMY_Borgoth the Bloodletter|r si il est présent près de |cRXP_FRIENDLY_Vedoran|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Vedoran
    .goto Ghostlands,32.79,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vedoran|r sur la table
    .complete 9164,3 --Ranger Vedoran Rescued
    .target Ranger Vedoran
    .skipgossip
    --TODO: BETA check this step, bugged on pserver
step
    #loop
    .goto Ghostlands,35.77,89.13,0
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13,8,0
    >>Tuez |cRXP_ENEMY_Masophet the Black|r à l'intérieur de l'une des deux Ziggourats
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    #loop
    .goto Ghostlands,41.24,83.04,0
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04,8,0
    >>Tuez |cRXP_ENEMY_Borgoth the Bloodletter|r à l'intérieur de l'un des deux abattoirs
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #completewith next
    .goto Ghostlands,32.25,82.18,10,0
    .goto Ghostlands,32.80,82.45,10,0
    .goto Ghostlands,32.65,83.15,8 >>Allez à l'intérieur de la Ziggourat central. Tuez tous les |cRXP_ENEMY_Eyes of Dar'Khan|r et le |cRXP_ENEMY_Deatholme Necromancers|r à l'intérieur
    .mob Eye of Dar'Khan
    .mob Deatholme Necromancer
    .isOnQuest 9167
    .group 3
step
    .goto Ghostlands,32.80,82.39,10,0
    .goto Ghostlands,33.04,81.25
    >>Tuez |cRXP_ENEMY_Dar'Khan Drathir|r en bas de la Ziggourat
    >>Cachez-vous (LoS) de sa [Corruption] et de ses [Traits de l'ombre] en le promenant autour de la Ziggourat
    >>Faites en sorte qu'il n'y ait pas d'autres ennemis autour lorsqu'il lancera sur vous [Peur]
    .complete 9167,1 --Collect Dar'Khan's Head (x1)
    .mob Dar'Khan Drathir
    .isOnQuest 9167
    .group 3
step
    #completewith HeroSindorei
    .subzone 3493 >>Voyagez vers le Sanctum du Soleil
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaendris|r
    .turnin 9167 >> Turn in Les Traitor's Destruction
    .accept 9328 >> Acceptez Hero of the Sin'dorei << BloodElf
    .accept 9811 >> Acceptez Friend of the Sin'dorei << !BloodElf
    .target Magister Kaendris
    .isQuestComplete 9167
    .group
step
    #optional
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaendris|r
    .accept 9328 >> Acceptez Hero of the Sin'dorei << BloodElf
    .accept 9811 >> Acceptez Friend of the Sin'dorei << !BloodElf
    .target Magister Kaendris
    .isQuestTurnedIn 9167
    .group
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Montez à l'étage
step
    #label HeroSindorei
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Idonis|r et |cRXP_FRIENDLY_Janeda|r
    .turnin 9170 >>Rendez Dar'Khan's Lieutenants
    .target +Magister Idonis
    .goto Ghostlands,54.87,48.55
    .turnin 9164 >>Rendez Captives at Deatholme
    .target +Arcanist Janeda
    .goto Ghostlands,54.82,48.35
step
    #completewith KnuLuz
    .hs >> Utilisez votre Pierre de foyer pour revenir à Tranquillien
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #completewith KnuLuz
    #completewith next
    .subzone 3488 >> Voyagez à Tranquillien
    .cooldown item,6948,<0
step
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Achetez la|r [Cape de champion de Tranquillien] |cRXP_BUY_à Vredigar|r
    .collect 22990,1,496,1 --Collect Tranquillien Champion's Cloak (1)
    .target Provisioner Vredigar
    .itemStat 15,LEVEL,<21
    .isQuestTurnedIn 9167
    .group
step << Rogue wotlk
    #completewith SMTraining5
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez des|r [Poison instantané] |cRXP_BUY_à Eralan|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez le|r [Perce-gorge] |cRXP_BUY_et la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si ils sont disponibles|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez la|r [Cimeterre sinistre] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Achetez les|r [Perce-gorge] |cRXP_BUY_à Eralan si elle en a en stock|r
    .vendor 16268 >> Vendez tout ce dont nous n'avez pas besoin
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan7
    #completewith SMTraining5
    +Équipez les [Perce-gorge] et la [Cimeterre sinistre]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan7
    #completewith SMTraining5
    +Équipez la [Cimeterre sinistre]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan7
    #completewith SMTraining5
    +Équipez les [Perce-gorge]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #label KnuLuz
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rathiel|r
    .turnin 9156 >> Turn in Wanted:Knucklerot et les Luzran
    .target Deathstalker Rathiel
    .isQuestComplete 9156
    .group
step
    #completewith next
    .subzone 3488 >> Voyagez à Tranquillien
step
    #completewith Aminel2
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >> Montez à l'étage
step
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acceptez Rotting Hearts
    .turnin 9216 >>Rendez Rotting Hearts
    .accept 9218 >>Acceptez Spinal Dust
    .turnin 9218 >>Rendez Spinal Dust
    .target Magistrix Aminel
    .itemcount 22641,10
    .itemcount 22642,10
step
    #optional
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aminel|r
    .accept 9218 >>Acceptez Spinal Dust
    .turnin 9218 >>Rendez Spinal Dust
    .target Magistrix Aminel
    .itemcount 22642,10
step
    #optional
    #label Aminel2
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acceptez Rotting Hearts
    .turnin 9216 >>Rendez Rotting Hearts
    .target Magistrix Aminel
    .itemcount 22641,10
step
    #loop
    .goto Ghostlands,36.25,70.35,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .xp 20 >>Montez jusqu'au niveau 20
step
    #completewith SMTraining5
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunwing|r
    .fly Silvermoon >> Volez jusqu'à Lune-d'Argent
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.38,53.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Perascamin|r
    .skill riding,75 >> Apprenez [Apprenti cavalier]
	.target Perascamin
    .money <4.5 << Rogue
    .money <4.693 << !Rogue
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.09,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Winaestra|r
    +|cRXP_BUY_Achetez le|r [Faucon-pérégrin] |cRXP_BUY_que vous préférez à Winaestra|r
	.target Winaestra
    .itemcount 28927,<1 --Red Hawkstrider
    .itemcount 29220,<1 --Blue Hawkstrider
    .itemcount 29221,<1 --Black Hawkstrider
    .itemcount 29222,<1 --Purple Hawkstrider
    .money <0.9025 << Rogue
    .money <1.083 << !Rogue
    .skill riding,<75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Utilisez le [Faucon-pérégrin rouge] pour l'apprendre
    .use 28927
    .itemcount 28927,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Utilisez le [Faucon-pérégrin bleu] pour l'apprendre
    .use 29220
    .itemcount 29220,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Utilisez le [Faucon-pérégrin noir] pour l'apprendre
    .use 29221
    .itemcount 29221,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >> Utilisez le [Faucon-pérégrin violet] pour l'apprendre
    .use 29222
    .itemcount 29222,1
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Faucon-pérégrin rouge] sur vos barres d'action
    .cast 34795 >> Montez votre [Faucon-pérégrin rouge]
    .train 34795,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Faucon-pérégrin bleu] sur vos barres d'action
    .cast 35020 >> Montez votre [Faucon-pérégrin bleu]
    .train 35020,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Faucon-pérégrin noir] sur vos barres d'action
    .cast 29221 >> Montez votre [Faucon-pérégrin noir]
    .train 29221,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Faucon-pérégrin violet] sur vos barres d'action
    .cast 29222 >> Montez votre [Faucon-pérégrin rouge]
    .train 29222,3
step << Mage/Priest/Warlock/Hunter/Paladin
    #completewith SMTraining5
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entrez dans Silvermoon
step << Priest
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vynna|r
    >>|cRXP_BUY_Achetez une|r [Baguette magique supérieure] |cRXP_BUY_à l'Hôtel des Ventes si elle est abordable|r
    >>Si elles sont trop chères, passez cette étape
    .collect 11288,1,496,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Mage
    #completewith SMTraining5
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Voyagez vers |cRXP_FRIENDLY_Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Voyagez vers |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lotheolan|r
    .train 7128 >> Apprenez vos sorts de classe
    .target Lotheolan
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaedana|r
    .train 1953 >> Apprenez vos sorts de classe
    .target Zaedana
step << Mage
    .goto Silvermoon City,58.07,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Narinth|r
    .train 32272 >> Apprenez [Téléportation : Lune-d'argent]
    .target Narinth
    .money <0.5000
step << Hunter
    #completewith SMTraining5
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Voyagez vers |cRXP_FRIENDLY_Zandine|r
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zandine|r
    .train 14282 >> Apprenez vos sorts de classe
    .target Zandine
 step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Achetez un|r [Arc courbe lourd] |cRXP_BUY_à Celena|r
    .collect 3027,1,496,1 --Reinforced Bow (1)
    .target Celana
    .money <0.6032 << BloodElf
    .money <0.6336 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.7
step << Warlock
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entrez dans le bâtiment, puis descendez les escaliers
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Torian|r
    >>|cRXP_BUY_Achetez le|r [Grimoire de Tourment (Rang 2)] |cRXP_BUY_à Torian|r
    .collect 16346,1,496,1 --Grimoire of Torment Rank 2
    .target Torian
    .train 20317,1
step << Warlock TBC
    #optional
    +Utilisez le [Grimoire de Tourment (Rang 2)]
    .use 16346
    .itemcount 16346,1
    .train 20317,1
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talionia|r
    .train 5784 >> Apprenez [Invocation d'un Palefroi corrumpu] << wotlk
    .train 706 >> Apprenez vos sorts de classe << tbc
    .target Talionia
step << Warlock wotlk
    #completewith LorThemar
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Palefroid corrompu] sur vos barres d'action
    .cast 5784 >> Montez votre [Palefroi corrompu]
    .train 5784,3
step << Paladin wotlk
    #completewith SMTraining5
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,20 >>Voyagez vers |cRXP_FRIENDLY_Ithelis|r et |cRXP_FRIENDLY_Osselan|r
    .isQuestTurnedIn 9685
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Voyagez vers |cRXP_FRIENDLY_Bloodvalor|r
--   .train 647,1 << Paladin tbc
--  .train 62124,1 << Paladin wotlk
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9685 >>Rendez Redeeming the Dead
    .target Knight-Lord Bloodvalor
step << Paladin wotlk
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>Sautez sur l'un des bancs en bas pour ne pas avoir à monter les escaliers
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .train 34769 >>Apprenez [Invocation d'un cheval de guerre]
	.target Ithelis
	.target Osselan
    .train 34769,1
step << Paladin wotlk
    #completewith LorThemar
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Cheval de guerre thalassien] sur vos barres d'action
    .cast 34769 >> Montez votre [Cheval de guerre thalassien]
    .train 34769,3
step << Rogue
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Voyagez vers |cRXP_FRIENDLY_Zelanis|r
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    >>Vérifiez que vous ayez appris [Embuscade] et [Rupture] pour une quête à venir << tbc
    .accept 10794 >>Acceptez la quête Les voleurs de la Main brisée
    .train 8676 >>Apprenez [Embuscade] << tbc
    .train 1943 >>Apprenez [Rupture] << tbc
    .train 1943 >>Apprenez vos sorts de classe << wotlk
    .target Zelanis
    .xp <20,1
    .xp >22,1
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    >>Vérifiez que vous ayez appris [Embuscade] et [Rupture] pour une quête à venir << tbc
    .accept 10794 >>Acceptez la quête Les voleurs de la Main brisée
    .train 8676 >>Apprenez [Embuscade] << tbc
    .train 1943 >>Apprenez [Rupture] << tbc
    .train 1759 >>Apprenez vos sorts de classe
    .target Zelanis
    .xp <22,1
    .xp >24,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    >>Vérifiez que vous ayez bien appris [Embuscade] et [Rupture] pour une quête plus tard << tbc
    .accept 10794 >>Acceptez la quête Les voleurs de la Main brisée
    .train 8676 >>Apprenez [Embuscade] << tbc
    .train 1943 >>Apprenez [Rupture] << tbc
    .train 6762 >>Apprenez vos sorts de classe << wotlk
    .target Zelanis
    .xp <24,1
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zelanis|r
    >>Vérifiez que vous ayez appris [Embuscade] et [Rupture] pour une quête à venir << tbc
    .accept 10794 >>Acceptez la quête Les voleurs de la Main brisée
    .target Zelanis
step << Rogue wotlk
    .goto Silvermoon City,80.47,51.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darlia|r
    >>|cRXP_BUY_Achetez des|r [Poison instantané] |cRXP_BUY_à Darlia|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Darlia
step << Druid
    #optional
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harene|r
    .train 8938 >> Apprenez vos sorts de classe
    .target Harene Plainwalker
	.xp <18,1
	.xp >20,1
step << Druid
    #optional
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harene|r
    .train 6756 >> Apprenez vos sorts de classe
    .target Harene Plainwalker
	.xp <20,1
	.xp >22,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harene|r
    .train 8926 >> Apprenez vos sorts de classe
    .target Harene Plainwalker
	.xp <22,1
step << skip
    .goto Silvermoon City,53.926,71.029
    .turnin 9134 >> Rendez Skymistress Gloaming
--VV BloodElf Paladin
step << Warlock
    .abandon 10605 >>Abandonnez L'appel de Carendin
step
    #completewith UndercitySM
    .goto Silvermoon City,75.76,58.26,20,0 << Druid
    .goto Silvermoon City,75.35,51.78,30,0 << Druid
    .goto Silvermoon City,79.93,33.54,30,0 << Paladin wotlk
    .goto Silvermoon City,77.32,33.43,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,74.47,36.83,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,63.47,31.98,20,0
    .goto Silvermoon City,57.48,24.49,20,0
    .goto Silvermoon City,53.80,20.23,50 >>Voyagez vers |cRXP_FRIENDLY_Lor'themar|r
    .group
step
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lor'themar|r
    .turnin 9328 >> Rendez Hero of the Sin'dorei << BloodElf
    .accept 9621 >> Acceptez Envoy to the Horde << BloodElf
    .turnin 9811 >> Rendez Friend of the Sin'dorei << !BloodElf
    .accept 9812 >> Acceptez Envoy to the Horde << !BloodElf
    .target Lor'themar Theron
    .isOnQuest 9328 << BloodElf
    .isOnQuest 9811 << !BloodElf
    .group
step
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lor'themar|r
    .accept 9621 >> Acceptez Envoy to the Horde << BloodElf
    .accept 9812 >> Acceptez Envoy to the Horde << !BloodElf
    .target Lor'themar Theron
    .isQuestTurnedIn 9328 << BloodElf
    .isQuestTurnedIn 9811 << !BloodElf
    .group
step
    #optional
    #label LorThemar
step
    #completewith UndercitySM
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Prenez l'|cRXP_PICK_[Orbe de transposition]|r pour Undercity
step
    #completewith UndercitySM
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0 << !Undead/!Mage
    .goto Undercity,71.33,44.14,10,0 << Undead Mage
    .goto Undercity,60.07,47.70,10 >>Prenez l'ascenseur pour descendre dans Undercity << !Undead/!Mage
    .goto Undercity,71.88,40.45,10 >>Prenez l'ascenseur pour descendre dans Undercity << Undead Mage
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Prenez le chemin de vol de Undercity
    .target Michael Garrett
step << Mage
    #completewith next
    .goto Undercity,68.25,40.67,15,0
    .goto Undercity,66.06,30.63,20,0
    .goto Undercity,67.27,23.68,20,0
    .goto Undercity,82.77,15.85,20 >> Voyagez vers |cRXP_FRIENDLY_Hannah|r
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hannah|r
    >>|cRXP_BUY_Achetez une|r [Rune de Téléportation] |cRXP_BUY_à Hannah|r
    .collect 17031,1,496,1 --Rune of Teleportation (1)
    .money <0.3000 << Troll
    .money <0.2850 << !Troll
    .target Hannah Akeley
step << Mage
    .goto Undercity,84.19,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mortaim|r à l'étage
    .train 3563 >>Apprenez [Téléportation : Undercity]
    .money <0.2000 << Troll
    .money <0.1900 << !Troll
    .target Lexington Mortaim
step << Rogue
    .goto Undercity,77.49,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nathaniel|r
    >>|cRXP_BUY_Achetez la|r [Hache de lancer mortelle] |cRXP_BUY_à Nathaniel|r
    .collect 25875,1,496,1 --Deadly Throwing Axe (1)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<2
    .isQuestAvailable 496
step << Rogue
    #optional
    #completewith next
    +Équipez la [Hache de lancer mortelle]
    .use 25875
    .itemcount 25875,1
    .itemStat 18,QUALITY,<2
step
    #completewith UndercitySM
    .goto Undercity,63.84,47.17,5,0 << !Mage
    .goto Undercity,65.50,56.75,20,0 << !Mage
    .goto Undercity,64.42,64.62,20,0 << !Mage
    .goto Undercity,51.88,64.84,20,0
    .goto Undercity,46.28,73.10,15,0
    .goto Undercity,45.31,78.24,15,0
    .goto Undercity,46.18,83.63,15,0
    .goto Undercity,48.80,87.63,15,0
    .goto Undercity,52.45,89.49,15,0
    .goto Undercity,58.06,91.79,20 >> Voyagez vers |cRXP_FRIENDLY_Sylvanas|r dans le Quartier Royal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylvanas|r et |cRXP_FRIENDLY_Sunsorrow|r
    .turnin 9621 >> Rendez la quête Emissaire auprès de la Horde << BloodElf
    .accept 9626 >> Acceptez la quête Rencontre avec le chef de guerre << BloodElf
    .turnin 9180 >> Rendez Journey to Undercity << BloodElf
    .turnin 9812 >> Rendez la quête Emissaire auprès de la Horde << !BloodElf
    .accept 9813 >> Acceptez la quête Rencontre avec les Orcs << !BloodElf
    .turnin 9177 >> Rendez Journey to Undercity << !BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acceptez la quête Présentez-vous à Moulin-de-Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isOnQuest 9621 << BloodElf
    .isOnQuest 9180 << BloodElf
    .isOnQuest 9177 << !BloodElf
    .isOnQuest 9812 << !BloodElf
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylvanas|r et |cRXP_FRIENDLY_Sunsorrow|r
    .turnin 9621 >> Rendez la quête Emissaire auprès de la Horde << BloodElf
    .accept 9626 >> Acceptez la quête Rencontre avec le chef de guerre << BloodElf
    .turnin 9812 >> Rendez la quête Emissaire auprès de la Horde << !BloodElf
    .accept 9813 >> Acceptez la quête Rencontre avec les Orcs << !BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acceptez la quête Présentez-vous à Moulin-de-Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isOnQuest 9621 << BloodElf
    .isNotOnQuest 9180 << BloodElf
    .isNotOnQuest 9177 << !BloodElf
    .isOnQuest 9812 << !BloodElf
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylvanas|r et |cRXP_FRIENDLY_Sunsorrow|r
    .accept 9626 >> Acceptez la quête Rencontre avec le chef de guerre << BloodElf
    .turnin 9180 >> Rendez Journey to Undercity << BloodElf
    .accept 9813 >> Acceptez la quête Rencontre avec les Orcs << !BloodElf
    .turnin 9177 >> Rendez Journey to Undercity << !BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acceptez la quête Présentez-vous à Moulin-de-Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isQuestTurnedIn 9621 << BloodElf
    .isQuestTurnedIn 9812 << !BloodElf
    .isOnQuest 9180 << BloodElf
    .isOnQuest 9177
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylvanas|r et |cRXP_FRIENDLY_Sunsorrow|r
    .accept 9626 >> Acceptez la quête Rencontre avec le chef de guerre << BloodElf
    .accept 9813 >> Acceptez la quête Rencontre avec les Orcs << !BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acceptez la quête Présentez-vous à Moulin-de-Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isQuestTurnedIn 9621 << BloodElf
    .isQuestTurnedIn 9812 << !BloodElf
    .isNotOnQuest 9180 << BloodElf
    .isNotOnQuest 9177 << !BloodElf
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylvanas|r et |cRXP_FRIENDLY_Sunsorrow|r
    .turnin 9177 >> Rendez Journey to Undercity << !BloodElf
    .turnin 9180 >> Rendez Journey to Undercity << BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acceptez la quête Présentez-vous à Moulin-de-Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    --TODO: Beta check if 9180 turns in properly
    .isOnQuest 9180 << BloodElf
    .isOnQuest 9177 << !BloodElf
step
    #optional
    #label UndercitySM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sunsorrow|r
    .accept 9425 >> Acceptez la quête Présentez-vous à Moulin-de-Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Varimathras|r
    .turnin 5725 >>Rendez la quête Le pouvoir de détruire...
    .target Varimathras
    .isQuestComplete 5725
    .dungeon RFC
step
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bel'dugur|r
    .accept 1013 >>Acceptez la quête Le Livre d'Ur
    .target Keeper Bel'dugur
    .dungeon SFK
step << Paladin
    #optional
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cyssa|r
    .train 879 >>Apprenez vos sorts de classe
	.target Champion Cyssa Dawnrose
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cyssa|r
    .train 19835 >>Apprenez vos sorts de classe
	.target Champion Cyssa Dawnrose
    .xp <22,1
    .xp >24,1
step << Paladin
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cyssa|r
    .train 5588 >>Apprenez vos sorts de classe
	.target Champion Cyssa Dawnrose
    .xp <24,1
step
    #label SMTraining5
    #optional
    .abandon 9156
    --9156 Wanted: Knucklerot and Luzran
step
    #optional
    .abandon 9167
    --9167 The Traitor's Destruction
step
    #label ExitUC
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>Quittez Undercity
    .isQuestAvailable 496
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Velma|r
    .skill riding,75 >> Apprenez [Apprenti cavalier]
    .target Velma Warnam
    .money <4.5
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zachariah|r
    +|cRXP_BUY_Achetez le|r [Cheval squelette] |cRXP_BUY_que vous préférez à Zachariah|r
	.target Zachariah Post
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9025
    .skill riding,<75,1
step << !Warlock Undead wotlk
    .cast 55884 >> Utilisez le [Cheval squelette rouge] pour l'apprendre
    .use 13331
    .itemcount 13331,1
step << !Warlock Undead wotlk
    .cast 55884 >> Utilisez le [Cheval squelette bleu] pour l'apprendre
    .use 13332
    .itemcount 13332,1
step << !Warlock Undead wotlk
    .cast 55884 >> Utilisez le [Cheval squelette marron] pour l'apprendre
    .use 13333
    .itemcount 13333,1
step << !Warlock Undead wotlk
    .cast 55884 >> Utilisez le [Cheval squelette noir] pour l'apprendre
    .use 46308
    .itemcount 46308,1
step << !Warlock Undead wotlk
    #optional
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Cheval squelette rouge] sur vos barres d'action
    .cast 17462 >> Montez votre [Cheval squelette rouge]
    .train 17462,3
step << !Warlock Undead wotlk
    #optional
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Cheval squelette bleu] sur vos barres d'action
    .cast 17463 >> Montez votre [Cheval squelette bleu]
    .train 17463,3
step << !Warlock Undead wotlk
    #optional
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Cheval squelette marron] sur vos barres d'action
    .cast 17464 >> Montez votre [Cheval squelette marron] 
    .train 17464,3
step << !Warlock Undead wotlk
    #optional
    >>Appuyez sur "Shift+P" pour ouvrir votre onglet de Montures
    >>Mettez le [Cheval squelette noir] sur vos barres d'action
    .cast 64977 >> Montez votre [Cheval squelette noir]
    .train 64977,3
step
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Montez la Tour des Zeppelins
    .zone Durotar >>Prenez le Zeppelin pour Durotar

]])
