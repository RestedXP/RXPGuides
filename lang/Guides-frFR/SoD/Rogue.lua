if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe-ténèbres - 3 (Forêt d’Elwynn)
#title Frappe-ténèbres

step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_Ouvrez la |cRXP_PICK_Boîte de rangement des Défias|r sur le sol. Récupérez la |r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T132291:0|t[Frappe-ténèbres]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe-ténèbres - 3 (Dun Morogh)
#title Frappe-ténèbres

step
    #optional
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Entrez dans la Grotte des Frostmane
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Voyagez vers le |cRXP_PICK_Cache à butin crins-de-givre|r à l'intérieur
step
    .goto Dun Morogh,30.773,80.063
    >>Ouvrez la |cRXP_PICK_Cache à butin crins-de-givre|r au sol à l'intérieur. Ouvrez-la pour la |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe-ténèbres - 3 (Sombrevallon)
#title Frappe-ténèbres

step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_Montez la rampe sur l'arbre Aldrassil et sautez sur le toit|r
    >>|cRXP_WARN_L' |cRXP_PICK_Idole|r se trouve sur le toit|r
    >>Ouvrez l' |cRXP_PICK_Idole|r. Dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r
    >>|cRXP_WARN_Si vous n'arrivez pas à sauter sur le toit, essayez de sauter par-dessus la rambarde en descendant la rampe sur laquelle vous vous trouvez|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tireur rapide - 8 (Forêt d’Elwynn)
#title Tireur rapide

step << Rogue
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Estafettes Rivepattes|r et les |cRXP_ENEMY_Rivepattes chétifs|r. Dépouillez-les pour obtenir le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>Utilisez le |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Mineurs kobolds|r et les |cRXP_ENEMY_Tunneliers kobolds|r. Dépouillez-les pour le |T134327:0|t|cRXP_LOOT_[Morceau supérieur droit de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>Utilisez|T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Défias|r. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_WARN_Note: Celui-ci peut aussi se trouver sur un autre membre des |cRXP_ENEMY_Défias|r dans la Forêt d'Elwynn|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Fourrageurs murlocs|r et les |cRXP_ENEMY_Rôdeurs murlocs|r. Dépouillez-les pour obtenir le |T134269:0|t[|cRXP_LOOT_Morceau inférieur droit de carte|r]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    >>|cRXP_WARN_Note: Vous pouvez aussi l'obtenir sur n'importe quel autre |cRXP_ENEMY_Murloc|r de la Forêt d’Elwynn|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Utilisez n'importe lequel des|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte]|r |cRXP_WARN_pour les combiner en la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor d’Elwyn|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Utilisez la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor d’Elwyn|r] |cRXP_WARN_à la position indiquée. Un |cRXP_PICK_Trésor enfoui|r apparaîtra|r
    .use 203750
    .itemcount 203750,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tireur rapide - 8 (Dun Morogh)
#title Tireur rapide

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Espion Sombrefer|r. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Trolls Crins-de-givre|r. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Headhunter
    .mob Frostmane Hideskinner
    .mob Frostmane Shadowcaster
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Brise-crânes Mâcherocs|r et les |cRXP_ENEMY_Briseurs d’os Mâcherocs|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,26.0,41.8
    >>Utilisez le |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnomes lépreux|r. Récupérez le |T134269:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tireur rapide - 8 (Teldrassil)
#title Tireur rapide

step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Voyagez jusqu'à Gangreroche
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Tuez les |cRXP_ENEMY_Grell vicieux|r, les |cRXP_ENEMY_Fées maudites|r et les |cRXP_ENEMY_Fées des ombres|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Tuez les |cRXP_ENEMY_Sylvains|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,46.8,54.6,60,0
    .goto Teldrassil,44.2,59.2
    >>Tuez ou utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Furbolgs Pin-tordu|r. Dépouillez-les pour obtenir le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Tuez ou utilisez |T133644:0|tVol à la tire sur les |cRXP_ENEMY_Harpies Plumesang|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Utilisez l'un des|r |T134327:0|t[|cRXP_LOOT_Morceaux de carte]|r |cRXP_WARN_pour les combiner en la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Prenez le portail violet pour aller à Rut'theran
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_Utilisez la|r |T134269:0|t[|cRXP_LOOT_Carte au trésor de Teldrassil|r] |cRXP_WARN_à l'intérieur du tronc d'arbre à Rut'theran. Cela fera apparaître un |cRXP_PICK_Trésor enfoui|r|r
    .use 208605
    .itemcount 208605,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Ombres meurtrières - 1 (Forêt d’Elwynn)
#title Ombres meurtrières

step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_En utilisant les caisses à l'extérieur de la maison, sautez sur le toit et allez derrière la cheminée|r
    >>Ouvrez le |cRXP_PICK_Coffret poussiéreux|r. Récupérez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r] |cRXP_WARN_pour apprendre|r |T236280:0|t[Ombres meurtrières]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Ombres meurtrières - 1 (Dun Morogh)
#title Ombres meurtrières

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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entre les deux yeux - 8 (Stormwind)
#title Entre les deux yeux

step << Rogue
    #season 2
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> Entrez dans la Ruelle du Coupe-Gorge dans le Quartier Nain
    .train 400081,1
step << Rogue
    #season 2
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Montez à l'étage dans la maison|r
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r. Ouvez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    >>|cRXP_WARN_L'ouvrir invoquera deux |cRXP_ENEMY_Agresseurs coupe-gorges|r de niveau 10 qui vous attaqueront|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entre les deux yeux - 8 (Ironforge)
#title Entre les deux yeux

step << Rogue
    #season 2
    .goto Ironforge,51.913,13.383
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r. Ouvez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    >>|cRXP_WARN_L'ouvrir invoquera deux |cRXP_ENEMY_Agresseurs coupe-gorges|r de niveau 10 qui vous attaqueront|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entre les deux yeux - 8 (Teldrassil)
#title Entre les deux yeux

step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Tuez ou utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Guides Pin-tordu|r et les |cRXP_ENEMY_Vengeurs Pin-tordu|r. Dépouillez-les pour obtenir une |T134241:0|t[|cRXP_LOOT_Clé de cache pin-tordu]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    .goto Teldrassil,37.836,82.588
    >>Ouvrez le |cRXP_PICK_Cache pin-tordu|r. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Danse des lames - 10 (Marche de l’Ouest)
#title Danse des lames

step << Rogue
    #season 2
    .goto Westfall,48.27,46.91,60,0
    .goto Westfall,46.39,37.38,60,0
    .goto Westfall,48.27,46.91
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Défias|r dans toute la Marche de l’Ouest. Dépouillez-les pour obtenir une |T133463:0|t[|cRXP_LOOT_Enveloppe discrète|r]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 209031,1 -- Discreet Envelope (1)
    .mob Defias Trapper
    .mob Defias Smuggler
    .mob Defias Looter
    .train 400099,1
step << Rogue
    #season 2
    >>Ouvrez l' |cRXP_PICK_Enveloppe discrète|r. Récupérez-y la |T134237:0|t[|cRXP_LOOT_Clé de la réserve d’équipement]|r
    .collect 209030,1 -- Equipment Stash Key (1)
    .use 209031
    .itemcount 209031,1
    .train 400099,1
