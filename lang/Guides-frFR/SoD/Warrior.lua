if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Ivresse de la victoire - 1 (Forêt d'Elwynn)
#title Ivresse de la victoire

step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>Dirigez-vous vers la |cRXP_PICK_Boîte de rangement de Kobold|r à l'intérieur de la Mine de la crête aux Échos
    .train 403470,1
step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>Ouvrez la |cRXP_PICK_Boîte de rangement de Kobold|r au sol. Récupérez-y la |T134419:0|t|cRXP_LOOT_[Rune d’Ivresse de la victoire]|r
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #season 2
    .train 403470 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune d'Ivresse de la victoire]|r |cRXP_WARN_pour apprendre|r |T132342:0|t[Ivresse de la victoire]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Ivresse de la victoire - 3 (Dun Morogh)
#title Ivresse de la victoire

step << Warrior
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Tuez les |cRXP_ENEMY_Jeunes trolls Frostmane|r. Dépouillez-les pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r]
    .collect 204806,1
    .mob Frostmane Troll Whelp
    .train 403470,1
step << Warrior
    #season 2
    #label WarriorVR
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Ivresse de la victoire - 3 (Sombrevallon)
#title Ivresse de la victoire

step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>Tuez les |cRXP_ENEMY_Araignée Tissebois|r. Dépouillez-les pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 403470,1
step << Warrior
    #season 2
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frénésie sanglante - 10 (Forêt d'Elwynn)
#title Frénésie sanglante

step << Warrior
    #season 2
    .goto Elwynn Forest,25.5,70.1,0
    .goto Elwynn Forest,22.1,73.8,0
    .goto Elwynn Forest,29.9,73.3,0
    .goto Elwynn Forest,36.1,80.4,0
    .goto Elwynn Forest,38.0,75.4,0
    .goto Elwynn Forest,25.5,70.1,70,0
    .goto Elwynn Forest,22.1,73.8,70,0
    .goto Elwynn Forest,29.9,73.3,70,0
    .goto Elwynn Forest,36.1,80.4,70,0
    .goto Elwynn Forest,38.0,75.4,70,0
    .goto Elwynn Forest,40.6,74.7
    >>Parlez à un |cRXP_FRIENDLY_Epéiste errant|r dans la Forêt d'Elwynn
    >>Vainquez l' |cRXP_ENEMY_Epéiste errant|r après un duel
    >>Ramassez la |cRXP_PICK_Récompense de l’épéiste|r qu'il laisse tomber au sol. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    >>|cRXP_WARN_Note: L' |cRXP_FRIENDLY_Épéiste errant|r peut apparaître dans toute la Forêt d'Elwynn|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r] |cRXP_WARN_pour apprendre|r |T136012:0|t[Frénésie sanglante]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frénésie sanglante - 10 (Dun Morogh)
#title Frénésie sanglante

step << Warrior
    #season 2
    .goto Dun Morogh,53.47,47.60
    >>Parlez à un |cRXP_FRIENDLY_Épéiste errant|r dans Dun Morogh
    >>Vainquez l' |cRXP_ENEMY_Epéiste errant|r après un duel
    >>Ramassez la |cRXP_PICK_Récompense de l’épéiste|r qu'il laisse tomber au sol. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r] |cRXP_WARN_pour apprendre|r |T136012:0|t[Frénésie sanglante]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frénésie sanglante - 10 (Teldrassil)
#title Frénésie sanglante

step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,60,0
    .goto Teldrassil,43.8,76.8,60,0
    .goto Teldrassil,54.6,66.0,60,0
    .goto Teldrassil,62.6,71.8,60,0
    .goto Teldrassil,39.6,37.6
    >>Parlez à un |cRXP_FRIENDLY_Épéiste errant|r dans Teldrassil
    >>Vainquez l' |cRXP_ENEMY_Epéiste errant|r après un duel
    >>Ramassez la |cRXP_PICK_Récompense de l’épéiste|r qu'il laisse tomber au sol. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    >>|cRXP_WARN_Note: L' |cRXP_FRIENDLY_Épéiste errant|r peut apparaître dans tout Teldrassil|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r] |cRXP_WARN_pour apprendre|r |T136012:0|t[Frénésie sanglante]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Tonnerre furieux - 6 (Forêt d’Elwynn)
#title Tonnerre furieux

step << Warrior
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Entrez dans la mine de Fargodeep
    .train 403476,1
step << Warrior
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Tuez |cRXP_ENEMY_Dent-d'or|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tonnerre furieux|r]
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Goldtooth
    .train 403476,1
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tonnerre furieux|r] |cRXP_WARN_pour apprendre|r |T136048:0|t[Tonnerre furieux]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Tonnerre furieux - 9 (Dun Morogh)
#title Tonnerre furieux

step << Warrior
    #season 2
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Tuez |cRXP_ENEMY_Fyodi|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r
    >>|cRXP_WARN_Bien que |cRXP_ENEMY_Fyodi|r s'affiche en tant qu'élite, ses points de vie, dégâts et valeurs d'armure correspondent à ceux d'un mob Normal|r
    >>|cRXP_WARN_Attention, il lance|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 35-80 dégâts de mêlée en touchant. Uniquement à distance)|r
    >>|cRXP_WARN_NOTE : La|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_peut aussi tomber sur chaque mob rare à Dun Morogh, ainsi que sur|cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Griffe galeuse|r, et le|r |cRXP_ENEMY_Vieux Barbeglace|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Fyodi
    .train 403476,1
    .xp >10,1
step << Warrior
    #season 2
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r
    >>|cRXP_WARN_NOTE : La|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_peut aussi tomber sur chaque mob rare à Dun Morogh, ainsi que sur|cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Griffe galeuse|r, et le|r |cRXP_ENEMY_Vieux Barbeglace|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Vagash
    .train 403476,1
    .xp <10,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de tonnerre furieux]|r |cRXP_WARN_pour apprendre|r |T136048:0|t[Tonnerre furieux]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Assaut frénétique - 10 (Stormwind)
#title Assaut frénétique

step << Warrior
    #season 2
    .gossipoption 109045 >> Parlez à |cRXP_FRIENDLY_Liv Bradford|r dans l'Auberge du Parc
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Parlez à |cRXP_ENEMY_Stuart|r, puis battez-le. Il s'évanouira à 0%
    .goto Stormwind City,21.213,62.781
    >>Si |cRXP_ENEMY_Stuart|r n'est pas présent, attendez qu'il réapparaisse
    .gossipoption 109044 >> Parlez de nouveau à |cRXP_FRIENDLY_Liv Bradford|r après avoir assommé |cRXP_ENEMY_Stuart|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] |cRXP_WARN_pour apprendre|r |T236317:0|t[Assaut frénétique]
    >>|cRXP_WARN_Note: Cela peut être assez difficile à faire seul en fonction de votre niveau. Demandez de l'aide si nécessaire|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Assaut frénétique - 10 (Ironforge)
#title Assaut frénétique

