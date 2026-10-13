if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Fureur de Hurlorage - 4 (Sombrevallon)
#title Fureur de Hurlorage

step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
    .accept 77571 >> Acceptez la quête Les reliques des Kaldorei
    .trainer >> Apprenez vos sorts de classe. N'oubliez pas l' |T136096:0|t[Eclat lunaire]
    .target Mardant Strongoak
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,55.0,43.7
    >>Tuez les |cRXP_ENEMY_Grells|r et les |cRXP_ENEMY_Grellides|r. Dépouillez-les pour obtenir l' |T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r]
    .collect 208414,1 -- Lunar Idol (1)
    .mob Grell
    .mob Grellkin
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> |cRXP_WARN_Équipez l'|r |T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Tuez 6 fois un ennemi sous le DoT d' |r |T136096:0|t[Eclat lunaire] |cRXP_WARN_pour gagner des stacks d'|r |T237556:0|t[Inspiration]
    >>|cRXP_WARN_Une fois que vous avez le buff|r |T136116:0|t[Exalté] |cRXP_WARN_après 6 victimes, utilisez à nouveau l'|r |T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r] |cRXP_WARN_que vous venez d'équiper|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 77571 >> Rendez la quête Les reliques des Kaldorei
    .target Mardant Strongoak
    .train 410061,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Graine de vie - 10 (Teldrassil)
#title Graine de vie

step << Druid
    .goto Teldrassil,64.0,54.0,60,0
    .goto Teldrassil,59.0,60.0,60,0
    .goto Teldrassil,57.0,65.0,60,0
    .goto Teldrassil,69.0,55.0,60,0
    .goto Teldrassil,58.0,73.0,60,0
    .goto Teldrassil,61.0,54.0,60,0
    .goto Teldrassil,66.55,51.52
    >>Cueillez les |T133941:0|t|cRXP_LOOT_Fleurs de la clairière|r au sol
    >>|cRXP_WARN_Elles se trouvent dans tout Teldrassil|r
    .collect 208609,3 -- Glade Flower (3)
    .train 416050,1
step << Druid
    >>|cRXP_WARN_Utilisez les|r |T133941:0|t|cRXP_LOOT_Fleurs de la clairière|r |cRXP_WARN_pour en faire une|r |T132767:0|t[Couronne de la clairière]
    .collect 208760,1 -- Glade Flower (3)
    .train 416050,1
step << Druid
    #completewith NatureSpirit
    .subzone 260 >> Voyagez jusqu'au Village de Brise-stellaire
    .train 416050,1
step << Druid
    #completewith next
    .goto Teldrassil,67.026,58.039
    .cast 414724 >>|cRXP_WARN_Utilisez la|r |T132767:0|t[Couronne de la clairière] |cRXP_WARN_sur l'|cRXP_ENEMY_Effigie en bois|r. Cela fera apparaître un|r |cRXP_ENEMY_Esprit de la nature déchaîné|r
    >>|cRXP_WARN_Vous devrez peut-être attendre quelques minutes qu'il réapparaisse|r
    .use 208760
    .mob Wooden Effigy
    .train 416050,1
step << Druid
    #label NatureSpirit
    .goto Teldrassil,67.026,58.039
    >>Tuez l' |cRXP_ENEMY_Esprit de la nature déchaîné|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de potentiel naturel|r]
    >>|cRXP_WARN_Il s'agit d'un élite de niveau 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step << Druid
    .train 416050 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de potentiel naturel|r] |cRXP_WARN_pour apprendre|r |T136152:0|t[Graine de vie]
    .use 206963
    .itemcount 206963,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Fleur de vie - 8 (Teldrassil)
#title Fleur de vie

step << Druid
    #sticky
    +|cRXP_WARN_Un joueur doit vous aider pour obtenir cette rune ! Elle ne peut pas se faire seul comme ce joueur devra vous aider à cliquer sur un rituel d'invocation qui nécessite un second joueur !|r
    .train 410033,1
step << Druid
    .goto Teldrassil,33.610,35.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez aux |cRXP_FRIENDLY_Restes d'aventurier|r
    >>|cRXP_WARN_Cela commencera un rituel d'invocation qu'un autre joueur devra aussi cliquer|r
    >>Récupérez sur les |cRXP_FRIENDLY_Restes d'aventurier|r la |T134419:0|t[|cRXP_FRIENDLY_Rune de vie|r]
    .collect 206970,1 -- Rune of Life (1)
    .skipgossip
    .target Adventurer's Remains
    .train 410033,1
step << Druid
    .train 410033 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de vie|r] |cRXP_WARN_pour apprendre|r |T134206:0|t[Fleur de vie]
    .use 206970
    .itemcount 206970,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Rugissement sauvage - 20 (Sombrivage)
#title Rugissement sauvage

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Note: Vous devez être de niveau 20 pour équiper l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_dont vous aurez besoin pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tuez la |cRXP_ENEMY_Mère de la tanière|r. Dépouillez-la pour l' |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r]
    >>|cRXP_WARN_Soyez conscients que les |cRXP_ENEMY_Thistle Cubs|r peuvent vous étourdir pendant 2 secondes|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Équipez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Causez 20 itérations de dégâts de saignement avec|r |T132152:0|t[Déchirure] |cRXP_WARN_ou|r |T132122:0|t[Griffure] |cRXP_WARN_sur des humanoïdes, puis utilisez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_de nouveau pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Rugissement sauvage - 20 (Marche de l’Ouest)
