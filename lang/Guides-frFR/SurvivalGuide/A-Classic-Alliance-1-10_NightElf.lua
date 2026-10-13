if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 1-6 Sombrevallon
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Elfes de la Nuit. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Acceptez la quête L'Equilibre de la nature
step
    #sticky
    #label balance1
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    .xp 2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r et à |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 4495 >> Acceptez la quête Un bon ami
    .target +Dirania Silvershine
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Acceptez la quête La protectrice sylvestre
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step << Hunter
    #era
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 610xp pour le niveau 4 (790/1400)
step << Hunter
    #som--xpgate
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 755xp pour le niveau 4 (645/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step << Hunter
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Rendez la quête La protectrice sylvestre
    .target Tarindrella
    .accept 459 >> Acceptez la quête La protectrice sylvestre
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456,1 >> Rendez la quête L'Equilibre de la nature << Hunter
    .turnin 456 >> Rendez la quête L'Equilibre de la nature << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Acceptez la quête L'Equilibre de la nature
	.accept 3116 >> Acceptez la quête Sceau simple << Warrior
	.accept 3117 >> Acceptez la quête Sceau gravé << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Acceptez la quête Sceau béni << Priest
	.accept 3120 >> Acceptez la quête Sceau verdoyant << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keina
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Rendez la quête Sceau simple
    .trainer >> Apprenez vos sorts de classe
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>Tuez les |cRXP_ENEMY_Mangy Nightsabers|r et les |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step << !Hunter
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir au Sombrevallon
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Rendez la quête La protectrice sylvestre
    .target Tarindrella
    .accept 459 >> Acceptez la quête La protectrice sylvestre
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >> Rendez la quête L'Equilibre de la nature
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Rendez la quête Un ami dans le besoin
    .target Dirania Silvershine
    .accept 3521 >> Acceptez la quête Antidote d'Iverron
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_BUY_Achetez 3 stacks de|r [Flèche grossière]
    .target Keina
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Acceptez la quête Le venin des Tissebois
step << Hunter
    #era
    .xp 4-40
step << Hunter
    #som--xpgate
    .xp 4-50
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Rendez la quête Sceau gravé
    .train 1978 >>Apprenez [Morsure du serpent]
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Cueillez les |cRXP_LOOT_Moonpetal Lilies|r sur le sol
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>Tuez les|cRXP_ENEMY_Webwood Spiders|r. Dépouillez les pour leur |cRXP_LOOT_Ichor|r et leur |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>Tuez les |cRXP_ENEMY_Grell|r et les |cRXP_ENEMY_Grellkin|r. Dépouillez les pour leur |cRXP_LOOT_Mushrooms|r et leur |cRXP_LOOT_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tarindrella|r
    .turnin 459 >> Rendez la quête La protectrice sylvestre
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Rendez la quête Antidote d'Iverron
    .target Dirania Silvershine
    .accept 3522 >> Acceptez la quête Antidote d'Iverron
step << !Priest
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
	.vendor >> |cRXP_BUY_Achetez 3 ou 4 stacks de|r [Flèche grossière] << Hunter
    .target Keina
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Apprenez vos sorts de classe
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janna Brillelune|r à l'étage.
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Janna Brightmoon
step << Priest
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r en haut des escaliers
	.turnin 3119 >> Rendez la quête Sceau béni
	.trainer >> Apprenez vos sorts de classe
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Rendez la quête Le venin des Tissebois
    .target Gilshalan Windwalker
    .accept 917 >> Acceptez la quête L'œuf d'araignée Tissebois
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Montez l'Arbre Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Rendez la quête Sceau verdoyant
	.train 8921 >>Apprenez Eclat lunaire
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 3522 >> Rendez la quête Antidote d'Iverron
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Entrez dans la Grotte de Sombrefil
step
    .goto Teldrassil,57.0,26.4
    >>Ramassez un |cRXP_LOOT_Webwood Egg|r sur le sol au fond de la Grotte
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << skip --logout skip
	#hardcore
	#completewith next
	+|cRXP_WARN_Effectuez un "Logout skip" sur le rebord derrière les |cRXP_LOOT_Oeufs d'araignée Tissebois|r. Déplacez votre personnage jusqu'à ce qu'il semble flotter, puis déconnectez-vous et reconnectez-vous.|r
	>>|cRXP_WARN_Si vous tombez, sortez simplement de la grotte afin de rendre la quête|r
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>|cRXP_WARN_Cliquez ici pour un guide vidéo|r
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 917 >> Rendez la quête L'œuf d'araignée Tissebois
    .target Gilshalan Windwalker
    .accept 920 >> Acceptez la quête Les appels de Tenaron
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Rendez la quête Les appels de Tenaron
    .target Tenaron Stormgrip
    .accept 921 >> Acceptez la quête La couronne de la Terre
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> Utilisez la [Flasque de cristal] au puits de lune
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>Tuez les |cRXP_ENEMY_Mangy Nightsabers|r et les |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457,2 >> Rendez la quête L'Equilibre de la nature
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Acceptez la quête Au service d'Elune
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Rendez la quête La couronne de la Terre
    .target Tenaron Stormgrip
    .accept 928 >> Acceptez la quête La couronne de la Terre
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acceptez la quête Livraison pour Dolanaar
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 6-11 Teldrassil
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#defaultfor NightElf
#next 11-13 Sombrivage (Elfe de la nuit)
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Acceptez la quête Les commandements de Zenn
step
    #sticky
    #completewith zenn
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith spiderLegs
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 997 >> Acceptez la quête La terre de Denalan
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Acceptez la quête Une brise étrange
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >> Rendez la quête Au service d'Elune
    .target Laurna Morninglight
    .accept 5621 >> Acceptez la quête Vêtements de la lune
	.trainer >> Apprenez vos sorts de classe
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aldia|r en haut des escaliers
    .vendor >> |cRXP_BUY_Achetez et équipez un|r [Petit couteau de lancer]
    .target Aldia
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .accept 932 >> Acceptez la quête Haine folle
    .accept 2438 >> Acceptez la quête Le Capturêve d'émeraude
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .accept 932 >> Acceptez la quête Haine folle << !Hunter
    .accept 2438 >> Acceptez la quête Le Capturêve d'émeraude
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un |r [Arc courbe en bois de corne] |cRXP_BUY_si vous pouvez vous le permettre(2s 85c), sinon passez cette étape|r
    >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Glaive] |cRXP_BUY_si vous pouvez vous le permettre(5s 36c), sinon passez cette étape|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Stylet] |cRXP_BUY_si vous pouvez vous le permettre(4s 1c), sinon passez cette étape|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r [Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (5s 4c), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Rendez la quête Livraison pour Dolanaar << Hunter
    .turnin 2159 >> Rendez la quête Livraison pour Dolanaar << !Hunter
    .home >> Liez votre Pierre de Foyer à Dolanaar
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
	.train 3044>> Apprenez [Tir des Arcanes]
    .target Dazalar
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 929 >> Acceptez la quête La couronne de la Terre
step << Druid
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Malorne Bladeleaf|r
    .train 2366 >> Apprenez [Herboristerie]
    >>|T136065:0|t[Herboristerie] |cRXP_WARN_est requis pour récolter 5|r |T134187:0|t[Terrestrine] |cRXP_WARN_pour une quête de niveau 15 plus tard. Vous pourrez ensuite l'abandonner|r
    .target Malorne Bladeleaf
step << Druid
    #completewith end
    >>|cRXP_WARN_Montez au niveau 15 de votre|r |T136065:0|t[Herboristerie] |cRXP_WARN_|r
    >>|cRXP_WARN_Récoltez 5 Terrestrines sur votre chemin pour une quête au niveau 15 plus tard|r
    .collect 2449,5
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Ciblez |cRXP_FRIENDLY_Sentinel Shaya|r
    >>Lancez [Soins inférieurs (Rang 2)] |cRXP_WARN_and|r [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Rendez la quête La terre de Denalan
    .target Denalan
    .accept 918 >> Acceptez la quête Les graines de sylvain
    .accept 919 >> Acceptez la quête Les pousses de sylvain
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Tuez les |cRXP_ENEMY_Timberlings|r. Dépouillez-les pour leur|cRXP_LOOT_Seeds|r
    >>Ramassez les |cRXP_LOOT_Timberling Sprouts|r sur le sol
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Rendez la quête Les graines de sylvain
    .target Denalan
    .accept 922 >> Acceptez la quête Rellian Vertecime
    .turnin 919 >> Rendez la quête Les pousses de sylvain
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Voyagez jusqu'au Village de Brise-stellaire
step
    .goto Teldrassil,68.02,59.66
    >>Ouvrez le |cRXP_PICK_Tallonkai's Dresser|r. Récupérez le |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gaerolas Talvethren|r en haut des escaliers
    .turnin 475 >> Rendez la quête Une brise étrange
    .target Gaerolas Talvethren
    .accept 476 >> Acceptez la quête La corruption des Pins-tordus
step
    #label zenn
    .goto Teldrassil,63.38,58.10
    >>Utilisez la [Fiole de jade] au puits de lune du Village de Brise-stellaire
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Gardez vos|r |T132832:0|t[Petit oeuf] |cRXP_WARN_et vos|r |T134321:0|t[Petite patte d'araignée] |cRXP_WARN_pour monter votre niveau de |T133971:0|t[Cuisine] |cRXP_WARN_plus tard|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob +Webwood Lurker
step
    #era
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >> Montez jusqu'au niveau 7 +3500xp
step
    #som--xpgate
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >> Montez jusqu'au niveau 7 +2900xp
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Rendez la quête Les commandements de Zenn
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Acceptez la quête En quête de rédemption !
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Rendez la quête La corruption des Pins-tordus
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >> Rendez la quête Vêtements de la lune
	.trainer >> Apprenez vos sorts de classe
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 2438 >> Rendez la quête Le Capturêve d'émeraude
    .target Tallonkai Swiftroot
    .accept 2459 >> Acceptez la quête Ferocitas le Mangeur de rêves
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un |r [Arc courbe en bois de corne] |cRXP_BUY_si vous pouvez vous le permettre(2s 85c), sinon passez cette étape|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >>|cRXP_BUY_Achetez jusqu'à 800|r [Flèche grossière]
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Apprenez vos sorts de classe
    .target Dazalar
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Glaive] |cRXP_BUY_si vous pouvez vous le permettre(5s 36c), sinon passez cette étape|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Stylet] |cRXP_BUY_si vous pouvez vous le permettre(4s 1c), sinon passez cette étape|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r [Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (5s 4c), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 933 >> Acceptez la quête La couronne de la Terre
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
step
	#completewith jewel
    >>Ramassez les |cRXP_LOOT_Fel Cones|r sur le sol
    >>Ils se situent en général près des troncs d'arbre
    .complete 489,1 --Collect Fel Cone (x3)
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Si il n'y a pas beaucoup de |cRXP_ENEMY_Gnarlpine Mystics|r il se peut que vous deviez tuer des |cRXP_ENEMY_Gnarlpine Warriors|r pour les faire réapparaître|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Tuez |cRXP_ENEMY_Ferocitas le Mangeur de rêves|r. Dépouillez-le pour le |T133288:0|t[|cRXP_LOOT_Collier pin-tordu|r]
    .use 8049 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gnarlpine Necklace|r] pour récupérer le|r |cRXP_LOOT_Joyau de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Si il n'y a pas beaucoup de |cRXP_ENEMY_Gnarlpine Mystics|r il se peut que vous deviez tuer des |cRXP_ENEMY_Gnarlpine Warriors|r pour les faire réapparaître|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Ramassez les |cRXP_LOOT_Fel Cones|r sur le sol
    >>Ils se situent en général près des troncs d'arbre
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Rendez la quête En quête de rédemption !
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Voyagez jusqu'à Gangreroche
step << Hunter
    #era
    .goto Teldrassil,51.2,50.6
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
step
	#era/som
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Acceptez la quête La couronne de la Terre
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Voyagez jusqu'au sud-ouest de Teldrassil
step
	#era/som
	.goto Teldrassil,42.61,76.18
	>>Cliquez sur le |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >> Acceptez la quête Le fruit luminescent
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Voyagez jusqu'aux bassins d'Arlithrien
step
	#era/som
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>Utilisez la [Fiole de tourmaline] au puits de lune des bassins d'Arlithrien
	.complete 933,1
step
	#era/som
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Voyagez jusqu'à Dolanaar
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 7383 >> Acceptez la quête La couronne de la Terre
step
	#era/som
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Apprenez la Cuisine
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
    .target Zarrin
step
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Byancie
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 932 >> Rendez la quête Haine folle << !Hunter
    .turnin 2459 >> Rendez la quête Ferocitas le Mangeur de rêves
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 932 >> Rendez la quête Haine folle
    .turnin 2459 >> Rendez la quête Ferocitas le Mangeur de rêves
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .accept 487 >> Acceptez la quête La route de Darnassus
    .target Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
    >>Tuez les |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Voyagez jusqu'à la clairière de l'Oracle
step
	#era/som
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step
	#era/som
    .goto Teldrassil,38.43,34.03
    .use 18152 >>Utilisez la [Fiole d'améthyste] à la clairière de l'Oracle
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#era/som
    #completewith xp10
	#label harpies
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    >>Les |cRXP_ENEMY_Bloodfeather Matriarchs|r lancent [Vague de soins] et [Éclair] qui inflige des dégâts importants. Essayez de les tuer rapidement
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#era/som
    .goto Teldrassil,34.61,28.79
    >>Cliquez sur les |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >> Acceptez la quête Les racines flamboyantes
step << Hunter
	#era/som
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << Hunter
    #era
    #sticky
    #label xp10
    .xp 10-2670 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 2670xp pour le niveau 10 (3830/6500)
    >>|cRXP_WARN_Une fois que vous atteignez ce seuil d'expérience, ignorez la quête des harpies/l'escorte et allez directement à Darnassus. Vous aurez une autre occasion de terminer ces quêtes plus tard|r
step << Hunter skip
    #era/som--xpgate
    #sticky
    #label xp10
    .xp 10-3330 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 3330xp pour le niveau 10 (3170/6500)
    >>|cRXP_WARN_Une fois que vous atteignez ce seuil d'expérience, ignorez la quête des harpies/l'escorte et allez directement à Darnassus. Vous aurez une autre occasion de terminer ces quêtes plus tard|r
step << Hunter
	#era/som
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Rendez la quête Brume
step << Hunter
	#era/som
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
step << !Hunter
	#era/som
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << !Hunter
	#era/som
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
    .turnin 938 >> Rendez la quête Brume
step << !Hunter
    #era
    #label xp10
    .xp 10-750 << Druid
    .xp 10-3110 << !Druid
step << !Hunter
	#som--xpgate
    #phase 1-2
	#label xp10
   .xp 10-930 << Druid
   .xp 10-3880 << !Druid
step
	#som--xpgate
    #phase 3-6
	.goto Teldrassil,38.6,58.0
	>>Finissez la collecte des 7 Petites pattes d'araignée
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>Si vous êtes toujours en retard sur l'expérience, faites la quête des harpies au nord
step << !Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-3300
step << !Rogue
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << !Hunter !Rogue
	#era/som
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r au sommet de l'Arbre
    .turnin 940 >> Rendez la quête Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .accept 5921 >> Acceptez la quête Reflet-de-Lune
	.trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Acceptez la quête Les larmes de la Lune
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>|cRXP_WARN_Il se trouve dans votre grimoire|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 5921 >> Rendez la quête Reflet-de-Lune
    .target Dendrite Starblaze
    .accept 5929 >> Acceptez la quête L'esprit du Grand ours
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-lune]
    >>Ceci vous fera revenir plus vite
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 5929 >> Rendez la quête L'esprit du Grand ours
    .target Dendrite Starblaze
    .accept 5931 >> Acceptez la quête Retour à Darnassus
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >> Utilisez votre Pierre de foyer pour revenir à Dolanaar
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Achetez 4 stacks de|r |T132382:0|t[Flèches aiguisées]|cRXP_BUY_. Équipez-les dès que vous atteignez le niveau 10|r
    .target Jeena Featherbow
step
	#som
	#phase 3-6
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Apprenez la Cuisine
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
step
	#som
	#phase 3-6
    .goto Teldrassil,51.9,56.4
    >>Trouvez la Prêtresse de la lune Amara, elle patrouille sur la route à l'ouest de Dolanaar.
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >> Rendez la quête La route de Darnassus
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.train 13165 >> Apprenez vos sorts de niveau 10
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 935 >> Acceptez la quête La couronne de la Terre
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Rendez la quête Les racines flamboyantes
    .turnin 930 >> Rendez la quête Le fruit luminescent
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Rendez la quête Le cœur moussu
    .isOnQuest 927
step
	#era/som
	.goto Teldrassil,60.78,68.59
	>>Cliquez sur le |cRXP_LOOT_Pot de Denalan|r
	.turnin 941 >> Rendez la quête Une belle plante
	.isQuestTurnedIn 927
step << Hunter
	#era/som
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
    #label L10
    .xp 10
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Apprenez vos sorts de classe
    .target Laurna Morninglight
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .target Jannok Breezesong
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.trainer >> Apprenez vos sorts de classe
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6102 >> Acceptez la quête Dompter la bête
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Strigid Screecher|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6103 >> Acceptez la quête Entraîner la bête
step << Warrior
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .accept 1684 >> Acceptez la quête Elanaria
    .target Moon Priestess Amara
step << Rogue
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Acceptez la quête Pomme d'amour
step << Hunter
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez une|r |T135145:0|t[Canne de marche]
    >>|cRXP_WARN_Vous l'équiperez plus tard. Passez cette étape si vous trouvez un bâton différent|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Rogue
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r au sommet de l'Arbre
    .turnin 935 >> Rendez la quête La couronne de la Terre
    .turnin 940 >> Rendez la quête Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Rendez la quête Pomme d'amour
    .target Syurna
    .accept 2242 >> Acceptez la quête L'appel du destin
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Acceptez la quête Les larmes de la Lune
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Strigid Hunter|r pour le dompter|r -- .tame 1997
    .train 2981 >> Attaquez des mobs avec celui-ci pour qu'il apprenne [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Cliquez ici pour plus d'information sur le dressage des familiers|r
	.unitscan Strigid Hunter
step
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Tuez les |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r et les |cRXP_ENEMY_Elder Timberlings|r. Dépouillez-les pour leur |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Tuez la |cRXP_ENEMY_Dame Sathrah|r. Dépouillez-la pour ses |cRXP_LOOT_Filières|r
    >>La |cRXP_ENEMY_Dame Sathrah|r |cRXP_WARN_peut apparaître à 3 emplacements différents|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>Lancez [Vol à la tire] sur |cRXP_ENEMY_Sethir the Ancient|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_ENEMY_Sethir the Ancient|r marche le long de la grande branche d'arbre
    >>|cRXP_WARN_Évitez d'affronter |cRXP_ENEMY_Sethir the Ancient|r. Laissez le passez devant vous, puis utilisez|r [Camouflage] et ensuite [Vol à la tire] lorsque vous êtes derrière lui
    .complete 2242,1
    .mob Sethir the Ancient
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    >>Les |cRXP_ENEMY_Bloodfeather Matriarchs|r lancent [Vague de soins] et [Éclair] qui inflige des dégâts importants. Essayez de les tuer rapidement
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,31.54,31.62
    .target Mist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Rendez la quête Brume
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
step
    #completewith NessaShadowsong
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Achetez les objets suivant pour bientôt rendre les quêtes à venir instantanément. Passez cette étape si vous ne désirez pas les acheter
    >>|T133972:0|t[Viande de trotteur]
    >>|T133912:0|t[Mérou de Sombrivage]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step
    #label NessaShadowsong
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acceptez la quête Nessa Chantelombre
step
	.abandon 927 >> Abandonnez la quête Le cœur moussu
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Rendez la quête Elanaria
    .target Elanaria
    .accept 1683 >> Acceptez la quête Vorlus Vilsabot
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Voyagez vers |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>Tuez les |cRXP_ENEMY_Vorlus Vilehoof|r. Dépouillez-les pour leur|cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Rendez la quête Vorlus Vilsabot
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin 5931 >> Rendez la quête Retour à Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acceptez la quête Corps et cœur
step
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Fandral Forteramure|r
    .turnin 935 >> Rendez la quête La couronne de la Terre
    .turnin 940 >> Rendez la quête Teldrassil << Hunter
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Rendez la quête Entraîner la bête
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Rendez la quête L’appel du destin
step
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Rendez la quête Tumeurs
step << Rogue
    #completewith next
    .goto Darnassus,62.68,65.58,30 >> Voyagez vers |cRXP_FRIENDLY_Turian|r
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r au second étage
    >>|cRXP_BUY_Achetez une|r [Dague de lancer équilibrée]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Rendez la quête Les larmes de la Lune
    .target Priestess A'moora
    .accept 2520 >> Acceptez la quête Sacrifice de Sathrah
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>Utilisez le [Sacrifice de Sathrah] à la fontaine
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Rendez la quête Sacrifice de Sathrah
step << Druid
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firodren Mandelune|r
    .train 2366 >> Apprenez [Herboristerie]
    >>|T136065:0|t[Herboristerie] |cRXP_WARN_est requis pour récolter 5|r |T134187:0|t[Terrestrine] |cRXP_WARN_pour une quête de niveau 15 plus tard. Vous pourrez ensuite l'abandonner|r
    .target Firodren Mooncaller
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .train 227 >>Apprenez la compétence Bâtons
    >>Si vous avez un Bâton dans votre sac, équipez-le. << Hunter
    .target Ilyenia Moonfire
step << Hunter
    #completewith FlyDS
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
	>>|cRXP_BUY_Achetez et équipez un|r [Arc courbe composite]
    >>|cRXP_BUY_Achetez des|r [Flèche pointue]
	.collect 2507,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.3022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r [Bâton]|cRXP_BUY_. Équipez le au niveau 11|r
	.collect 854,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.2023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
	>>|cRXP_BUY_Achetez et équipez un|r |T135346:0|t[Sabre d’abordage] |cRXP_BUY_si vous ne pouvez pas vous offrir un|r |T135154:0|t[Bâton de combat]
	.collect 851,1
    .target Ariyell Skyshadow
step
    #completewith next
    .goto Darnassus,30.00,41.43,10 >> Traversez le portail violet pour le Village de Rut'theran
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Rendez la quête Nessa Chantelombre
    .target Nessa Shadowsong
    .accept 6341 >> Acceptez la quête Le don de Teldrassil
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Rendez la quête Le don de Teldrassil
    .target Vesprystus
    .accept 6342 >> Acceptez la quête Vol vers Auberdine
step
    #label FlyDS
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
]])