step << Rogue
    #season 2
    #map Westfall
    .goto 1415,40.805,80.235
    >>Dirigez-vous vers l'entrée de derrière des Mortemines
    >>Ouvrez la |cRXP_PICK_Réserve d’équipement|r. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r] |cRXP_WARN_pour apprendre|r |T132350:0|t[Danse des lames]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Danse des lames - 16 (Dun Morogh)
#title Danse des lames

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Espions Sombrefers|r. Dépouillez-les pour un |T133875:0|t[|cRXP_LOOT_Coffret Sombrefer|r]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208838,1 -- Dark Iron Lockbox (1)
    .mob Dark Iron Spy
    .train 400099,1
step << Rogue
    #season 2
    >>Ouvrez le |T133875:0|t[|cRXP_LOOT_Coffret Sombrefer|r]. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r]
    >>|cRXP_WARN_Note: Vous devez avoir pris le|r |T136058:0|t[Crochetage] |cRXP_WARN_à votre maître de classe pour l'ouvrir|r
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 208838,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r] |cRXP_WARN_pour apprendre|r |T132350:0|t[Danse des lames]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Danse des lames - 16 (Sombrivage)
#title Danse des lames

step << Rogue
    #season 2
    #completewith learnBD
    .goto Darkshore,55.106,33.621,30 >> Entrez dans la grotte des Nagas de la Bondissante
    .train 400099,1
step << Rogue
    #season 2
    .goto Darkshore,56.253,34.877
    >>Tuez les |cRXP_ENEMY_Sirènes Tempécailles|r et les |cRXP_ENEMY_Chevaucheurs des vagues Tempécailles|r. Dépouillez-les pour obtenir une |T134242:0|t[|cRXP_LOOT_Clé de la Bondissante]|r
    .collect 211471,1 -- Cliffspring Key (1)
    .mob Stormscale Wave Rider
    .mob Stormscale Siren
    .train 400099,1
step << Rogue
    .goto Darkshore,56.253,34.877
    >>Ouvrez le |cRXP_PICK_Coffre de la Bondissante|r à l'intérieur de la grotte. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 211471,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r] |cRXP_WARN_pour apprendre|r |T132350:0|t[Danse des lames]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Estropier - 5 (Forêt d’Elwynn)
#title Estropier

step << Rogue
    #season 2
    .goto Elwynn Forest,57.5,48.2
    >>Utilisez |T133644:0|t[Vol à la tire] sur |cRXP_ENEMY_Garrick Ladétrousse|r pour la |T134331:0|t[Note de Cutty]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>Parlez à |cRXP_FRIENDLY_Cutty|r au sud du mur de la Vallée de Comté-du-Nord
    >>Il vous donnera l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Estropier - 8 (Dun Morogh)
#title Estropier

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Espions Sombrefers|r. Récupérez la |T134331:0|t[Note de Ratnoir]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208205,1 --Blackrat's Note (1)
    .mob Dark Iron Spy
    .train 400094,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Coup de sabre - 12 (Marche de l’Ouest)
#title Coup de sabre

step << Rogue
    #season 2
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>Utilisez le|T133644:0|t[Vol à la tire] sur l' |cRXP_ENEMY_Eclaireur défias|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .mob Defias Scout
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Coup de sabre - 12 (Loch Modan)
#title Coup de sabre

step << Rogue
    #season 2
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >> |cRXP_WARN_Montez sur le mur du barrage du Loch Modan et descendez prudemment sur le rebord au centre du barrage. Suivez la flèche|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>Ouvrez la |cRXP_PICK_Boîte à outils de maçon|r sur le rebord. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >> Cliquez sur la |cRXP_PICK_Corde d’évasion|r pour revenir en haut
    .subzoneskip 146,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Coup de sabre - 1 (Sombrivage)
#title Coup de sabre

step << Rogue
    #season 2
    #completewith next
    .goto Darkshore,32.80,37.72,20 >> Nagez vers la petite île avec le Phare
    .train 424785,1
step << Rogue
    #season 2
    .goto Darkshore,32.729,37.093
    >>Ouvrez la |cRXP_PICK_Planque du phare|r à l'intérieur du tronc d'arbre. Dépouillez-le pour obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe-ténèbres - 2 (Durotar)
#title Frappe-ténèbres


    --Rune of Shadowstrike

step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .accept 77592 >>Acceptez la quête Au sommet des falaises << Troll
    .accept 77583 >>Acceptez la quête Au sommet des falaises << Orc
    .target Rwag
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Ouvrez la |cRXP_PICK_Cache dissimulée|r. Récupérez-y la |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r
    >>|cRXP_WARN_Contournez|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_et descendez en sautant pour aller jusqu'au coffre|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rwag|r
    .turnin 77592 >>Rendez la quête Au sommet des falaises << Troll
    .turnin 77583 >>Rendez la quête Au sommet des falaises << Orc
    .target Rwag
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Frappe-ténèbres - 2 (Tirisfal)
#title Frappe-ténèbres


    --Rune of Shadowstrike

step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .accept 77669 >>Acceptez la quête La rune écarlate
    .target David Trias
step
    #season 2
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
    >>Tuez les |cRXP_ENEMY_Convertis écarlates|r ou utilisez Vol à la tire sur eux. Dépouillez-les pour la |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .mob Scarlet Convert
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune de Frappe des ténèbres]|r |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Frappe-ténèbres)].
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Rendez la quête La rune écarlate
    .target David Trias
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Breuvage mortel - 25 (Forêt des Pins-argentés)
#title Breuvage mortel


    --Rune of Deadly Brew

step
    #season 2
    .goto Silverpine Forest,47.12,71.01
    >>Cliquez sur le |cRXP_PICK_Piquet boîte morte|r dans la Forêt des Pins-Argentés
    .accept 78261 >> Acceptez la quête La Corne de Xelthos
step
    #season 2
    #completewith next
    .zone 209 >> Entrez dans le Donjon d'Ombrecroc
    >>|cRXP_WARN_Vous devez faire la prochaine partie seul ! Si vous êtes en groupe, vous ne pourrez pas obtenir les clés dont vous avez besoin !|r
step << Horde
    #season 2
    .gossipoption 96495,1 >>En restant camouflé, passez devant |cRXP_ENEMY_Rethiltripe|r, parlez au |cRXP_FRIENDLY_Traqueur noir Adamant|r et utilisez ensuite |T132331:0|t[Disparition]. Il ouvrira la porte pour vous
    .target Deathstalker Adamant
    .train 400080,1
step << Alliance
    #season 2
    .gossipoption 96494 >>En restant camouflé, passez devant |cRXP_ENEMY_Rethiltripe|r, parlez à l' |cRXP_FRIENDLY_Ensorceleur Ashcrombe|r et utilisez ensuite |T132331:0|t[Disparition]. Il ouvrira la porte pour vous
    .target Sorcerer Ashcrombe
    .train 400080,1
step
    #season 2
    #completewith next
    >>Utilisez |T133644:0|t[Vol à la tire] sur |cRXP_ENEMY_Gémela|r pour obtenir la |T134243:0|t[|cRXP_LOOT_Demi-clé de la sœur|r]
    >>|cRXP_WARN_Elle se situe dans la grande salle à manger à l'étage inférieur|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