#title Rugissement sauvage

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Note: Vous devez être de niveau 20 pour équiper l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_dont vous aurez besoin pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Westfall,56.6,13.2,70,0
    .goto Westfall,52.8,15.4,70,0
    .goto Westfall,44.8,13.8,70,0
    .goto Westfall,41.6,20.6,70,0
    .goto Westfall,56.6,13.2
    >>Tuez les |cRXP_ENEMY_Gnolls Rivepattes|r, les |cRXP_ENEMY_Eclaireurs Rivepattes|r et les |cRXP_ENEMY_Bâtards Rivepattes|r. Dépouillez-les pour obtenir l'|T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r]
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Riverpaw Mongrel
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Équipez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Causez 20 itérations de dégâts de saignement avec|r |T132152:0|t[Déchirure] |cRXP_WARN_ou|r |T132122:0|t[Griffure] |cRXP_WARN_sur des humanoïdes, puis utilisez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_de nouveau pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Éclat solaire - 6 (Teldrassil)
#title Éclat solaire

step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_Sur l'énorme branche d'arbre, vous verrez 3|r |cRXP_ENEMY_Pierres lunaires|r
    >>|cRXP_WARN_Lancez|r |T136096:0|t[Eclat lunaire] |cRXP_WARN_sur les 3|r |cRXP_ENEMY_Pierres lunaires|r |cRXP_WARN_de la branche, puis ouvrez le coffre qui apparaît ensuite à la position de la flèche|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du soleil|r] |cRXP_WARN_pour apprendre|r |T236216:0|t[Éclat solaire]
    .use 206989
    .itemcount 206989,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Lacérer - 10 (Loch Modan)
#title Lacérer

step << Druid
    #season 2
    .goto Loch Modan,40.371,39.404,10,0
    .goto Loch Modan,39.467,39.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khara Deepwater|r à l'intérieur du bâtiment
    >>|cRXP_BUY_Achetez un|r |T237270:0|t[Appât de thon arc-en-ciel]
    .collect 208855,1 -- Rainbow Fin Albacore Chum (1)
    .target Khara Deepwater
    .train 416049,1
step << Druid
    #season 2
    .goto Loch Modan,46.6,35.6
    .use 208855 >> |cRXP_WARN_Utilisez l'|r |T237270:0|t[Appât de thon arc-en-ciel] |cRXP_WARN_sur un |cRXP_ENEMY_Jeune Battrodon|r pour recevoir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Lacérer|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Threshadon
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacérer|r] |cRXP_WARN_pour apprendre|r |T132131:0|t[Lacérer]
    .use 208687
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Fureur de Hurlorage - 4 (Mulgore)
#title Fureur de Hurlorage


    --Rune of Fury of Stormrage

step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Acceptez la quête Les reliques des Taurens
    .trainer >> Apprenez vos sorts de classe. N'oubliez pas l' |T136096:0|t[Eclat lunaire]
    .target Gart Mistrunner
step << Druid
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Ouvrez la |cRXP_PICK_Cache à butin dos-hirsute|r pour l'|T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> |cRXP_WARN_Équipez l'|r |T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Tuez 6 fois un ennemi sous le DoT d' |r |T136096:0|t[Eclat lunaire] |cRXP_WARN_pour gagner des stacks d'|r |T237556:0|t[Inspiration]
    >>|cRXP_WARN_Une fois que vous avez le buff|r |T136116:0|t[Exalté] |cRXP_WARN_après 6 victimes, utilisez à nouveau l'|r |T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r] |cRXP_WARN_que vous venez d'équiper|r
    .complete 77648,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gart|r
    .turnin 77648 >>Rendez la quête Les reliques des Taurens
    .target Gart Mistrunner

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Mutilation - 10 (Mulgore)
#title Mutilation


    --Rune of Mangle

step
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>Tuez les |cRXP_ENEMY_Rôdeurs des basses plaines|r et les |cRXP_ENEMY_Loups Alpha des prairies|r. Dépouillez-les pour l' |T134903:0|t[|cRXP_FRIENDLY_Idole de la rage ursine|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Équipez l'|r |T134903:0|t[|cRXP_FRIENDLY_Idole de la rage ursine|r]
    .use 206954
    .train 410025,1
step
    #completewith next
    +|cRXP_WARN_Maintenez plus de 50 de Rage pendant au moins 60 secondes pour pouvoir apprendre|r |T132135:0|t[Mutilation]
step
    #season 2
    .train 410025 >> |cRXP_WARN_Utilisez l'|r |T134903:0|t[|cRXP_FRIENDLY_Idole de la rage ursine|r] |cRXP_WARN_pour apprendre|r |T132135:0|t[Mutilation]
    .use 206954
    .itemcount 206954,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Éclat solaire - 5 (Mulgore)
#title Éclat solaire


    --Rune of Sunfire