step << Warrior
    #season 2
    .goto Ironforge,72.512,76.942
    >>Parlez à |cRXP_FRIENDLY_Bruuk Barleybeard|r au Quartier militaire
    >>Parlez à |cRXP_ENEMY_Bruart|r près de l'entrée, puis combattez-le. Il s'évanouira à 0%
    >>Si |cRXP_ENEMY_Bruart|r n'est pas là, attend qu'il réapparaisse
    >>Parlez à |cRXP_FRIENDLY_Bruuk Barleybeard|r de nouveau après avoir assommé |cRXP_ENEMY_Bruart|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r]
    .train 425447,1 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] |cRXP_WARN_pour apprendre|r |T236317:0|t[Assaut frénétique]
    >>|cRXP_WARN_Note: Cela peut être assez difficile à faire seul en fonction de votre niveau. Demandez de l'aide si nécessaire|r
    .use 204716
    .target Bruuk Barleybeard
    .mob Bruart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Assaut frénétique - 10 (Teldrassil)
#title Assaut frénétique

step << Warrior
    #season 2
    .goto Teldrassil,55.619,59.787
    >>Parlez à |cRXP_FRIENDLY_Keldamyr l'aubergiste|r à Dolanaar
    >>Parlez à |cRXP_ENEMY_Syllart|r en haut des escaliers, puis combattez-le. Il s'évanouira à 0%
    >>Si |cRXP_ENEMY_Syllart|r n'est pas présent, attendez qu'il réapparaisse
    >>Parlez à |cRXP_FRIENDLY_Keldamyr l'aubergiste|r de nouveau après avoir assommé |cRXP_ENEMY_Syllart|r pour obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r]
    .train 425447,1 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] |cRXP_WARN_pour apprendre|r |T236317:0|t[Assaut frénétique]
    >>|cRXP_WARN_Note: Cela peut être assez difficile à faire seul en fonction de votre niveau. Demandez de l'aide si nécessaire|r
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Rage infinie - 20 (Marche de l’Ouest)
#title Rage infinie

step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tuez le |cRXP_ENEMY_Vieux Troubloeil|r. Dépouillez-le pour la |T132347:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r]
    >>Le |cRXP_ENEMY_Vieux Troubloeil|r |cRXP_WARN_patrouille le long du Longrivage. Si vous ne le voyez pas le long du Longrivage, attendez qu'il apparaisse dans le campement |cRXP_ENEMY_Murloc|r le plus au sud|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Utilisez la|r |T132347:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r] |cRXP_WARN_pour apprendre|r |T132347:0|t[Rage infinie]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Rage infinie - 16 (Sombrivage)
#title Rage infinie

step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.106,33.621,30 >> Entrez dans la grotte des Nagas de la Bondissante
    .train 403489,1
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>Tuez la |cRXP_ENEMY_Dame Sédorax|r. Dépouillez-la pour la |T132347:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r]
    >>La |cRXP_ENEMY_Dame Sédorax|r |cRXP_WARN_est une élite de niveau 18 accompagnée d'autres mobs autour d'elle. Vous pouvez opté de l'obtenir à la Marche de l'Ouest ce qui est plus facile|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Utilisez la|r |T132347:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r] |cRXP_WARN_pour apprendre|r |T132347:0|t[Rage infinie]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Dévaster - 8 (Forêt d'Elwynn)
#title Dévaster

step << Warrior
    #season 2
    >>Tuez les |cRXP_ENEMY_Mineurs kobolds|r et les |cRXP_ENEMY_Tunneliers kobolds|r. Dépouillez-les pour leur |T134168:0|t|cRXP_LOOT_[Tête de Kobold coupée]|r
    >>Tuez les |cRXP_ENEMY_Murlocs|r et les |cRXP_ENEMY_Ruisseliers murlocs|r. Dépouillez-les pour leur |T134169:0|t|cRXP_LOOT_[Tête de Murloc coupée]|r
    >>Tuez les |cRXP_ENEMY_Rivepattes chétifs|r et les |cRXP_ENEMY_Estafettes Rivepattes|r. Dépouillez-les pour obtenir leur |T134163:0|t[|cRXP_LOOT_Tête de Gnoll coupée|r]
    .collect 204476,1 -- Severed Kobold Head (1)
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    .collect 204477,1 -- Severed Murloc Head (1)
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .collect 204478,1 -- Severed Gnoll Head (1)
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,25.9,93.9
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .mob Murloc
	.mob Murloc Streamrunner
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #completewith RoDSW
    .zone Stormwind City >> Voyagez à Stormwind
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Parlez à |cRXP_FRIENDLY_Viktoria Desbois|r pour lui donner votre |T134168:0|t[|cRXP_LOOT_Tête de Kobold coupée|r] afin de recevoir le |T134455:0|t[Premier fragment de rune de chasseurs de monstres]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Parlez à |cRXP_FRIENDLY_Viktoria Desbois|r pour lui donner votre |T134169:0|t[|cRXP_LOOT_Tête de Murloc coupée|r afin de recevoir le |T134455:0|t[Deuxième fragment de rune de chasseurs de monstres]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Parlez à |cRXP_FRIENDLY_Viktoria Desbois|r pour lui donner votre |T134163:0|t[|cRXP_LOOT_Tête de Gnoll coupée|r] afin de recevoir le |T134455:0|t[Troisième fragment de rune de chasseurs de monstres]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >> |cRXP_WARN_Utilisez n'importe lequel des|r |T134455:0|t[Fragments de rune de chasseurs de monstres] |cRXP_WARN_pour fabriquer la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour apprendre|r |T135291:0|t[Dévaster]
    .use 204703
    .itemcount 204703,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Dévaster - 6 (Teldrassil)
#title Dévaster

step << Warrior
    #season 2
    >>Tuez les |cRXP_ENEMY_Sabre-de-nuits sauvages|r ou les |cRXP_ENEMY_Rôdeurs sabre-de-nuits|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de tigre coupée|r
    >>Tuez les |cRXP_ENEMY_Hiboux Strigids|r ou les |cRXP_ENEMY_Hurleurs Strigids|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de chouette coupée|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses Tissebois|r ou les |cRXP_ENEMY_Croc-venins Tissebois|r. Dépouillez-les pour leur |cRXP_LOOT_Tête d’araignée coupée|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .goto Teldrassil,53.6,62.4
    .collect 208610,1 -- Severed Owl Head (1)
    .goto Teldrassil,54.6,60.4
    .collect 208612,1 -- Severed Spider Head (1)
    .goto Teldrassil,53.0,67.0
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step << Warrior
    #completewith next
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << Warrior
    #season 2
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delwynna|r à l'étage
    >>|cRXP_WARN_Après avoir rendu les trois |cRXP_LOOT_Têtes coupées|r, vous recevrez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour apprendre|r |T135291:0|t[Dévaster]
    .use 204703
    .skipgossip
    .target Delwynna
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Dévaster - 6 (Dun Morogh)
#title Dévaster

step << Warrior
    #season 2
    >>Tuez les |cRXP_ENEMY_Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Patte sectionnée de wendigo|r
    >>Tuez les |cRXP_ENEMY_Trolls Crins-de-givre|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de troll coupée|r
    >>Tuez les |cRXP_ENEMY_Troggs Mâcherocs|r. Dépouillez-les pour leur |cRXP_LOOT_Cœur de trogg en parfait état|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .goto Dun Morogh,42.2,52.6
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob Young Wendigo
    .mob Wendigo
    .mob Frostmane Troll
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 403475,1
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Junni Colacier|r
    >>|cRXP_WARN_Après avoir remis les trois objets, vous recevrez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour apprendre|r |T135291:0|t[Dévaster]
    .use 204703
    .skipgossip
    .target Junni Steelpass
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Ivresse de la victoire - 2 (Durotar)
#title Ivresse de la victoire


    --Rune of Victory Rush

step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .accept 77588 >>Acceptez la quête Une épreuve d’endurance << Troll
    .accept 77582 >>Acceptez la quête Une épreuve d’endurance << Orc
    .target Frang
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Ouvrez la |cRXP_PICK_Cache dissimulée|r pour trouver la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r]
    >>|cRXP_WARN_Contournez|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_et descendez en sautant pour aller jusqu'au coffre|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Ivresse de la victoire|r]
    .use 204806
    .itemcount 204806,1
step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frang|r
    .turnin 77588 >>Rendez la quête Une épreuve d’endurance << Troll
    .turnin 77582 >>Rendez la quête Une épreuve d’endurance << Orc
    .target Frang

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Ivresse de la victoire - 2 (Mulgore)
#title Ivresse de la victoire


    --Rune of Victory Rush

step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .accept 77651 >>Acceptez la quête Dans les ronces
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Ouvrez le |cRXP_PICK_Cache à butin dos-hirsute|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Ivresse de la victoire|r]
    .use 204806
    .itemcount 204806,1