step
    #season 2
    >>Utilisez |T133644:0|t[Vol à la tire] sur |cRXP_ENEMY_Gefell|r pour obtenir la |T134244:0|t[|cRXP_LOOT_Demi-clé du frère|r]
    >>|cRXP_WARN_Il se trouve au-dessus de la salle à manger, au deuxième étage|r
    .collect 210212,1 --Brother's Half-Key (1)
    .mob Gefell
    .train 400080,1
step
    #season 2
    >>Utilisez |T133644:0|t[Vol à la tire] sur |cRXP_ENEMY_Gémela|r pour obtenir la |T134243:0|t[|cRXP_LOOT_Demi-clé de la sœur|r]
    >>|cRXP_WARN_Elle se situe dans la grande salle à manger à l'étage inférieur|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
    .train 400080,1
step
    #season 2
    .use 210212 >>Retournez dans la cour extérieure et entrez dans les Écuries. Combinez les deux clés pour obtenir la |T237379:0|t[|cRXP_LOOT_Clé jumelle|r]
    .collect 210209,1 --Twin Key (1)
    .train 400080,1
step
    #season 2
    >>Ouvrez le |cRXP_PICK_Coffre orné|r dans les écuries pour obtenir la |cRXP_LOOT_Corne de Xelthos|r
    .complete 78261,1 --Horn of Xelthos (1)
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Cliquez sur le |cRXP_PICK_Piquet boîte morte|r dans la Forêt des Pins-argentés
    .turnin 78261 >> Rendez la quête La Corne de Xelthos
step
    #season 2
    #completewith next
    +|cRXP_WARN_Entrez maintenant dans n'importe quelle capitale pour recevoir du courrier de *C*|r
    .train 400080,1
step << Horde
    #season 2
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Volez à Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400080,1
step << Alliance
    >>Allez à Southshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Volez à Ironforge
    .target Darla Harris
    .train 400080,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Entrez dans Undercity. Vérifiez votre boîte aux lettres pour la lettre de *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Entrez dans Ironforge. Vérifiez votre boîte aux lettres pour la lettre de *C*. Passez cette étape si vous le faites dans une autre capitale|r << Alliance
    .train 400080,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Ouvert votre boîte aux lettres pour lire le courrier de *C* une fois que vous le recevez. Prenez un trajet aérien de nouveau vers la Forêt des Pins argentés quand vous êtes prêt|r << Horde
    +|cRXP_WARN_Ouvrez votre boîte aux lettres pour lire le courrier de *C* une fois que vous le recevez. Prenez un trajet aérien pour Southshore puis dirigez-vous vers la Forêt des Pins argentés quand vous êtes prêt|r << Alliance
step << Horde
    #season 2
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Volez au Sépulcre
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Volez à Southshore
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .train 400080,1
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Cliquez sur le |cRXP_PICK_Piquet boîte morte|r dans la Forêt des Pins-Argentés pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Breuvage mortel|r]
    .collect 203994,1 --Rune of Deadly Brew (1)
    .train 400080,1
step
    #season 2
    .train 400080 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Breuvage mortel|r]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tireur rapide - 10 (Durotar)
#title Tireur rapide


    --Rune of Quick Draw

step
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>Tuez les |cRXP_ENEMY_Marins de Kul Tiras|r et les |cRXP_ENEMY_Soldats de marine de Kul Tiras|r ou utilisez |T133644:0|t[Vol à la tire] sur eux. Dépouillez-les pour obtenir le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r]
    .collect 207109,1 --Top-Right Map Piece (1)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .train 400095,1
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
    >>Tuez les |cRXP_ENEMY_Hurans Tranchecrins|r et les |cRXP_ENEMY_Hurans Tranchecrins|r ou utilisez |T133644:0|t[Vol à la tire] sur eux. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte|r]
    .collect 207107,1 --Bottom-Right Map Piece (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 400095,1
step
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>Tuez les |cRXP_ENEMY_Trolls maléficiés|r et les |cRXP_ENEMY_Trolls vaudous|r ou utilisez |T133644:0|t[Vol à la tire] sur eux. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte|r]
    .collect 207106,1 --Bottom-Left Map Piece (1)
    .mob Hexed Troll
    .mob Voodoo Troll
    .train 400095,1
step
    #completewith next
    .goto Durotar,55.12,10.10,60 >> Voyagez vers le rocher du Crâne
step
    #season 2
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>Tuez les |cRXP_ENEMY_Orcs de la Lame ardente|r ou utilisez |T133644:0|t[Vol à la tire] sur eux. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte|r]
    .collect 207108,1 --Top-Left Map Piece (1)
    .mob Burning Blade Thug
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .train 400095,1
step
    #season 2
    .use 207108 >>Utilisez les |T134327:0|t[|cRXP_LOOT_Morceaux de carte|r] pour les combiner en la |T134269:0|t[|cRXP_LOOT_Carte au trésor de Durotar|r]
    .collect 207110,1 --Durotar Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Durotar,62.14,94.66
    .use 207110 >>Utilisez la |T134269:0|t[|cRXP_LOOT_Carte au trésor de Durotar|r] sur l'Île de l'Écho la plus au sud
    >>Ouvrez le |cRXP_PICK_Trésor enfoui|r qui apparaît pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r] |cRXP_WARN_pour apprendre|r |T134536:0|t[Tireur rapide]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tireur rapide - 10 (Tirisfal)
#title Tireur rapide


    --Rune of Quick Draw

step
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>Utilisez le |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Fermiers de Tirisfal|r et les |cRXP_ENEMY_Journaliers de Tirisfal|r ou tuez-les. Récupérez le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #season 2
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
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Guerriers écarlates|r ou tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte|r]
    >>|cRXP_WARN_N'importe lequel des Humanoïdes de la Croisade écarlate à Tirisfal peut faire tomber le Morceau de carte|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gnolls Poil-Putride|r ou tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
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
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Murlocs|r ou tuez-les. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #season 2
    .use 208036 >>Utilisez les |T134327:0|t[|cRXP_LOOT_Morceaux de carte|r] pour les combiner en la |T134269:0|t[|cRXP_LOOT_Carte au trésor de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>Utilisez la |T134269:0|t[|cRXP_LOOT_Carte au trésor de Tirisfal|r] sous le pont
    >>Ouvrez le |cRXP_PICK_Trésor enfoui|r qui apparaît pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tireur rapide|r] |cRXP_WARN_pour apprendre|r |T134536:0|t[Tireur rapide]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Ombres meurtrières - 10 (Durotar)
#title Ombres meurtrières


    --Rune of Slaughter from the Shadows

step
    #completewith next
    .goto Durotar,54.25,27.64,40 >>Rendez-vous au point de saut juste à l'est de la Caverne des Terrevent
step
    #season 2
    .goto Durotar,54.25,27.64,40,0
    .goto Durotar,53.74,27.14
    >>Ouvrez le |cRXP_PICK_Coffret poussiéreux|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r]
    >>|cRXP_WARN_Vous devrez réussir un petit saut afin d'atteindre le coffre|r
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r] |cRXP_WARN_pour apprendre|r |T236280:0|t[Ombres meurtrières]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Ombres meurtrières - 10 (Tirisfal)
#title Ombres meurtrières


    --Rune of Slaughter from the Shadows


