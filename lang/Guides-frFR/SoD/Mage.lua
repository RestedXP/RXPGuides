if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Javelot de glace - 2 (Forêt d'Elwynn)
#title Javelot de glace
<< Human Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins au niveau 2 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_comme il s'agit du niveau requis pour obtenir le|r |T133736:0|t[Manuel de compréhension]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Elwynn Forest >> Voyagez à la Forêt d'Elwynn
    .train 401760,1
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Research
    .goto Elwynn Forest,48.33,41.90,15 >>Entrez dans l'abbaye de Northshire
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Research
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Dirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
    .train 401760,1
    .xp <2,1
step
    #label Research
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden Bremen|r à l'intérieur
    .accept 77620 >> Acceptez la quête Recherches sur les sorts
    .target Khelden Bremen
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1429,48.303,42.098,15 >>Sortez de l'abbaye de Northshire
    .train 401760,1
    .xp <2,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Tuez les |cRXP_ENEMY_Nervis défais|r. Dépouillez-les pour les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>Entrez dans l'abbaye de Northshire
    .isOnQuest 77620
    .xp <2,1
step
    #optional
    #requires IceLance2
    #completewith Research2
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Dirigez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r en haut des escaliers
    .isQuestComplete 77620
    .xp <2,1
step
    #label Research2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden Bremen|r à l'intérieur
    .turnin 77620 >> Rendez la quête Recherches sur les sorts
    .target Khelden Bremen
    .isQuestComplete 77620
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Javelot de glace - 2 (Dun Morogh)
#title Javelot de glace

<< Gnome Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins au niveau 2 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_comme il s'agit du niveau requis pour obtenir le|r |T133736:0|t[Manuel de compréhension]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Dun Morogh >> Voyagez vers Dun Morogh
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.910,69.703,15,0
    .goto 1426,28.835,69.050,10,0
    .goto 1426,28.835,68.702,10,0
    .goto 1426,28.939,68.387,12 >> Entrez dans Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r à l'intérieur
    .accept 77667 >> Acceptez la quête Recherches sur les sorts
    .target Marryk Nurribit
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.751,69.058,12,0
    .goto 1426,28.676,69.669,15 >> Quittez Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,26.733,72.552
    >>Ouvrez la |cRXP_PICK_Cantine mâcheroc|r. Récupérez les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.676,69.669,15,0
    .goto 1426,28.751,69.058,10,0
    .goto 1426,28.758,68.721,10,0
    .goto 1426,28.645,68.364,12 >> Entrez dans Anvilmar
    .isQuestComplete 77667
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 77667 >> Rendez la quête Recherches sur les sorts
    .target Marryk Nurribit
    .isQuestComplete 77667
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Javelot de glace - 2 (Durotar)
#title Javelot de glace

<< Troll Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins au niveau 2 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_comme il s'agit du niveau requis pour obtenir le|r |T133736:0|t[Manuel de compréhension]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Durotar >> Voyagez à Durotar
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Acceptez la quête Recherches sur les sorts
    .target Mai'ah
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Stashbox
    .goto 1411,45.363,55.673
    .subzone 365 >>Entrez dans le convent de la Lame-ardente
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Stashbox
    .goto 1411,45.306,55.177,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,43.241,55.384,12,0
    .goto Durotar,43.004,54.456,15 >>Dirigez-vous vers la |cRXP_PICK_Boîte de rangement détrempée|r
    .train 401760,1
    .xp <2,1
step
    #label Stashbox
    .goto Durotar,43.004,54.456
    >>Ouvrez la |cRXP_PICK_Boîte de rangement détrempée|r à l'intérieur de la grotte sous l'eau. Récupérez-y les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1411,43.241,55.384,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,45.306,55.177,12,0
    .goto 1411,45.245,56.520,15 >>Sortez du convent de la Lame-ardente
    .isQuestComplete 77643
    .subzoneskip 363
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77643 >> Rendez la quête Recherches sur les sorts
    .target Mai'ah
    .isQuestComplete 77643
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Javelot de glace - 2 (Tirisfal)
#title Javelot de glace
<< Undead Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins au niveau 2 afin d'obtenir la|r |T133816:0|t[Gravure de gants (Javelot de glace)] |cRXP_WARN_comme il s'agit du niveau requis pour obtenir le|r |T133736:0|t[Manuel de compréhension]
    >>|cRXP_WARN_Vous devez gagner en niveau avant d'essayer d'obtenir|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .train 401760,1
    .xp >2,1
step
    #optional
    #completewith next
    .zone Tirisfal Glades >> Voyagez aux Clairières de Tirisfal
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Entrez dans la chapelle du Glas
    .train 401760,1
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .accept 77671 >>Acceptez la quête Recherches sur les sorts
    .target Isabella
    .xp <2,1
step
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>Tuez les |cRXP_ENEMY_Initiés écarlates|r. Dépouillez-les pour les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : ALEEV DJEG LTACO]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Javelot de glace)]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Entrez dans la chapelle du Glas
    .isQuestComplete 77671
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Rendez la quête Recherches sur les sorts
    .target Isabella
    .isQuestComplete 77671
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Régénération - 12 (Marche de l'Ouest)
#title Régénération

<< Alliance Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins au niveau 12 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Régénération)] |cRXP_WARN_dans la Marche de l'Ouest uniquement|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Téléportez-vous à Hurlevent
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Entrez dans la boutique Apothicaires Pilon
    .train 401767,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Boucher|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401767,1
step
    #completewith next
    .zone Westfall >>Voyagez vers les Marches de l'Ouest
    .train 401767,1
step
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>Tuez les |cRXP_ENEMY_Pilleurs défias|r. Dépouillez-les pour les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : NIGÉO NÉRÉRAT]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : NIGÉO NÉRÉRAT]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Régénération)]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Régénération - 13 (Loch Modan)
#title Régénération

<< Alliance Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins de niveau 13 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Régénération)] |cRXP_WARN_dans le Loch Modan uniquement|r
    .train 401767,1
    .xp >13,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Voyagez à Ironforge
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entrez dans la maison de |cRXP_FRIENDLY_Ginny Longberry|r
    .train 401767,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ginny Longuebaie|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401767,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Voyagez jusqu'au Loch Modan
    .train 401767,1
step
    #optional
    #requires Loch1
    #completewith next
    .goto 1432,54.33,26.82,5 >> Entrez dans la tente
    .train 401767,1
step
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Ouvrez la |cRXP_PICK_Pile de livres dérobés|r à l'intérieur. Récupérez-y les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : NIGÉO NÉRÉRAT]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Régénération)]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Régénération - 12 (Les Tarides)
#title Régénération

<< Horde Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins au niveau 12 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Régénération)] |cRXP_WARN_dans les Tarides uniquement|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Commissaire-priseur Wabang|r
    >>|cRXP_BUY_Achetez une|r |T134237:0|t[Clé du butin des Kolkar] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Cela vous permettra de gagner quelques minutes plus tard|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 401767,1
step
    #optional
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Achetez une|r |T134237:0|t[Clé du butin des Kolkar] |cRXP_BUY_à l'Hôtel des ventes|r
    >>|cRXP_WARN_Cela vous permettra de gagner quelques minutes plus tard|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 401767,1
step
    #completewith Regeneration
    .zone The Barrens >>Voyagez jusqu'aux Tarides
    .train 401767,1
step
    .goto 1413,51.393,30.203
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hula'mahi|r
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Hula'mahi
    .train 401767,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Tuez les |cRXP_ENEMY_Querelleurs kolkars|r et les |cRXP_ENEMY_Légion-tempêtes kolkars|r. Dépouillez-les pour une |T134237:0|t[Clé du butin des Kolkar]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 401767,1
step
    #label Regeneration
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--   .goto The Barrens,44.33,37.66,-1
    >>Ouvrez le |cRXP_PICK_Butin des Kolkar|r au sol. Dépouillez-le pour obtenir les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r] |cRXP_WARN_pour apprendre|r |T132869:0|t[Régénération.]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Régénération - 12 (Forêt des Pins-argentés)
#title Régénération
<< Horde Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins au niveau 12 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Régénération)] |cRXP_WARN_uniquement seul et dans la Forêt des Pins-argentés|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Voyagez à Fossoyeuse
    .train 401767,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401767,1
step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
    .train 401767,1
step
    #loop
    .goto 1421,52.375,56.808,0
    .goto 1421,49.614,60.886,0
    .goto 1421,51.556,64.300,0
    .goto 1421,52.689,71.258,0
    .goto 1421,52.375,56.808,45,0
    .goto 1421,51.644,57.939,45,0
    .goto 1421,50.539,59.184,45,0
    .goto 1421,50.826,59.697,45,0
    .goto 1421,50.053,60.021,45,0
    .goto 1421,49.614,60.886,45,0
    .goto 1421,50.449,60.894,45,0
    .goto 1421,50.914,61.289,45,0
    .goto 1421,51.749,61.612,45,0
    .goto 1421,50.566,62.991,45,0
    .goto 1421,51.556,64.300,45,0
    .goto 1421,52.412,63.834,45,0
    .goto 1421,51.969,65.028,45,0
    .goto 1421,52.850,66.113,45,0
    .goto 1421,51.986,66.138,45,0
    .goto 1421,52.689,71.258,45,0
    >>Tuez les |cRXP_ENEMY_Apprenti de Dalaran|r. Dépouillez-les pour les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : NIGÉO NÉRÉRAT]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : NIGÉO NÉRÉRAT|r] |cRXP_WARN_pour apprendre|r |T132869:0|t[Régénération.]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Doigts de givre - 10 (Forêt d'Elwynn)
#title Doigts de givre

<< Alliance Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins de niveau 10 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Doigts de givre)] |cRXP_WARN_seul dans la Forêt d'Elwynn|r
    .train 401765,1
    .xp >10,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >> Téléportez-vous à Hurlevent
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Entrez dans la boutique Apothicaires Pilon
    .train 401765,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Boucher|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401765,1
step
    #completewith next
    .zone Elwynn Forest >>Voyagez à la Forêt d'Elwynn
    .train 401765,1
step
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,25.2,92.7,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Tuez le |cRXP_ENEMY_Lardeur|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .unitscan Hogger
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Doigts de givre)]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Doigts de givre - 5 (Dun Morogh)
#title Doigts de givre
<< Alliance Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins de niveau 5 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Doigts de givre)] |cRXP_WARN_dans Dun Morogh seul|r
    .train 401765,1
    .xp >5,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Voyagez à Ironforge
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entrez dans la maison de |cRXP_FRIENDLY_Ginny Longberry|r
    .train 401765,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ginny Longuebaie|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401765,1
step
    #completewith next
    .zone Dun Morogh >>Voyagez vers Dun Morogh
    .train 401765,1
step
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Tuez le |cRXP_ENEMY_Fyogi|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]
    >>|cRXP_WARN_Bien que |cRXP_ENEMY_Fyodi|r s'affiche en tant qu'élite, ses points de vie, dégâts et valeurs d'armure correspondent à ceux d'un mob Normal|r
    >>|cRXP_WARN_Attention, il lance|r |T132337:0|t[Charge] |cRXP_WARN_(Instantané : Augmente la vitesse de déplacement pendant 3 secondes, infligeant 35-80 dégâts de mêlée en touchant. Uniquement à distance)|r
    >>|cRXP_WARN_NOTE : Les |r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_peuvent aussi tomber sur chaque mob rare à Dun Morogh, ainsi que |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Griffe galeuse|r, et le|r |cRXP_ENEMY_Vieux Barbeglace|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fyodi
    .train 401765,1
    .xp >10,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tuez |cRXP_ENEMY_Vagash|r. Dépouillez-le pour les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r
    >>|cRXP_WARN_NOTE : Les |r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_peuvent aussi tomber sur chaque mob rare à Dun Morogh, ainsi que |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Griffe galeuse|r, et le|r |cRXP_ENEMY_Vieux Barbeglace|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Vagash
    .train 401765,1
    .xp <10,1
step
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Doigts de givre)]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Doigts de givre - 8 (Clairières de Tirisfal)
#title Doigts de givre
<< Horde Mage SoD


step
    +|cRXP_WARN_Vous devrez être au moins de niveau 8 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Doigts de givre)] |cRXP_WARN_dans les Clairières de Tirisfal|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >> Voyagez à Fossoyeuse
    .train 401765,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401765,1