step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harutt|r
    .turnin 77651 >>Rendez la quête Dans les ronces
    .target Harutt Thunderhorn

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Ivresse de la victoire - 2 (Tirisfal)
#title Ivresse de la victoire

    --Rune of Victory Rush

step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .accept 77668 >>Acceptez la quête La Rune perdue
    .target Dannal Stern
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Ouvrez la |cRXP_PICK_Planque perdue|r à l'intérieur de la grotte pour trouver la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Ivresse de la victoire|r]
    .use 204806
    .itemcount 204806,1
step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Rendez la quête La Rune perdue
    .target Dannal Stern

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Tonnerre furieux - 2 (Durotar)
#title Tonnerre furieux

    --Rune of Furious Thunder

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Tuez |cRXP_ENEMY_Sarkoth|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de tonnerre furieux|r]
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Sarkoth
    .train 403476,1
step
    #season 2
    .train 403476 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de tonnerre furieux|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Tonnerre furieux - 10 (Tirisfal)
#title Tonnerre furieux


    --Rune of Furious Thunder

step
    #season 2
    .goto Tirisfal Glades,25.79,48.00
    >>Tuez |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de tonnerre furieux|r]
    >>|cRXP_WARN_Il s'agit d'un élite de niveau 7|r
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Gillgar
    .train 403476,1
step
    #season 2
    .train 403476 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de tonnerre furieux|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Assaut frénétique - 10 (Orgrimmar)
#title Assaut frénétique


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamja|r et |cRXP_FRIENDLY_Gru'ark|r
    +Tuez |cRXP_ENEMY_Gru'ark|r lorsqu'il devient hostile
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zamja|r
    >>Recevez auprès d'elle la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] 
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Assaut frénétique - 10 (Thunder Bluff)
#title Assaut frénétique


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Netali|r et à |cRXP_FRIENDLY_Meuhart|r sur la Cime des Esprits
    +Tuez |cRXP_FRIENDLY_Meuhart|r lorsqu'il devient hostile
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nétali|r
    >>Recevez auprès d'elle la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] 
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Assaut frénétique - 10 (Tirisfal)
#title Assaut frénétique


    --Rune of Frenzied Assault

step
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Parlez à |cRXP_FRIENDLY_Penny|r
    .target Penny Hawkins
    .train 425447,1
step
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Parlez à |cRXP_FRIENDLY_Coeurbleu|r (en bas) dans l'auberge
    .target Blueheart
    .train 425447,1
step
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Tuez |cRXP_ENEMY_Coeurbleu|r, puis parlez à |cRXP_FRIENDLY_Penny|r en haut des escaliers
    .gossipoption 110751 >>Recevez auprès d'elle la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] 
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Dévaster - 8 (Durotar)
#title Dévaster


    --Rune of Devastate