step
    #season 2
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Voyagez à la crypte des Moulins d'Agamand
step
    #season 2
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Tuez les |cRXP_ENEMY_Ancêtres gémissantes|r et les |cRXP_ENEMY_Ancêtres pourrissants|r. Dépouillez-les pour une |T134245:0|t[|cRXP_LOOT_Clé du coffret à reliques Agamand|r]
    >>|cRXP_WARN_Soyez prudent ! Les mobs de cette crypte réapparaissent dynamiquement !|r
    .collect 208005,1 --Agamand Relic Coffer Key (1)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .train 42992,1
step
    #season 2
    .goto Tirisfal Glades,52.53,26.91
    >>Ouvrez le |cRXP_PICK_Coffre aux reliques|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r]
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Massacre|r] |cRXP_WARN_pour apprendre|r |T236280:0|t[Ombres meurtrières]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Estropier - 8 (Tirisfal)
#title Estropier


    --Rune of Mutilate

step
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Utilisez |T133644:0|t[Vol à la tire] sur le |cRXP_ENEMY_Capitaine Perrine|r pour une |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step
    #season 2
    #completewith next
    .goto Tirisfal Glades,60.90,51.49,10 >>Allez à l'Hôtel de ville de Brill
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Utilisez la |T133385:0|t[|cRXP_LOOT_Chevalière de lieutenant écarlate|r] pour créer |T134328:0|t[|cRXP_LOOT_Note de service écarlate urgente falsifiée|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jamie Nore|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Estropier - 10 (Durotar)
#title Estropier


    --Rune of Mutilate

step
    #season 2
    #completewith next
    .goto Durotar,53.18,29.15,50 >> Voyagez vers la Caverne des Terrevent
step
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Nervis de la Lame ardente|r pour la |T134331:0|t[|cRXP_LOOT_Note de Ba’so|r]
    .collect 207098,1 --Note from Ba'so (1)
    .mob Burning Blade Thug
    .train 400094,1
step
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ba'so|r pour recevoir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    >>|cRXP_WARN_Il est camouflé !|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entre les deux yeux - 8 (Tirisfal)
#title Entre les deux yeux


    --Rune of Between the Eyes

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
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Murlocs Aileron noir|r pour la |T134241:0|t[|cRXP_LOOT_Clé de cache de l’épave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Ouvrez la |cRXP_PICK_Cache de l’épave|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Entre les deux yeux - 8 (Orgrimmar)
#title Entre les deux yeux


    --Rune of Between the Eyes

step
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r]
    >>|cRXP_WARN_Elle se trouve à l'étage supérieur de la Herse|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de précision|r] |cRXP_WARN_pour apprendre|r |T135610:0|t[Entre les deux yeux]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Danse des lames - 15 (Les Tarides)
#title Danse des lames


    --Rune of Blade Dance

step
    #season 2
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Brigands des Mers du sud|r pour la |T132761:0|t[|cRXP_LOOT_Boîte d’allumettes de boucanier|r]
    .collect 208768,1 --Buccaneer's Matchbox (1)
    .mob Southsea Brigand
    .train 400099,1
step
    #season 2
    .goto The Barrens,61.82,45.80
    >>Cliquez sur le Baril de poudre. Ouvrez la |cRXP_PICK_Planque à butin des mers du Sud|r qui apparaît pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r]
    .collect 208771,1 --Rune of Blade Dance (1)
    .train 400099,1
step
    #season 2
    .train 400099 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Danse des lames|r] |cRXP_WARN_pour apprendre|r |T132350:0|t[Danse des lames]
    .use 208771
    .itemcount 208771,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Coup de sabre - 15 (Les Tarides)
#title Coup de sabre


    --Rune of Saber Slash

step
    #season 2
    #completewith next
    +|cRXP_WARN_Votre niveau de compétence en crochetage doit être au moins de 80 pour obtenir cette rune !|r
    .skill pick lock,>80,1
step
    #season 2
    .goto The Barrens,62.31,54.22
    >>Récupérez la |cRXP_PICK_Malle de palefrenier|r sur l'écurie pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    >>|cRXP_WARN_Montez la colline et sautez sur le mur du château. D'ici, vous pouvez sauter sur l'écurie|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] |cRXP_WARN_pour apprendre|r |T132375:0|t[Coup de sabre]
    .use 208772
    .itemcount 208772,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Coup de sabre - 15 (Silverpine)
#title Coup de sabre

    --Rune of Saber Slash

step
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Dépouillez le |cRXP_PICK_Coffre rouillé|r à côté de l'entrée du Donjon d'Ombrecroc pour |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r]
    >>|cRXP_WARN_Utilisez|r |T132307:0|t[Sprint] |cRXP_WARN_puis sautez du pont vers le coffre|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] |cRXP_WARN_pour apprendre|r |T132375:0|t[Coup de sabre]
    .use 208772
    .itemcount 208772,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#title Pas de l’ombre
#name Pas de l’ombre - 30 (Forêt des Pins-argentés)

step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
step
    .train 400101,1
    >>Cliquez sur le coffre |cRXP_PICK_Piquet boîte morte|r au sol
    .goto Silverpine Forest,47.114,70.974
    .accept 78676 >>Acceptez la quête L’Œil de Bhossca
step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal et au Monastère Écarlate
step
    >>|cRXP_WARN_Ouvrez le|r |cRXP_PICK_Placard à fournitures|r |cRXP_WARN_dans l'écurie pour obtenir l'|r |T132665:0|t[Uniforme d’initié écarlate]
    .goto Tirisfal Glades,81.2,32.12
    .collect 210955,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.44,19.69,10,0
    .goto Eastern Kingdoms,47.73,19.39,5 >> Entrez dans la partie Cimetière|cRXP_WARN_ du donjon le Monastère écarlate : |rCimetière|cRXP_WARN_ SEUL|r
step
    >>Utilisez |T133644:0|t[Vol à la tire] sur un |cRXP_ENEMY_Clairvoyant écarlate|r pour obtenir la |T134241:0|t[Clé de clairvoyant]
    >>|cRXP_WARN_Servez-vous de|r |T132289:0|t[Distraction] |cRXP_WARN_pour éviter d'être détecté|r
    .goto Eastern Kingdoms,47.73,19.39
    .collect 210963,1
    .mob Scarlet Scryer
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> Entrez dans la partie |cRXP_WARN_Bibliothèque|r du donjon Monastère écarlate: |cRXP_WARN_SEUL|r
step
    #completewith next
    +|cRXP_WARN_Courez jusqu'au couloir avant le dernier boss|r
