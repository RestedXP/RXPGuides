if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 11-13 Sombrivage (Elfe de la nuit)
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#next 13-13 Loch Modan (Elfe de la nuit)
#defaultfor NightElf

step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Rendez la quête Nessa Chantelombre
    .accept 6341 >> Acceptez la quête Le don de Teldrassil
    .target Nessa Shadowsong
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
	.goto Teldrassil,58.39,94.01
    .turnin 6341 >> Rendez la quête Le don de Teldrassil
    .accept 6342 >> Acceptez la quête Vol vers Auberdine
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >> Volez à Sombrivage
    .target Vesprystus
step << !NightElf
#map Darkshore
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    #label WashedA
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !NightElf
#map Darkshore
    #label WashedA
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Rendez Flight to Auberdine
    .target Laird
step
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Achetez de la nourriture si besoin|r
    .vendor >>Les |T133918:0|t[Lutjans à longue mâchoire] |cRXP_WARN_sont très peu coûteux|r
    .target Laird
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> Montez les escaliers pour y trouver |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crackboum Tournelevier|r.
    .accept 983 >> Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.120,43.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Achetez de l'eau si besoin|r
    .target Allyndia
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.250,41.008
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kurdram Martel-de-pierre|r
    .train 2581 >> Apprenez le Minage, lancez Découverte de gisements
    .skill mining,1,1
    .target Kurdram Stonehammer
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.191,40.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delfrum Barbe-de-silex|r
    .train 2020 >> Apprenez Forge. Cela vous permettra de créer des pierres à aiguiser pour +2 dégâts pour votre arme, qui sont très puissantes. << Warrior/Rogue
    .train 2020 >> Ceci vous permettra de créer des pierres de lest pour +2 dégâts pour votre arme, qui sont très puissantes. << Paladin
    .skill blacksmithing,1,1
    .target Delfrum Flintbeard
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.225,41.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thelgrum Martel-de-pierre|r
    >>|cRXP_BUY_Achetez une|r |T134708:0|t[Pioche de mineur] |cRXP_BUY_à|r |cRXP_FRIENDLY_Thelgrum Martel-de-pierre|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Thelgrum Stonehammer
step
    .goto Darkshore,38.844,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Acceptez Plagued Lands
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acceptez How Big a Threat?
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Pattes de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Ouvrez |cRXP_PICK_La créature marine échouée|r. Dépouillez-la pour l' |cRXP_LOOT_Os de créature marine|r
    .complete 3524,1
step << Druid
    #completewith end
    >>|T136065:0|t|T134187:0|t|cRXP_WARN_Montez votre Herboristerie au niveau 15. Récoltez 5 Terrestrines pour une quête à venir|r
    .collect 2449,5,6123,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Découvrez le Camp furbolg (Courez vers le totem puis éloignez-vous)
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_Utilisez l'|r |T134335:0|t[Espoir de Tharnariun] |cRXP_WARN_sur l'un des|r |cRXP_ENEMY_Ours des chardons enragé|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Pattes de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .xp 12-3550 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 3550xp pour le niveau 12 (5250+/8800xp)
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
step
#map Darkshore
    #era/som
	.goto Felwood,19.13,21.39
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .accept 1001 >> Acceptez la quête Bigobox 411
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Rendez Washed Ashore
    .accept 4681 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
    .target Tharnariun Treetender
step
#map Darkshore
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 985 >> Acceptez How Big a Threat?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
    .target Terenthis
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dalmond|r
    .vendor >> |cRXP_WARN_Achetez autant de|r |T133634:0|t[Petites sacoches marrons] |cRXP_WARN_dont vous avez besoin|r
    >>|cRXP_WARN_Achetez des|r |T132382:0|t[Flèches aiguisées] |cRXP_WARN_ou des|r |T132384:0|t[Balles lourdes] << Hunter
    .target Dalmond
step
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 958 >> Acceptez la quête Les outils des Bien-nés
    .accept 954 >> Acceptez la quête Bashal'Aran
    .target Thundris Windweaver
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>Entrez dans la grotte de séléniens
    .cast 18974 >> Utilisez la [Cenarion Moondust] |cRXP_WARN_à la |cRXP_PICK_Pierre des séléniens|r à l'intérieur de la grotte pour invoquer|r |cRXP_ENEMY_Lunaclaw|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >> Tuez |cRXP_ENEMY_Lunegriffe|r. Parlez à l' |cRXP_FRIENDLY_Esprit de Lunegriffe|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acceptez la quête Retourner à Nessa
    .target Laird