step
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>Tuez les |cRXP_ENEMY_Manoeuvres kolkars|r et les |cRXP_ENEMY_Estafettes kolkars|r. Dépouillez-les pour une |cRXP_LOOT_Tête de centaure coupée|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>Tuez les |cRXP_ENEMY_Harpies Terrevent|r. Dépouillez-les pour une |cRXP_LOOT_Tête de harpie coupée|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Tuez les |cRXP_ENEMY_Hurans Tranchecrins|r. Dépouillez-les pour une |cRXP_LOOT_Tête de huran coupée|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 403475,1
step
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vahi|r
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step
    #season 2
    .use 204688 >>Utilisez les |T134455:0|t[Fragments de rune] pour créer des |T134419:0|t[|cRXP_FRIENDLY_Runes de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Dévaster - 8 (Mulgore)
#title Dévaster


    --Rune of Devastate

step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Tuez les |cRXP_ENEMY_Gnolls crin-pâles|r. Dépouillez-les pour une |cRXP_LOOT_Tête de Gnoll coupée|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>Tuez les |cRXP_ENEMY_Sorcières du vent Furie-des-vents|r et les |cRXP_ENEMY_Harpies Furie-des-vents|r. Dépouillez-les pour une |cRXP_LOOT_Tête de harpie coupée|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Tuez les |cRXP_ENEMY_Bristleback Interlopers|r. Dépouillez-les pour leur |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vateya|r à Sabot-de-Sang
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step
    #season 2
    .use 204688 >>Utilisez les |T134455:0|t[Fragments de rune] pour créer des |T134419:0|t[|cRXP_FRIENDLY_Runes de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Dévaster - 8 (Tirisfal)
#title Dévaster


    --Rune of Devastate

step
    #season 2
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62
    >>Tuez les |cRXP_ENEMY_Chauves-souris|r. Dépouillez-les pour une |cRXP_LOOT_Tête de chauve-souris coupée|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Tuez les |cRXP_ENEMY_Gnolls Poil-Putride|r. Dépouillez-les pour une |cRXP_LOOT_Tête de Gnoll coupée|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Tuez les |cRXP_ENEMY_Murlocs|r. Dépouillez-les pour une |cRXP_LOOT_Tête de Murloc coupée|r
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dorac|r dans Fossoyeuse
    >>Rendez les |cRXP_LOOT_Têtes|r que vous avez rassemblés en échange des |T134455:0|t[Fragments de rune]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step
    #season 2
    .use 204688 >>Utilisez les |T134455:0|t[Fragments de rune] pour créer des |T134419:0|t[|cRXP_FRIENDLY_Runes de Dévastation|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frénésie sanglante - 8 (Durotar)
#title Frénésie sanglante


    --Rune of Blood Frenzy

step
    #season 2
    .goto Durotar,56.10,21.61,0
    .goto Durotar,56.98,24.42,0
    .goto Durotar,55.42,38.55,0
    .goto Durotar,40.65,48.24,0
    .goto Durotar,36.11,47.85,0
    .goto Durotar,56.10,21.61,100,0
    .goto Durotar,56.98,24.42,100,0
    .goto Durotar,55.42,38.55,100,0
    .goto Durotar,40.65,48.24,100,0
    .goto Durotar,36.11,47.85,100,0
    .goto Durotar,56.10,21.61
    >>Trouvez et affrontez l' |cRXP_FRIENDLY_Epéiste errant|r. Ouvrez la |cRXP_PICK_Boîte|r qu'il lâche pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    >>|cRXP_ENEMY_Il patrouille dans toute la zone et il est difficile à trouver. Le point de repère vous guide près de ses emplacements d'apparition connus|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frénésie sanglante - 8 (Mulgore)
#title Frénésie sanglante


--Rune of Blood Frenzy

step
    #season 2
    .goto Mulgore,37.38,56.58,0
    .goto Mulgore,45.11,37.75,0
    .goto Mulgore,52.56,43.61,0
    .goto Mulgore,60.43,68.56,0
    .goto Mulgore,37.38,56.58,100,0
    .goto Mulgore,45.11,37.75,100,0
    .goto Mulgore,52.56,43.61,100,0
    .goto Mulgore,60.43,68.56,100,0
    .goto Mulgore,37.38,56.58
    >>Trouvez et affrontez l' |cRXP_FRIENDLY_Epéiste errant|r. Ouvrez la |cRXP_PICK_Boîte|r qu'il lâche pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    >>|cRXP_ENEMY_Il patrouille dans toute la zone et il est difficile à trouver. Le point de repère vous guide près de ses emplacements d'apparition connus|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frénésie sanglante - 8 (Tirisfal)
#title Frénésie sanglante


    --Rune of Blood Frenzy

step
    #season 2
    .goto Tirisfal Glades,79.25,65.02
    >>Trouvez et affrontez l' |cRXP_FRIENDLY_Epéiste errant|r. Ouvrez la |cRXP_PICK_Boîte|r qu'il lâche pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    >>|cRXP_ENEMY_Il apparaît juste à l'est de la Ferme des Balnir|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frénésie sanglante|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe rapide - 12 (Loch Modan)
#title Frappe rapide

step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Tuez les |cRXP_ENEMY_Troggs|r. Dépouillez-les pour une |cRXP_LOOT_Géode en forme de crâne|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Tuez un |cRXP_ENEMY_Brise-crâne Brisepierre|r
    >>|cRXP_WARN_Pendant le combat, il vous donnera "un coup sec" qui transformera la |cRXP_LOOT_Géode en forme de crâne|r en |r |T236489:0|t[|cRXP_LOOT_Géode en forme de crâne fêlé|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .use 208848 >>|cRXP_WARN_Utilisez la|r |T236489:0|t[|cRXP_LOOT_Géode en forme de crâne fêlé|r] |cRXP_WARN_pour recevoir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe rapide|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    .train 425443 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe rapide|r] |cRXP_WARN_pour apprendre|r |T132394:0|t[Frappe rapide]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Rage infinie - 15 (Les Tarides)
#title Rage infinie


    --Rune of Endless Rage

step
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>Cliquez sur la |cRXP_PICK_Bannière de guerre de la Horde|r
    .train 403489,1
step
    #season 2
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Volez à Ratchet
    .target Devrak
step
    #completewith next
    .subzone 385 >>Voyagez au Fort de Guet-du-Nord
step
    #season 2
    .goto The Barrens,62.55,56.31
    >>Cliquez sur la |cRXP_PICK_Bannière de guerre de l'Alliance|r
    >>Tuez le |cRXP_ENEMY_Lieutenant Brassepierre|r lorsqu'il apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r] |cRXP_WARN_pour apprendre|r |T132347:0|t[Rage infinie]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Rage infinie - 15 (Forêt des Pins-argentés)
#title Rage infinie


    --Rune of Endless Rage

step
    #season 2
    #completewith next
    +|cRXP_WARN_Nous vous recommandons de le faire en groupe comme vous devrez tuer un elite de niveau 17|r
step
    #season 2
    .goto Silverpine Forest,35.03,7.73
    >>Attaquez la |cRXP_ENEMY_Victime entoilée|r et tuez l' |cRXP_ENEMY_Aventurier égaré|r qui apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r]
    >>|cRXP_WARN_Vous devez infligeant beaucoup de dégâts d'un coup à la|r |cRXP_ENEMY_Victime entoilée|r |cRXP_WARN_comme elle regagne de la vie toutes les quelques secondes|r
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Webbed Victim
    .mob Lost Adventurer
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage infinie|r] |cRXP_WARN_pour apprendre|r |T132347:0|t[Rage infinie]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe rapide - 20 (Sombrivage)
#title Frappe rapide

step << Warrior
    .goto 1439,44.081,20.739
    >>Récupérez le |T135129:0|t[Harpon noueux] dans l’œil du squelette
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 425443,1
step << Warrior
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Utilisez le|r |T135129:0|t[Harpon noueux] |cRXP_WARN_sur |cRXP_ENEMY_Paxnozz|r pour réduire sa vie maximale à 743|r
    .train 425443,1
step << Warrior
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>Tuez |cRXP_ENEMY_Paxnozz|r. Dépouillez-le pour la |T134419:0|t[|cRXP_LOOT_Rune de Frappe rapide|r]
    >>|cRXP_WARN_Soyez prudent, c'est un élite de niveau 20|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .use 209047
    .train 425443,1
step << Warrior
    .train 425443 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe rapide|r] |cRXP_WARN_pour apprendre|r |T132394:0|t[Frappe rapide]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Vague de sang - 40 (Azeroth)
#title Vague de sang

step
    .train 416004,1
    #completewith SpiceBlend
    .zone Arathi Highlands >>Voyagez aux Hautes-terres d'Arathi
step
    #completewith IllegibleReciple
    +|cRXP_WARN_Vous devrez peut-être monter un groupe comme vous devrez tuer des monstres élites de niveau 37+ afin d'obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Vague de sang|r]
    .subzoneskip 324
step
    #label IllegibleReciple
    .train 416004,1
    #loop
    .goto Alterac Mountains,39.0,54.6,0
    .goto Arathi Highlands,24.14,61.85,0
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17,40,0
    >>Tuez les |cRXP_ENEMY_Ogres Rochepoing|r dans le Donjon de Stromgarde. Dépouillez-les pour une |T237451:0|t[|cRXP_LOOT_Recette illisible|r]
    >>|cRXP_WARN_Utilisez la|r |T237451:0|t[|cRXP_LOOT_Recette illisible|r] |cRXP_WARN_pour lancer la quête|r
    >>|cRXP_WARN_Sinon, vous pouvez également tuer les |cRXP_ENEMY_Ogres Cassecrêtes|r dans les Montagnes d'Alterac|r
    .collect 213422,1,79624 --Illegible Recipe (1x)
    .accept 79624 >>Acceptez la quête N’importe qui peut cuisiner
    .mob Boulderfist Shaman
    .mob Boulderfist Mauler
    .mob Boulderfist Lord
    .mob Crushridge Mauler
    .mob Crushridge Mage
    .mob Crushridge Enforcer
    .mob Crushridge Warmonger
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >> Montez la montagne pour rejoindre |cRXP_FRIENDLY_Skonk|r
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skonk|r
    .turnin 79624 >>Rendez la quête N’importe qui peut cuisiner
    .accept 79677 >>Acceptez la quête Une petite liste de courses
    .target Skonk
step
    #completewith SpiceBlend
    .goto Arathi Highlands,30.74,66.94,60,0
    .goto Arathi Highlands,22.72,71.98,50,0
    .goto Arathi Highlands,21.50,75.91,40,0
    .goto Arathi Highlands,21.98,79.96,30 >> Voyagez à la Crique de Faldir
step
    #label SpiceBlend
    .train 416004,1
    .goto Arathi Highlands,20.47,84.90,8,0
    .goto Arathi Highlands,21.379,83.919
    >>Ouvrez le |cRXP_PICK_Tonneau scellé|r. Récupérez-y le |cRXP_LOOT_Mélange d’épices du contrebandier|r
    >>|cRXP_WARN_Il se situe au fond du navire échoué. Nagez dans le grand trou tout au fond pour l'atteindre|r
    .complete 79677,2 --Smuggler's Spice Blend (1x)
step
    .train 416004,1
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts de Hautebrande
step
    .train 416004,1
    #loop
    .goto Hillsbrad Foothills,84.34,32.40,0
    .goto Hillsbrad Foothills,81.33,34.03,50,0
    .goto Hillsbrad Foothills,84.34,32.40,50,0
    .goto Hillsbrad Foothills,82.09,36.92,50,0
    >>Tuez les |cRXP_ENEMY_Gryphons sauvages|r. Dépouillez-les pour leur |cRXP_LOOT_Cuissot hybride|r
    .complete 79677,1 --Hybrid Haunch (1x)
    .mob Kurdros << Horde
    .mob Granistad << Horde
    .mob Wild Gryphon
step
    .train 416004,1
    #completewith next
    .zone Badlands >>Voyagez aux Terres ingrates
step
    #completewith next
    .goto Badlands,42.87,29.77,60 >> Entrez dans la Forteresse d'Angor
step
    .train 416004,1
    .goto Badlands,41.92,26.26,20,0
    .goto Badlands,41.383,27.964
    >>Cliquez sur le |cRXP_PICK_Fût ombreforge en perce|r. Récupérez-y la |cRXP_LOOT_Bière embaumée|r
    >>|cRXP_WARN_Restez à la portée maximale pour éviter d'aggro l'|r |cRXP_ENEMY_Ambassadeur Infernus|r
    .complete 79677,3 --Balmy Brew (1x)
step
    .train 416004,1
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au Marais des Chagrins
step
    .train 416004,1
    #loop
    .goto Swamp of Sorrows,56.16,61.19,0
    .goto Swamp of Sorrows,62.11,65.79,0
    .goto Swamp of Sorrows,68.52,73.12,0
    .goto Swamp of Sorrows,72.50,82.18,0
    .goto Swamp of Sorrows,78.49,88.19,0
    .goto Swamp of Sorrows,56.16,61.19,60,0
    .goto Swamp of Sorrows,62.11,65.79,60,0
    .goto Swamp of Sorrows,68.52,73.12,60,0
    .goto Swamp of Sorrows,72.50,82.18,60,0
    .goto Swamp of Sorrows,78.49,88.19,60,0
    >>Tuez les |cRXP_ENEMY_Tarentules mortelles|r. Dépouillez-les pour le |cRXP_LOOT_Venin visqueux|r
    >>|cRXP_WARN_Vous les trouverez dans la zone au sud-est du Marais des Chagrins|r
    .complete 79677,4 --Viscous Venom (1x)
    .mob Deathstrike Tarantula
step
    .train 416004,1
    #completewith GroceryRun
    .zone Arathi Highlands >>Voyagez aux Hautes-terres d'Arathi
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >> Montez la montagne pour rejoindre |cRXP_FRIENDLY_Skonk|r
step
    #label GroceryRun
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skonk|r
    .turnin 79677 >>Rendez la quête Une petite liste de courses
    .accept 79678 >>Acceptez la quête Test de dégustation
    .timer 23,RP de Test de dégustation
    .target Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>Tuez |cRXP_ENEMY_Skonk|r après qu'il ait mangé son repas
    .complete 79678,1 --Taste Testing
    .mob Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Skonk|r
    .turnin 79678 >>Rendez la quête Test de dégustation
    .target Skonk
step
    .train 416004 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Vague de sang|r] |cRXP_WARN_pour apprendre|r |T236306:0|t[Vague de sang]
    .use 213103
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Rage concentrée - 35 (Hautes-terres Arathies)
#title Rage concentrée