step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
    .train 401765,1
step
    #optional
    #completewith next
    .goto 1420,28.649,46.992,40,0
    .goto 1420,27.849,46.734,40,0
    .goto 1420,27.076,46.855,40,0
    .goto 1420,26.213,47.473,40,0
    .goto Tirisfal Glades,25.53,48.39,60 >>Dirigez-vous vers |cRXP_ENEMY_Branchiar|r
step
    .goto Tirisfal Glades,25.53,48.39
    >>Tuez le |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : GDDOT EG IEVSIR|r]
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Gillgar
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Doigts de givre)]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Doigts de givre - 8 (Durotar)
#title Doigts de givre


step
    +|cRXP_WARN_Vous devrez être au moins de niveau 8 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Doigts de givre)] |cRXP_WARN_uniquement dans Durotar|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #completewith next
    .zone Orgrimmar >> Voyagez à Orgrimmar
    .train 401765,1
step
    #label Comprehension
    .goto 1454,45.439,56.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Horthus|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Horthus
    .train 401765,1
step
    #completewith next
    .zone Durotar >>Voyagez à Durotar
    .train 401765,1
step
    .goto 1411,66.936,87.360,40,0
    .goto 1411,67.376,86.710,40,0
    .goto 1411,67.502,87.618
    >>Tuez |cRXP_ENEMY_Zalazane|r. Dépouillez-le pour les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Zalazane
    .train 401765,1
    .xp >12,1
step
    .goto 1411,42.123,26.666,40,0
    .goto 1411,42.654,26.448,40,0
    .goto 1411,42.123,26.666
    >>Tuez |cRXP_ENEMY_Fizzle Darkstorm|r. Dépouillez-le pour les |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fizzle Darkstorm
    .train 401765,1
    .xp <12,1
step
    .train 401765 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : GDDOT EG IEVSIR]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Doigts de givre)]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Incandescence - 6 (Dun Morogh)
#title Incandescence

<< Alliance Mage SoD


step
    +|cRXP_WARN_Vous devrez être au moins de niveau 6 afin d'obtenir|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)] |cRXP_WARN_avec un autre joueur à Dun Morogh|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Dun Morogh >>Voyagez vers Dun Morogh
    .train 401759,1
step
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Cherchez d'autres mages ou démonistes près du |cRXP_ENEMY_Trogg gelé|r ou dans le channel de Discussion générale (tapez /1 dans le chat)|r
    >>|cRXP_WARN_Lancez|r |T135812:0|t[Boule de feu] |cRXP_WARN_sur le |cRXP_ENEMY_Trogg gelé|r pour appliquer un stack de|r |T135805:0|t[Application de chaleur]|cRXP_WARN_. Appliquez 5 charges à la fois pour tuer le |cRXP_ENEMY_Trogg gelé|r. Dépouillez-le pour les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step
    .train 401759 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Incandescence - 6 (Forêt d'Elwynn)
#title Incandescence

<< Alliance Mage SoD

step
    +|cRXP_WARN_Vous devrez être au moins de niveau 6 afin d'obtenir|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)] |cRXP_WARN_avec un autre joueur dans la Forêt d'Elwynn|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Elwynn Forest >>Voyagez à la Forêt d'Elwynn
    .train 401759,1
step
    .goto 1429,77.015,51.901
    >>|cRXP_WARN_Cherchez d'autres mages ou démonistes près du |cRXP_ENEMY_Murloc gelé|r ou dans le channel de Discussion générale (tapez /1 dans le chat)|r
    >>|cRXP_WARN_Lancez|r |T135812:0|t[Boule de feu] |cRXP_WARN_sur le |cRXP_ENEMY_Murloc gelé|r pour appliquer un stack de|r |T135805:0|t[Application de chaleur]|cRXP_WARN_. Appliquez 5 charges à la fois pour tuer le |cRXP_ENEMY_Murloc gelé|r. Dépouillez-le pour les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Incandescence - 6 (Durotar)
#title Incandescence

<< Horde Mage SoD

step
    +|cRXP_WARN_Vous devrez être au moins de niveau 6 afin d'obtenir|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)] |cRXP_WARN_avec un autre joueur à Durotar|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Durotar >>Voyagez à Durotar
    .train 401579,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Cherchez d'autres mages, démonistes ou chamans près du |cRXP_ENEMY_Makrura gelé|r ou dans le channel de Discussion générale (tapez /1 dans le chat)|r
    >>|cRXP_WARN_Lancez|r |T135812:0|t[Boule de feu] |cRXP_WARN_sur le |cRXP_ENEMY_Makrura gelé|r pour appliquer un stack de|r |T135805:0|t[Application de chaleur]|cRXP_WARN_. Appliquez 5 charges à la fois pour tuer le |cRXP_ENEMY_Makrura gelé|r. Dépouillez-le pour les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .mob Frozen Makrura
    .train 401579,1
step
    .train 401759 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Incandescence - 6 (Clairières de Tirisfal)
#title Incandescence

<< Horde Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins de niveau 6 afin d'obtenir|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)] |cRXP_WARN_dans les Clairières de Tirisfal avec un autre joueur|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
    .train 401759,1
step
    .goto 1420,66.337,40.059
    >>|cRXP_WARN_Cherchez d'autres mages ou démonistes près du |cRXP_ENEMY_Murloc gelé|r ou dans le channel de Discussion générale (tapez /1 dans le chat)|r
    >>|cRXP_WARN_Lancez|r |T135812:0|t[Boule de feu] |cRXP_WARN_sur le |cRXP_ENEMY_Murloc gelé|r pour appliquer un stack de|r |T135805:0|t[Application de chaleur]|cRXP_WARN_. Appliquez 5 charges à la fois pour tuer le |cRXP_ENEMY_Murloc gelé|r. Dépouillez-le pour les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Utilisez les|r |T134939:0|t|cRXP_FRIENDLY_[Notes de sort : Incandescence]|r |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Ardeur épuisante)]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Illumination - 8 (Forêt d'Elwynn)
#title Illumination

<< Alliance Mage SoD


step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 8 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Illumination)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T136071:0|t[Métamorphose]
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Illumination)]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Elwynn Forest >>Voyagez à la Forêt d'Elwynn
    .train 415942,1
    .xp <8,1
step
    #optional
    #completewith next
    .goto 1429,43.133,65.740,8,0
    .goto 1429,43.226,65.953,8,0
    .goto 1429,43.824,66.361,8 >>Entrez dans l'auberge de Goldshire. Montez à l'étage
    .train 415942,1
    .xp <8,1
step
    .goto 1429,43.248,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .train 118 >> Apprenez [Métamorphone]
    .target Zaldimar Wefhellt
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1429,49.68,73.74,0
    .goto 1429,79.92,64.51,0
    .goto 1429,83.61,83.86,0
    .goto 1429,77.54,40.05,0
    .goto 1429,83.67,83.53,0
    .goto 1429,49.68,73.74,40,0
    .goto 1429,49.04,55.23,40,0
    .goto 1429,58.93,59.8,40,0
    .goto 1429,62.95,63.3,40,0
    .goto 1429,70.46,63.41,40,0
    .goto 1429,79.92,64.51,40,0
    .goto 1429,85.79,65.94,40,0
    .goto 1429,82.89,70.69,40,0
    .goto 1429,79.07,79.02,40,0
    .goto 1429,82.61,86.35,40,0
    .goto 1429,83.61,83.86,40,0
    .goto 1429,87.27,82.16,40,0
    .goto 1429,90.67,77.25,40,0
    .goto 1429,86.02,66.26,40,0
    .goto 1429,80.6,50.21,40,0
    .goto 1429,77.54,40.05,40,0
    .goto 1429,73.96,41.08,40,0
    .goto 1429,65.67,41.75,40,0
    .goto 1429,58.87,59.97,40,0
    .goto 1429,79.37,78.84,40,0
    .goto 1429,83.67,83.53,40,0
    >>Lancez |T136071:0|t[Métamorphose] sur les bestioles inhabituelles suivantes: les |cRXP_ENEMY_Gazelles|r, les |cRXP_ENEMY_Asticots|r, les |cRXP_ENEMY_Perroquets|r, les |cRXP_ENEMY_Hannetons de feu|r, les |cRXP_ENEMY_Béliers|r, les |cRXP_ENEMY_Larves|r et les |cRXP_ENEMY_Chats|r. Attendez la fin du RP
    >>Ouvrez les |cRXP_PICK_Notes de sort|r au sol. Récupérez-y les |T134332:0|t|cRXP_LOOT_[Notes d'apprenti Azora]|r
    .collect 204864,6 --Azora Apprentice Notes (6)
    .mob Gazelle
    .mob Maggot
    .mob Parrot
    .mob Fire Beetle
    .mob Ram
    .mob Larva
    .mob Cat
    .train 415942,1
    .xp <8,1
step
    >>Utilisez les |T134332:0|t|cRXP_LOOT_[Notes d’apprenti Azora]|r pour créer les |T134332:0|t|cRXP_FRIENDLY_[Notes de sort : Illumination]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 204864
    .train 415942,1
    .xp <8,1
step
    .train 415942 >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_FRIENDLY_[Notes de sort : Illumination]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Illumination)]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Illumination - 8 (Clairières de Tirisfal)
#title Illumination

<< Horde Mage SoD

step
    +|cRXP_WARN_Vous DEVEZ être au moins de niveau 8 afin d'obtenir|r |T133815:0|t[Gravure de plastron (Illumination)] |cRXP_WARN_comme il s'agit du niveau requis pour apprendre|r |T136071:0|t[Métamorphose]
    >>|cRXP_WARN_Vous devez encore gagner des niveaux avant d'obtenir|r |T133815:0|t[Gravure de plastron (Illumination)]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
    .train 415942,1
step
    #optional
    #completewith next
    .goto 1420,61.619,52.856,8,0
    .goto 1420,61.734,52.720,8,0
    .goto 1420,61.958,52.066,8 >>Entrez dans l'auberge de Brill. Montez à l'étage
    .train 415942,1
    .xp <8,1
step
    .goto 1420,61.972,52.476
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cain Firesong|r
    .train 118 >> Apprenez [Métamorphone]
    .target Cain Firesong
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1420,58.840,58.321,0
    .goto 1420,52.861,57.885,0
    .goto 1420,47.292,50.612,0
    .goto 1420,58.840,58.321,30,0
    .goto 1420,54.062,60.058,30,0
    .goto 1420,53.920,58.332,30,0
    .goto 1420,54.000,56.767,30,0
    .goto 1420,52.861,57.885,30,0
    .goto 1420,51.611,57.241,30,0
    .goto 1420,50.303,61.941,30,0
    .goto 1420,49.885,59.576,30,0
    .goto 1420,50.073,50.644,30,0
    .goto 1420,49.573,46.473,30,0
    .goto 1420,47.292,50.612,30,0
    >>Lancez |T136071:0|t[Métamorphose] sur les |cRXP_ENEMY_Melons étranges|r, puis attendez la fin du RP
    >>Ramassez les |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r par terre
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
step
    >>Utilisez le |T134332:0|t|cRXP_LOOT_[Notes de l’apothicaire]|r pour créer les |T134332:0|t|cRXP_FRIENDLY_[Notes de sort : Illumination]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
step
    .train 415942 >>|cRXP_WARN_Utilisez les|r |T134332:0|t|cRXP_FRIENDLY_[Notes de sort : Illumination]|r |cRXP_WARN_pour apprendre|r |T133815:0|t[Gravure de plastron (Illumination)]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
]])

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Guide des runes et des livres
<<Alliance Mage SoD
#subgroup Pantalon/Bottes/Casque
#name Veines glaciales/Puissance des sorts/Congélation - 40 (Azeroth)
#title Veines glaciales & Puissance des sorts & Congélation

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.
--QQQ WIP to here