step << NightElf
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil --Train 12
    .target Caylais Moonfeather
step << NightElf
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .target Nessa Shadowsong
step << NightElf
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >> Rendez la quête Corps et cœur
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arias'ta Chantelame|r
    .goto Darnassus,58.72,34.92
    .trainer >> Apprenez vos sorts de classe
    .target Arias'ta Bladesinger
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 2567 >> Apprenez la compétence Armes de jet
    .target Ilyenia Moonfire
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    .goto Darnassus,58.765,44.494
    >>|cRXP_WARN_Achetez un stack de|r |T135425:0|t[Couteaux de lancer effilés]
    .collect 3107,200
    .target Ariyell Skyshadow
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jandria|r
    .trainer >> Apprenez vos sorts de classe
    .target Jandria
step << NightElf Rogue
    >>Entrez dans l'Enclave de Cénarius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,30,0
    .goto Darnassus,37.00,21.92
    .trainer >> Apprenez vos sorts de classe
    .target Syurna
step << NightElf Hunter
    #completewith start
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
    .target Jocaste
step
    #completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Dirigez-vous vers |cRXP_FRIENDLY_Cerellean Blanchegriffe|r sur le quai
step
    .goto Darkshore,35.743,43.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Acceptez For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Allez au bout du quai, puis sautez dans l'eau
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Ouvrez le |cRXP_PICK_Squelette de tortue de mer|r. Dépouillez-la pour ses |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1 -- Turtle Remains
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step << Warrior/Rogue
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    .vendor >>|cRXP_WARN_Achetez 40|r |T133918:0|t[Lutjans à longue mâchoire]
    .target Laird
step
    .goto Darkshore,37.708,43.431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >> Accept Les Red Crystal
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    #label Bashal1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Suivez la route vers Bashal’Aran|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Grell sauvage|r et des |cRXP_ENEMY_Fée vile|r sur la route|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .accept 955 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Tuez les |cRXP_ENEMY_Grells sauvages|r et les |cRXP_ENEMY_Fées viles|r. Dépouillez-les pour leurr |cRXP_LOOT_Boucles d'oreille de Grell|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    #completewith Tysha
    >>|cRXP_WARN_Suivez la route vers le sud et cherchez les|r |cRXP_ENEMY_Jeunes trotteurs des forêts|r
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    #label Tysha
    .goto Darkshore,40.30,59.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith TheLay
    >>Tuez les |cRXP_ENEMY_Bien-nées maudites|r, les |cRXP_ENEMY_Bien-nés frémissants|r, et les |cRXP_ENEMY_Bien-nées gémissantes|r. Ramassez-les pour leur |cRXP_LOOT_Reliques|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,43.30,58.70
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    .complete 957,1 -- Ancient Moonstone Destroyed
step
#map Darkshore
    #label TheLay
    .goto Felwood,25.98,40.62
    >>Cliquez sur |cRXP_PICK_La chute d'Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Tuez les|cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r et les |cRXP_ENEMY_Wailing Highbornes|r. Dépouillez-les pour leur |cRXP_LOOT_Relique|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .turnin 953 >> Rendez la quête La Chute d'Ameth'Aran
step
    #completewith BashalFinal
    >>|cRXP_WARN_Suivez la route vers le nord et cherchez les|r |cRXP_ENEMY_Jeunes trotteurs des forêts|r
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
#map Darkshore
    #completewith BashalFinal
    .goto Felwood,27.70,10.03,60 >> Voyagez vers Bashal'Aran