-- Focused Rage

step
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_Pensez à trouver des joueurs supplémentaires pour rejoindre votre groupe avant d'essayer d'obtenir la|r |T134419:0|t[|cRXP_LOOT_Rune de Rage concentrée|r] |cRXP_WARN_comme cela nécessite de tuer un élite de niveau 35 et 2 mobs en même temps|r
step
    .train 409163,1
    #completewith WitherbarkCave
    .zone Arathi Highlands >> Voyagez aux |cFFfa9602Hautes-terres Arathies|r
step
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>Tuez les |cRXP_ENEMY_Trolls fânécorce|r. Dépouillez-les pour la |T133057:0|t[|cRXP_LOOT_Massette fânécorce|r]
    >>|cRXP_WARN_Vous pouvez aussi acheter la|r |T133057:0|t[|cRXP_LOOT_Massette fânécorce|r] |cRXP_WARN_à l'Hôtel des ventes|r
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>Entrez dans la grotte des Fânécorces
step
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >> |cRXP_WARN_Utilisez la|r |T133057:0|t[|cRXP_LOOT_Massette fânécorce|r] |cRXP_WARN_sur le |cRXP_PICK_Gong|r à l'intérieur de la grotte|r
    .use 216483 >>|cRXP_WARN_Cela fera apparaître un |cRXP_ENEMY_Goliath fânécorce|r (élite de niveau 35) ainsi que 2 mobs supplémentaires|r
step
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>Tuez le |cRXP_ENEMY_Goliath fanécorce|r. Dépouillez-le pour la |T134419:0|t[|cRXP_LOOT_Rune de Rage concentrée|r]
    .collect 213109,1
    .mob Witherbark Goliath
step
    .train 409163 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_LOOT_Rune de Rage concentrée|r] |cRXP_WARN_pour apprendre|r |T132345:0|t[Rage concentrée]
    .use 213109
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Intervention - 24 (Mille pointes)
#title Intervention

-- Intervene

step
    #optional
    .train 403472,1
    +|cRXP_WARN_Vous devez être au moins au niveau 24 avant de pouvoir obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’intervention|r]
    .xp >24,1
step
    .train 403472,1
    #completewith next
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Vous devez apprendre|r |T132357:0|t[Coup de bouclier] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’intervention|r]
step
    .train 403472,1
    .train 5308,1
    .train 20658,1
    .train 20660,1
    .train 20661,1
    .train 20662,1
    +|cRXP_WARN_Vous devez apprendre|r |T135358:0|t[Exécution] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'intervention|r]
step
    .train 403472,1
    #optional
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Vous devez apprendre|r |T132357:0|t[Coup de bouclier] |cRXP_WARN_pour obtenir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’intervention|r]
step
    .train 403472,1
    #completewith next
    >>|cRXP_WARN_Avant de vous dirigez vers les Mille pointes, assurez-vous d'avoir les objets suivants (leur niveau n'a pas d'importance)|r
    +Une arme à une main
    +Un bouclier
step
    .train 403472,1
    .goto Thousand Needles,67.84,89.50,100 >> Voyagez au Site de fouilles dans les |cFFfa9602Mille pointes|r
step
    #completewith next
    +|cRXP_WARN_Assurez-vous d'avoir équipé votre arme à une main et votre bouclier|r