step
    #season 2
    .goto Mulgore,35.72,69.57
    >>Lancez |T136096:0|t[Eclat lunaire] sur les trois |cRXP_ENEMY_Pierres lunaires|r. Un coffre apparaîtra entre les pierres
    >>Ouvrez le |cRXP_PICK_Coffre lunaire|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune du soleil|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step
    #season 2
    .train 416044 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du soleil|r] |cRXP_WARN_pour apprendre|r |T236216:0|t[Éclat solaire]
    .use 206989
    .itemcount 206989,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Fleur de vie - 10 (Mulgore)
#title Fleur de vie

    --Rune of Lifebloom

step
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Esprit de l'aventurier|r à l'extérieur de la Mine de la KapitalRisk
    >>|cRXP_WARN_Un autre joueur doit cliquer sur le portail. Dépouillez ensuite l'|r |cRXP_FRIENDLY_Esprit de l'aventurier|r |cRXP_WARN_pour la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de vie|r]
    .collect 206970,1 --Rune of Life (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410033,1
step << Druid
    #season 2
    .train 410033 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de vie|r] |cRXP_WARN_pour apprendre|r |T134206:0|t[Fleur de vie]
    .use 206970
    .itemcount 206970,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Graine de vie - 8 (Mulgore)
#title Graine de vie

    --Rune of Living Seed

step
    #season 2
    .goto Mulgore,58.88,51.18,50,0
    .goto Mulgore,50.94,45.98,50,0
    .goto Mulgore,44.95,46.88,50,0
    .goto Mulgore,39.88,51.61,50,0
    .goto Mulgore,41.36,63.26
    >>Cueillez les |T133941:0|t|cRXP_LOOT_Fleurs de prairie|r au sol
    >>|cRXP_WARN_Elles se trouvent dans tout Mulgore|r
    .collect 206469,3 -- Glade Flower (3)
    .train 416050,1
step
    #season 2
    .use >>|cRXP_WARN_Utilisez les|r |T133941:0|t|cRXP_LOOT_Fleurs de prairie|r |cRXP_WARN_pour en faire une|r |T132767:0|t[Couronne de prairie]
    .collect 206466,1 -- Prairie Crown (1)
    .train 416050,1
step
    #season 2
    #completewith next
    .goto Mulgore,37.70,49.52
    .cast 414724 >>|cRXP_WARN_Utilisez la|r |T132767:0|t[Couronne de la clairière] |cRXP_WARN_sur l'|cRXP_ENEMY_Effigie en bois|r. Cela fera apparaître un|r |cRXP_ENEMY_Esprit de la nature déchaîné|r
    >>|cRXP_WARN_Vous devrez peut-être attendre quelques minutes qu'il réapparaisse|r
    .use 206466
    .mob Wooden Effigy
    .train 416050,1
step
    #season 2
    .goto Mulgore,37.70,49.52
    >>Tuez l' |cRXP_ENEMY_Esprit de la nature déchaîné|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de potentiel naturel|r]
    >>|cRXP_WARN_Il s'agit d'un élite de niveau 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step
    #season 2
    .train 416050 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de potentiel naturel|r] |cRXP_WARN_pour apprendre|r |T136152:0|t[Graine de vie]
    .use 206963
    .itemcount 206963,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Lacérer - 15 (Les Tarides)
#title Lacérer

    --Rune of Lacerate

step
    #season 2
    #completewith next
    .subzone 386 >>Allez aux Bassins oubliés
step
    #season 2
    .goto The Barrens,44.73,22.18
    >>Dépouillez le |cRXP_PICK_Nid de gueule d’acier abandonné|r au sol pour l' |T294479:0|t[|cRXP_LOOT_Œuf abandonné de gueule d’acier|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    #season 2
    #completewith next
    .subzone 387 >>Voyagez jusqu'à l'Oasis luxuriante
step
    #season 2
    .goto The Barrens,48.32,40.25
    >>Ouvrez le |cRXP_PICK_Nid de gueule d’acier vide|r au sol pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Lacérer|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step
    #season 2
    .train 416049 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacérer|r] |cRXP_WARN_pour apprendre|r |T132131:0|t[Lacérer]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Rugissement sauvage - 15 (Les Tarides)
#title Rugissement sauvage

    --Rune of Savage Roar

step
    #season 2
    #sticky
    +|cRXP_WARN_Note: Vous devez être de niveau 20 pour équiper l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_dont vous aurez besoin pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .xp 20,1
    .train 407988,1