step
    .zone Stormwind City >> Voyagez à |cFFfa9602Stormwind.|r
    .cast 3561 >>Utilisez [Téléportation : Stormwind] |cRXP_WARN_si vous avez|r une |T134419:0|t[Rune de téléportation]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >> Achetez une |T134419:0|t[Rune de téléportation] auprès d'un |cRXP_FRIENDLY_Marchand de composants, Marchandises Arcaniques, Parchemins et Potions|r |cRXP_WARN_Cela vous permettra de réduire grandement vos trajets.|r
    >>|cRXP_WARN_Passez manuellement cette étape si vous voulez continuer sans.|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523,209846 >> |cRXP_WARN_Regardez dans votre banque si vous avez n'importe lequel des livres qui devaient y être déposé|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >> |cRXP_WARN_Nous vous recommandons fortement de réparez votre équipement, comme vous allez mourir pour effectuer des deathskips.|r
    >>|cFFFF0000Si vous préférez ne pas faire de deathskip, passez manuellement cette étape.|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    >>Cliquez sur le |cRXP_PICK_Livre de la bibliothèque|r se trouvant |cFFfa9602sur une étagère dans la Forêt d'Elwynn|r afin d'obtenir |T133744:0|t[Journal de recherche de l’archimage Théocritus.]
    .collect 203755,1
    .isQuestAvailable 79092
step
    #completewith Rumi of Gnomeregan the Collected Works
    .zone Westfall >>Voyagez à la |cFFfa9602Marche de l'Ouest|r à pied si vous êtes |cRXP_WARN_dans la|r |cFFfa9602Forêt d'Elwynn.|r|r
    .fly Westfall >>Prenez un trajet aérien pour la |cFFfa9602Marche de l'Ouest|r si vous |cRXP_WARN_n'êtes pas dans la|r |cFFfa9602Forêt d'Elwynn.|r|r
    .disablecheckbox
    .isQuestAvailable 79093