step
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Lancez|r |T135358:0|t[Exécution] |cRXP_WARN_sur le |cRXP_ENEMY_Mannequin de combat|r, puis déplacez-vous vers le prochain|r |cRXP_ENEMY_Mannequin de combat|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_Lancez|r |T136080:0|t[Provocation] |cRXP_WARN_sur le |cRXP_ENEMY_Mannequin de combat|r, puis déplacez-vous vers le prochain|r |cRXP_ENEMY_Mannequin de combat|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_Lancez|r |T132357:0|t[Coup de bouclier] |cRXP_WARN_sur le|r |cRXP_ENEMY_Mannequin de combat|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>Ouvrez la |cRXP_PICK_Manne du guerrier|r. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune d’intervention|r]
    .collect 213111,1 --Rune of Intervention (1x)
step
    .train 403472 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’intervention|r] |cRXP_WARN_pour apprendre|r |T132365:0|t[Intervention]
    .use 213111
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Cri de ralliement - 40 (Terres ingrates)
#title Cri de ralliement

-- Rallying Cry

step
    .train 426491,1
    #completewith next
    .zone Badlands >>Voyagez aux Terres ingrates
step
    .train 426491,1
    #loop
    .goto Badlands,15.6,45.8,0
    .goto Badlands,20.0,57.0,0
    .goto Badlands,27.8,67.8,0
    .goto Badlands,33.0,66.2,0
    .goto Badlands,36.6,56.8,0
    .goto Badlands,15.6,45.8,30,0 << Alliance
    .goto Badlands,20.0,57.0,30,0 << Alliance
    .goto Badlands,27.8,67.8,30,0 << Alliance
    .goto Badlands,33.0,66.2,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Horde
    .goto Badlands,33.0,66.2,30,0 << Horde
    .goto Badlands,27.8,67.8,30,0 << Horde
    .goto Badlands,20.0,57.0,30,0 << Horde
    .goto Badlands,15.6,45.8,30,0 << Horde
    >>Parlez à l' |cRXP_FRIENDLY_Epéiste errant|r dans les Terres ingrates
    >>Vainquez l' |cRXP_ENEMY_Epéiste errant|r après un duel
    >>Ouvrez la |cRXP_PICK_Récompense de l’épéiste|r qu'il laisse tomber sur le sol. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de la commandante|r]
    >>|cRXP_WARN_Note: L' |cRXP_FRIENDLY_Epéiste errant|r peut apparaître à de nombreux emplacements dans les Terres ingrates|r
    .collect 213110,1 --Rune of the Commander (1x)
    .unitscan Wandering Swordsman
    .skipgossip
step
    .train 426491 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de la commandante|r] |cRXP_WARN_pour apprendre|r |T132339:0|t[Cri de ralliement]
    .use 213110
]])


RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Saccager
#name Saccager - 43 (Féralas)


step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
step
    .goto Feralas,75,35.2,20 >>Dirigez-vous vers la grotte de l'Avant-poste des Gordunni au nord du Camp Mojache
    .train 427081,1
step
    .goto Feralas,74.8,24.9
    >>Entrez dans la grotte, cherchez Ohk'zi, un Ogre élite de niveau 43. Tuez-le pour obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune du débridé|r]
    .collect 220682,1 -- Rune of Unbridled 1/1
    .unitscan Ohk'zi
    .train 427081,1
step
    .train 427081 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du débridé|r] |cRXP_WARN_pour apprendre|r |T132352:0|t[Saccager]
    .use 220682

]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Démolisseurs
#name Démolisseurs - 40 (Les Hinterlands)

step
    #completewith next
    .zone The Hinterlands >>Voyagez aux Hinterlands
step
    #loop
    .goto The Hinterlands,23.6,57.4
    .goto The Hinterlands,36.6,66.2,0
    .goto The Hinterlands,31.6,59.8,0
    >>Tuez l'un des |cRXP_ENEMY_Trolls fanécorces|r dans la partie ouest de la carte jusqu'à ce que vous récupériez un |T133054:0|t|cRXP_LOOT_Marteau de la géode|r sur eux
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
    .train 427084,1
step
    .equip 16,220912 >>Équipez le |T133054:0|t|cRXP_LOOT_Marteau de la géode|r dans votre main droite. Continuez à affronter des mobs jusqu'à ce que le marteau se brise et devienne un |T133054:0|t|cRXP_LOOT_Marteau de la géode brisé|r
    .collect 220914,1 --Broken Geode Hammer
    .train 427084,1
step
    >>Faites un clic droit sur le |T133054:0|t|cRXP_LOOT_Marteau de la géode brisé|r afin d'obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de démolition|r]
    .collect 220913,1 --Rune of Demolition
    .train 427084,1
step
    .train 427084 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de démolition|r] |cRXP_WARN_pour apprendre|r |T132364:0|t[Démolisseurs]
    .use 220913
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#title Goût du sang
#name Goût du sang - 50 (Gorge des Vents brûlants)

step
    #completewith SlagPits
    .zone Searing Gorge >>Voyagez à la Gorge des Vents brûlants
step
    #sticky
    #completewith summonIodax
    >>|cRXP_WARN_Pour compléter cette quête, vous allez devoir invoquer puis tuer un golem élite de niveau 50 avec environ 12k PV. Vous pouvez le faire seul, mais nous vous recommandons de le faire en groupe. Afin d'invoquer le golem, vous devrez récolter 4 pièces dans la fosse aux Scories à la Gorge des Vents brûlants. Cependant, vous n'avez pas besoin de les récupérer si vous trouvez un autre joueur pour invoquer le boss à votre place. Dans ce cas, vous pouvez passer directement à l'étape 13|r
    .collect 221258,1 --Right Foot of the Obliterator
    .collect 221256,1 --Right Arm of the Obliterator
    .collect 221259,1 --Left Foot of the Obliterator
    .collect 221257,1 --Left Arm of the Obliterator
step
    #label SlagPits
    .goto 1427/0,-1247.100,-6906.900,10 >>Entrez dans la fosse aux Scories en passant par la grotte ici
    .train 427076,1
step
    .goto 1427/0,-1257.200,-6764.300
    >>Suivez le chemin incurvé vers l'avant après être entré dans la grotte. Le |cRXP_LOOT_Bras droit de l’Oblitérateur|r se trouve sur le sol à côté d'un tas de caisses et de tonneaux
    .collect 221256,1 --Right Arm of the Obliterator 1/1
    .train 427076,1
step
    .goto 1427/0,-1161.500,-6756.500,10 >>Dirigez-vous vers la porte et entrez
    .train 427076,1
step
    .goto 1427/0,-1303.200,-6461.500,15 >>Continuez à avancer le long du chemin. Dans la grande salle avec un immense golem au sol, prenez la rampe vers le niveau supérieur de la fosse
    .train 427076,1
step
    .goto 1427/0,-1301.900,-6584.700
    >>Récupérez le |cRXP_LOOT_Pied droit de l’Oblitérateur|r se trouvant sur le sol
    .collect 221258,1 --Right Foot of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1387.200,-6722.700,10 >>Dirigez-vous vers l'extrémité la plus au sud du pont
    .train 427076,1
step
    .goto 1427/0,-1428.600,-6656.800
    >>Sautez du pont vers la grotte où se trouvent les Incendosaures. Récupérez le |cRXP_LOOT_Bras gauche de l’Oblitérateur|r sur le sol à côté du bassin de lave
    .collect 221257,1 --Left Arm of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1271.900,-6553.500
    >>Allez tout au fond de la grotte des Incendosaures. Récupérez le |cRXP_LOOT_Pied gauche de l’Oblitérateur|r au sol ici
    .collect 221259,1
    .train 427076,1