step
    #season 2
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>Tuez les |cRXP_ENEMY_Querelleurs kolkars|r et les |cRXP_ENEMY_Légion-tempêtes kolkars|r. Dépouillez-les pour une |T134237:0|t[|cRXP_LOOT_Clé du butin des Kolkar|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>Ouvrez le coffre du |cRXP_PICK_Butin des Kolkar|r pour l' |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .train 407988,1
step
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Équipez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step
    #season 2
    .train 407988 >>|cRXP_WARN_Causez 20 itérations de dégâts de saignement avec|r |T132152:0|t[Déchirure] |cRXP_WARN_ou|r |T132122:0|t[Griffure] |cRXP_WARN_sur des humanoïdes, puis utilisez l'|r |T132942:0|t[|cRXP_FRIENDLY_Idole féroce|r] |cRXP_WARN_de nouveau pour apprendre|r |T236167:0|t[Rugissement sauvage]
    .use 208689
    .itemcount 208689,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Berserk - 28 (Mille pointes)
#title Berserk

step
    #optional
    +|cRXP_WARN_Vous devez être au moins au niveau 28 pour apprendre|r |T236149:0|t[Berserk]
    .xp >29,1
step
    #optional
    .train 424760,1
    .train 5209 >> |cRXP_WARN_Vous devez avoir appris le|r |T132117:0|t[Rugissement provocateur] |cRXP_WARN_pour obtenir la rune de|r |T236149:0|t[Berserk]|cRXP_WARN_|r
step
    #completewith next
    .train 424760,1
    .zone Thousand Needles >>Voyagez aux Mille Pointes
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >> |cRXP_WARN_Positionnez-vous à côté de l' |cRXP_PICK_Effigie bestiale|r pour recevoir le buff|r |T134912:0|t[Effigie bestiale] |cRXP_WARN_|r
step
    #completewith next
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .cast 5209 >> |cRXP_WARN_Passez en|r |T132276:0|t[Forme d'ours] |cRXP_WARN_et lancez|r |T132117:0|t[Rugissement provocateur] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_(Elite de niveau 28)|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>Tuez |cRXP_ENEMY_Zai'enki|r. Dépouillez-le pour l' |T134912:0|t[|cRXP_FRIENDLY_Idole de moquerie|r]
    .collect 213594,1
    .mob Zai'enki
step
    .train 424760,1
    .equip 18,213594 >> Équipez l' |T134912:0|t[|cRXP_FRIENDLY_Idole de moquerie|r]
    .use 213594
step
    #title Obtenez |T237556:0|t[Accumuler l’inspiration] 5 fois
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >> |cRXP_WARN_Lancez|r |T132117:0|t[Rugissement provocateur] |cRXP_WARN_pour provoquer au moins 2 ennemis et tuez-en un alors qu'il a encore le debuff|r |T132117:0|t[Rugissement provocateur] |cRXP_WARN_. Cela vous donnera une charge du buff|r |T237556:0|t[Accumuler l’inspiration] |cRXP_WARN_. Répétez la manipulation 5 fois jusqu'à obtenir le buff|r |T136116:0|t[Exalté] |cRXP_WARN_|r
    *|cRXP_WARN_Nous vous recommandons de combattre l'un des mobs et lorsqu'il est proche de mourir, engagez un deuxième mob et lancez|r |T132117:0|t[Rugissement provocateur]|cRXP_WARN_, puis tuez le mob bas en vie. Vous perdrez vos charges d'|r |T237556:0|t[Accumuler l’inspiration] |cRXP_WARN_si vous mourez|r
step
    .itemcount 213594,1
    .use 213594
    .train 424760 >> |cRXP_WARN_Utilisez l'|r |T134912:0|t[|cRXP_FRIENDLY_Idole de moquerie|r] |cRXP_WARN_pour apprendre|r |T236149:0|t[Berserk]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name État de rêve - 33 (Désolace)
#title État de rêve

step
    #completewith next
    .train 410060,1
    .zone Desolace >>Voyagez à Désolace
step
    .train 410060,1
    #loop
    .goto Desolace,70.6,39.8,0
    .goto Desolace,70.6,39.8,25,0
    .goto Desolace,69.2,46.6,25,0
    .goto Desolace,68.6,52.6,25,0
    >>Tuez les |cRXP_ENEMY_Kolkars|r et dépouillez-les pour la |T134187:0|t[Cosse desséchée]
    .collect 213574,1
    .mob Kolkar Centaur
    .mob Kolkar Mauler
    .mob Kolkar Scout
    .mob Kolkar Windchaser
step
    .train 410060,1
    >>Nagez dans l'eau et attendez que la cosse se transforme en |T134208:0|t[Bulbe de satyrienne]
    .goto Desolace,70.8,71.8
    .collect 206966,1
step
    .goto Desolace,75.5,20.7
    .train 410060 >>Cliquez sur le |cRXP_PICK_Terreau sableux|r pour y planter la graine et apprendre |T136090:0|t[État de rêve]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Nourrir - 35 (Azeroth)
#title Nourrir

-- Probably needs better waypoints to avoid some dangerous mobs or anything else that could kill you

step
    #completewith next
    .train 410059,1
    .goto Dustwallow Marsh,30.2,47.3,200,0
    .zone Dustwallow Marsh >>Voyagez au Marécage d'Âprefange
step
    .train 410059,1
    >>Tuez l' |cRXP_ENEMY_Ancien pourrissant|r. Dépouillez-le pour obtenir la |T134217:0|t[Graine putride]. |cRXP_WARN_Cliquez dessus dans vos sacs|r
    #loop
    .goto Dustwallow Marsh,43.6,41.0,40,0
    .goto Dustwallow Marsh,40.91,43.52,40,0
    .collect 212693,1
    .accept 79348 >> Acceptez la quête L’ancien perdu
    .mob Rotting Ancient
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Utilisez |T135758:0|t[Téléportation : Reflet-de-Lune]
step
    #completewith next
    +|cRXP_WARN_Vous devez suivre scrupuleusement toutes les instructions à venir. Mourir, changer de phase, être invoqué, utiliser une téléportation ou recevoir le buff "Cible sans honneur" peut faire échouer la quête (en perdant le buff), alors n'utilisez aucun trajet aérien vers des zones contestées.|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orokai|r
    *|cRXP_WARN_Un chrono d'1 heure commencera lorsque vous prendrez la prochaine quête. Soyez prêt à y consacrer une heure entière.|r
    .turnin 79348 >>Rendez la quête L’ancien perdu
    .accept 79377 >>Acceptez la quête Les arbrisseaux perdus
    .timer 3600,Durée de l'eau
    .target Orokai
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sindrayl|r
    .goto Moonglade,48.11,67.37
    .fly Auberdine >>Volez à Auberdine
    .target Sindrayl
step << Alliance
    .train 410059,1
    .goto Darkshore,36.90,44.13,10,0
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Empruntez le bateau pour le Port de Menethil. |cRXP_WARN_DÉCONNECTEZ-VOUS APRÈS QUE LE BATEAU SOIT PARTI. ATTENDEZ 40 SECONDES, PUIS RECONNECTEZ-VOUS.|r
step << Alliance
    #completewith next
    .zone Arathi Highlands >>Voyagez aux Hautes-terres Arathies. |cRXP_WARN_N'UTILISEZ PAS LE MAÎTRE DES VOLS|r
step << Alliance
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Alterac Mountains >>Voyagez aux Montagnes d'Alterac |cRXP_WARN_N'UTILISEZ PAS LE MAÎTRE DES VOLS|r
step << Alliance
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Western Plaguelands >>Suivez le chemin jusqu'aux Maleterres de l’Ouest
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.93,85.07
    .fly Stormwind >>Volez à Stormwind
    .target Bibilfaz Featherwhistle
step << Alliance
    #completewith AncientSapling3Alliance
    .goto Deadwind Pass,32.5,35,7,50,0
    .zone Deadwind Pass >>Voyagez au Défilé de Deuillevent
step << Alliance
    #completewith AncientSapling3Alliance
    .zone Swamp of Sorrows >>Suivez le chemin pour le Marais des Chagrins
step << Alliance
    #label AncientSapling3Alliance
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Alliance
    #completewith next
    .goto Swamp of Sorrows,3.5,61.3,50,0
    .goto Deadwind Pass,32.3,36.0,50,0
    .goto Duskwood,44.6,87.3,50,0
    .zone Stranglethorn Vale >>Suivez le chemin jusqu'à la Vallée de Strangleronce
step << Alliance
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bunthen Plainswind|r
    .goto Moonglade,44.29,45.86
    .skipgossip 11798,1
    .zone Thunder Bluff >>Volez à Thunder Bluff
    .target Bunthen Plainswind
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tal|r
    .goto Thunder Bluff,47.00,49.82
    .fly Ratchet >>Volez à Ratchet
    .target Tal
step << Horde
    .goto The Barrens,63.677,38.618
    .zone Stranglethorn Vale >> Empruntez le bateau pour Baie-du-Butin. |cRXP_WARN_DÉCONNECTEZ-VOUS APRÈS QUE LE BATEAU SOIT PARTI. ATTENDEZ 40 SECONDES, PUIS RECONNECTEZ-VOUS.|r
step << Horde
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    #completewith next
    .goto Duskwood,44.0,66.4,100,0
    .goto Duskwood,89,4,41.2,50,0
    .goto Deadwind Pass,58.3,42.0,50,0
    .zone Swamp of Sorrows >>Passez par le nord à travers le Bois de la Pénombre et le Défilé de Deuillevent jusqu'au Marais des Chagrins. |cRXP_WARN_Évitez Darkshire|r
step << Horde
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Horde
    .goto Swamp of Sorrows,46.10,54.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Breyk|r
    .fly Undercity >>Volez à Undercity
	.target Breyk
step << Horde
    .goto Tirisfal Glades,61.6,62.2,50,0
    .goto Tirisfal Glades,54.7,73.0,50,0
    .goto Silverpine Forest,66.7,8.8,50,0
    .zone Alterac Mountains >>|cRXP_WARN_Sortez d'Undercity, allez dans la Forêt des Pins-Argentés et traversez le lac à la nage jusqu'aux Montagnes d’Alterac|r
step << Horde
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
    step << Horde
    #completewith next
    .zone Arathi Highlands >>Allez aux Hautes-terres Arathies.
step << Horde
    .train 410059,1
    >>Utilisez les |T132852:0|t[Eau d'Elun'ara] sur l' |cRXP_FRIENDLY_Arbrisseau ancien|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Utilisez |T135758:0|t[Téléportation : Reflet-de-Lune]
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orokai|r
    .turnin 79377 >>Rendez la quête Les arbrisseaux perdus
    .target Orokai
step
    .itemcount 213594,1
    .use 213594
    .train 410059 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de nourrissement|r] pour apprendre |T236162:0|t[Nourrir]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#name Efflorescence - 45 (Azeroth)

step
    #optional
    .train 431468,1
    .train 2728 >> |cRXP_WARN_Vous devez avoir le sort|r |T135952:0|t[Délivrance de la malédiction] |cRXP_WARN_pour obtenir la rune d'|r |T134222:0|t[Efflorescence] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 8946 >> |cRXP_WARN_Vous devez avoir le sort|r |T136067:0|t[Guérison du poison] |cRXP_WARN_pour obtenir la rune d'|r |T134222:0|t[Efflorescence] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 16914 >> |cRXP_WARN_Vous devez avoir|r |T136018:0|t[Ouragan] |cRXP_WARN_pour obtenir la rune d'|r |T134222:0|t[Efflorescence] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 740 >> |cRXP_WARN_Vous devez avoir|r |T136107:0|t[Tranquillité] |cRXP_WARN_pour obtenir la rune d'|r |T134222:0|t[Efflorescence] |cRXP_WARN_|r
step
    #optional
    .train 431468,1
    .train 768 >> |cRXP_WARN_Vous devez avoir la|r |T132115:0|t[Forme de félin] |cRXP_WARN_pour obtenir la rune d'|r |T134222:0|t[Efflorescence] |cRXP_WARN_|r
step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_à l'intérieur de la tour|r
    .goto Feralas,57.2,69.0
    .accept 81924 >>Acceptez la quête La sagesse des gardiens
    .target Tyrisius
step
    .train 431468,1
    .aura 446488 >>Cliquez sur le |cRXP_PICK_Sanctuaire du gardien|r pour obtenir le buff |T132145:0|t[Devoir du gardien]
    .goto Feralas,58.7,52.4
step
    .train 431468,1
    #sticky
    #label MarkoftheWarden
    .aura 446467 >>Suivez les étapes suivantes pour obtenir le buff |T236157:0|t[Marque du gardien]
step
    .train 431468,1
    #loop
    .goto Feralas,61.8,55.6,35,0
    .goto Feralas,58.6,66.2,35,0
    >>Attaquez un |cRXP_ENEMY_Démoniste Gordunni|r. |cRXP_WARN_Attendez qu'ils utilisent|r |T136121:0|t[Rapetisser] |cRXP_WARN_sur vous.|r
    .cast 2728 >>|cRXP_WARN_Utilisez|r |T135952:0|t[Délivrance de la malédiction] |cRXP_WARN_pour retirer la malédiction|r |T136121:0|t[Rapetisser] |cRXP_WARN_|r
    .mob Gordunni Warlock
step
    .train 431468,1
    .goto Feralas,73.8,61.6
    >>Attaquez une |cRXP_ENEMY_Guêpe Zukk'ash|r. |cRXP_WARN_Attendez qu'ils utilisent leur|r |T136016:0|t[Poison] |cRXP_WARN_sur vous.|r
    .cast 526 >>|cRXP_WARN_Utilisez|r |T135952:0|t[Guérison du poison] |cRXP_WARN_pour retirer le debuff de|r |T136016:0|t[Poison] |cRXP_WARN_|r
    .mob Zukk'ash Wasp
step
    #requires MarkoftheWarden
    .train 431468,1
    >>|cRXP_WARN_Cliquez sur/courez sur le|r |cRXP_PICK_Sanctuaire du gardien|r |cRXP_WARN_pour invoquer l' |cRXP_ENEMY_Avatar de tréant|r|r
    >>Tuez l' |cRXP_ENEMY_Avatar de tréant|r.
    .complete 81924,1 --Guardian of Feralas
    .goto Feralas,58.7,52.4
    .mob Treant Avatar
step
    .train 431468,1
    #completewith next
    .zone Azshara >>Voyagez à Azshara (Téléportation à Reflet-de-Lune-> Trajet aérien vers Azshara)
step
    .train 431468,1
    .goto Azshara,34.6,49.0
    .gossip 441947,0 >>Cliquez sur le |cRXP_PICK_Sanctuaire de la Bête|r
    *|cRXP_WARN_Passez cette étape manuellement si elle ne se complète pas|r
step
    .train 431468,1
    >>Tuez l' |cRXP_ENEMY_Enfant d'Apa'ro|r |cRXP_WARN_avec des compétences de mêlée (en forme de félin ou en forme d'ours)|r. Dépouillez-le pour obtenir le |T134338:0|t[|cRXP_LOOT_Cœur de cerf sacré|r]
    .collect 221326,1
    .mob Child of Apa'ro