step
#map Darkshore
    #label BashalFinal
    .goto Felwood,27.70,10.03
    .target Asterion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Rendez la quête Bashal'Aran
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Tuez les |cRXP_ENEMY_Séléniens|r. Dépouillez-les pour leur |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    >>|cRXP_WARN_Vous monterez votre|r |T133971:0|t[Cuisine] |cRXP_WARN_jusqu'à un niveau de compétence de 10 plus tard en utilisant les|r |T132832:0|t[|cRXP_LOOT_Petits oeufs|r]
    .collect 6889,10,2178 -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    .goto Darkshore,42.014,33.796,80,0
    .goto Darkshore,38.717,33.659,100,0
    .goto Darkshore,46.254,42.955,100,0
    .goto Darkshore,41.216,50.191,100,0
    .goto Darkshore,37.662,49.162,100,0
    .goto Darkshore,46.254,42.955
    >>|cRXP_WARN_Faites attention aux |cRXP_ENEMY_Ours des chardons|r, ils peuvent vous étourdir|r
    >>Tuez les |cRXP_ENEMY_Jeunes trotteurs des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    +Achetez des |T134059:0|t[Epices douces]
    >>|cRXP_WARN_Utilisez des|r |T134059:0|t[Epices douces] |cRXP_WARN_et vos|r |T132832:0|t[Petits Oeufs] |cRXP_WARN_pour faire des Oeufs aux herbes. Faites cela jusqu'à ce que votre Cuisine ait atteint le niveau 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .target Alanndarian Nightsong
step
    #label ToolsTurnin
    #map Darkshore
    .goto Felwood,19.98,14.40
    .target Thundris Windweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Rendez la quête Les outils des Bien-nés
step
    #label end
    .goto Darkshore,32.417,43.809,15,0
    .goto Darkshore,32.417,43.809,0
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    >>|cRXP_WARN_Montez vos|r |T135966:0|t[Premiers soins]|cRXP_WARN_en attendant le bateau pour le Port de Menethil|r
step
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
step
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Sautez dans l'eau au bout des quais et nagez jusqu'au point de repère.
step
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utilisez le service d'assistance aux personnages coincés pour allez à Forgefer. Vous devez vous déconnectez à l'endroit prévu, puis naviguez le menu d'assistance sur un autre personnage, puis faites défiler jusqu'au service d'assistance. Cliquez sur votre personnage et bougez. Si vous n'arrivez pas à vous débloquer, passez cette étape et nagez le long des montagnes jusqu'aux Marches de l'Ouest
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Cliquez ici pour l'exemple vidéo
    --*Please note that the unstuck feature doesn't work on the PTR
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 13-13 Loch Modan (Elfe de la nuit)
#version 1
#group RestedXP Guide de Survie (A)
#subgroup RestedXP Guide de Survie 1-20
#next 13-15 Marche de l’Ouest
#defaultfor NightElf