step
	#completewith next
	+Effectuez la technique de Logout skip sur le rocher derrière le pied et déconnectez-vous
	.link https://youtu.be/oBnDG1AWcxU >> CLIQUEZ ICI pour un exemple vidéo
step
    #label summonIodax
    #optional
    #completewith next
    .goto 1427/0,-1791.400,-6774.900
    .cast 446363 >>Allez à la Tête de l’Oblitérateur marquée sur votre carte. Utilisez les parties que vous avez récupérées pour invoquer |cRXP_ENEMY_Iodax l'Oblitérateur|r, un géant élite de niveau 50
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1791.400,-6774.900
    >>Tuez |cRXP_ENEMY_Iodax l'Oblitérateur|r et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune du sanguinaire|r]
    .collect 221267,1 --Rune of the Bloodthirsty
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .train 427076 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du sanguinaire|r] |cRXP_WARN_pour apprendre|r |T236276:0|t[Goût du sang]
    .use 221267
    .itemcount 221267,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#title Vigilance
#name Vigilance - 46 (Féralas)

step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
step
    .goto Feralas,77.6,62.0,30 >>Dirigez-vous vers le Gouffre Grouillant, une ruche silithide dans Féralas. |cRXP_WARN_Vous devrez tuer un ennemi d'élite de niveau 46 infligeant des dégâts importants. Montez un groupe si vous n'êtes pas au niveau 50|r
    .train 427078,1
step
    .goto Feralas,77.6,62.0
    >>Cherchez le |cRXP_ENEMY_Tyran de la ruche|r. Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune du guetteur|r]
    .collect 221473,1 --Rune of the watchman
    .unitscan Tyrant of the Hive
    .train 427078,1
step
    .train 427078 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du guetteur|r] |cRXP_WARN_pour apprendre|r |T236318:0|t[Vigilance]
    .use 221473
]])
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#title Posture du gladiateur
#name Posture du gladiateur - 45 (Tanaris & Azshara)

step
    #completewith theOldChamp
    +|cRXP_WARN_Pour débloquer la|r |T236541:0|t[Posture du gladiateur] |cRXP_WARN_vous devez vaincre les deux épéistes errants donnant les runes de|r |T132334:0|t[Frénésie sanglante] et de |T132339:0|t[Cri de ralliement] |cRXP_WARN_. Vérifiez que vous les avez avant de continuer. Utilisez leur runes respectives si vous n'êtes pas sûr de la manière de les obtenir|r
    +|cRXP_WARN_NE FORMEZ PAS DE GROUPE avec qui que ce soit lors de cette suite de quêtes. De nombreux retours ont affirmés que cela faisait souvent buguer la quête, la rendant impossible à compléter |r
step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
step
    #label theOldChamp
    .goto Tanaris,51.6,27.6
    >>Parlez à |cRXP_FRIENDLY_Fizbuz Mithril|r à Gadgetzan
    .accept 81682 >>Acceptez la quête Le vieux champion
    .target Fizbuz Mithril
step
    #completewith next
    .zone Azshara >>Voyagez jusqu'à Azshara
step
    .goto Azshara,27,61,40 >>Cherchez un chemin qui monte sur la montagne. Il est marqué de bannières de la Horde
    .train 416002,1
step
    .goto Azshara,25.4,66.2
    >>Parlez à |cRXP_FRIENDLY_Kajind|r au sommet du chemin de montagne
    .turnin 81682 >>Rendez la quête Le vieux champion
    .accept 81697 >>Acceptez la quête Désarmé
    .target Kajind
step
    .goto Azshara,39.4,72.4
    >>Cherchez |cRXP_ENEMY_Céruléos|r, un dragon bleu de niveau 50. Il patrouille autour du côté nord du lac. Dépouillez-le pour la |T251962:0|t|cRXP_LOOT_Lame de Kajind|r
    .complete 81697,1 --Kajind's Blade
    .unitscan Ceruleos
step
    .goto Azshara,25.4,66.2
    >>Retournez auprès de |cRXP_FRIENDLY_Kajind|r
    .turnin 81697 >>Rendez la quête Désarmé
    .accept 81801 >>Acceptez la quête Retour dans l’arène
    .target Kajind
step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
step
    .goto Tanaris,51.6,27.6
    >>Retournez à Gadgetzan et parlez à |cRXP_FRIENDLY_Fizbuz Mithril|r
    .turnin 81801 >>Rendez la quête Retour dans l’arène
    .accept 81877 >>Acceptez la quête Duel au sommet
    .target Fizbuz Mithril
step
    >>Vainquez |cRXP_ENEMY_Kajind|r dans l'arène de Gadgetzan
    .complete 81877,1 --Arena Victory 1/1
    .unitscan Kajind
step
    .goto Tanaris,51.6,27.6
    >>Rendez la quête à |cRXP_FRIENDLY_Fizbuz Mithril|r
    .turnin 81877 >>Rendez la quête Duel au sommet
    .target Fizbuz Mithril
step
    .train 416002 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gladiator|r] |cRXP_WARN_pour apprendre|r |T236541:0|t[Posture du gladiateur]
    .use 220164
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Viande fraîche
#name Viande fraîche - 55 (Steppes ardentes)

step
    #completewith next
    .zone Burning Steppes >>Voyagez jusqu'aux Steppes ardentes
step
    .train 440492,1
    .goto Burning Steppes,40.4,33.6
    .aura 459616 >>|cRXP_WARN_Tuez les |cRXP_ENEMY_Orcs Blackrock|r au Bastion Blackrock jusqu'à ce que vous receviez le buff|r |T132353:0|t[Rythme de guerre] |cRXP_WARN_|r
    .mob Blackrock Battlemaster
    .mob Blackrock Slayer
    .mob Blackrock Warlock
    .mob Blackrock Sorcerer
step
    .train 440492,1
    .goto Burning Steppes,39.549,27.828
    >>|cRXP_WARN_Dirigez-vous vers l'|r |cRXP_PICK_Autel de révérence|r
    >>|cRXP_WARN_Dès que vous êtes arrivé, tapez "/salute" dans le chat. Cela invoquera un |r |cRXP_ENEMY_Champion révéré|r
    >>Tuez le |cRXP_ENEMY_Champion révéré|r, puis cliquez ensuite sur l' |cRXP_PICK_Autel de révérence|r
    .accept 84124 >> Acceptez la quête L'héritage de la bravoure
    .turnin 84124 >> Rendez la quête L'héritage de la bravoure
    .mob Revered Champion
step
    .train 440492 >>|cRXP_WARN_Utilisez la|r |T133747:0|t[|cRXP_LOOT_Rune du premier guerrier|r] |cRXP_WARN_pour apprendre|r |T237516:0|t[Viande fraîche]
    .use 226680
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Mort soudaine
#name Mort soudaine - 57 (Silithus)

step
    #completewith next
    .zone Silithus >>Voyagez à Silithus