step
    #completewith next
    .itemcount 221362,1
    .use 221326
    .goto Azshara,34.6,49.0
    .cast 446509 >>|cRXP_WARN_Utilisez le|r |T134338:0|t[|cRXP_LOOT_Cœur de cerf sacré|r] |cRXP_WARN_près du|r |cRXP_PICK_Sanctuaire de la Bête|r |cRXP_WARN_pour invoquer l'|r |cRXP_ENEMY_Avatar d'hippogriffe|r
    .train 431468,1
step
    .train 431468,1
    >>Tuez l' |cRXP_ENEMY_Avatar d'hippogriffe|r
    .goto Azshara,34.6,49.0
    .complete 81924,3 --Guardian of Azshara
    .mob Hippogryph Avatar
step
    .train 431468,1
    #completewith next
    .zone The Hinterlands >>Voyagez aux Hinterlands
step
    .train 431468,1
    .goto The Hinterlands,66.2,53.1
    .gossip 441946,0 >>Cliquez sur le |cRXP_PICK_Sanctuaire de la Lune|r en haut de la Colline
    *|cRXP_WARN_Passez cette étape manuellement si elle ne se complète pas|r
step
    .train 431468,1
    .cast 740 >>|cRXP_WARN_Utilisez|r |T136107:0|t[Tranquillité]