step
    >>Récupérez la |cRXP_PICK_Boîte aux lettres personnelle|r sur la gauche pour le |T134331:0|t[|cRXP_LOOT_Message confidentiel|r]
    .use 210955 >>|cRXP_WARN_Utilisez l'|r |T132665:0|t[Uniforme d'initié écarlate] |cRXP_WARN_pour rendre les PNJs neutres|r
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210967,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.73,19.39,5 >> Entrez dans la partie Cimetière|cRXP_WARN_ du donjon le Monastère écarlate : |rCimetière|cRXP_WARN_ SEUL|r
step
    >>|cRXP_WARN_Allez à la zone extérieur dans le donjon et cherchez un banc entre deux statues sur les murs droit et gauche|r
    *|cRXP_WARN_Des deux côtés|r utilisez /sit (vous pouvez le faire en restant camouflé) sur les bancs jusqu'à ce que l'émote indiquant que|cRXP_WARN_votre personnage entend le son de la pierre bouger|r apparaisse dans le chat.
    *Allez ensuite au Tombeau à côté du |cRXP_WARN_mur de droite|r et ouvrez le |cRXP_PICK_Coffre de pierre|r pour la |T134242:0|t[Clé du reliquaire]
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210968,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> Entrez dans la partie |cRXP_WARN_Bibliothèque|r du donjon Monastère écarlate: |cRXP_WARN_SEUL|r
step
    #completewith next
    +|cRXP_WARN_Courez vers la "Gallerie des Trésors"|r
step
    >>Récupérez le |cRXP_PICK_Reliquaire cadenassé|r dans la première salle sur la gauche pour |T134331:0|t[|cRXP_LOOT_L’Œil de Bhossca|r]
    .use 210955 >>|cRXP_WARN_Utilisez l'|r |T132665:0|t[Uniforme d'initié écarlate] |cRXP_WARN_pour rendre les PNJs neutres|r
    .goto Eastern Kingdoms,47.79,19.59
    .complete 78676,1 --1/1 Eye of Bhossca
    .train 400101,1
step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
step
    .train 400101,1
    >>Cliquez sur le coffre |cRXP_PICK_Piquet boîte morte|r au sol
    .goto Silverpine Forest,47.1,71.1
    .turnin 78676 >>Rendez la quête L’Œil de Bhossca
step
    #completewith next
    +|cRXP_WARN_Entrez maintenant dans n'importe quelle capitale pour recevoir du courrier de *C*|r
    .train 400101,1
step << Horde
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Volez à Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400101,1
step << Alliance
    >>Allez à Southshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Volez à Ironforge
    .target Darla Harris
    .train 400101,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Entrez dans Undercity. Vérifiez votre boîte aux lettres pour la lettre de *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Entrez dans Ironforge. Vérifiez votre boîte aux lettres pour la lettre de *C*. Passez cette étape si vous le faites dans une autre capitale|r << Alliance
    .train 400101,1
step
    #completewith next
    +|cRXP_WARN_Ouvert votre boîte aux lettres pour lire le courrier de *C* une fois que vous le recevez. Prenez un trajet aérien de nouveau vers la Forêt des Pins argentés quand vous êtes prêt|r << Horde
    +|cRXP_WARN_Ouvrez votre boîte aux lettres pour lire le courrier de *C* une fois que vous le recevez. Prenez un trajet aérien pour Southshore puis dirigez-vous vers la Forêt des Pins argentés quand vous êtes prêt|r << Alliance
step << Horde
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Volez au Sépulcre
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Volez à Southshore
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
    .train 400101,1
step
    .goto Silverpine Forest,47.114,70.974
    >>Cliquez sur le coffre |cRXP_PICK_Piquet boîte morte|r pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Pas de l’ombre|r]
    .collect 210979,1 --Rune of Shadowstep (1)
    .train 400101,1
step
    .train 400101 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Pas de l’ombre|r] |cRXP_WARN_pour apprendre|r |T132303:0|t[Pas de l’ombre]
    .use 210979
    .itemcount 210979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Lancer de shuriken - 30 (Marais des Chagrins)
#title Lancer de shuriken

step
    .train 400096,1
    .train 1842 >>|cRXP_WARN_Vous devez apprendre|r |T136162:0|t[Désarmement de piège] |cRXP_WARN_|r avant d'obtenir la|T134419:0|t[|cRXP_FRIENDLY_Rune de l’assassin|r]
    .collect 5060,1 >>|cRXP_WARN_Vous aurez également besoin des|r |T134065:0|t[Outils de voleur]
step
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au Marais des Chagrins
step
    .goto Swamp of Sorrows,41.48,29.97
    .train 400096,1
    .cast 1842 >>|cRXP_WARN_Lancez|r |T136162:0|t[Désarmement de piège] |cRXP_WARN_sur le|r |cRXP_PICK_Piège|r |cRXP_WARN_sur l'arbre|r
step
    .goto Swamp of Sorrows,42.76,30.77
    >>Ouvrez la Cache visible|cRXP_PICK_ qui apparaît pour la |T134419:0|t[|rRune de l'assassin|cRXP_FRIENDLY_]|r
    .collect 213139,1
step
    .itemcount 213139,1
    .use 213139
    .train 400096 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l'assassin|r] |cRXP_WARN_pour apprendre|r |T132330:0|t[Lancer de shuriken]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Maître de la discrétion - 34 (Vallée de Strangleronce)
#title Maître de la discrétion

step
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_Vous devez monter votre niveau de compétence en|r |T136058:0|t[Crochetage] |cRXP_WARN_au moins à 125 pour obtenir la rune de|r |T132299:0|t[Maître de la discrétion] |cRXP_WARN_|r
step
    .train 425103,1
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
step
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >> Entrez dans la Grotte des Kurzen
step
    .train 425103,1
    #completewith next
    >>Lancez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Troupes d'élite de Kurzen|r et les |cRXP_ENEMY_Lieutenants de Kurzen|r pour la |cRXP_LOOT_Clé de cage de la base|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>Ouvrez la |cRXP_PICK_Caisse de fournitures de Kurzen|r. Récupérez-y l' |cRXP_LOOT_Uniforme de combat de Kurzen|r
    .collect 216617,1
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Troupes d'élite de Kurzen|r et les |cRXP_ENEMY_Lieutenants de Kurzen|r pour la |cRXP_LOOT_Clé de cage de la base|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Sortez de la grotte. Allez vers |cRXP_FRIENDLY_Wendel Mathers|r dans la tour à l'extérieur
step
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wendel Mathers|r dans la tour
    >>|cRXP_WARN_Son délai de réapparition est d'environ 3 minutes|r
    .destroy 216616 >> Donnez-lui la |cRXP_LOOT_Clé de cage de la base|r
    .destroy 216617 >> Donnez-lui l' |cRXP_LOOT_Uniforme de combat de Kurzen|r
    .skipgossip 218230,1
    .target Wendel Mathers
step
    .train 425103,1
    #completewith next
    .subzone 35 >>Voyagez à Baie-du-Butin
step
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Capitaine Aransas|r
    >>Elle vous donnera la |T133640:0|t[|cRXP_LOOT_Récompense du capitaine Aransas|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
step
    .train 425103,1
    .use 216618 >>Ouvrez la |T133640:0|t[|cRXP_LOOT_Récompense du capitaine Aransas|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de subtilité|r] et le |T338666:0|t[|cRXP_FRIENDLY_Charme de Jani|r]
    >>|cRXP_WARN_Ne détruisez PAS le|r |T338666:0|t[|cRXP_FRIENDLY_Charme de Jani|r] |cRXP_WARN_comme vous en aurez besoin pour obtenir d'autres runes|r
    .collect 213136,1
step
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de subtilité|r] |cRXP_WARN_pour apprendre|r |T132299:0|t[Maître de la discrétion]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#title Encaisser les coups
#name Encaisser les coups - 27 (Mille pointes)


step
    #optional
    .train 400093,1
    .skill lockpicking,45 >>|cRXP_WARN_Vous devez monter votre compétence de|r |T136058:0|t[Crochetage] |cRXP_WARN_jusqu'à au moins 45 pour obtenir la rune d'|r |T134919:0|t[Encaisser les coups] |cRXP_WARN_|r
step
    .train 400093,1
    #completewith next
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
step
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >> Entrez dans la grande tente du Camp E’thok
step
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>Ouvrez le |cRXP_PICK_Coffre imposant volé|r. Récupérez-y le |T132597:0|t[|cRXP_LOOT_Grand coffre renforcé|r]
    .collect 215451,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Utilisez|r |T136058:0|t[Crochetage] |cRXP_WARN_sur le|r |T132597:0|t[|cRXP_LOOT_Grand coffre renforcé|r] |cRXP_WARN_pour le déverrouiller|r
    .usespell 1804
    .use 215451
step
    .train 400093,1
    .use 215451 >> Ouvrez le |T132597:0|t[|cRXP_LOOT_Grand coffre renforcé|r]. Récupérez-y le |T132597:0|t[|cRXP_LOOT_Coffre renforcé moyen|r]
    .collect 215452,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lancez|r |T136058:0|t[Crochetage] |cRXP_WARN_sur le|r |T132597:0|t[|cRXP_LOOT_Coffre renforcé moyen|r] |cRXP_WARN_pour le déverrouiller|r
    .usespell 1804
    .use 215452
step
    .train 400093,1
    .use 215452 >> Ouvrez le |T132597:0|t[|cRXP_LOOT_Coffre renforcé moyen|r]. Récupérez-y le |T132597:0|t[|cRXP_LOOT_Petit coffre renforcé|r]
    .collect 215453,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lancez|r |T136058:0|t[Crochetage] |cRXP_WARN_sur le|r |T132597:0|t[|cRXP_LOOT_Petit coffre renforcé|r] |cRXP_WARN_pour le déverrouiller|r
    .usespell 1804
    .use 215453
step
    .train 400093,1
    .use 215453 >> Ouvrez le |T132597:0|t[|cRXP_LOOT_Petit Coffre renforcé|r]. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de gaucher|r]
    .collect 213138,1