step
    .train 440494,1
    #loop
    .goto Silithus,55.4,53.2,60,0
    .goto Silithus,47.0,53.6,60,0
    .goto Silithus,45.0,74.0,60,0
    .goto Silithus,44.2,83.4,60,0
    .goto Silithus,33.6,69.2,60,0
    .goto Silithus,41.0,65.2,60,0
    .goto Silithus,34.8,33.6,60,0
    .goto Silithus,31.0,17.2,60,0
    .gossip 228611,2 >>|cRXP_WARN_Cherchez un |cRXP_FRIENDLY_Epéiste errant|r partout dans Silithus|r
    >>|cRXP_WARN_Parler à l' |cRXP_FRIENDLY_Epéiste errant|r. Vous devez choisir la difficulté Moyenne ou Difficile afin d'obtenir la rune|r
    >>|cRXP_WARN_Vous serez téléporté instantanément sur une petite plateforme et vous commencerez par affronter|r |cRXP_ENEMY_Khonsu|r
    >>|cRXP_WARN_Il lancera des capacités ressemblant à [Enchaînement]. Lorsque vous voyez ces animations, éloignez-vous rapidement d'elles|r
    >>|cRXP_WARN_Quand il lance [Piétinement tonitruant], vous DEVEZ vous déplacer vers l'un des petits rebords qui dépassent de la plateforme, sinon vous allez être éjecté|r
    >>|cRXP_WARN_Nous vous recommandons aussi d'utiliser la rune d'|r |T132342:0|t[Ivresse de la victoire] |cRXP_WARN_comme vous tuerez des adds tout au long du combat|r
    .unitscan Wandering Swordsman
step
    .train 440494,1
    >>|cRXP_WARN_Vainquez|cRXP_ENEMY_ Khonsu|r
    >>|cRXP_WARN_Il lancera des capacités ressemblant à [Enchaînement]. Lorsque vous voyez ces animations, éloignez-vous rapidement d'elles|r
    >>|cRXP_WARN_Quand il lance [Piétinement tonitruant], vous DEVEZ vous déplacer vers l'un des petits rebords qui dépassent de la plateforme, sinon vous allez être éjecté|r
    >>|cRXP_WARN_Après votre victoire, acceptez la quête puis rendez-la|r
    .accept 84317 >> Acceptez la quête Minuit infini
    .turnin 84317 >> Rendez la quête Minuit infini
    .mob Titanic Watcher
step
    .train 440494 >>|cRXP_WARN_Utilisez l'|r |T133739:0|t[|cRXP_LOOT_Intuition du vagabond intemporel|r] |cRXP_WARN_pour apprendre|r |T132346:0|t[Mort soudaine]
    .use 226679
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Onde de choc
#name Onde de choc - 60 (Azeroth)

step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
step
    .train 440496,1
    .goto Tanaris,59.2,91.5
    >>|cRXP_WARN_Dirigez-vous vers le sud de Tanaris en longeant la côte|r
    >>Cliquez sur le |cRXP_PICK_Méca à moitié enterré|r et sur la |cRXP_PICK_Trappe d’accès|r au sol
    .accept 84135 >> Acceptez la quête Le robot de la plage
    .turnin 84135 >> Rendez la quête Le robot de la plage
    .accept 84137 >> Acceptez la quête Romance mécanique
step
    .train 440496,1
    #completewith next
    .cast 459613 >> |cRXP_WARN_Utilisez l'|r |T134731:0|t[Accélérateur de flottaison guidée] |cRXP_WARN_pour augmenter votre vitesse de nage pendant les 4 minutes|r
    .use 226856
step
    .train 440496,1
    >>|cRXP_WARN_NOTE: LA FLÈCHE N'EST PAS DISPONIBLE POUR CETTE ÉTAPE !|r
    >>|cRXP_WARN_Vous devez maintenant nager vers le sud jusqu'à l'île isolée et parler à |cRXP_FRIENDLY_Sebastian Jurgens|r. Vous devrez passer par les eaux profondes avec une barre de fatigue afin de l'atteindre. Dirigez-vous vers le derrick situé sur l'île pour le trouver|r
    .turnin 84137 >> Rendez la quête Romance mécanique
    .accept 84138 >> Acceptez la quête Services en territoire glacial
    .target Sebastian Jurgens
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Voyagez au Berceau-de-l'Hiver
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Numi|r
    .turnin 84138 >> Rendez la quête Services en territoire glacial
    .accept 84146 >> Acceptez la quête Le blues du sac rouge
    .target Numi
step
    #completewith next
    .zone Burning Steppes >> Voyagez jusqu'aux Steppes ardentes
step
    .train 440496,1
    .goto Burning Steppes,52.955,24.374
    >>Cliquez sur le |cRXP_PICK_Sac rouge|r au sol
    .turnin 84146 >> Rendez la quête Le blues du sac rouge
    .accept 84211 >> Acceptez la quête Le Repaire des braconniers
    .target Red Bag
step
    .train 440496,1
    #loop
    .goto Burning Steppes,47.0,27.2,45,0
    .goto Burning Steppes,46.4,21.4,45,0
    .goto Burning Steppes,52.95,24.37,45,0
    >>Tuez les |cRXP_ENEMY_Contrebandiers Blackrocks|r et les |cRXP_ENEMY_Contrebandiers de sulfuron|r. Dépouillez-les pour leur |cRXP_LOOT_Bougies à disposition verticales|r et leur |cRXP_LOOT_Pan de protection thermique en airain|r
    .complete 84211,1
    .complete 84211,2
    .mob Blackrock Bootlegger
    .mob Sulfuron Smuggler
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Voyagez au Berceau-de-l'Hiver
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Numi|r
    .turnin 84211 >> Rendez la quête Le Repaire des braconniers
    .accept 84212 >> Acceptez la quête Retour en vol
    .target Numi
step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
step
    .train 440496,1
    >>|cRXP_WARN_Retournez auprès de |cRXP_FRIENDLY_Sebastian Jurgens|r sur l'île isolée au sud|r
    .turnin 84212 >> Rendez la quête Retour en vol
    .accept 84213 >> Acceptez la quête Faille sur demande
    .target Sebastian Jurgens
step
    .train 440496,1
    .zone Westfall >> |cRXP_WARN_Suivez |cRXP_FRIENDLY_Sebastian Jurgens|r jusqu'au téléporteur. Il vous téléportera à la Marche de l'Ouest|r << Alliance
    .zone Tirisfal Glades >> |cRXP_WARN_Suivez |cRXP_FRIENDLY_Sebastian Jurgens|r jusqu'au téléporteur. Il vous téléportera aux Clairières de Tirisfal|r << Horde
    .target Sebastian Jurgens
step
    .train 440496,1
    >>|cRXP_WARN_TROUVEZ UN GROUPE POUR VOUS AIDER ! IL VOUS FAUDRA UN TANK ET UN HEALER POUR VOUS AIDER !|r
    >>Parlez à |cRXP_FRIENDLY_Sebastian Jurgens|r pour invoquer le |cRXP_ENEMY_Golem des moissons V000-A|r
    >>Tuez le |cRXP_ENEMY_Golem des moissons V000-A|r
    .complete 84213,1
    .mob Harvest Golem V000-A
step
    .train 440496,1
    >>Cliquez sur le |cRXP_PICK_Bras de méca|r au sol
    .turnin 84213 >> Rendez la quête Faille sur demande
step
    .train 440496 >>|cRXP_WARN_Utilisez le|r |T133738:0|t[|cRXP_LOOT_Prémonition et Prévoyance du combat|r] |cRXP_WARN_pour apprendre|r |T236312:0|t[Onde de choc]
    .use 226678
]])