step
    .train 431468,1
    .cast 16914 >>|cRXP_WARN_Utilisez|r |T136018:0|t[Ouragan]
step
    .train 431468,1
    >>Tuez l' |cRXP_WARN_Avatar de sélénien|r
    .goto The Hinterlands,66.2,53.1
    .complete 81924,2 --Guardian of the Hinterlands
    .mob Moonkin Avatar
step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_à l'intérieur de la tour|r
    .goto Feralas,57.2,69.0
    .turnin 81924 >>Rendez la quête La sagesse des gardiens
    .target Tyrisius
step
    .itemcount 220360,1
    .use 220360
    .train 431468 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Efflorescence|r] pour apprendre |T134222:0|t[Efflorescence]

]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Frenzied Regeneration
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Grands vents - 40 (Féralas)

step
    #completewith NamidaGrimtotem
    .train 431451,1
    .zone Feralas >>Voyagez à Féralas
step
    #label NamidaGrimtotem
    .train 431451,1
    >>Tuez |cRXP_ENEMY_Namida Grimtotem|r. Dépouillez-la pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de la tempête de vent|r]
    .goto Feralas,66.8,38.6
    .collect 220754,1
    .mob Namida Grimtotem
step
    .itemcount 220754,1
    .use 220754
    .train 431451 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de la tempête de vent|r] |cRXP_WARN_pour apprendre|r |T236154:0|t[Grands vents]

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#name Feux d’Élune - 45 (Azshara)