-- step
--     #completewith Rumi of Gnomeregan the Collected Works
--
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
--     >>|cRXP_WARN_manually skip this step if you are on a flightpath.|r
--     .isQuestAvailable 79092
step
    #label Rumi of Gnomeregan the Collected Works
    .goto 1436,53.01,53.34,10,0
    .goto 1436,52.64,53.83
    >>Cliquez sur le |cRXP_PICK_Tome gnome|r |cFFfa9602sur la table de l'auberge des Paluns|r afin d'obtenir |T133744:0|t[Rumi de Gnomeregan : Le recueil d’œuvres]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as a gnome.
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Voyagez à la |cFFfa9602Marche de l'Ouest|r |cRXP_WARN_en prenant un trajet aérien|r.
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Cliquez sur le |cRXP_PICK_Grimoire|r situé |cFFfa9602dans l'armoire de l'Alchimiste dans une petite maison à Ruisselune dans la Marche de l'Ouest|r afin d'obtenir |T133733:0|t[Envoûtements et glamours.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Voyagez au |cFFfa9602Bois de la Pénombre|r
    .fly Westfall >>Prenez un trajet aérien pour les |cFFfa9602Marches de l'Ouest|r |cRXP_WARN_si vous l'avez disponible et vous n'y êtes pas déjà|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Cliquez sur le |cRXP_PICK_Livre|r |cFFfa9602 sur la table d'alchimie à l'intérieur des Catacombes du Bois-de-l'aube dans le Bois de la Pénombre|r afin d'obtenir |T133738:0|t[Crimes contre l’anatomie.]
    >>|cRXP_WARN_Nous vous recommandons d'aller tout au bout des catacombes et de mourir. De plus, vous pourriez envisager de le faire avec un groupe|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au |cFFfa9602Marais des Chagrins|r
    .fly Swamp of Sorrows >>Prenez un trajet aérien pour le |cFFfa9602Marais des Chagrins|r |cRXP_WARN_si vous l'avez disponible et que vous n'y êtes pas déjà|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Tuez le |cRXP_ENEMY_Chasseur Perdu|r, le |cRXP_ENEMY_Marche-boue Perdu|r, le |cRXP_ENEMY_Cuisinier perdu|r et le |cRXP_ENEMY_Prophète Perdu|r. Dépouillez-les pour la |cRXP_LOOT_|T237379:0|t[Clé de la cage rouillée]|r.
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Cliquez sur la |cRXP_PICK_Clé de la cage rouillée|r pour obtenir le Livre |T133742:0|t[Le soin des familiers démoniaques pour les pas doués]
    .collect 215824,1
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,70,51
    >>Cliquez sur le |cRXP_PICK_Livre|r pour obtenir |T133738:0|t[Sorcellerie sanguine]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Voyagez aux |cFFfa9602Terres foudroyées|r
    .fly Blasted Lands >>Prenez un trajet aérien pour les |cFFfa9602Terres Foudroyées|r |cRXP_WARN_si vous l'avez disponible et vous n'y êtes pas déjà|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Cliquez sur le |cRXP_PICK_Livre|r pour obtenir le |T133736:0|t[Codex d'adjurateur]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Voyage vers la |cFFfa9602Vallée de Strangleronce|r
    .fly Stranglethorn Vale >>Prenez un trajet aérien vers la |cFFfa9602Vallée de Strangleronce|r |cRXP_WARN_si vous l'avez débloqué|r.
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Cliquez sur les |cRXP_PICK_Notes de recherche|r sur le banc pour recevoir le Livre |T237162:0|t[Les basilics : faut-il avoir peur de se faire pétrifier ?]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Voyagez vers la |cFFfa9602Gorge des Vents brûlants|r
    .fly Searing Gorge >>Prenez le trajet aérien vers la |cFFfa9602Gorge des Vents brûlants|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir le |T133743:0|t[Plan de Formepierre]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Voyagez vers la |cFFfa9602Gorge des Vents brûlants|r
    .fly Searing Gorge >>Prenez le trajet aérien vers la |cFFfa9602Gorge des Vents brûlants|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir le |T133743:0|t[Plan de Formepierre]
    .collect 220349,1
    .isQuestAvailable 81953
step
    .zone Ironforge >>Voyagez |cFFfa9602à Ironforge.|r
    .cast 3562 >>Utilisez [Téléportation : Ironforge] |cRXP_WARN_si vous avez une|r |T134419:0|t[Rune de téléportation]
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >> |cRXP_WARN_Nous vous recommandons fortement de réparez votre équipement, comme vous allez mourir pour effectuer des deathskips.|r
    >>|cFFFF0000Si vous préférez ne pas faire de deathskip, passez manuellement cette étape.|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    >>Cliquez sur le |cRXP_PICK_Livre de la bibliothèque|r |cFFfa9602sur la table au Hall des Explorateurs à Ironforge|r afin d'obtenir |T133744:0|t[Archimage Antonidas : L’autobiographie intégrale.]
    .collect 203754,1
    .isQuestAvailable 79091
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zone Loch Modan >>Voyagez vers le |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Prenez un trajet aérien vers le |cFFfa9602Loch Modan|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79093
step
    .goto 1432,35.2,47.76,10,0
    .goto 1432,35.5,48.98
    >>Cliquez sur le |cRXP_PICK_Tome gnome|r |cFFfa9602sur la table de l'auberge de Loch Modan|r afin d'obtenir |T133744:0|t[Rumi de Gnomeregan : Le recueil d’œuvres]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zoneskip Loch Modan
    .zone Loch Modan >>Voyagez vers le |cFFfa9602Loch Modan.|r
    .fly Loch Modan >>Prenez un trajet aérien pour le |cFFfa9602Loch Modan|r |cRXP_WARN_si vous l'avez.|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    >>Cliquez sur le |cRXP_PICK_Parchemin|r dans la |cFFfa9602Caverne des ogres élite du Loch Modan|r afin d'obtenir |T134938:0|t[Runes des rois-sorciers.]
    >>|cRXP_WARN_Il est recommandé d'aller au fond de la grotte et de mourir. De plus, pensez à le faire en groupe|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .deathskip >>Mourez et ressuscitez au |cFF00FF25Gardien des âmes|r |cRXP_WARN_De plus, passez volontairement les deathskips si vous voulez économiser des frais de réparation !|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zone Badlands >>Voyagez aux |cFFfa9602Terres Ingrates|r
    .fly >> Pour un trajet aérien pour les |cFFfa9602Terres ingrates (Badlands)|r |cRXP_WARN_si vous l'avez débloqué|r.
    .disablecheckbox
    .isQuestAvailable 79951
step
    #label Goaz Scrolls
    .goto Badlands,56.7,39.9
    >>Cliquez sur le Livre |T134937:0|t[Les Momies : le guide des morts-vivants répugnants]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .fly Menethil Harbor >>Volez au |cFFfa9602Port de Menethil|r
    .isQuestAvailable 78146
step
    .goto 1437,33.61,47.82
    >>Cliquez sur le |cRXP_PICK_Parchemin|r |cFFfa9602 dans la vase aux Paluns|r pour obtenir les |T237450:0|t[Parchemins de Goaz.]
    .collect 209848,1
    .isQuestAvailable 78146
-- step
--     #loop
--     .goto 1437,32.93,49.21,15,0
--     .goto 1437,34.1,49.75,15,0
--     .goto 1437,35.45,49.47,15,0
--     .goto 1437,35.41,47.44,15,0
--     .goto 1437,35.62,45.27,15,0
--     .goto 1437,34.2,43.89,15,0
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
--     .isQuestAvailable 78146
--     .zoneskip Ironforge
step
    .zoneskip Ironforge
    .goto Wetlands,8.0,55.8
    .vendor >> |cRXP_WARN_Nous vous recommandons fortement de réparez votre équipement, comme vous allez mourir pour effectuer des deathskips.|r
    >>|cFFFF0000Si vous préférez ne pas faire de deathskip, passez manuellement cette étape.|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .zone Darkshore >>Voyagez à |cFFfa9602Sombrivage|r en prenant le bateau.
    .fly Menethil Harbor >>Volez au |cFFfa9602Port de Menethil|r |cRXP_WARN_si vous n'y êtes pas encore.|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .deathskip >>Noyez-vous pour mourir et ressuscitez au |cFF00FF25Gardien des âmes|r |cRXP_WARN_De plus, passez volontairement les deathskips si vous voulez économiser des frais de réparation !|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Cliquez sur le |cRXP_PICK_Parchemin|r à |cFFfa9602Sombrivage|r afin d'obtenir |T237447:0|t[Almanach de Nar’thalas vol. 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Everyday Etiquette
    .goto 1439,59.35,22.55
    .isQuestAvailable 78146
    .deathskip >>Mourez et ressuscitez au |cFF00FF25Gardien des âmes|r
step
    #completewith Everyday Etiquette
    .isQuestAvailable 81952
    .zone Azshara >>Voyagez à |cFFfa9602Azshara|r
    .fly Ashenvale >>Volez à |cFFfa9602Ashenvale|r
    .disablecheckbox
step
    #label Everyday Etiquette
    .goto Azshara,20.7,62
    >>Cliquez sur |cRXP_PICK_Livre|r afin d'obtenir l' |T133740:0|t[Étiquette quotidienne]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .isQuestAvailable 78146
    .zone Stonetalon Mountains >>Voyagez aux |cFFfa9602Serres-Rocheuses|r |cRXP_WARN_à pied si vous n'avez débloqué aucun de ces trajets|r
    .fly Stonetalon Mountains >>Voles aux |cFFfa9602Serres-Rocheuses|r |cRXP_WARN_si vous débloqué le trajet aérien.|r
    .disablecheckbox
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Cliquez sur le |cRXP_PICK_Parchemin|r |cFFfa9602 dans la tente, situé sur un tonneau aux Serres-Rocheuses|r afin d'obtenir |T133209:0|t[Fureur de la terre.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .zone Desolace >>Voyagez à |cFFfa9602Désolace|r
    .fly Desolace >>Prenez un trajet aérien pour |cFFfa9602Désolace|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Cliquez sur le |cRXP_PICK_Parchemin|r pour recevoir le livre |T133733:0|t[Les démons et vous]r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Voyagez aux |cFFfa9602Tarides|r |cRXP_WARN_à pied si vous n'avez pas le chemin de vol.|r
    .fly Ratchet >>Prenez un trajet aérien pour |cFFfa9602Ratchet|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Cliquez sur le |cRXP_PICK_Tome gobelin|r |cFFfa9602à Ratchet à côté de|r |cRXP_FRIENDLY_Gazleu|r afin d'obtenir |T133744:0|t[Baxtan : Sur les magies destructrices]
    .collect 208800,1
    .isQuestAvailable 79097
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Cliquez sur le |cRXP_PICK_Parchemin|r qui se trouve |cFFfa9602au sol près du portail des Cavernes des Lamentations dans les Tarides|r afin d'obtenir |T135142:0|t[Secrets des Rêveurs.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith next
    .goto 1414,52.83,54.71
    .deathskip >>Mourez et ressuscitez au |cFF00FF25Gardien des âmes|r
    .isQuestAvailable 78143
step
    .goto The Barrens,56.3,8.8
    >>Cliquez sur le |cRXP_PICK_Manuel|r |cFFfa9602au sommet de la plateforme pétrolière dans les Tarides|r afin d'obtenir le |T134509:0|t[Manuel des systèmes arcaniques.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Dustwallow Marsh >>Voyagez au |cFFfa9602Marécage d'Âprefange|r
    .fly Dustwallow Marsh >>Prenez un trajet aérien pour le |cFFfa9602Marécage d'Âprefange|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Cliquez sur |cRXP_PICK_Livre détrempé|r pour recevoir le livre |T133740:0|t[RwlRwlRwlRwl !].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
    .fly Thousand Needles >>Prenez un trajet aérien pour les |cFFfa9602Mille pointes|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Cliquez sur le |cRXP_PICK_Parchemin|r pour recevoir le livre |T133740:0|t[Géomancie : une montagne de puissance] à l'intérieur de la tente près d'un sac.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Voyagez à |cFFfa9602Tanaris|r
    .fly Tanaris >>Prenez un trajet aérien pour |cFFfa9602Tanaris|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir |T134941:0|t[Légendes des Eaugures]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Ironforge >>Voyagez |cFFfa9602à Ironforge.|r
    .cast 3562 >>Utilisez |T135757:0|t[Téléportation : Ironforge] |cRXP_WARN_si vous avez une|r |T134419:0|t[Rune de téléportation]
    .disablecheckbox
step
    #completewith next
    .isQuestAvailable 78127
    -- .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r primarily on foot.
    -- .fly Hillsbrad Foothills >> |cRXP_WARN_Fly to Hillsbrad Foothills if you have the flight path unlocked.|r
    -- .disablecheckbox
    .fly Arathi Highlands >> |cRXP_WARN_Volez aux Hautes-terres Arathies si vous n'avez pas débloqué le chemin de vol de Hillsbrad.|r
    .disablecheckbox
    .fly Wetlands >> |cRXP_WARN_Volez aux Paluns si vous n'avez pas débloqué les Hautes-terres Arathies.|r
    .disablecheckbox
step
    #completewith next
    .zone Arathi Highlands >>Voyagez aux |cFFfa9602Hautes-terres Arathies|r
    .fly Arathi Highlands >>Prenez un trajet aérien pour |cFFfa9602les Hautes-terres Arathies|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Cliquez sur le |cRXP_PICK_Parchemin|r pour recevoir le Livre |T134331:0|t[Un tissage de mensonges : mythes et légendes démystifiés]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone The Hinterlands >>Voyagez aux |cFFfa9602Hinterlands|r
    .fly The Hinterlands >>Prenez un trajet aérien pour les |cFFfa9602Hinterlands|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36,72.7
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir |T134942:0|t[Voyages venimeux]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Alterac Mountains >>Voyagez aux |cFFfa9602Montagnes d'Alterac|r
    .fly Alterac Mountains >>Prenez un trajet aérien pour les |cFFfa9602Montagnes d'Alterac|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Cliquez sur le |cRXP_PICK_Manuel|r dans la tour sur des caisses afin d'obtenir le Livre |T133736:0|t[Les bases de la magie défensive].
    .collect 215815,1
    .isQuestAvailable 79948
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Cliquez sur le |cRXP_PICK_Livre|r |cFFfa9602sur une étagère à l'intérieur du château principal de Moulin-de-l'Ambre dans la Forêt des Pins-argentés|r afin d'obtenir |T134917:0|t[Abrégé de Dalaran vol. 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step
    .zone Stormwind City >>Voyagez à |cFFfa9602Stormwind.|r
    .cast 3561 >>Utilisez [Téléportation : Stormwind] |cRXP_WARN_si vous avez|r une |T134419:0|t[Rune de téléportation]
    .disablecheckbox
step
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602dans la tour des mages à Stormwind|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Rendez la quête Almanach de Nar’thalas
    .accept 78127 >>Rendez la quête Abrégé de Dalaran
    .accept 78142 >>Rendez la quête Envoûtements et glamours
    .accept 78143 >>Rendez la quête Secrets des Rêveurs
    .accept 78145 >>Rendez la quête Manuel des systèmes arcaniques
    .accept 78146 >>Rendez la quête Parchemins de Goaz
    .accept 78147 >>Rendez la quête Crimes contre l’anatomie
    .accept 78148 >>Rendez la quête Runes des rois-sorciers
    .accept 78149 >>Rendez la quête Fureur de la terre
    .accept 79091 >>Rendez la quête Archimage Antonidas : L’autobiographie intégrale
    .accept 79092 >>Rendez la quête Journal de recherche de l’archimage Théocritus
    .accept 79093 >>Rendez la quête Rumi de Gnomeregan : Le recueil d’œuvres
    .accept 79094 >>Rendez la quête Les leçons de Ta’zo
    .accept 79095 >>Rendez la quête L’Abécédaire métaphysique de l’apothicaire
    .accept 79096 >>Rendez la quête Ataeric : À propos des curiosités des arcanes
    .accept 79097 >>Rendez la quête Baxtan : Sur les magies destructrices
    .accept 79535 >>Rendez la quête Les basilics : faut-il avoir peur de se faire pétrifier ?
    .accept 79947 >>Rendez la quête Géomancie : une montagne de puissance
    .accept 79948 >>Rendez la quête Les bases de la magie défensive
    .accept 77949 >>Rendez la quête Un tissage de mensonges : mythes et légendes démystifiés
    .accept 79950 >>Rendez la quête Les démons et vous
    .accept 79951 >>Rendez la quête Les Momies : le guide des morts-vivants répugnants
    .accept 79952 >>Rendez la quête RwlRwlRwlRwl !
    .accept 81947 >>Rendez la quête Sorcellerie sanguine
    .accept 81949 >>Rendez la quête Légendes des Eaugures
    .accept 81951 >>Rendez la quête Le Liminal et l’arcane
    .accept 81952 >>Rendez la quête Étiquette quotidienne
    .accept 81953 >>Rendez la quête Plan de Formepierre
    .accept 81954 >>Rendez la quête Voyages venimeux
    .accept 81955 >>Rendez la quête Un esprit métallique
    .accept 81956 >>Rendez la quête Codex d'adjurateur
    .accept 79953 >>Rendez la quête Le soin des familiers démoniaques pour les pas doués
    .accept 78150 >>Rendez la quête Ami de la bibliothèque
    .accept 79536 >>Rendez la quête Mécène de la bibliothèque
    .accept 82208 >>Rendez la quête Mécène de la bibliothèque
    .target Garion Wendell
step
    .goto Stormwind City,56.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Newton Burnside|r
    .bankdeposit 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Déposez les livres restants.|r
    .target Newton Burnside
]]

RXPGuides.RegisterGuide[[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Pantalon/Bottes
#subgroup Pantalon/Bottes/Casque
#name Veines glaciales/Puissance des sorts/Congélation - 40 (Azeroth)
#title Veines glaciales & Puissance des sorts & Congélation

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    #completewith next
    .zone Orgrimmar >>Voyagez à |cFFfa9602Orgrimmar|r
    .cast 3567 >>Utilisez [Téléportation : Orgrimmar] |cRXP_WARN_si vous avez|r une |T134419:0|t[Rune de téléportation]
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >> Achetez une |T134419:0|t[Rune de téléportation] auprès d'un |cRXP_FRIENDLY_Marchand de composants, Marchandises Arcaniques, Parchemins et Potions|r |cRXP_WARN_Cela vous permettra de réduire grandement vos trajets.|r
    >>|cRXP_WARN_Passez manuellement cette étape si vous voulez continuer sans.|r
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Banquier|r
    .bankwithdraw 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Regardez dans votre banque si vous avez n'importe lequel des livres qui devaient y être déposé|r
    .target Karus
    .target Komawa
    .target Soran
step
    .goto Orgrimmar,55.8,73.0
    .vendor >> |cRXP_WARN_Nous vous recommandons fortement de réparez votre équipement, comme vous allez mourir pour effectuer des deathskips.|r
    >>|cFFFF0000Si vous préférez ne pas faire de deathskip, passez manuellement cette étape.|r
step
    .goto 1454,38.66,78.43
    >>Cliquez sur la |cRXP_PICK_Pierre géante|r |cFFfa9602sur le mur d'Orgrimmar|r afin d'obtenir |T134938:0|t[Les leçons de Ta'zo.]
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .zone The Barrens >>Voyagez aux |cFFfa9602Tarides|r |cRXP_WARN_à pied si vous n'avez pas le chemin de vol.|r
    .fly Ratchet >>Prenez un trajet aérien pour |cFFfa9602Ratchet|r |cRXP_WARN_si vous l'avez débloqué.|r
    .fly Crossroads >>Prenez un trajet aérien pour |cFFfa9602la Croisée|r |cRXP_WARN_si vous n'avez pas celui de Ratchet.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Cliquez sur le |cRXP_PICK_Tome gobelin|r |cFFfa9602à Ratchet à côté de|r |cRXP_FRIENDLY_Gazleu|r afin d'obtenir |T133744:0|t[Baxtan : Sur les magies destructrices]
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .fly Crossroads >>Prenez un trajet aérien pour |cRXP_WARN_la Croisée|r si vous l'avez débloqué, |cRXP_WARN_sinon allez-y à pied.|r
    .disablecheckbox
    .isQuestAvailable 78143
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Cliquez sur le |cRXP_PICK_Parchemin|r qui se trouve |cFFfa9602au sol près du portail des Cavernes des Lamentations dans les Tarides|r afin d'obtenir |T135142:0|t[Secrets des Rêveurs.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>Mourez et ressuscitez au |cFF00FF25Gardien des âmes|r
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zone The Barrens >>Voyagez aux |cFFfa9602Tarides|r
    .fly Crossroads >>Prenez un trajet aérien pour |cRXP_WARN_la Croisée|r si vous l'avez débloqué, |cRXP_WARN_sinon allez-y à pied.|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto The Barrens,56.3,8.8
    >>Cliquez sur le |cRXP_PICK_Manuel|r |cFFfa9602au sommet de la plateforme pétrolière dans les Tarides|r afin d'obtenir le |T134509:0|t[Manuel des systèmes arcaniques.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Desolace >>Voyagez à |cFFfa9602Désolace|r
    .fly Desolace >>Prenez un trajet aérien pour |cFFfa9602Désolace|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Cliquez sur le |cRXP_PICK_Parchemin|r pour recevoir le livre |T133733:0|t[Les démons et vous]r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Voyagez aux |cFFfa9602Tarides|r |cRXP_WARN_à pied si vous n'avez pas le chemin de vol.|r
    .fly Ratchet >>Prenez un trajet aérien pour |cFFfa9602Ratchet|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    #completewith next
    .zone Stonetalon Mountains >>Voyagez aux |cFFfa9602Serres-Rocheuses|r à pied si vous êtes dans les |cFFfa9602Tarides|r
    .fly Stonetalon Mountains >>Prenez un trajet aérien depuis |cFFfa9602Orgrimmar|r si vous l'avez débloqué.
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Cliquez sur le |cRXP_PICK_Parchemin|r |cFFfa9602dans les Serres-Rocheuses|r afin d'obtenir |T133209:0|t[Fureur de la terre.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    .isQuestAvailable 81952
    .zone Azshara >>Voyagez à |cFFfa9602Azshara|r
    .fly Ashenvale >>Volez à |cFFfa9602Ashenvale|r
    .disablecheckbox
step
    .goto Azshara,20.7,62
    >>Cliquez sur |cRXP_PICK_Livre|r afin d'obtenir l' |T133740:0|t[Étiquette quotidienne]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .zone Darkshore >>Voyagez à |cFFfa9602Sombrivage|r à pied |cRXP_WARN_si vous n'avez aucun trajet de vol|r
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Cliquez sur le |cRXP_PICK_Parchemin|r à |cFFfa9602Sombrivage|r afin d'obtenir |T237447:0|t[Almanach de Nar’thalas vol. 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith next
    .zone Dustwallow Marsh >>Voyagez au |cFFfa9602Marécage d'Âprefange|r
    .fly Dustwallow Marsh >>Prenez un trajet aérien pour le |cFFfa9602Marécage d'Âprefange|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Cliquez sur |cRXP_PICK_Livre détrempé|r pour recevoir le livre |T133740:0|t[RwlRwlRwlRwl !].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
    .fly Thousand Needles >>Prenez un trajet aérien pour les |cFFfa9602Mille pointes|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Cliquez sur le |cRXP_PICK_Parchemin|r pour recevoir le livre |T133740:0|t[Géomancie : une montagne de puissance] à l'intérieur de la tente près d'un sac.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Voyagez à |cFFfa9602Tanaris|r
    .fly Tanaris >>Prenez un trajet aérien pour |cFFfa9602Tanaris|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir |T134941:0|t[Légendes des Eaugures]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Undercity >>Voyagez à |cFFfa9602Fossoyeuse|r
    .cast 3563 >>Utilisez [Téléportation : Undercity] |cRXP_WARN_si vous avez|r une |T134419:0|t[Rune de téléportation]
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >> |cRXP_WARN_Nous vous recommandons fortement de réparez votre équipement, comme vous allez mourir pour effectuer des deathskips.|r
    >>|cFFFF0000Si vous préférez ne pas faire de deathskip, passez manuellement cette étape.|r
step
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    >>Cliquez sur le |cRXP_PICK_Manuel de la Société des apothicaires|r |cFFfa9602à Brill dans les Clairières de Tirisfal, Brill|r afin d'obtenir |T133737:0|t[L’abécédaire métaphysique de l’apothicaire]
    .collect 208185,1
    .isQuestAvailable 79095
step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la |cFFfa9602Forêt des Pins-argentés|r à pied |cRXP_WARN_si vous êtes aux|r |cFFfa9602Clairières de Tirisfal.|r
    .fly Silverpine Forest >>Prenez un trajet aérien vers la |cFFfa9602Forêt des Pins-argentés|r |cRXP_WARN_si vous êtes à|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 79096
step
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    >>Cliquez sur les |cRXP_PICK_Secrets arcaniques|r |cFFfa9602à la Forêt des Pins-argentés|r afin d'obtenir |T133744:0|t[Ataeric : À propos des curiosités des arcanes.]
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la |cFFfa9602Forêt des Pins-argentés|r
    .fly Silverpine Forest >>Prenez un trajet aérien vers la |cFFfa9602Forêt des Pins-argentés|r |cRXP_WARN_si vous êtes à|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Cliquez sur le |cRXP_PICK_Livre|r |cFFfa9602à l'intérieur du château principal de Moulin-de-l'Ambre dans la Forêt des Pins-argentés|r afin d'obtenir |T134917:0|t[Abrégé de Dalaran vol. 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step
    #completewith next
    .zone Alterac Mountains >>Voyagez aux |cFFfa9602Montagnes d'Alterac|r
    .fly Alterac Mountains >>Prenez un trajet aérien pour les |cFFfa9602Montagnes d'Alterac|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Cliquez sur le |cRXP_PICK_Manuel|r dans la tour sur des caisses afin d'obtenir le Livre |T133736:0|t[Les bases de la magie défensive].
    .collect 215815,1
    .isQuestAvailable 79948
step
    #completewith next
    .zone The Hinterlands >>Voyagez aux |cFFfa9602Hinterlands|r
    .fly Hinterlands >>Prenez un trajet aérien pour les |cFFfa9602Hinterlands|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36.0,72.7
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir |T134942:0|t[Voyages venimeux]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Arathi Highlands >>Voyagez aux |cFFfa9602Hautes-terres Arathies|r
    .fly Arathi Highlands >>Prenez un trajet aérien pour |cFFfa9602les Hautes-terres Arathies|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Cliquez sur le |cRXP_PICK_Parchemin|r pour recevoir le Livre |T134331:0|t[Un tissage de mensonges : mythes et légendes démystifiés]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone Badlands >>Voyagez aux |cFFfa9602Terres Ingrates|r
    .fly >> Pour un trajet aérien pour les |cFFfa9602Terres ingrates (Badlands)|r |cRXP_WARN_si vous l'avez débloqué|r.
    .disablecheckbox
    .isQuestAvailable 79951
step
    .goto Badlands,56.7,39.9
    >>Cliquez sur le Livre |T134937:0|t[Les Momies : le guide des morts-vivants répugnants]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .goto 1437,33.61,47.82
    >>Cliquez sur le |cRXP_PICK_Parchemin|r |cFFfa9602 dans la vase aux Paluns|r pour obtenir les |T237450:0|t[Parchemins de Goaz.]
    .collect 209848,1
    .isQuestAvailable 78146
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Voyagez à la |cFFfa9602Marche de l'Ouest|r |cRXP_WARN_en prenant un trajet aérien|r.
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Cliquez sur le |cRXP_PICK_Grimoire|r situé |cFFfa9602dans l'armoire de l'Alchimiste dans une petite maison à Ruisselune dans la Marche de l'Ouest|r afin d'obtenir |T133733:0|t[Envoûtements et glamours.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Voyagez au |cFFfa9602Bois de la Pénombre|r
    .fly Westfall >>Prenez un trajet aérien pour les |cFFfa9602Marches de l'Ouest|r |cRXP_WARN_si vous l'avez disponible et vous n'y êtes pas déjà|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Cliquez sur le |cRXP_PICK_Livre|r |cFFfa9602 sur la table d'alchimie à l'intérieur des Catacombes du Bois-de-l'aube dans le Bois de la Pénombre|r afin d'obtenir |T133738:0|t[Crimes contre l’anatomie.]
    >>|cRXP_WARN_Nous vous recommandons d'aller tout au bout des catacombes et de mourir. De plus, vous pourriez envisager de le faire avec un groupe|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au |cFFfa9602Marais des Chagrins|r
    .fly Swamp of Sorrows >>Prenez un trajet aérien pour le |cFFfa9602Marais des Chagrins|r |cRXP_WARN_si vous l'avez disponible et que vous n'y êtes pas déjà|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Tuez le |cRXP_ENEMY_Chasseur Perdu|r, le |cRXP_ENEMY_Marche-boue Perdu|r, le |cRXP_ENEMY_Cuisinier perdu|r et le |cRXP_ENEMY_Prophète Perdu|r. Dépouillez-les pour la |cRXP_LOOT_|T237379:0|t[Clé de la cage rouillée]|r.
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Cliquez sur la |cRXP_PICK_Clé de la cage rouillée|r pour obtenir le Livre |T133742:0|t[Le soin des familiers démoniaques pour les pas doués]
    .collect 215824,1
    .isQuestAvailable 79953
step
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au |cFFfa9602Marais des Chagrins|r
    .fly Swamp of Sorrows >>Prenez un trajet aérien pour le |cFFfa9602Marais des Chagrins|r |cRXP_WARN_si vous l'avez disponible et que vous n'y êtes pas déjà|r
    .disablecheckbox
    .isQuestAvailable 81947
step
    .goto Swamp of Sorrows,70,51
    >>Cliquez sur le |cRXP_PICK_Livre|r pour obtenir |T133738:0|t[Sorcellerie sanguine]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Voyagez aux |cFFfa9602Terres foudroyées|r
    .fly Blasted Lands >>Prenez un trajet aérien pour les |cFFfa9602Terres Foudroyées|r |cRXP_WARN_si vous l'avez disponible et vous n'y êtes pas déjà|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Cliquez sur le |cRXP_PICK_Livre|r pour obtenir le |T133736:0|t[Codex d'adjurateur]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Voyage vers la |cFFfa9602Vallée de Strangleronce|r
    .fly Stranglethorn Vale >>Prenez un trajet aérien vers la |cFFfa9602Vallée de Strangleronce|r |cRXP_WARN_si vous l'avez débloqué|r.
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Cliquez sur les |cRXP_PICK_Notes de recherche|r sur le banc pour recevoir le Livre |T237162:0|t[Les basilics : faut-il avoir peur de se faire pétrifier ?]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Voyagez vers la |cFFfa9602Gorge des Vents brûlants|r
    .fly Searing Gorge >>Prenez le trajet aérien vers la |cFFfa9602Gorge des Vents brûlants|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir le |T133743:0|t[Plan de Formepierre]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Voyagez vers la |cFFfa9602Gorge des Vents brûlants|r
    .fly Searing Gorge >>Prenez le trajet aérien vers la |cFFfa9602Gorge des Vents brûlants|r |cRXP_WARN_si vous l'avez débloqué.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Cliquez sur le |cRXP_PICK_Livre|r afin d'obtenir le |T133743:0|t[Plan de Formepierre]
    .collect 220349,1
    .isQuestAvailable 81953
step
    #completewith next
    .zone Undercity >>Voyagez à |cFFfa9602Fossoyeuse|r
    .cast 3563 >>Utilisez |T135766:0|t[Téléportation : Undercity] |cRXP_WARN_si vous avez une|r |T134419:0|t[Rune de téléportation]
    .disablecheckbox
step
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602au Quartier Magique de Undercity.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Rendez la quête Almanach de Nar’thalas
    .accept 78127 >>Rendez la quête Abrégé de Dalaran
    .accept 78142 >>Rendez la quête Envoûtements et glamours
    .accept 78143 >>Rendez la quête Secrets des Rêveurs
    .accept 78145 >>Rendez la quête Manuel des systèmes arcaniques
    .accept 78146 >>Rendez la quête Parchemins de Goaz
    .accept 78147 >>Rendez la quête Crimes contre l’anatomie
    .accept 78148 >>Rendez la quête Runes des rois-sorciers
    .accept 78149 >>Rendez la quête Fureur de la terre
    .accept 79094 >>Rendez la quête Les leçons de Ta’zo
    .accept 79095 >>Rendez la quête L’Abécédaire métaphysique de l’apothicaire
    .accept 79096 >>Rendez la quête Ataeric : À propos des curiosités des arcanes
    .accept 79097 >>Rendez la quête Baxtan : Sur les magies destructrices
    .accept 79535 >>Rendez la quête Les basilics : faut-il avoir peur de se faire pétrifier ?
    .accept 79947 >>Rendez la quête Géomancie : une montagne de puissance
    .accept 79948 >>Rendez la quête Les bases de la magie défensive
    .accept 77949 >>Rendez la quête Un tissage de mensonges : mythes et légendes démystifiés
    .accept 79950 >>Rendez la quête Les démons et vous
    .accept 79951 >>Rendez la quête Les Momies : le guide des morts-vivants répugnants
    .accept 79952 >>Rendez la quête RwlRwlRwlRwl !
    .accept 81947 >>Rendez la quête Sorcellerie sanguine
    .accept 81949 >>Rendez la quête Légendes des Eaugures
    .accept 81951 >>Rendez la quête Le Liminal et l’arcane
    .accept 81952 >>Rendez la quête Étiquette quotidienne
    .accept 81953 >>Rendez la quête Plan de Formepierre
    .accept 81954 >>Rendez la quête Voyages venimeux
    .accept 81955 >>Rendez la quête Un esprit métallique
    .accept 81956 >>Rendez la quête Codex d'adjurateur
    .accept 79953 >>Rendez la quête Le soin des familiers démoniaques pour les pas doués
    .accept 78150 >>Rendez la quête Ami de la bibliothèque
    .accept 79536 >>Rendez la quête Mécène de la bibliothèque
    .accept 82208 >>Rendez la quête Mécène de la bibliothèque
    .target Owen Thadd
    .target Garion Wendell
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Banquier|r
    .bankdeposit 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >> |cRXP_WARN_Déposez les livres restants.|r
    .target Karus
    .target Komawa
    .target Soran
]]

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Flamme vivante - 6 (Forêt d'Elwynn)
#title Flamme vivante

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4,56.6,-1
    >>Achetez un ou plusieurs |T135933:0|t[Charme de compréhension] à un |cRXP_FRIENDLY_Marchand de composants.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>Voyagez à la |cFFfa9602Forêt d'Elwynn.|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>Tuez les |cRXP_ENEMY_Géomanciens kobolds|r et dépouillez-les pour les |cRXP_LOOT_|T134939:0|t[Notes de sort : VALAFM EVNTMIE]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Flamme vivante - 7 (Dun Morogh)
#title Flamme vivante

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Achetez un ou plusieurs |T135933:0|t[Charme de compréhension] à un |cRXP_FRIENDLY_Marchand de composants.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>Voyagez à |cFFfa9602Dun Morogh.|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>Tuez les |cRXP_ENEMY_Exhalombres crins-de-givres|r et les |cRXP_ENEMY_Prophètes Frostmanes|r et dépouillez-les pour les |cRXP_LOOT_|T134939:0|t[Notes de sort : VALAFM EVNTMIE]|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob Frostmane Seer
step
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Flamme vivante - 6 (Durotar)
#title Flamme vivante

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Achetez un ou plusieurs |T135933:0|t[Charme de compréhension] à un |cRXP_FRIENDLY_Marchand de composants.|r
    .collect 211779,1
step
    #completewith Flame
    .train 401768,1
    .zone Durotar >>Voyagez à |cFFfa9602Durotar|r
step
    .train 401768,1
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r à l'intérieur de la Caverne des Terrevent. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1
    .goto Durotar,52.83,29.02
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .xp >10,1
step
    #label Flame
    .train 401768,1
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r à l'intérieur de la grotte du rocher du Crâne. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Flamme vivante - 6 (Clairières de Tirisfal)
#title Flamme vivante

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Achetez un ou plusieurs |T135933:0|t[Charme de compréhension] à un |cRXP_FRIENDLY_Marchand de composants.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>Allez aux |cFFfa9602Clairières de Tirisfal|r
step
    .train 401768,1
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Tuez les |cRXP_ENEMY_Humanoïdes écarlates|r. Dépouillez-les pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r]
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401768 >>|cRXP_WARN_Utilisez les|r|T134939:0|t[|cRXP_FRIENDLY_Notes de sort : VALAFM EVNTMIE|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Flamme vivante]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Déflagration des arcanes - 18 (Ashenvale)
#title Déflagration des arcanes

<< Mage SoD

step << Alliance
    .train 401757,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Achetez un ou plusieurs |T135933:0|t[Charme de compréhension] à un |cRXP_FRIENDLY_Marchand de composants.|r
    .collect 211779,1
step << Horde
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Achetez un ou plusieurs |T135933:0|t[Charme de compréhension] à un |cRXP_FRIENDLY_Marchand de composants.|r
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>Voyagez à |cFFfa9602Ashenvale|r
step
    .aura 430139,1 >>|cRXP_WARN_Lancez|r |T136116:0|t[Explosion des arcanes] |cRXP_WARN_près du|r |cRXP_PICK_Cristal violet|r |cRXP_WARN_pour gagner le buff|r |T135734:0|t[Charge arcanique] |cRXP_WARN_|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,2+ >>|cRXP_WARN_Lancez|r |T136116:0|t[Explosion des arcanes] |cRXP_WARN_près du|r |cRXP_PICK_Cristal violet|r |cRXP_WARN_pour gagner un autre stack du buff|r |T135734:0|t[Charge arcanique] |cRXP_WARN_|r
    .goto Ashenvale,14.04,19.80
    .train 401757,1
step
    .aura 430139,3+ >>|cRXP_WARN_Lancez|r |T136116:0|t[Explosion des arcanes] |cRXP_WARN_près du|r |cRXP_PICK_Cristal violet|r |cRXP_WARN_pour gagner un autre stack du buff|r |T135734:0|t[Charge arcanique] |cRXP_WARN_|r
    .goto Ashenvale,13.50,15.75
    .train 401757,1
step
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 401757 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sorts : Déflagration des arcanes|r] |cRXP_WARN_pour apprendre|r |T135820:0|t[Déflagration des arcanes]
    .use 211691
step
    #optional
    .destroy 211777 >> Détruisez le |T133737:0|t[Manuscrit naga]. Vous n'en avez plus besoin
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Bombe vivante - 11 (Loch Modan)
#title Bombe vivante

<< Alliance Mage SoD


step
    +|cRXP_WARN_Vous devez être au moins de niveau 11 afin d'obtenir|r |T236220:0|t[Bombe vivante] |cRXP_WARN_uniquement dans le Loch Modan|r
    .train 415936,1
    .xp >11,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >> Voyagez à Ironforge
    .train 415936,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entrez dans la maison de |cRXP_FRIENDLY_Ginny Longberry|r
    .train 415936,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ginny Longuebaie|r à l'intérieur
    >>|cRXP_BUY_Achetez-lui un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 415936,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Voyagez jusqu'au Loch Modan
    .train 415936,1
step
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Tuez les |cRXP_ENEMY_Prophètes Brisepierres|r et dépouillez-les pour obtenir les |cRXP_LOOT_|T134939:0|t[Notes de sort mâchonnées]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 415936 >>Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort mâchouillées|r] pour apprendre |T236220:0|t[Bombe vivante]
    .use 208854
-- step
    --.engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Bombe vivante - 18 (Marche de l'Ouest)
#title Bombe vivante

<< Alliance Mage SoD


step
    .train 415936,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Achetez un ou plusieurs |T135933:0|t[Charme de compréhension] à un |cRXP_FRIENDLY_Marchand de composants.|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Westfall >>Voyagez à la |cFFfa9602Marche de l'Ouest|r
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Tuez le |cRXP_ENEMY_Gardien des moissons|r pour obtenir les |cRXP_LOOT_|T132996:0|t[Pièces détachées de moissonneur]|r
    .train 401417,1
    .collect 209056,1
    .mob Harvest Golem
    .mob Harvest Repair
    .mob Harvest Watcher
    .mob Rusty Harvest Golem
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Tuez les |cRXP_ENEMY_Diables de poussière|r pour des |cRXP_LOOT_|T132842:0|t[Noyaux élémentaires]|r
    .train 401417,1
    .collect 209058,1
    .mob Dust Devil
step
    .train 401417,1
    >>Utilisez les |T132996:0|t[Pièces détachées de moissonneur]|r| pour créer le |T133000:0|t[Prototype de moteur]
    .collect 209057,1
    .use 209058
    .use 209056
step
    .train 401417,1
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    .collect 208851,1 >>Trouvez un |cRXP_FRIENDLY_Prototype de moissonneur|r et utilisez le |T133000:0|t[Prototype de moteur] dessus. Ensuite, tuez le |cRXP_ENEMY_Prototype de moissonneur.|r
    .target Harvest Reaper Prototype
    .mob Harvest Reaper Prototype
    .use 209057
step
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au |cRXP_FRIENDLY_Marchand de composants|r pour utiliser l'objet
    .train 415936 >>Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort mâchouillées|r] pour apprendre |T236220:0|t[Bombe vivante]
    .use 208854
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Bombe vivante - 17 (Forêt des Pins-argentés)
#title Bombe vivante

<< Horde Mage SoD

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>Voyagez à la |cFFfa9602Forêt des Pins-argentés|r
step
    .train 415936,1
    >>Tuez les |cRXP_ENEMY_Poil-putrides|r sur l'Île de Fenris.|cFFfa9602 Dépouillez-les pour |T134173:0|t[Une tête qui parle]. |rCliquez-la|cRXP_WARN_ dans vos sacs.|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>Acceptez la quête Reposer en… pièces
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>Interagissez avec la |cRXP_PICK_Tombe peu profonde|r
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>Rendez la quête Reposer en… pièces
    .accept 461 >>Acceptez la quête L'alcôve secrète
    .target Shallow Grave
step
    .train 415936,1
    >>Interagissez avec l' |cRXP_PICK_Etagère poussiéreuse|r |cRXP_WARN_à l'intérieur du château dans la tour en haut à gauche (allez à gauche après le premier escalier)|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>Rendez la quête L’alcôve secrète
    .accept 491 >>Acceptez la quête Une Baguette pour Bethor
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>Voyagez à |cFFfa9602Undercity|r (si vous avez le chemin de vol de Undercity, vous pouvez faire un deathskip jusqu'au Sépulcre et voler depuis cet endroit)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bethor Iceshard|r.
    .goto Undercity,83.8,16.2
    .turnin 491 >>Rendez la quête Une Baguette pour Bethor
    .accept 78277 >>Acceptez la quête Un gage de gratitude
    .turnin 78277 >>Rendez la quête Un gage de gratitude
    .train 415936 >>|cRXP_WARN_Vous apprendrez directement la rune en rendant la quête|r
    .target Bethor Iceshard
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Bombe vivante - 20 (Les Tarides)
#title Bombe vivante

<< Horde Mage SoD

step
    #optional
    .train 415936,1
    .train 1953,1
    +|cRXP_WARN_Vous devez apprendre|r |T135736:0|t[Transfert] |cRXP_WARN_pour obtenir la rune de|r |T236220:0|t[Bombe vivante] |cRXP_WARN_|r
step
    #optional
    .train 415936,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Achetez un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_à un|r |cRXP_FRIENDLY_Marchand de composants|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone The Barrens >>Voyagez aux |cFFfa9602Tarides|r
step
    .train 415936,1
    .goto The Barrens,45.45,80.00
    .aura 421063,1 >>|cRXP_WARN_Utilisez Transfert contre la|r |cRXP_PICK_Sculpture gravée|r |cRXP_WARN_sur le mur pour obtenir le buff|r |T236168:0|t[Sentier Sans-Étape] |cRXP_WARN_|r
step
    .train 415936,1
    .goto The Barrens,45.28,80.14,5,0
    .goto The Barrens,45.23,80.42,5,0
    .goto The Barrens,45.06,80.57,5,0
    .goto The Barrens,44.94,80.80,5,0
    .goto The Barrens,44.87,81.08,5,0
    .goto The Barrens,44.80,81.37
    .train 415936 >>|cRXP_WARN_Lancez|r |T135736:0|t[Transfert] |cRXP_WARN_sur les cercles verts un par un. À la fin, utilisez Transfert contre la|r |cRXP_PICK_Sculpture gravée|r |cRXP_WARN_pour apprendre|r |T236220:0|t[Bombe vivante]
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#title Trait givre-sort/Éclair de givrefeu
#name Trait givre-sort/Éclair de givrefeu - 37 (Vallée de Strangleronce)

step << Alliance
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Achetez un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_à un|r |cRXP_FRIENDLY_Marchand de composants|r
    .collect 211779,1
step << Horde
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Achetez un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_à un|r |cRXP_FRIENDLY_Marchand de composants|r
    .collect 211779,1
step
    .train 415948,1
    .train 401762,1
    #completewith next
    .zone Stranglethorn Vale >>Voyage vers la |cFFfa9602Vallée de Strangleronce|r
step
    .train 415948,1
    .train 401762,1
    #loop
    .goto Stranglethorn Vale,46.6,30.0,60,0
    .goto Stranglethorn Vale,43.6,33.2,60,0
    .goto Stranglethorn Vale,46.4,40.6,60,0
    .goto Stranglethorn Vale,48.6,40.8,60,0
    >>Tuez les |cRXP_ENEMY_Mystiques Skullsplitter|r. Dépouillez-les pour les |T134939:0|t[|cRXP_LOOT_Notes de sort : ATTERRIT GIVORS]|r et les |T134939:0|t[|cRXP_LOOT_Notes de sort : ÉFULCIRE AGRIVEDE|r]
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
step << Alliance
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Achetez un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_auprès d'un |cRXP_FRIENDLY_Marchands de composants|r pour déchiffrer la rune|r
    .collect 211779,1
step << Horde
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Achetez un ou plusieurs|r |T135933:0|t[Charme de compréhension] |cRXP_BUY_auprès d'un |cRXP_FRIENDLY_Marchands de composants|r pour déchiffrer la rune|r
    .collect 211779,1
step
    .train 415948 >> |cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_LOOT_Notes de sort : ATTERRIT GIVORS|r] |cRXP_WARN_pour apprendre|r |T135780:0|t[Trait givre-sort]
    .train 401762 >> |cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_LOOT_Notes de sort : ÉFULCIRE AGRIVEDE|r] |cRXP_WARN_pour apprendre|r |T236217:0|t[Éclair de givrefeu]
    .use 213127
    .use 217161
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Bonne série - 32 (Montagnes d'Alterac)
#title Bonne série

-- Hot Streak

step
    #optional
    .train 401749,1
    .train 2121,1 -- flamestrike r2
    .train 8422,1 -- flamestrike r3
    .train 8423,1 -- flamestrike r4
    .train 2120 >> |cRXP_WARN_Vous devez avoir appris|r |T135826:0|t[Choc de flammes] |cRXP_WARN_afin d'obtenir la rune de|r |T236218:0|t[Choc de flammes] |cRXP_WARN_|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286
    .zone Alterac Mountains >> Voyagez aux Montagnes d'Alterac
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_Lancez|r |T135826:0|t[Choc de flammes] |cRXP_WARN_sur les deux soufflets attachés à la forge de Strahnbrande. Dès que l'un des soufflets commence à briller en rouge et à flamboyer, lancez|r |T135826:0|t[Choc de flammes] |cRXP_WARN_à nouveau sur le deuxième soufflet afin de l'allumer aussi. Cela lancera l'invocation de l' |cRXP_ENEMY_Elémentaire de feu antique|r|r
    >>Tuez l' |cRXP_ENEMY_Elémentaire de feu antique|r. Dépouillez-le pour les |T134939:0|t[|cRXP_LOOT_Notes de sort : Bonne série|r]
    .collect 213113,1
    .mob Ancient Fire Elemental
step
    .train 401749 >> |cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_LOOT_Notes de sort : Bonne série|r] |cRXP_WARN_pour apprendre|r |T236218:0|t[Bonne série]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Bonne série - 37 (Hautes-terres Arathies)
#title Bonne série

-- Hot Streak

step
    .train 401749,1
    #completewith next
    .zone Arathi Highlands >> Voyagez aux Hautes-terres d'Arathi
step
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Tuez les |cRXP_ENEMY_Exilés ardents|r. Dépouillez-les pour les |T134939:0|t[|cRXP_LOOT_Notes de sort : Bonne série|r]
    >>|cRXP_WARN_Note: Cet objet est connu pour ne tomber que très rarement. Vous pouvez envisager de l'obtenir dans les Montagnes d'Alterac à la place|r
    .collect 213113,1
    .mob Burning Exile
step
    .train 401749 >> |cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_LOOT_Notes de sort : Bonne série|r] |cRXP_WARN_pour apprendre|r |T236218:0|t[Bonne série]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Préservation chronostatique - 30 (Mille pointes)