step
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de gaucher|r] |cRXP_WARN_pour apprendre|r |T134919:0|t[Encaisser les coups]
]])

 RXPGuides.RegisterGuide([[
 #classic
 << Rogue SoD
 #group RestedXP Guide des runes et des livres
 #subgroup Casque
 #title Attaques focalisées
 #name Attaques focalisées - 34 (Hinterlands)

 step
    >>|cRXP_WARN_Vous aurez besoin de|r |T136175:0|t[Cécité] |cRXP_WARN_et de|r |T133587:0|t[Poudre aveuglante] |cRXP_WARN_pour obtenir la rune d'|r |T236274:0|t[Attaques focalisées] |cRXP_WARN_|r
    .train 2094 >>Apprenez |T136175:0|t[Cécité]
    .collect 5530,1 -- Blinding Powder 1/1
    .train 432291,1
step
    #completewith next
    .zone The Hinterlands >>Voyagez aux |cFFfa9602Hinterlands|r
step
    .goto The Hinterlands,72.76,52.91
    >>Utilisez |T136175:0|t[Cécité] sur le |cRXP_ENEMY_Masque Vilebranche|r, puis dépouillez-le pour le coffre du |cRXP_PICK_Trésor de la chauve-souris|r afin d'obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de focalisation|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 432291,1
step
    .itemcount 221433,1
    .use 221433
    .train 432291 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de focalisation|r] |cRXP_WARN_pour apprendre|r |T236274:0|t[Attaques focalisées]
 ]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Avantage déloyal
#name Avantage déloyal - 40 (Tanaris)

step
    .train 921 >>|cRXP_WARN_Vous devez apprendre|r |T133644:0|t[Vol à la tire] |cRXP_WARN_pour obtenir la rune d'|r |T236285:0|t[Avantage déloyal] |cRXP_WARN_|r
    .train 432301,1
step
    #completewith CoinPurse
    .zone Tanaris >>|cRXP_WARN_Voyagez vers|r |cFFfa9602Tanaris|r
step
    #completewith next
    .subzone 1336 >>Voyagez à la Crique des Gréements
step
    #label CoinPurse
	.line Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
	.goto Tanaris,70.94,42.85,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,71.07,46.03,50,0
	.goto Tanaris,71.25,47.98,50,0
	.goto Tanaris,72.39,48.23,50,0
	.goto Tanaris,72.59,47.10,50,0
	.goto Tanaris,73.27,47.99,50,0
	.goto Tanaris,74.25,47.27,50,0
	.goto Tanaris,73.68,45.89,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,70.94,42.85,50,0
    >>|cRXP_WARN_Lancez|r |T133644:0|t[Vol à la tire] |cRXP_WARN_sur les|r |cRXP_ENEMY_Pirates des Mers du sud|r |cRXP_WARN_et les|r |cRXP_ENEMY_Flibustiers des Mers du sud|r |cRXP_WARN_jusqu'à ce que vous receviez un|r |T133639:0|t|cRXP_LOOT_Bourse de kidnappeur|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432301,1
step
    >>Ouvrez la |T133639:0|t|cRXP_LOOT_Bourse de kidnappeur|r et dépouillez-la pour un |T133302:0|t|cRXP_LOOT_Médaillon précieux|r
    .collect 221370,1 -- Precious Medallion 1/1
    .use 221371
    .train 432301,1
step << Rogue
    .goto Tanaris,67,22
    .gossipoption 122303 >>Parlez à |cRXP_FRIENDLY_Jabbey|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup bas|r]
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432301,1
    .itemcount 221370,1
step << Rogue
    .itemcount 221428,1
    .use 221428
    .train 432301 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup bas|r] |cRXP_WARN_pour apprendre|r |T236285:0|t[Avantage déloyal]

]])
RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Carnage
#name Carnage - 45 (Terres foudroyées)

step
    #optional
    .skill lockpicking,225 >>|cRXP_WARN_Vous devez monter votre niveau de compétence en|r |T136058:0|t[Crochetage] |cRXP_WARN_jusqu'à 225 au moins pour obtenir la rune de|r |T236268:0|t[Carnage] |cRXP_WARN_|r
step
    #completewith next
    .zone Blasted Lands >>Voyagez aux |cFFfa9602Terres foudroyées|r
step
    #completewith next
    .goto Blasted Lands,45.27,16.52,10 >>Allez jusqu'en haut de la tour devant le Bastion Cognepeur
step
    .goto Blasted Lands,45.27,16.52
    >>Ouvrez le |cRXP_PICK_Cache abandonnée|r. Tuez le |cRXP_ENEMY_mob|r (niveau 46) qui apparaît
    >>Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de carnage|r]
    .collect 221461,1 -- Rune of Carnage 1/1
    .unitscan Murderous Lost One
    .train 432299,1
step
    .use 221461
    .itemcount 221461,1
    .train 432299 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de carnage|r] |cRXP_WARN_pour apprendre|r |T236268:0|t[Carnage]

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#title Honneur des voleurs
#name Honneur des voleurs - 45 (Azeroth)