step
    #completewith next
    .zone Azshara >>Voyagez jusqu'à Azshara
    .train 416051,1
step
    --PERMOK: Check coordiantes
    .train 416051,1
    >>Cliquez sur le |cRXP_PICK_Fourre-tout de voyageur|r pour y récupérer la |T236229:0|t[|cRXP_LOOT_Trousse de secours de terrain|r] et le |T133741:0|t[|cRXP_LOOT_Journal de Keldara|r]
    .goto Azshara,20.61,61.97
    .collect 221018,1
    .collect 221017,1
step
    .train 416051,1
    --PERMOK: Fix coordiantes
    #loop
    .goto Azshara,20,65,30,0
    .goto Azshara,20,62,30,0
    .goto Azshara,21,61,30,0
    >>Ramassez 3 |T134218:0|t[|cRXP_PICK_Échantillons de satyrienne|r]
    .collect 221019,3
step
    >>|cRXP_WARN_Utilisez la|r |T236229:0|t[|cRXP_LOOT_Trousse de secours de terrain|r] |cRXP_WARN_pour combiner les échantillons dans la|r |T236868:0|t[Teinture de satyrienne]
    .collect 221199,1
step
    .train 416051,1
    #loop
    .goto Azshara,16.0,49.6,30,0
    .goto Azshara,18.6,66.6,30,0
    .goto Azshara,21.0,56.2,30,0
    >>Cherchez un |cRXP_ENEMY_Hippogryphe Tête-tonnerre|r avec le debuff |T136134:0|t[Corruption de satyre]
    *|cRXP_WARN_Un hippogryphe avec la malédiction émet un nuage de poison vert|r.
    .cast 2637 >>Utilisez |T136090:0|t[Hibernation] sur l' |cRXP_ENEMY_Hippogriffe Tête-tonnerre|r
    .mob Thunderhead Hippogryph
step
    .train 416051,1
    >>|cRXP_WARN_Utilisez la|r |T236868:0|t[Teinture de satyrienne] |cRXP_WARN_sur l' |cRXP_ENEMY_Hippogriffe Tête-tonnerre|r pour retirer le debuff|r|T136134:0|t[Corruption de satyre] |cRXP_WARN_affaiblissement|r et obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de la déesse de la lune|r]
    .itemcount 221199,1
    .use 221199
    .collect 221020,1
    .mob Thunderhead Hippogryph
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de la tempête de vent|r] |cRXP_WARN_pour apprendre|r |T236154:0|t[Grands vents]
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Gore
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Écorce améliorée - 44 (Tanaris)

step
    #optional
    .train 431449,1
    .train 22812 >> |cRXP_WARN_Vous devez avoir le sort|r |T136097:0|t[Écorce] |cRXP_WARN_pour obtenir la rune d'|r |T136097:0|t[Écorce améliorée] |cRXP_WARN_|r
step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
    .train 431449,1
step
    #loop
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>Tuez les |cRXP_ENEMY_Chardonniers collecteurs de rosée|r et les |cRXP_ENEMY_Chardonniers taille-racines|r. Dépouillez-les pour l' |T136061:0|t[|cRXP_LOOT_Idole du traînard enragé|r]
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
    .train 431449,1
step
    .equip 18,220915 >>|cRXP_WARN_Équipez l'|r |T136061:0|t[|cRXP_FRIENDLY_Idole du traînard enragé|r]
    .train 431449,1