#title Préservation chronostatique

step
    .train 416028,1
    #completewith SpellNotes
    +|cRXP_WARN_Assurez-vous d'amener avec vous au moins un autre ami |cFF69CCF0Mage|r pour les étapes suivantes ! Cette prochaine partie ne peut pas être faites seul !|r
step
    .train 425189,1
    .zone Thousand Needles >>Voyagez aux Mille Pointes
step
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>Tuez les |cRXP_ENEMY_Maraudeurs galak|r, les |cRXP_ENEMY_Marteleurs galaks|r et |cRXP_ENEMY_Légion-tempêtes galaks|r. Dépouillez-les pour la |cRXP_LOOT_Clé de cage à puma|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
step
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +Ouvrez la |cRXP_PICK_Clé de cage à puma|r pour libérer le |cRXP_ENEMY_Puma des pointes calciné|r
    .itemcount 214435,1
step
    .train 425189,1
    .goto Thousand Needles,23.714,24.780
    >>Tuez le |cRXP_ENEMY_Puma des pointes calciné|r. Dépouillez-la pour les |T134943:0|t[|cRXP_LOOT_Notes de sort partielles|r]
    >>|cRXP_WARN_Vous ne devez infliger que des dégâts de givre pour l'affaiblir jusqu'à ce qu'il puisse prendre des dégâts|r
    .mob Seared Needles Cougar
    .collect 213634,1