step
    #optional
    .xp 45 >>|cRXP_WARN_Vous devez atteindre le niveau 45 afin d'obtenir cette rune|r
step
    #optional
    .train 400101 >>|cRXP_WARN_Vous devez avoir appris|r |T132303:0|t[Pas de l’ombre] |cRXP_WARN_afin d'obtenir cette rune|r
step
    #optional
    .train 400080,1 >>|cRXP_WARN_Vous devez avoir appris|r |T236270:0|t[Breuvage mortel] |cRXP_WARN_afin d'obtenir cette rune|r
step
    #optional
    #completewith letterC
    >>|cRXP_WARN_Pour commencer la quête de cette rune, vous devez avoir fait la quête "Ravenholdt, le manoir"  qui sert d'introduction à la faction de voleurs Ravenholdt. Pour l'obtenir, parlez à|r |cRXP_FRIENDLY_Osborne l'homme de la nuit|r |cRXP_WARN_dans Stormwind|r << Alliance
    +|cRXP_WARN_Pour commencer la quête de cette rune, vous devez avoir fait la quête "Ravenholdt, le manoir"  qui sert d'introduction à la faction de voleurs Ravenholdt. Pour l'obtenir, parlez à|r |cRXP_FRIENDLY_Ormok|r |cRXP_WARN_dans Orgrimmar|r << Horde
    .accept 6681 >>Acceptez la quête Ravenholdt, le manoir << Alliance
    .isQuestAvailable 6681
step << Horde
    .goto Orgrimmar,43.91,54.69
    .gossipoption 96925 >>Parlez à |cRXP_FRIENDLY_Ormok|r pour recevoir une |T133460:0|t[|cRXP_LOOT_Lettre élégante|r]. Utilisez-la pour accepter la quête
    .disablecheckbox
    .collect 17126,1,6681
    .accept 6681 >>Acceptez la quête Ravenholdt, le manoir
    .target Ormok
    .isQuestAvailable 6681
step
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux |cFFfa9602Contreforts d'Hillsbrad|r
    .isOnQuest 6681
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entrez dans le manoir de Ravenholdt
    .isOnQuest 6681
step
    .goto Hillsbrad Foothills,78.62,17.96
    >>Dirigez-vous vers le |cRXP_PICK_Coffre|r
    .complete 6681,1 --Rite of Cunning: 1/1
    .isOnQuest 6681
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fahrad|r à l'étage
    .turnin 6681 >> Rendez la quête Ravenholdt, le manoir
    .target Fahrad
    .isOnQuest 6681
step << Alliance
    +|cRXP_WARN_Allez dans n'importe quelle capitale|r
    >>Darnassus
    >>Ironforge
    >>Stormwind
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .train 432295,1
step << Horde
    +|cRXP_WARN_Allez dans n'importe quelle capitale|r
    >>Undercity
    >>Thunder Bluff
    >>Orgrimmar
    .zoneskip Undercity
    .zoneskip Thunder Bluff
    .zoneskip Orgrimmar
    .train 432295,1
step
    #label letterC
    +|cRXP_WARN_Vérifiez dans votre boîte aux lettres la lettre de *Fahrad*|r
    >>|cRXP_WARN_Passez cette étape quand vous êtes prêt|r
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux |cFFfa9602Contreforts d'Hillsbrad|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entrez dans le manoir de Ravenholdt
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fahrad|r à l'étage
    .accept 80526 >>Acceptez la quête Dupe-moi deux fois
    .turnin 80526 >>Rendez la quête Dupe-moi deux fois
    .accept 80411 >>Acceptez la quête Le talisman de Kazdor
    .target Fahrad
step
    #optional
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
step
    #completewith next
    .goto Tanaris,38.69,20.20
    .subzone 1176 >>Entrez dans Zul'Farrak
    >>|cRXP_WARN_Vous ne pouvez pas être dans un groupe pour finir la quête pour cette rune|r
step
    .goto Tanaris,38.69,20.20
    >>Ouvrez les |cRXP_PICK_Réceptacles d’argile|r pour les |T134799:0|t[|cRXP_LOOT_Viles décoctions|r]
    >>|cRXP_WARN_Ils se situent dans les tentes trolls de Zul'Farrak|r
    .collect 217716,2
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Déplacez-vous vers la |rgrotte|cRXP_ENEMY_ de |r |cRXP_WARN_Antu'sul|r
step
    >>Utilisez une |T134799:0|t[|cRXP_LOOT_Vile décoction|r] sur le chaudron. |cRXP_WARN_Elle ne cassera pas votre camouflage|r
    >>Pendant que le boss est distrait, ramassez la |cRXP_PICK_Sacoche d’Antu’sul|r pour obtenir une |T133724:0|t[|cRXP_LOOT_Offrande d’os|r]
    .collect 217721,1 --Offering of Bone
    .use 217716
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Avancez vers le |cRXP_ENEMY_Sorcier-docteur Zum'rah|r dans la zone du cimetière|r
step
    >>Utilisez votre deuxième |T134799:0|t[|cRXP_LOOT_Vile décoction|r] sur le chaudron à côté du |cRXP_ENEMY_Sorcier-docteur Zum'rah|r. |cRXP_WARN_Cela n'interrompra pas votre camouflage|r
    >>Pendant qu'il est distrait, ramassez la |cRXP_PICK_Sacoche de Zum’rah|r pour obtenir le |T136232:0|t|cRXP_LOOT_Sceau des morts|r
    .collect 217727,1 --ward of the dead
    .use 217716
    .train 432295,1
step
    #completewith next
    .equip 13,217727 >>Équipez le bijou |T136232:0|t|cRXP_LOOT_Sceau des morts|r que vous venez de récupérer
    >>|cRXP_WARN_Cela vous montrera avec quelle|r |cRXP_PICK_Tombe peu profonde|r |cRXP_WARN_vous devez interagir|r
step
    >>Ouvrez la |cRXP_PICK_Tombe peu profonde|r révélée par une aura bleue pour obtenir |T236304:0|t|cRXP_LOOT_Offrande de chair|r
    .collect 217720,1 --offering of flesh
    .use 217727
    .train 432295,1
step
    >>Utilisez l' |T236304:0|t[|cRXP_LOOT_Offrande de chair|r] que vous venez de récupérer pour la combiner avec l' |T133724:0|t[|cRXP_LOOT_Offrande d’os|r] et en faire une |T236305:0|t[|cRXP_LOOT_Essence de magie du sang|r]
    .collect 217719,1 --Blood Magic Essence
    .use 217720
    .train 432295,1
step
    >>Allez en bas des escaliers de la pyramide et regardez à votre droite. Sur le côté du mur vous verrez un petit bloc de pierre. Sautez dessus et avancez sur le rebord
    >>Sur le deuxième balcon en bois à droite, vous trouverez une |cRXP_PICK_Cache des Furie-des-sables|r. Dépouillez-la pour l' |T237274:0|t[|cRXP_LOOT_Emblème vide|r]
    .collect 217717,1 --Hollow Emblem
    .train 432295,1