step
    .aura 408828 >>Tuez |cRXP_WARN_cinq ennemis avec un sort de Nature (Colère par exemple) en étant sous l'effet d'|r |T136097:0|t[Écorce].
    *|cRXP_WARN_Utilisez |T136097:0|t[Écorce] lorsque le mob a peu de vie et achevez-le avec une Colère ou un autre sort de Nature|r
    .train 431449,1
step
    .itemcount 221020,1
    .use 221020
    .train 431449 >> |cRXP_WARN_Utilisez l'|r |T136061:0|t[|cRXP_FRIENDLY_Idole du traînard enragé|r] |cRXP_WARN_pour apprendre|r |T136097:0|t[Écorce améliorée]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Balayage amélioré - 50 (Cratère d’Un’Goro)
#title Balayage amélioré

step
    #completewith next
    .train 439765,1
    .zone Un'Goro Crater >>Voyagez au Cratère d'Un Goro
step
    .train 439765,1
    .goto Un'Goro Crater,68.0,51.4
    >>Tuez les |cRXP_ENEMY_Ravasaures|r, les |cRXP_ENEMY_Ravasaures chasseurs|r et les |cRXP_ENEMY_Ravasaures peau-de-venin|r. Dépouillez-les pour l' |T134912:0|t[|cRXP_FRIENDLY_Idole de la chasseresse|r]
    .collect 227444,1
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .train 439765,1
    .equip 18,227444 >> Équipez l' |T134912:0|t[|cRXP_FRIENDLY_Idole de la chasseresse|r]
    .use 227444
step
    .goto Un'Goro Crater,68.0,51.4
    #title Obtenez |T237556:0|t[Accumuler l’inspiration] 5 fois
    .itemcount 227444,1
    .train 439765,1
    .aura 408828 >> |cRXP_WARN_Attaquez un |cRXP_ENEMY_Ravasaure|r jusqu'à ce qu'il soit à environ 5-10% de vie et assurez-vous d'avoir 5 points de combo sur lui|r
    >>|cRXP_WARN_Dès qu'il a 5-10% de vie, lancez|r |T136090:0|t[Hibernation] |cRXP_WARN_puis passez en|r |T132115:0|t[Forme de félin] |cRXP_WARN_et lancez|r |T132127:0|t[Morsure féroce] |cRXP_WARN_pour les tuer et gagner un stack d'|r |T237556:0|t[Accumuler l’inspiration]
    >>|cRXP_WARN_Répétez la manipulation 5 fois|r
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .itemcount 227444,1
    .use 227444
    .train 439765 >> |cRXP_WARN_Utilisez l'|r |T134912:0|t[|cRXP_FRIENDLY_Idole de la chasseresse|r] |cRXP_WARN_pour apprendre|r |T134296:0|t[Balayage amélioré]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Arbre de vie - 50 (Gangrebois)
#title Arbre de vie

step
    #completewith next
    .train 439767,1
    .zone Felwood >>Voyagez à Gangrebois
step
    .train 439767,1
    #loop
    .goto Felwood,42,15,70,0
    .goto Felwood,42,19,70,0
    .goto Felwood,42,15,0
    .goto Felwood,42,19,0
    >>|cRXP_WARN_Parlez à un|r |cRXP_FRIENDLY_Feu follet vengeur|r |cRXP_WARN_au nord de Gangrebois, puis suivez-le à travers le Défilé des Jadefeu et tuez tous les |cRXP_ENEMY_Satyres|r qu'il traverse|r
    >>|cRXP_WARN_Le |cRXP_FRIENDLY_Feu follet vengeur|r peut apparaître à plusieurs endroits différents. Si vous croisez un autre Druide qui est déjà avec le |cRXP_FRIENDLY_Feu follet vengeur|r, vous pouvez l'aider et aussi le valider pour vous|r
    >>Une fois terminé, le |cRXP_FRIENDLY_Feu follet vengeur|r fera tomber le |cRXP_PICK_Don du feu follet|r au sol. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de l'Arbre-monde|r]
    .collect 227746,1
    .unitscan Vengeful Wisp
step
    .itemcount 227746,1
    .use 227746
    .train 439767 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l'Arbre-monde|r] |cRXP_WARN_pour apprendre|r |T132145:0|t[Arbre de vie]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Pluie-d'Etoiles - 60 (Berceau-de-l’Hiver)
#title Pluie-d'Etoiles

step
    #completewith next
    .train 439770,1
    .zone Winterspring >>Voyagez au Berceau-de-l'Hiver
    >>|cRXP_WARN_Notez que pour obtenir cette rune vous devrez tuer un Élite de niveau 58. Pensez à demander l'aide d'autres joueurs|r
step
    .train 439770,1
    #loop
    .goto Winterspring,64.8,19.4,50,0
    .goto Winterspring,63.8,16.4
    >>Tuez |cRXP_ENEMY_Arcterris|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de l’étoile filante|r]
    >>|cRXP_WARN_Notez que |cRXP_ENEMY_Arcterris|r est un Élite de niveau 58. Pensez à demander l'aide d'autres joueurs|r
    .collect 227749,1
    .mob Arcterris
step
    .itemcount 227749,1
    .use 227749
    .train 439770 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l’étoile filante|r] |cRXP_WARN_pour apprendre|r |T236168:0|t[Pluie-d'Etoiles]
]])