step
    .train 425189,1
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>Tuez la |cRXP_ENEMY_Concubine de Haut-perchoir roussie|r. Dépouillez-la pour les |T134938:0|t[|cRXP_LOOT_Notes de sort partielles|r]
    >>|cRXP_WARN_Vous ne devez infliger que des dégâts de givre pour l'affaiblir jusqu'à ce qu'il puisse prendre des dégâts|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label SpellNotes
    .train 425189,1
    .goto Thousand Needles,26.66,46.38
    >>Tuez la |cRXP_ENEMY_Volplume hurlante brûlée|r. Dépouillez-la pour les |T134937:0|t[|cRXP_LOOT_Notes de sort partielles|r]
    >>|cRXP_WARN_Vous ne devez infliger que des dégâts de givre pour l'affaiblir jusqu'à ce qu'il puisse prendre des dégâts|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step
    .train 425189,1
    >>|cRXP_WARN_Utilisez les|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_Notes de sort partielles|r] |cRXP_WARN_pour créer les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Préservation chronostatique|r]
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step
    .train 425189 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Préservation chronostatique|r |cRXP_WARN_pour apprendre|r |T135729:0|t[Préservation chronostatique]
    .use 213116
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Anomalie temporelle - 42 (Azeroth)


<< Mage SoD