step
    >>Utilisez l' |T237274:0|t|cRXP_LOOT_Emblème vide|r que vous venez de récupérer pour le combiner avec l'|T236305:0|t[|cRXP_LOOT_Essence de magie du sang|r] pour créer l' |T133572:0|t[|cRXP_LOOT_Emblème de magie du sang|r]
    .collect 217718,1 --Emblem of Blood Magic
    .use 217717
    .train 432295,1
step
    >>Montez les escaliers jusqu'en haut de la pyramide et ouvrez le |cRXP_PICK_Coffre de guerre envoûté|r pour obtenir le |T133313:0|t[|cRXP_LOOT_Talisman de Kazdor|r]
    .collect 217609,1 --Talisman of Kazdor
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux |cFFfa9602Contreforts d'Hillsbrad|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entrez dans le manoir de Ravenholdt
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fahrad|r à l'étage
    .turnin 80411 >>Rendez la quête Le talisman de Kazdor
    .accept 80453 >>Acceptez la quête Meilleurs plans
    .target Fahrad
step
    .goto Alterac Mountains,86.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zan Shivsproket|r dans le sous-sol en bas
    .turnin 80453 >>Rendez la quête Meilleurs plans
    .accept 80454 >>Acceptez la quête Une dernière livraison
    .target Zan Shivsproket
step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
step
    .goto Silverpine Forest,47.114,70.974
    >>Cliquez sur le coffre |cRXP_PICK_Piquet boîte morte|r
    .turnin 80454 >>Rendez la quête Une dernière livraison
    .accept 80455 >>Acceptez la quête Attente insoutenable
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux |cFFfa9602Contreforts d'Hillsbrad|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entrez dans le manoir de Ravenholdt
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fahrad|r à l'étage
    .turnin 80455 >>Rendez la quête Attente insoutenable
    .target Fahrad
step
    .train 432295 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de la coterie|r] |cRXP_WARN_pour apprendre|r |T236275:0|t[Honneur des voleurs]
    .use 217736
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Tempête cramoisie
#name Tempête cramoisie - 60 (Maleterres de l'Ouest)

step
    .train 415918,1
    .zone Western Plaguelands >>Voyagez aux Maleterres de l'Ouest
step
    .train 415918,1
    #completewith next
    .subzone 190 >> Voyagez vers Âtreval
step
    #label ToolboxKey
    .train 415918,1
    .goto Western Plaguelands,45.0,13.6
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Ouvriers écarlates|r ou tuez-les. Dépouillez-les pour la |cRXP_LOOT_Clé de boîte à outils|r
    .collect 227928,1 -- Toolbox Key 1/1
    .mob Scarlet Worker
step
    .train 415918,1
    .goto Western Plaguelands,45.0,14.2
    >>Ouvrez la |cRXP_PICK_Boîte à outils écarlate|r. Récupérez-y le |cRXP_LOOT_Pied-de-biche rouillé|r
    .collect 227932,1 -- Rusty Crowbar 1/1
step
    .goto Western Plaguelands,49.5,18.5
    >>Allez en haut de la tour au milieu de Hearthglen. Ouvrez la |cRXP_PICK_Caisse marquée|r qui s'y trouve. Récupérez-y le |T133640:0|t[|cRXP_LOOT_Paquet caché|r] et ouvrez-le pour obtenir une |T134237:0|t[|cRXP_LOOT_Clé de cassette|r]
    .collect 227930,1
step
    .goto Western Plaguelands,46.3,14.6
    >>Allez à l'étage intermédiaire de la deuxième tour à Hearthglen située dans le côté nord de la ville. Utilisez la |T134237:0|t[|cRXP_LOOT_Clé de cassette|r] pour ouvrir la [|cRXP_PICK_Cassette de Belavus|r] et récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tempête cramoisie|r]
    .collect 227456,1 --Rune of the crimson tempest
step
    .use 227456
    .itemcount 227456,1
    .train 415918 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tempête cramoisie|r] |cRXP_WARN_pour apprendre|r |T135315:0|t[Tempête cramoisie]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Éventail de couteaux
#name Éventail de couteaux - 55 (Berceau-de-l’Hiver)

step
    .train 436609,1
    .zone Winterspring >>Voyagez au Berceau-de-l'Hiver
step
    .train 436609,1
    .goto Winterspring,67.7,35.4
    >>Ouvrez le |cRXP_PICK_Coffre en bois|r. Récupérez-y la |T134419:0|t[|cRXP_FRIENDLY_Rune de couteaux|r]
    >>|cRXP_WARN_En ouvrant le |cRXP_PICK_Coffre en bois|r, choisissez les options suivantes dans cet ordre :|r
    >>|cRXP_WARN_Sabre-de-givre|r
    >>|cRXP_WARN_Chouette|r
    >>|cRXP_WARN_Ours|r
    >>|cRXP_WARN_Chouette|r
    .collect 227921,1
step
    .use 227921
    .itemcount 227921,1
    .train 436609 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de couteaux|r] |cRXP_WARN_pour apprendre|r |T236273:0|t[Éventail de couteaux]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Tromblon
#name Tromblon - 60 (Maleterres de l'Est)

step
    .train 415922,1
    .zone Eastern Plaguelands >>Voyagez aux Maleterres de l'Est
step
    .train 415922,1
    .goto Eastern Plaguelands,83,85
    >>Ouvrez les |cRXP_LOOT_Cantine écarlate|r partout dans la Main de Tyr jusqu'à ce que vous récupériez un |cRXP_LOOT_Cachet d’émission|r
    .collect 227451,1
step
    .train 415922,1
    #completewith FinalPillar
    >>|cRXP_WARN_Dans les étapes suivantes, vous devez cliquer sur QUATRE |cRXP_PICK_Piliers d’émission|r dans le bon ordre. Après avoir cliqué sur l'un d'entre eux, vous serez téléporté ALÉATOIREMENT à un autre pilier. Vérifiez que vous êtes au bon endroit avant de cliquer sur un autre pilier !|r
step
    .train 415922,1
    .goto Eastern Plaguelands,82,57
    .cast 6477,6478 >>Cliquez sur le premier |cRXP_PICK_Pilier d’émission|r |cRXP_WARN_derrière la Chapelle de l’Espoir de Lumière|r
step
    .train 415922,1
    .goto Eastern Plaguelands,40,92
    .cast 6477,6478 >>Cliquez sur le deuxième |cRXP_PICK_Pilier d’émission|r |cRXP_WARN_à Darrowshire|r
step
    .train 415922,1
    .goto Eastern Plaguelands,70,34
    .cast 6477,6478 >>Cliquez sur le troisième |cRXP_PICK_Pilier d’émission|r |cRXP_WARN_à Valnord|r
step
    .train 415922,1
    #label FinalPillar
    .goto Eastern Plaguelands,14,30
    .cast 6477,6478 >>Cliquez sur le quatrième |cRXP_PICK_Pilier d’émission|r |cRXP_WARN_au Val-Terreur|r
step
    .train 415922,1
    >>|cRXP_WARN_Entrez dans la maison|r.
    >>Ouvrez la |cRXP_PICK_malle|r sur le sol. Récupérez-y la |T134419:0|t[|cRXP_LOOT_Rune de bretteur|r]
    .collect 227922,1
step
    .use 227922
    .itemcount 227922,1
    .train 415922 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de bretteur|r] |cRXP_WARN_pour apprendre|r |T134538:0|t[Tromblon]
]])