step
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si le site d'internet pour débloquer votre personnage n'est pas disponible, nagez jusqu'aux Marches de l'Ouest
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
step
    .goto Westfall,54.28,9.26,50,0
    .goto Westfall,55.12,14.64,40,0
    .goto Westfall,56.36,17.81,65,0
    .goto Elwynn Forest,23.24,77.80
    .zone Elwynn Forest >> Courez vers le rivage et frayez-vous un chemin vers la Forêt d'Elwynn. Faites attention à ne pas attirer beaucoup de |cRXP_ENEMY_Murlocs|r sur la côte comme il y en a quelques-uns qui patrouillent
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Allez vers Hurlevent
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keldric Boucher|r
    .vendor >> |cRXP_BUY_Achetez des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entrez dans le Tram des Profondeurs. Prenez le Tram pour Ironforge
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|cRXP_WARN_Montez dans le Tram une fois qu'il est arrivé. Sortez de l'autre côté et cherchez |cRXP_FRIENDLY_Monty|r sur la plateforme du milieu|r
    >>Lancez [Invocation : marcheur du vide] et [Création d'une pierre de soin] en attendant << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Acceptez la quête Chasse au rat dans les profondeurs
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .use 17117 >>Utilisez le [Pipeau du dératiseur] sur les |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Rendez la quête Chasse au rat dans les profondeurs
    .timer 11,Chasse au rat dans les profondeurs RP
    .accept 6662 >> Acceptez la quête Mon frère, Nipsy
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    #completewith next
    .goto Ironforge,77.0,51.0
    .zone Ironforge >> Entrez dans Ironforge
step << Warrior
    .goto Ironforge,70.774,90.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Muren Stormpike|r
    .accept 1680 >> Acceptez la quête Tormus Forge-profonde
    .target Muren Stormpike
step
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << Warrior
    .goto Ironforge,48.640,42.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tormus Deepforge|r
    .turnin 1680 >> Rendez la quête Tormus Forge-profonde
    .target Tormus Deepforge
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans le Loch Modan:
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T134342:0|t[Tripes de Sanglier]
    >>|T134027:0|t[Viande d'ours]
    >>|T134437:0|t[Ichor d'araignée]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    .goto Dun Morogh,53.305,35.112,10,0
    .zone Dun Morogh >> Quittez Ironforge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .goto Dun Morogh,56.503,47.923,100,0
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
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Rendez la quête Protection du troupeau
step
    #completewith next
    .goto Dun Morogh,68.614,54.643
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
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dank Coupebruine|r.
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Apprenez [Minage]
step << Warrior/Paladin/Rogue
    .cast 2580 >> Lancez [Découverte de gisements]
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
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
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
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Choisissez la dague, utilisez-la en main gauche jusqu'à ce que vous puissiez acheter une épée au marchand << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>Choisissez la [|cRXP_FRIENDLY_Craftsman's Dagger|r] comme récompense. Équipez-la dans votre main gauche << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Rendez la quête La revanche du pilote
step
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >> Voyagez jusqu'au Loch Modan
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .target Mountaineer Stormpike
    .accept 307 >> Acceptez la quête Bas les pattes !
    >>|cRXP_WARN_N'acceptez pas encore la quête La mission de Foudrepique|r
step
    #completewith ThelsamarFirst
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
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >> Voyagez à Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Acceptez la quête Les boudins de Thelsamar
step
    #completewith StormpikeO
    .abandon 1338 >> Abandonnez La mission de Stormpike. Celle-ci sert à débloquer La mission du Montagnard Stormpike qui se rend pour 550xp
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor >> |cRXP_WARN_Achetez 1 ou 2|r |T133634:0|t[Petites sacoches marrons] |cRXP_WARN_si nécessaire|r
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four]|cRXP_BUY_. Essayez d'en avoir environ 40|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Achetez des|r [Pain sorti du four]|cRXP_BUY_ et du|r [Lait glacé]|cRXP_BUY_. Essayez d'avoir environ 20|r [Pain sorti du four] |cRXP_BUY_ et 40|r [Lait frais] << !Warrior !Rogue
    .target Innkeeper Hearthstove
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
    .accept 416 >> Acceptez la quête Chasse au rat
    .accept 1339 >> Acceptez la quête La mission du Montagnard Foudrepique
    .target Mountaineer Kadrell
step
    .group
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
    .solo
    #completewith StormpikeStop
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
    .group
    #completewith MinerGear
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
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
    .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Ouvrez les |cRXP_PICK_Miners' League Crates|r. Récupérez les |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_Les |cRXP_PICK_Miners' League Crates|r peuvent se trouver tout au long de la Mine|r
    >>|cRXP_WARN_Vous pourrez faire cette quête à un niveau supérieur si vous souhaitez la passer pour l'instant|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>Tuez les |cRXP_ENEMY_Elder Black Bears|r. Dépouillez-les pour leur |cRXP_LOOT_Bear Meat|r
    >>Tuez les |cRXP_ENEMY_Mountain Boars|r. Dépouillez-les pour leur |cRXP_LOOT_Boar Intestines|r
    >>Tuez les |cRXP_ENEMY_Forest Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nillen Andemar|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r |cRXP_WARN_vend la|r |T133476:0|t[|cRXP_FRIENDLY_Lourde masse à pointes|r] |cRXP_WARN_qui est un objet en approvisionnement limité|r
    >>|cRXP_WARN_Vérifiez si elle est disponible et achetez-la si vous le pouvez. Si vous ne pouvez pas vous le permettre, alors gagnez de l'argent en tuant les |cRXP_ENEMY_Rats des tunnels|r à proximité jusqu'à ce que vous ayez assez d'argent|r
    >>|cRXP_WARN_Faites cela rapidement comme un autre joueur pourrait l'acheter avant vous|r
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
    >>Tuez les |cRXP_ENEMY_Tunnel Rats|r. Dépouillez-les pour leur |cRXP_LOOT_Piercings|r
    >>|cRXP_WARN_Assurez-vous d'avoir 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour votre prochaine quête de classe (Paladin)|r << Paladin
    >>Les |cRXP_ENEMY_Rats des tunnels|r |cRXP_WARN_peuvent apparaître partout dans le Loch Modan. Vérifiez votre Carte pour leur emplacements|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vendez et réparez votre équipement si nécessaire
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Rendez la quête Bas les pattes !
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Rendez la quête La mission du Montagnard Foudrepique
    .accept 1338 >> Acceptez la quête La mission de Foudrepique
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
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_WARN_Achetez un|r |T135237:0|t[Silex et amadou] |cRXP_WARN_ainsi que 1|r |T135435:0|t[Simple Bois]|cRXP_WARN_. Achetez des |r |T133634:0|t[Petites sacoches marrons] |cRXP_WARN_si nécessaire|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Acceptez la quête À la défense des terres du roi
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r dans le bunker
    .target Captain Rugelfuss
    .accept 267 >> Acceptez la quête La menace trogg
step
    #completewith next
    .goto Loch Modan,29.9,68.2,45,0
    .goto Loch Modan,30.76,69.97,20 >> Voyagez jusqu'à la Vallée des Brisepierre
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58,45,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58
    >>Tuez les |cRXP_ENEMY_Stonesplinter Troggs|r et les |cRXP_ENEMY_Stonesplinter Scouts|r. Dépouillez-les pour leur |cRXP_LOOT_Teeth|r
    >>|cRXP_WARN_Assurez-vous d'avoir 10|r |T132889:0|t[Etoffes de lin] |cRXP_WARN_pour votre prochaine quête de classe (Paladin)|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Rendez la quête À la défense des terres du roi
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Rendez la quête La menace trogg
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Volez à Ironforge
    .target Thorgrum Borrelson
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Harick Tambourroc|r
    >>|cRXP_BUY_Achetez une|r |T135468:0|t[Baguette fumante]|cRXP_BUY_. Équipez-la lorsque vous passez au niveau 15|r
    .goto Ironforge,23.141,15.922
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Toldren Deepiron|r
    .goto Ironforge,25.204,10.749
    .trainer >> Apprenez vos sorts de classe
    .target Toldren Deepiron
step << Rogue
    .goto Ironforge,51.494,15.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Apprenez vos sorts de classe
    .target Fenthwick
step << Rogue
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 198 >> Acheter la compétence pour porter des masses à une main
    .target Buliwyf Stonehand
step << Hunter
    .goto Ironforge,69.865,82.886
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Regnus Thundergranite|r
    .trainer >> Apprenez vos sorts de classe
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.907,88.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Apprenez vos sorts de classe
    .target Bilban Tosslespanner
step << Warrior
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 199 >> Acheter la compétence pour porter des masses à deux mains
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.551,88.699
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Kelomir Main-de-fer|r
    .vendor >>|cRXP_BUY_Achetez un|r |T133046:0|t[Marteau en pierre] |cRXP_BUY_si vous pouvez vous le permettre|r
    .target Kelomir Ironhand
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
step
    #completewith next
    .zone Stormwind City >> Entrez dans Stormwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Acceptez la quête Livraison pour Foudrepique
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Rendez la quête La mission de Foudrepique
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParler à |cRXP_FRIENDLY_Sheldras Arbrelune|r.
    .trainer >> Apprenez vos sorts de classe
    .target Sheldras Moontree
step << Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Si vous n'avez pas l'intention de prendre |T136065:0|t[Herboristerie] comme métier, achetez 5 |T134187:0|t[Terrestrines] pour une quête à venir
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement à ka Marche de l'Ouest très bientôt
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    >>|T132794:0|t[Flasque d'huile]
    .collect 2449,5,6123,1 -- Earthroot (5)
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step << !Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez les objets suivants pour rendre des quêtes plus rapidement à ka Marche de l'Ouest très bientôt
    >>Ceux-ci vont feront gagner du temps comme vous n'aurez pas besoin de chercher des mobs à tuer. Passez cette étape si vous ne voulez pas les acheter
    >>|T133972:0|t[Viande filandreuse de vautour]
    >>|T133884:0|t[Oeil de murloc]
    >>|T135997:0|t[Groin de broche-tripes]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Foie de broche-tripes]
    >>|T132794:0|t[Flasque d'huile]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keldric Boucher|r
    .vendor >> |cRXP_BUY_Achetez des|r |T134830:0|t[Potions de soins inférieures] |cRXP_BUY_si elles sont disponibles|r
    .target Keldric Boucher
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent
    .target Dungar Longdrink
]])