step
    .train 429306,1
    .zone Feralas >>Voyagez à Féralas
step
    .train 429306,1
    #loop
    .goto Feralas,76.0,58.4,20,0
    .goto Feralas,76.8,63.6,20,0
    .goto Feralas,72.6,63.8,20,0
    .goto Feralas,75.0,59.2,20,0
    >>Tuez les forces |cRXP_ENEMY_Zukk'ash.|r Dépouillez-les pour la |T237070:0|t[Résine de Zukk’ash]
    .collect 221361,5
    .mob Zukk'ash Worker
    .mob Zukk'ash Stinger
    .mob Zukk'ash Tunneler
    .mob Zukk'ash Wasp
step
    .train 429306,1
    .zone The Hinterlands >>Voyagez aux Hinterlands
step
    .train 429306,1
    >>Tuez les |cRXP_ENEMY_Chouettards.|r Dépouillez-les pour la |cRXP_LOOT_|T132914:0|tPlume de chouettard en parfait état.|r sur eux
    .collect 221359,1
    .mob Primitive Owlbeast
    .mob Savage Owlbeast
    .mob Vicious Owlbeast
step
    .train 429306,1
    .zone Tanaris >>Voyagez jusqu'à Tanaris
step
    .train 429306,1
    >>Tuez les |cRXP_ENEMY_Zombies de Zul'Farrak|r. Dépouillez-les pour le |cRXP_LOOT_|T237132:0|tPapyrus farraki.|r
    .collect 221360,8
    .mob Zul'Farrak Zombie
step << Horde
    .train 429306,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Owen Thadd|r |cFFfa9602au Quartier Magique de Undercity.|r
    .accept 82054
step << Alliance
    .train 429306,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garion Wendell|r |cFFfa9602dans la tour des mages à Stormwind|r
    .accept 82054
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 15 (Marche de l'Ouest)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Voyagez à Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Voyagez à Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    .train 429311,1
    #loop
    .goto Westfall,47.0,39.4,40,0
    .goto Westfall,51.0,32.6,40,0
    .goto Westfall,47.6,22.0,40,0
    .goto Westfall,46.8,12.6,40,0
    .goto Westfall,41.6,15.2,40,0
    .goto Westfall,32.4,29.2,40,0
    .goto Westfall,29.8,34.4,40,0
    .goto Westfall,31.8,39.4,40,0
    .goto Westfall,28.6,44.0,40,0
    .goto Westfall,29.0,47.8,40,0
    .goto Westfall,29.0,58.8,40,0
    .goto Westfall,31.4,65.6,40,0
    .goto Westfall,29.6,69.4,40,0
    .goto Westfall,32.2,76.0,40,0
    .goto Westfall,32.2,80.2,40,0
    .goto Westfall,34.0,82.2,40,0
    .goto Westfall,37.8,85.4,40,0
    .goto Westfall,47.6,79.6,40,0
    .goto Westfall,51.6,71.4,40,0
    .goto Westfall,47.6,67.2,40,0
    .goto Westfall,62.6,26.6,40,0
    .goto Westfall,57.0,10.6,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 35 (Désolace)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Voyagez à Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Desolace >> Voyagez à Désolace
step
    .train 429311,1
    #loop
    .goto Desolace,71.6,18.4,40,0
    .goto Desolace,73.6,24.8,40,0
    .goto Desolace,80.4,17.0,40,0
    .goto Desolace,74.6,10.4,40,0
    .goto Desolace,54.4,19.2,40,0
    .goto Desolace,47.4,22.2,40,0
    .goto Desolace,56.0,74.8,40,0
    .goto Desolace,52.0,85.6,40,0
    .goto Desolace,49.6,74.8,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 45 (Féralas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Voyagez à Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Feralas >> Voyagez à Féralas
step
    .train 429311,1
    #loop
    .goto Feralas,74.2,50.8,40,0
    .goto Feralas,73.2,54.4,40,0
    .goto Feralas,74.2,56.8,40,0
    .goto Feralas,76.2,56.6,40,0
    .goto Feralas,74.2,60.0,40,0
    .goto Feralas,76.6,63.6,40,0
    .goto Feralas,72.6,63.8,40,0
    .goto Feralas,70.6,62.6,40,0
    .goto Feralas,68.2,58.8,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 45 (Azshara)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Voyagez à Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Azshara >> Voyagez jusqu'à Azshara
step
    .train 429311,1
    #loop
    .goto Azshara,17.6,58.8,40,0
    .goto Azshara,16.6,51.0,40,0
    .goto Azshara,21.2,54.0,40,0
    .goto Azshara,24.8,47.8,40,0
    .goto Azshara,33.0,81.6,40,0
    .goto Azshara,30.2,79.8,40,0
    .goto Azshara,25.2,81.6,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 35 (Terres Foudroyées)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City>> Voyagez à Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Voyagez à Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Blasted Lands >> Voyagez jusqu'aux Terres foudroyées
step
    .train 429311,1
    #loop
    .goto Blasted Lands,56.2,36.6,40,0
    .goto Blasted Lands,62.0,39.2,40,0
    .goto Blasted Lands,60.2,46.8,40,0
    .goto Blasted Lands,49.0,48.2,40,0
    .goto Blasted Lands,46.8,39.2,40,0
    .goto Blasted Lands,41.4,33.6,40,0
    .goto Blasted Lands,43.8,25.0,40,0
    .goto Blasted Lands,35.0,54.8,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 15 (Tarides)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Voyagez à Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    .train 429311,1
    #loop
    .goto The Barrens,60.2,36.0,40,0
    .goto The Barrens,60.8,29.0,40,0
    .goto The Barrens,59.8,27.6,40,0
    .goto The Barrens,57.6,23.6,40,0
    .goto The Barrens,42.0,14.2,40,0
    .goto The Barrens,40.0,18.4,40,0
    .goto The Barrens,44.4,50.0,40,0
    .goto The Barrens,46.4,52.6,40,0
    .goto The Barrens,47.6,49.4,40,0
    .goto The Barrens,54.4,48.6,40,0
    .goto The Barrens,58.2,49.6,40,0
    .goto The Barrens,51.8,53.4,40,0
    .goto The Barrens,48.6,83.0,40,0
    .goto The Barrens,46.2,85.6,40,0
    .goto The Barrens,43.8,83.8,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 15 (Sombrivage)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >> Voyagez à Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Darkshore >> Voyagez à Sombrivage
step
    .train 429311,1
    #loop
    .goto Darkshore,43.2,27.0,40,0
    .goto Darkshore,47.4,28.8,40,0
    .goto Darkshore,56.4,24.8,40,0
    .goto Darkshore,59.8,21.8,40,0
    .goto Darkshore,49.8,36.8,40,0
    .goto Darkshore,46.2,46.8,40,0
    .goto Darkshore,37.6,63.8,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 15 (Forêt des Pins-argentés)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Ironforge >> Voyagez à Ironforge
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Voyagez à Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step
    .train 429311,1
    #loop
    .goto Silverpine Forest,45.6,31.8,40,0
    .goto Silverpine Forest,44.6,25.8,40,0
    .goto Silverpine Forest,38.8,23.4,40,0
    .goto Silverpine Forest,38.8,18.4,40,0
    .goto Silverpine Forest,49.8,13.4,40,0
    .goto Silverpine Forest,55.6,24.6,40,0
    .goto Silverpine Forest,50.2,56.8,40,0
    .goto Silverpine Forest,50.2,65.2,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 35 (Marais des Chagrins)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Voyagez à Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Voyagez à Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Swamp of Sorrows >> Voyagez au Marais des Chagrins
step
    .train 429311,1
    #loop
    .goto Swamp of Sorrows,36.6,50.0,40,0
    .goto Swamp of Sorrows,27.0,49.8,40,0
    .goto Swamp of Sorrows,22.8,64.6,40,0
    .goto Swamp of Sorrows,16.6,63.6,40,0
    .goto Swamp of Sorrows,10.6,60.2,40,0
    .goto Swamp of Sorrows,12.6,29.6,40,0
    .goto Swamp of Sorrows,34.6,28.0,40,0
    .goto Swamp of Sorrows,49.8,38.6,40,0
    .goto Swamp of Sorrows,61.0,43.4,40,0
    .goto Swamp of Sorrows,60.8,27.4,40,0
    .goto Swamp of Sorrows,72.8,10.4,40,0
    .goto Swamp of Sorrows,87.6,26.0,40,0
    .goto Swamp of Sorrows,81.4,34.6,40,0
    .goto Swamp of Sorrows,91.6,56.4,40,0
    .goto Swamp of Sorrows,91.0,65.6,40,0
    .goto Swamp of Sorrows,83.8,66.4,40,0
    .goto Swamp of Sorrows,77.4,89.6,40,0
    .goto Swamp of Sorrows,77.6,90.0,40,0
    .goto Swamp of Sorrows,69.8,78.0,40,0
    .goto Swamp of Sorrows,56.8,65.6,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Brassards (Trait de bûcher)
#name Trait de bûcher - 28 (Carmines)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >> Voyagez à Stormwind
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >> Voyagez à Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Achetez un|r |T134945:0|t[Parchemin de guérison spatiale] |cRXP_BUY_à l'Hôtel des ventes.|r |cRXP_WARN_Sinon, un enchanteur peut vous le faire.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step
    .train 429311,1
    #loop
    .goto Redridge Mountains,29.8,30.4,40,0
    .goto Redridge Mountains,79.2,33.8,40,0
    .goto Redridge Mountains,83.2,45.2,40,0
    .goto Redridge Mountains,81.8,60.8,40,0
    .goto Redridge Mountains,79.0,73.0,40,0
    .goto Redridge Mountains,71.4,83.6,40,0
    .cast 448381 >>Utilisez un |cRXP_FRIENDLY_Parchemin de guérison spatiale|r sur le |cRXP_PICK_Portail|r afin d'invoquer un |cRXP_ENEMY_Intrus gangrené.|r
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Tuez l' |cRXP_ENEMY_Intrus gangrené|r. Dépouillez-le pour les |cRXP_LOOT_|T134939:0|tNotes de sort : Trait de bûcher.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Trait de bûcher|r] |cRXP_WARN_pour apprendre|r |T135809:0|t[Trait de bûcher]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Surchauffe - 55 (Maleterres de l'Ouest)
#title Surchauffe

step
    .train 401764,1
    .zone Western Plaguelands >> Voyagez aux Maleterres de l'Ouest
step
    .train 401764,1
    #loop -- not sure which coord is tied to which itemid, update in future
    .goto Western Plaguelands,36.8,54.7,30,0
    .goto Western Plaguelands,64.2,57.7,30,0
    .goto Western Plaguelands,53.3,64.5,30,0
    .goto Western Plaguelands,45.1,51.9,30,0
    >>|cRXP_WARN_Libérez les|r |cRXP_FRIENDLY_Mages Givre novices|r|cRXP_WARN_en utilisant des sorts de feu. NE LES TUEZ PAS !|r
    >>|cRXP_WARN_Utilisez ensuite|r |T136082:0|t[Délivrance de la malédiction mineure] |cRXP_WARN_sur eux et parlez-leur pour obtenir les|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Notes de sort déchirées|r]
    >>|cRXP_WARN_Répétez ce processus pour chaque |cRXP_FRIENDLY_Mage Givre novice|r dans chacun des champs des Maleterres de l'Ouest|r
    .collect 225938,1 --Felstone Field
    .collect 225939,1
    .collect 225940,1
    .collect 225941,1
    .target Novice Frost Mage
    .skipgossip
step
    .train 401764,1
    .use 225938 >> |cRXP_WARN_Utilisez l'une des|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Notes de sort déchirées|r] |cRXP_WARN_pour les combiner en|r |T134939:0|t[|cRXP_LOOT_Notes de sort : Surchauffe|r]
    .use 225939
    .use 225940
    .use 225941
    .collect 225691,1
step
    .train 401764 >> |cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_LOOT_Notes de sort : Surchauffe|r] |cRXP_WARN_pour apprendre|r |T135813:0|t[Surchauffe]
    .use 225691
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Orbe gelé - 55 (Gangrebois/Berceau-de-l'Hiver)
#title Orbe gelé

step
    #completewith next
    .train 440858,1
    .zone Felwood >> Voyagez à Gangrebois
step
    .train 440858,1
    .goto Felwood,63.0,9.0
    >>Tuez les |cRXP_ENEMY_Vengeurs Mort-bois|r et les |cRXP_ENEMY_Chamans Mort-bois|r. Dépouillez-les pour le |T237446:0|t[|cRXP_LOOT_Parchemin darnassien mystérieux|r]
    .collect 227796,1 -- Mysterious Darnassian Scroll 1/1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
step
    .train 440858,1
    >>|cRXP_WARN_Utilisez un|r |T135933:0|t[|cRXP_LOOT_Charme de compréhension|r] |cRXP_WARN_sur le|r |T237446:0|t[|cRXP_LOOT_Parchemin darnassien mystérieux|r] |cRXP_WARN_pour le décrypyer en|r |T134937:0|t[|cRXP_LOOT_Parchemin darnassien déchiffré|r]
    .collect 227797,1 -- Deciphered Darnassian Scroll 1/1
    .use 211779
    .use 227796
step
    .train 440858,1
    .goto Felwood,61.0,12.0
    .use 227797 >>|cRXP_WARN_Utilisez le|r |T134937:0|t[|cRXP_LOOT_Parchemin darnassien déchiffré|r] |cRXP_WARN_sur |cRXP_FRIENDLY_Calyx Vertelueur|r et acceptez sa quête|r
    >>|cRXP_FRIENDLY_Calyx Vertelueur|r |cRXP_WARN_patrouille dans la zone|r
    .accept 84369 >> Acceptez la quête Soigner le guérisseur
    .unitscan Calyx Greenglow
step
    .train 440858,1
    .goto Winterspring,55.0,22.0
    >>Tuez les |cRXP_ENEMY_Arbrefers marteleurs|r. Dépouillez-les pour le |cRXP_LOOT_Flacon insolite|r
    .collect 227924,1,84369,1 -- Unusual Flask 1/1
    .mob Irontree Stomper
step
    .train 440858,1
    #completewith next
    .zone Winterspring >> Voyagez au Berceau-de-l'Hiver
step
    .train 440858,1
    .goto Winterspring,29.0,35.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calyx Vertelueur|r
    >>|cRXP_WARN_Vous devrez tuer |cRXP_ENEMY_Calyx Vertelueur|r après avoir rendu cette quête|r
    .turnin 84369 >> Rendez la quête Soigner le guérisseur
    .unitscan Calyx Greenglow
step
    .train 440858,1
    >>Tuez l' |cRXP_ENEMY_Ombre enragée|r. Dépouillez-le pour les |T134939:0|t[|cRXP_LOOT_Notes de sort : Orbe gelé|r]
    .collect 225690,1 -- Spell Notes: Frozen Orb 1/1
    .mob Enraged Shade
step
    .train 440858 >> |cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_LOOT_Notes de sort : Orbe gelé|r] |cRXP_WARN_pour apprendre|r |T135851:0|t[Orbe gelé]
    .use 225690
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Barrage des arcanes - 60 (Azeroth)
#title Barrage des arcanes

<< Mage SoD

step
    .train 401722,1
    #completewith Necromancy101
    .zone Western Plaguelands >> Voyagez aux Maleterres de l'Ouest
step
    .train 401722,1
    .goto Western Plaguelands,38.3,54.6
    >>Ramassez le livre |cRXP_LOOT_Pommes de terre mortes-vivantes|r à l'étage dans la ferme du Champ de Gangrepierre
    .collect 228132,1
    .isQuestAvailable 84395
step
    .train 401722,1
    #label Necromancy101
    .goto Western Plaguelands,69.41,72.84
    >>Ramassez |cRXP_LOOT_La nécromancie pour les nuls|r dans le fort de Scholomance
    .collect 228141,1
    .isQuestAvailable 84402
step
    .train 401722,1
    #completewith UndeadMenace
    .zone Eastern Plaguelands >> Voyagez aux Maleterres de l'Ouest
step
    .train 401722,1
    .goto Eastern Plaguelands,81.7,57.8
    >>Ramassez le livre |cRXP_LOOT_Étude de la Lumière|r livre
    .collect 228135,1
    .isQuestAvailable 84398
step
    .train 401722,1
    .goto Eastern Plaguelands,54.5,50.8
    >>Ramassez le livre |cRXP_LOOT_La Dame et le Chevalier|r
    .collect 228138,1
    .isQuestAvailable 84400
step
    .train 401722,1
    #label UndeadMenace
    .goto Eastern Plaguelands,31.250,21.000
    >>Ramassez le livre |cRXP_LOOT_Le Fléau : menace morte-vivante ou phénomène incompris ?|r
    .collect 228140,1
    .isQuestAvailable 84401
step
    .train 401722,1
    #completewith next
    .subzone 1445 >> Voyagez à la Gorge des Vents brûlants ou aux Steppes ardentes et allez au Mont Blackrock
step
    .train 401722,1
    .goto 1415,48.388,63.626
    >>|cRXP_WARN_Descendez par la chaîne et dirigez-vous vers l'entrée des Profondeurs de Blackrock|r
    >>Ramassez le livre |cRXP_LOOT_Magma ou lave ?|r au sol
    .collect 228133,1
    .isQuestAvailable 84396
step
    .train 401722,1
    #completewith next
    .zone Winterspring >> Voyagez au Berceau-de-l'Hiver
step
    .train 401722,1
    .goto Winterspring,60.7,37.7
    >>Ramassez le livre |cRXP_LOOT_Badaboum !|r sur l'étagère
    .collect 228136,1
    .isQuestAvailable 84399
step
    .train 401722,1
    #completewith next
    .zone Felwood >> Voyagez à Gangrebois
    .subzoneskip 1216
step
    .train 401722,1
    .goto Felwood,65.214,3.248
    >>|cRXP_WARN_Dirigez-vous vers le tunnel du Repaire des Grumegueules. Note: si vous n'êtes pas au moins Inamical avec les Grumegueules, les furbolgs vous attaqueront|r
    >>Ramassez le livre |cRXP_LOOT_Le guide complet du nord de Kalimdor|r au sol
    .collect 228134,1
    .isQuestAvailable 84397
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jennea Cannon|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oran Snakewrithe|r  << Horde
    .accept 84395 >> Rendez la quête Pommes de terre mortes-vivantes
    .accept 84402 >> Rendez la quête La nécromancie pour les nuls
    .accept 84398 >> Rendez la quête Étude de la Lumière
    .accept 84400 >> Rendez la quête La Dame et le Chevalier
    .accept 84401 >> Rendez la quête Le Fléau : menace morte-vivante ou phénomène incompris ?
    .accept 84396 >> Rendez la quête Magma ou lave ?
    .accept 84399 >> Rendez la quête Badaboum !
    .accept 84397 >> Rendez la quête Le guide complet du nord de Kalimdor
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jennea Cannon|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oran Snakewrithe|r << Horde
    >>|cRXP_WARN_SI VOUS NE POUVEZ PAS ACCEPTER CETTE QUÊTE, ASSUREZ-VOUS QUE VOUS AVEZ OBTENU LES RUNES DE Veines glaciales/Puissance des sorts/Congélation COMME IL S'AGIT DE LA SUITE DE CES RUNES ET ELLES SONT OBLIGATOIRES|r
    .accept 84394 >> Acceptez la quête Mécène de la bibliothèque
    .turnin 84394 >> Rendez la quête Mécène de la bibliothèque
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
]])
