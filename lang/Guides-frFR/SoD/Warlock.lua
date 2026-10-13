if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Hanter - 3 (Forêt d'Elwynn)
#title Hanter

step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>Ouvrez la |cRXP_PICK_Boîte de rangement des Défias|r sur le sol. Dépouillez-la pour la |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r]
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r] |cRXP_WARN_pour apprendre|r |T133816:0|t[Gravure de gants (Hanter)]
    .use 205230
    .itemcount 205230,1
    .train 403919,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Hanter - 1 (Dun Morogh)
#title Hanter

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Ouvrez la |cRXP_PICK_Cantine mâcheroc|r sur le sol. Ouvrez-la pour la |T134419:0|t|cRXP_LOOT_[Rune cauchemardesque]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    .train 403919 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune cauchemardesque]|r |cRXP_WARN_pour apprendre|r la |T133816:0|t[Gravure de gants (Hanter)]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Hanter - 2 (Durotar)
#title Hanter


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Acceptez la quête Puissance dérobée
    .target Nartok
    .train 403919,1
step
    #season 2
    .goto Durotar,42.99,54.43
    >>Ouvrez la |cRXP_PICK_Boîte de rangement détrempée|r afin d'obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r] à l'intérieur de la grotte
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .train 403919 >>|cRXP_WARN_Utilisez la|r |T134419:0|t|cRXP_LOOT_[Rune cauchemardesque]|r |cRXP_WARN_pour apprendre|r la |T133816:0|t[Gravure de gants (Hanter)]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
step << Orc
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77586 >>Rendez la quête Puissance dérobée
    .target Nartok
    .isOnQuest 77586
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Hanter - 2 (Clairières de Tirisfal)
#title Hanter


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Acceptez la quête La Rune perdue
    .target Maximillion
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Ouvrez la |cRXP_PICK_Planque perdue|r à l'intérieur de la grotte pour trouver la |T134419:0|t[|cRXP_FRIENDLY_Rune cauchemardesque|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : ALEEV DJEG LTACO|r]
    .use 205230
    .train 403919,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Rendez la quête La Rune perdue
    .target Maximillion


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Siphon d’âme - 13 (Durotar)
#title Siphon d’âme

step
    #completewith next
    .zone Durotar >>Voyagez à Durotar
step
    .train 403920,1
    .goto Durotar,48.60,15.28
    .collect 205020,1 >>Utilisez |T136163:0|t[Siphon d'âme] sur une bestiole afin d'obtenir un |T134095:0|t[Fragment d’âme pure]
step
    --Wowhead npc 3203 also possible, maybe better?
    .train 403920,1
    >>Utilisez |T136163:0|t[Siphon d'âme] sur |cRXP_ENEMY_Gazz'uz|r (à l'intérieur de la grotte) afin d'obtenir un |T134085:0|t[Fragment d’âme impure]. |cRXP_WARN_Vous n'avez pas besoin de le tuer et vous pouvez lancer votre siphon d'en bas|r
    .goto Durotar,51.47,9.73
    .collect 205019,1
    .mob Gazz'uz
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darmak Hurle-Sang|r
    .goto Durotar,54.6,41.6
    .collect 205022,1
    .skipgossip 208226,1
    .target Darmak Bloodhowl
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Siphon d’âme|r] |cRXP_WARN_pour apprendre|r |T136169:0|t[Siphon d'âme]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Siphon d’âme - 9 (Clairières de Tirisfal)
#title Siphon d’âme

step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
step
    #completewith next
    .train 403920,1
    .collect 205020,1 >>Utilisez |T136163:0|t[Siphon d'âme] sur une bestiole afin d'obtenir un |T134095:0|t[Fragment d’âme pure]
step
    .train 403920,1
    >>Utilisez votre |T136163:0|t[Siphon d'âme] sur |cRXP_ENEMY_Oeil-de-ver|r afin d'obtenir un |T134085:0|t[Fragment d’âme impure]. |cRXP_WARN_Vous n'avez pas besoin de le tuer.|r
    .goto Tirisfal Glades,58.6,31.6
    .collect 205019,1
    .mob Maggot Eye
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denton Morneroute|r à Undercity
    .goto Undercity,84.2,25.8
    .collect 205022,1
    .skipgossip 208682,1
    .target Denton Bleakway
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Siphon d’âme|r] |cRXP_WARN_pour apprendre|r |T136169:0|t[Siphon d'âme]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tactique démoniaque - 4 (Clairières de Tirisfal)
#title Tactique démoniaque

step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteragissez avec l' |cRXP_FRIENDLY_Acolyte mort|r. Ouvrez le |T133625:0|t[Fourre-tout d’acolyte]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rupert Boch|r à l'étage dans l'auberge.
    .goto Tirisfal Glades,61.6,52.4
    .collect 205182,1
    .skipgossip 2127,2
    .target Rupert Boch
step
    .train 416009,1
    >>Utilisez l' |T133447:0|t[Artéfact déchargé] à côté de la pierre runique. |cRXP_WARN_Vous aurez ensuite 10 minutes pour arriver à Undercity (regardez votre debuff)|r
    .goto Tirisfal Glades,76.61,44.87
    .use 205182
    .collect 205183,1
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Carentin Halgar|r à Undercity
    .goto Undercity,85.0,25.6
    .collect 205215,1
    .skipgossip 5675,1
    .target Carendin Halgar
step
    .use 205215
    .itemcount 205215,1
    .train 416009 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tactiques|r] |cRXP_WARN_pour apprendre|r |T136150:0|t[Tactique démoniaque]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Grâce démoniaque - 8 (Durotar)
#title Grâce démoniaque

step
    #completewith DemonicGraceDurotarTome
    .zone Durotar >>Voyagez à Durotar
step
    #completewith DemonicGraceDurotarSkull
    >>Tuez les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour les |T133571:0|t[Pattes de makrura]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    #label DemonicGraceDurotarTome
    >>Tuez les |cRXP_ENEMY_Trolls maléficiés|r et les |cRXP_ENEMY_Trolls vaudous|r. Dépouillez-les pour le |T133733:0|t[Tome inquiétant]
    .goto Durotar,67.2,85.6
    .collect 207731,1
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #label DemonicGraceDurotarSkull
    >>Tuez les |cRXP_ENEMY_Humains de Kul Tiras|r. Dépouillez-les pour le |T133730:0|t[Crâne de Kul Tiras]
    .goto Durotar,58.6,56.0
    .collect 207733,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #loop
    .goto Durotar,61.0,43.0,50,0
    .goto Durotar,60.8,70.6,50,0
    .goto Durotar,51.6,84.6,50,0
    .goto Durotar,60.8,70.6,50,0
    >>Tuez les |cRXP_ENEMY_Makruras|r. Dépouillez-les pour les |T133571:0|t[Pattes de makrura]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    .train 425477,1
    *|cRXP_WARN_ATTENTION: D'autres joueurs peuvent tag votre démon, ce qui signifie que vous devrez récupérer les composants de nouveau|r
    >>Entrez dans les égouts. Utilisez le |T133733:0|t[Tome inquiétant] au Cercle d'invocation. Tuez |cRXP_WARN_L'ÉLITE (cherchez peut-être de l'aide)|r |cRXP_ENEMY_Soboz|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r]
    .goto Durotar,67.45,87.83
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r] |cRXP_WARN_pour apprendre|r |T236293:0|t[Grâce démoniaque]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Grâce démoniaque - 8 (Clairières de Tirisfal)
#title Grâce démoniaque

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>Tuez les |cRXP_ENEMY_Sombredogues décrépits|r. Dépouillez-les pour la |T133726:0|t[Mâchoire de molosse]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesTome
    >>Tuez les |cRXP_ENEMY_Ossomanciens Sombroeil|r. Dépouillez-les pour le |T133733:0|t[Tome inquiétant]
    .goto Tirisfal Glades,47.6,36.4
    .collect 207974,1
    .mob Darkeye Bonecaster
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesBlood
    >>Tuez les |cRXP_ENEMY_Poil-putrides|r. Dépouillez-les pour le |T133730:0|t[Sang de gnoll]
    .goto Tirisfal Glades,58.6,34.6
    .collect 204906,1
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .train 425477,1
    #loop
    .goto Tirisfal Glades,73.4,52.8,50,0
    .goto Tirisfal Glades,59.4,60.2,50,0
    .goto Tirisfal Glades,44.4,58.4,50,0
    .goto Tirisfal Glades,42.0,43.0,50,0
    >>Tuez les |cRXP_ENEMY_Sombredogues décrépits|r. Dépouillez-les pour la |T133726:0|t[Mâchoire de molosse]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    *|cRXP_WARN_ATTENTION: D'autres joueurs peuvent tag votre démon, ce qui signifie que vous devrez récupérer les composants de nouveau|r
    >>Entrez dans les égouts. Utilisez le |T133733:0|t[Tome inquiétant] au Cercle d'invocation. Tuez |cRXP_WARN_L'ÉLITE (cherchez peut-être de l'aide)|r |cRXP_ENEMY_Soboz|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r]
    .goto Undercity,15.1,31.3,20,0
    .goto Undercity,24.11,41.59
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r] |cRXP_WARN_pour apprendre|r |T236293:0|t[Grâce démoniaque]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
-- #subgroup Chest << Mage
#subgroup Gants << Warlock
-- #name Burnout - 8 (Tirisfal Glades) << Mage
#name Trait du chaos - 8 (Clairières de Tirisfal) << Warlock
#title Trait du chaos << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>Achetez un (ou plusieurs) |T135933:0|t[Charme de compréhension] à un marchand de composants
    .collect 211779,1
step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
step
    .train 403925,1 << Warlock
    .train 401759,1 << Mage
    .goto Tirisfal Glades,66.3,40.0
    >>Libérez le |cRXP_ENEMY_Murloc gelé|r |cRXP_WARN_en utilisant des sorts de feu|r. Dépouillez-le pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Incandescence|r] << Mage
    >>Libérez le |cRXP_ENEMY_Murloc gelé|r |cRXP_WARN_en utilisant des sorts de feu|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Trait du chaos|r] << Warlock
    *|cRXP_WARN_À bas niveau, vous ne pourrez pas le libérer seul, cherchez un autre joueur Démoniste ou Mage|r
    .collect 205228,1 << Warlock
    .collect 203748,1 << Mage
    .mob Frozen Murloc
step
    .use 205228 << Warlock
    .use 203748 << Mage
    .itemcount 205228,1 << Warlock
    .itemcount 203748,1 << Mage
    .collect 211779,1 >>Vous avez besoin d'un |T135933:0|t[Charme de compréhension] acheté au Marchand de composants pour utiliser l'objet << Mage
    .train 403925 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Trait du chaos|r] |cRXP_WARN_pour apprendre|r |T236291:0|t[Trait du chaos]  << Warlock
    .train 401759 >>Utilisez les |T134939:0|t[|cRXP_FRIENDLY_Notes de Sorts: Incandescence|r] |cRXP_WARN_pour apprendre|r |T236207:0|t[Incandescence] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Lac de feu - 25 (Contreforts d'Hillsbrad)
#title Lac de feu

step
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts d'Hillsbrad (par exemple, depuis Undercity en passant par la Forêt des Pins-Aagentés) << Horde
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts d'Hillsbrad (par exemple, allez au nord depuis les Paluns) << Alliance
step
    .train 403937,1
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Cherchez |cRXP_FRIENDLY_Zixil|r. Il patrouille entre Moulin-de-Tarren et Southshore. Achetez-lui les |T133709:0|t[Explosifs de démolition] |cRXP_WARN_pour 1 pièce d'or|r
    .collect 211487,1
    .target Zixil
step
    .train 403937,1
    >>Utilisez les |T133709:0|t[Explosifs de démolition] pour détruire les |cRXP_PICK_Débris|r. Ouvrez le |cRXP_PICK_Vestiaire|r au sol pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de l’Éveil du feu|r]
    .goto Hillsbrad Foothills,79.7,41.0
    .collect 211476,1
step
    .use 211476
    .itemcount 211476,1
    .train 403937 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l’Éveil du feu|r] |cRXP_WARN_pour apprendre|r |T135826:0|t[Lac de feu]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#name Incinérer - 22 (Carmines)
#title Incinérer

step
    #completewith next
    .zone Redridge Mountains >>Voyagez vers Les Carmines
step
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>Tuez l' |cRXP_ENEMY_Incinérateur Gar'im|r |cRXP_WARN_(niveau 23 élite)|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Incinérer|r]
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Incinérer|r] |cRXP_WARN_pour apprendre|r |T135789:0|t[Incinérer]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maîtrise de la canalisation - 12 (Tarides)
#title Maîtrise de la canalisation

step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
step
    .train 403932,1
    >>|cRXP_WARN_Allez à l'Autel des épines|r. Lancez |T136126:0|t[Connexion] jusqu'à presque mourir. Lancez ensuite |T136168:0|t[Captation de vie] sur votre familier pour mourir et obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r]
    *|cRXP_WARN_Vous serez ressuscité immédiatement après votre mort|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r] |cRXP_WARN_pour vous apprendre|r |T136168:0|t[Maîtrise de la canalisation]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maîtrise de la canalisation - 14 (Forêt des Pins-argentés)
#title Maîtrise de la canalisation

step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
step
    .train 403932,1
    >>Entrez dans la grotte à l'emplacement indiqué. Utilisez la |T136225:0|t[Malédiction de témérité] sur la |cRXP_ENEMY_Créature sadique|r. Tuez-la et dépouillez-la pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r]
    .goto Silverpine Forest,56.6,46.4
    .collect 208750,1
    .mob Sadistic Fiend
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r] |cRXP_WARN_pour vous apprendre|r |T136168:0|t[Maîtrise de la canalisation]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Salve de Traits de l’ombre - 16 (Tarides)
#title Salve de Traits de l’ombre

step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
step
    .train 403936,1
    >>Utilisez |T136163:0|t[Siphon d'âme] sur le |cRXP_ENEMY_Superviseur Lugwizzle|r (le |cRXP_ENEMY_Surveillant Glibby|r peut aussi fonctionner) jusqu'à obtenir l' |T134105:0|t[Âme de cupidité]
    *|cRXP_WARN_Vous n'avez pas besoin de tag le mob|r
    .goto The Barrens,56.6,8.2
    .collect 208743,1
    .mob Supervisor Lugwizzle
    .mob Overseer Glibby
step
    .train 403936,1
    >>Cliquez sur l' |cRXP_PICK_Idole affamée|r pour obtenir l' |T134419:0|t[|cRXP_FRIENDLY_Idole affamée|r]
    .goto The Barrens,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Traits d’ombre|r] |cRXP_WARN_pour apprendre|r |T136195:0|t[Salve de Traits de l’ombre]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Salve de Traits de l’ombre - 18 (Forêt des Pins-argentés)
#title Salve de Traits de l’ombre

step
    #completewith next
    .zone Silverpine Forest >>Voyagez à la Forêt des Pins argentés
step
    .goto Silverpine Forest,60.38,74.37,40,0
    .goto Silverpine Forest,60.29,72.21,40,0
    .goto Silverpine Forest,59.38,70.54
    .train 403936,1
    >>Tuez le |cRXP_ENEMY_Manouvrier Ravenclaw|r et les |cRXP_ENEMY_Gardiens Ravenclaw|r |cRXP_WARN_à l'intérieur de la grotte|r. Dépouillez-les pour l' |T236295:0|t[Âme torturée]
    .collect 210713,1
    .mob Ravenclaw Drudger
    .mob Ravenclaw Guardian
step
    .train 403936,1
    >>Utilisez |T136126:0|t[Connexion] une fois, puis l' |T236295:0|t[Ame torturée]. Tuez l' |cRXP_ENEMY_Ame torturée|r. Dépouillez-la pour la |T134419:0|t[|cRXP_FRIENDLY_Rune des Traits d’ombre|r]
    .collect 208744,1
    .use 210713
    .cast 1455
    .mob Tortured Soul
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Traits d’ombre|r] |cRXP_WARN_pour apprendre|r |T136195:0|t[Salve de Traits de l’ombre]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Métamorphose - 25 (Azeroth)
#title Métamorphose

step
    #completewith WarlockRuneMetamorphosisA
    +|cRXP_WARN_Nous vous recommandons de faire toutes ces étapes en groupe. Certaines étapes peuvent être faites seul.|r
step
    #completewith next
    .zone Redridge Mountains >>Allez dans les Carmines (par exemple, prenez le bateau de Ratchet pour Baie-du-Butin, puis allez vers le nord) << Horde
    .zone Redridge Mountains >>Voyagez vers Les Carmines << Alliance
step
    #label WarlockRuneMetamorphosisA
    .train 403938,1
    >>Ouvrez le |cRXP_PICK_Reliquaire démoniaque|r en haut de la tour pour obtenir l' |T134337:0|t[Orbe de Des]
    *|cRXP_WARN_Soyez prudent, comme il est gardé par un élite. Ouvrez le coffre pendant que votre Marcheur du Vide s'occupe des ennemis|r
    .collect 210765,1
    .goto Redridge Mountains,80.2,49.5
step << Horde
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doan Karhan|r
    *|cRXP_WARN_Passez cette étape si vous passez par les Tarides|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Acceptez la quête L'Orbe de Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Darkshore >>Voyagez à Sombrivage (prenez le bateau depuis le Port de Menethil) << Alliance
    .zone Darkshore >>Voyagez à Sombrivage (passez par Ashenvale à pied) << Horde
step
    .train 403938,1
    >>Ramassez |cRXP_PICK_Branche d'Altek|r en haut de la tour pour recevoir la |T135153:0|t[Branche d'Altek]
    *|cRXP_WARN_Faites attention. Une façon de le faire consiste à mourir à côté, sauter derrière la bibliothèque, ressusciter, (et peut-être à apeurer le premier lanceur de sorts qui vous attaquerait) puis à le ramasser.|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Acceptez la quête L'Orbe de Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Voyagez à Ashenvale
step
    .train 403938,1
    >>Tuez les |cRXP_ENEMY_Acolytes du crépuscule|r près de l'entrée du raid des profondeurs de Brassenoire. Dépouillez-les pour les |cRXP_LOOT_Fragments de Soran'ruk|r
    *|cRXP_WARN_Les |cRXP_WARN_Acolytes du Crépuscule|r à l'intérieur du raid avant le 5ème Boss les donnent également|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step
    .train 403938,1
    >>Tuez les |cRXP_ENEMY_Ténébreux d'Ombrecroc|r dans le |cRXP_WARN_donjon d'Ombrecroc (allez à droite après le |cRXP_ENEMY_Baron Silverlaine|r)|r. Dépouillez-les pour le |cRXP_LOOT_Grand fragment de Soran'ruk|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>Rendez la quête L'Orbe de Soran'ruk
    .accept 78680 >>Acceptez la quête Des rumeurs à la pelle
    .turnin 78680 >>Rendez la quête Des rumeurs à la pelle
    .accept 78681 >>Acceptez la quête L'adjuration
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Voyagez à Ashenvale
step
    .train 403938,1
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>Tuez les |cRXP_ENEMY_Démons|r dans la zone. Dépouillez-le pour le |cRXP_LOOT_Sang de la Légion|r
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
step
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_Si vous êtes dans un groupe de démonistes, alors le premier démoniste (celui qui a un debuff) qui rend la quête devra porter le coup fatal à l' |cRXP_ENEMY_Infernal incendiaire|r tout en se plaçant à l'intérieur de la rune|r
step
    .train 403938,1
    >>Interagissez avec la |cRXP_PICK_Pierre de rituel des ténèbres|r
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>Rendez la quête L'adjuration
    .target Dark Ritual Stone
step
    .train 403938,1
    #label WarlockRuneMetamorphosisB
    >>Tuez les |cRXP_ENEMY_Démons|r qui apparaissent. |cRXP_WARN_Tuez l'|cRXP_ENEMY_Infernal incendiaire|r PENDANT QUE VOUS CANALISEZ|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_et TOUT EN VOUS POSITIONNANT DANS LA RUNE|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>Acceptez la quête Voyageur mystérieux
    .mob Searing Infernal
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Doan Karhan|r pour obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune de transformation|r]
    .goto The Barrens,49.2,57.2
    .turnin 78684 >>Rendez la quête Voyageur mystérieux
    .turnin 78702 >>Rendez la quête Raszel Ander
    .collect 210980,1
    .target Doan Karhan
step
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de transformation|r] |cRXP_WARN_pour apprendre|r |T237558:0|t[Métamorphose]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Grimoire de synergie - 40 (Azeroth)
#title Grimoire de synergie

step
    #optional
    #completewith next
    .train 426445,1
    +|cRXP_WARN_Vous devez être au moins de niveau 30 afin d'obtenir la rune de|r |T133738:0|t[Grimoire de synergie] |cRXP_WARN_|r
    .xp >30,1
step
    .train 403938 >> |cRXP_WARN_Vous devez d'abord obtenir|r |T237558:0|t[Métamorphose] |cRXP_WARN_avant d'obtenir la rune de|r |T133738:0|t[Grimoire de synergie] |cRXP_WARN_|r
step
    #optional
    .train 426445,1
    +|cRXP_WARN_Vous devez être au moins de niveau 30 afin d'obtenir la rune de|r |T133738:0|t[Grimoire de synergie] |cRXP_WARN_|r
    .xp >30,1
step
    .train 426445,1
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Vous devez être en|r |T237558:0|t[Métamorphose] |cRXP_WARN_pour voir|r |cRXP_FRIENDLY_Raszel Ander|r
    .accept 78994 >> Acceptez la quête Des bases solides
    .target Raszel Ander
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley l'aubergiste|r
    .home >> Liez votre Pierre de foyer à Ratchet
    .target Innkeeper Wiley
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Aubergiste Byula|r
    .home >> Liez votre Pierre de foyer au Camp Taurajo
    .target Innkeeper Byula
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fly Azshara >> Volez à Azshara
    .target Bragok
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Omusa|r
    .fly Splintertree Post >>Volez au poste de Bois-brisé
    .target Omusa Thunderhorn
step
    .train 426445,1
    .train 126,3 -- skips step if they don't have eye of killrog trained
    .isOnQuest 78994
    .goto Ashenvale,88.82,41.52
    >>|cRXP_WARN_Dirigez-vous à l'emplacement qu'indique la flèche à Ashenvale|r
    .cast 126 >> |cRXP_WARN_Lancez|r |T136155:0|t[Oeil de Kilrogg] |cRXP_WARN_et emmenez le dans l’Ombrage (la zone avec tous les élites de niveau 60+) et cherchez un arbre |cRXP_PICK_Rameau d’ombres|r. Il peut apparaître à plusieurs emplacements dans l'Ombrage, et idéalement vous voulez en trouver un avec peu d'élites à proximité afin de pouvoir interagir avec|r
step
    .train 426445,1
    .isOnQuest 78994
    #completewith next
    .goto Ashenvale,88.82,41.52
    .cast 440505 >> |cRXP_WARN_Utilisez la|r |T236874:0|t[Potion d'invisibilité] |cRXP_WARN_et cherchez l'un des arbres |cRXP_PICK_Rameau d’ombres|r dans l'Ombrage. La zone contient de nombreuses patrouilles d'élites de niveau 60+|r
    .use 217693
step
    .train 426445,1
    .isOnQuest 78994
    .goto Ashenvale,90.9,38.6,20,0
    .goto Ashenvale,91,37,0
    >>|cRXP_WARN_Avant de ramasser le |cRXP_PICK_Rameau d’ombres|r, retirez tout votre équipement et lancez|r |T136121:0|t[Gardien de l'ombre]|cRXP_WARN_. Vous allez recevoir un debuff qui inflige des pourcentages de dégâts très importants. Préparez-vous à utiliser votre Pierre de foyer après l'avoir ramassé|r
    >>Récupérez n'importe lequel des |cRXP_PICK_Rameau d’ombres|r dans l’Ombrage
    .complete 78994,1
step
    #completewith next
    .train 426445,1
    .isOnQuest 78994
    .hs >> Utilisez votre Pierre de foyer pour revenir à Ratchet << Alliance
    .hs >> Utilisez votre Pierre de foyer pour revenir au Camp Taurajo << Horde
    .zoneskip The Barrens
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Vous devez être en|r |T237558:0|t[Métamorphose] |cRXP_WARN_pour voir|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 78994 >> Rendez la quête Des bases solides
    .accept 78914 >> Acceptez la quête Réceptacle d’âme
    .target Raszel Ander
step
    .train 426445,1
    >>|cRXP_WARN_Obtenez les composants suivants et faites en sorte qu'un Ingénieur vous fabrique un|r |T133254:0|t[Réceptacle d’âme] |cRXP_WARN_pour vous. Notez que le|r |T134133:0|t[Vitriol noir] |cRXP_WARN_et l'|r |T134074:0|t[Oeil ténébreux] |cRXP_WARN_peuvent s'acheter à l'Hôtel des ventes et la|r |T134337:0|t[Figurine démoniaque] |cRXP_WARN_auprès d'un|r |cRXP_FRIENDLY_Marchand de composants|r
    .collect 9262,1,78914,1,1 -- Black Vitriol
    .collect 1210,4,78914,1,1 -- Shadowgem
    .collect 16583,1,78914,1,1 -- Demonic Figurine
    >>|cRXP_WARN_Vous pouvez également acheter un|r |T133254:0|t[Réceptacle d’âme] |cRXP_WARN_directement à l'Hôtel des ventes|r
    .collect 211427,1,78914,1
step
    #completewith next
    .train 426445,1
    .zone Desolace >> Voyagez à Désolace
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Vous devez être en|r |T237558:0|t[Métamorphose] |cRXP_WARN_pour voir|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 78914 >> Rendez la quête Réceptacle d’âme
    .accept 79298 >> Acceptez la quête Destin tentateur
    .target Raszel Ander
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    .gossip 215850,1 >> Parlez à |cRXP_FRIENDLY_Raszel Ander|r pour commencer le rituel
    .timer 14,RP de Destin tentateur
    .skipgossip
step
    .train 426445,1
    .goto Desolace,51.195,82.465
    >>Cliquez sur le |cRXP_PICK_Bâton reconstruit de Des'Altek|r afin d'invoquer |cRXP_ENEMY_Des'Altek|r
    >>|cRXP_WARN_Assurez-vous d'avoir toute votre vie et le|r |T136121:0|t[Gardien de l'ombre] |cRXP_WARN_actif comme vous recevrez des dégâts pendant la canalisation et pendant tout le combat|r
    >>Tuez |cRXP_ENEMY_Des'Altek|r
    .complete 79298,1
    .mob Des'Altek
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Vous devez être en|r |T237558:0|t[Métamorphose] |cRXP_WARN_pour voir|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 79298 >> Rendez la quête Destin tentateur
    .target Raszel Ander
step
    .train 426445 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de synergie|r] |cRXP_WARN_pour apprendre|r |T133738:0|t[Grimoire de synergie]
    .use 213090
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maîtrise de la canalisation - 10 (Loch Modan)
#title Maîtrise de la canalisation

step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Cherchez |cRXP_FRIENDLY_Greishan Ironstove|r dans sa patrouille sur la route le long du Loch Modan. Le trajet de sa patrouille est indiqué sur votre carte|r
    >>|cRXP_BUY_Achetez-lui une|r |T237359:0|t[Tarte malveillante] |cRXP_BUY_|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Utilisez la|r |T237359:0|t[Tarte malveillante] |cRXP_WARN_pour la manger. Dès que le debuff|r |T132108:0|t[Indigestion diabolique] |cRXP_WARN_disparaîtra, vous obtiendrez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r] |cRXP_WARN_pour vous apprendre|r |T136168:0|t[Maîtrise de la canalisation]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Maîtrise de la canalisation - 15 (Sombrivage)
#title Maîtrise de la canalisation

step << Warlock
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Tuez les |cRXP_ENEMY_Fanatiques de la Rive noire|r. Dépouillez-les pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Canalisation|r] |cRXP_WARN_pour vous apprendre|r |T136168:0|t[Maîtrise de la canalisation]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#name Siphon d’âme - 10 (Dun Morogh)
#title Siphon d’âme

step << Warlock
    #completewith next
    >>|cRXP_WARN_Lancez|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur n'importe quelle bestiole pour recevoir un|r |T134095:0|t[|cRXP_LOOT_Fragment d’âme pure|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,77.894,62.236
    >>Tuez le |cRXP_ENEMY_Capitaine Beld|r en bas à l'intérieur du bâtiment. Dépouillez-le pour un |T134085:0|t[|cRXP_LOOT_Fragment d’âme impure|r]
    >>|cRXP_WARN_Faites en sorte qu'il meurt en ayant votre|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur lui|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Captain Beld
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Lancez|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur n'importe quelle bestiole pour recevoir un|r |T134095:0|t[|cRXP_LOOT_Fragment d’âme pure|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,47.351,53.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gaklik Tordvide|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Siphon d'âme|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Gaklik Voidtwist
step << Warlock
    .train 403920 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Siphon d’âme|r] |cRXP_WARN_pour apprendre|r |T136169:0|t[Siphon d'âme]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Siphon d’âme - 10 (Forêt d'Elwynn)
#title Siphon d’âme

step << Warlock
    #completewith next
    >>|cRXP_WARN_Lancez|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur n'importe quelle bestiole pour recevoir un|r |T134095:0|t[|cRXP_LOOT_Fragment d’âme pure|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    >>Tuez |cRXP_ENEMY_Lardeur|r. Dépouillez-le pour un |T134085:0|t[|cRXP_LOOT_Fragment d’âme impure|r]
    >>|cRXP_WARN_Faites en sorte qu'il meurt en ayant votre|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur lui|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Hogger
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Lancez|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur n'importe quelle bestiole pour recevoir un|r |T134095:0|t[|cRXP_LOOT_Fragment d’âme pure|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,44.093,66.315
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Damien Kane|r au sous-sol de l'auberge pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Siphon d'âme|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Damien Kane
step << Warlock
    .train 403920 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Siphon d’âme|r] |cRXP_WARN_pour apprendre|r |T136169:0|t[Siphon d'âme]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Tactique démoniaque - 1 (Forêt d'Elwynn)
#title Tactique démoniaque

step << Warlock
    .goto Elwynn Forest,56.743,57.650
    >>Dépouillez l' |cRXP_FRIENDLY_Acolyte mort|r pour le |T133625:0|t[|cRXP_LOOT_Fourre-tout d'acolyte|r]
    .collect 205364,1 -- Acolyte's Knapsack (1)
    .skipgossip
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    .use 205364 >>|cRXP_WARN_Utilisez le|r |T133625:0|t[|cRXP_LOOT_Fourre-tout d'acolyte|r] |cRXP_WARN_pour recevoir un|r |T133447:0|t[|cRXP_LOOT_Artéfact non identifié|r]
    .collect 205181,1 -- Unidentified Artifact (1)
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,44.390,66.242
    .gossipoption 109291 >>Parlez à |cRXP_FRIENDLY_Maximillian Crowe|r au sous-sol de l'auberge de Goldshire pour recevoir l' |T133447:0|t[|cRXP_LOOT_Artéfact déchargé|r]
    .collect 205182,1 -- Powerless Artifact (1)
    .skipgossip
    .target Maximillian Crowe
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,56.743,57.650
    .cast 408755 >>|cRXP_WARN_Utilisez l'|r |T133447:0|t[|cRXP_LOOT_Artéfact déchargé|r] |cRXP_WARN_à la position de l' |cRXP_FRIENDLY_Acolyte mort|r pour recevoir le debuff|r |T136008:0|t[Offrande de sang] |cRXP_WARN_|r
    .use 205182
    .aura 408755
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Voyagez à Stormwind
    .train 416009,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
    .train 416009,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin le Tisse-noir|r pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Tactiques|r]
    .collect 205215,1 -- Rune of Tactics (1)
    .skipgossip
    .target Gakin the Darkbinder
    .train 416009,1
step << Warlock
    .train 416009 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Tactiques|r] |cRXP_WARN_pour apprendre|r |T136150:0|t[Tactique démoniaque]
    .use 205215
    .itemcount 205215,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Grâce démoniaque - 10 (Forêt d'Elwynn)
#title Grâce démoniaque

step << Warlock
    .goto Elwynn Forest,61.6,53.8
    >>Tuez les |cRXP_ENEMY_Géomanciens kobolds|r. Dépouillez-les pour un |T133733:0|t[|cRXP_LOOT_Tome inquiétant|r]
    .collect 204905,1 -- Ominous Tome (1)
    .mob Kobold Geomancer
    .train 425477,1
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
    >>Tuez les |cRXP_ENEMY_Rivepattes chétifs|r et les |cRXP_ENEMY_Estafettes Rivepattes|r. Dépouillez-les pour leur |cRXP_LOOT_Sang de Gnoll|r
    .collect 204906,1 -- Gnoll Blood (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,35.6,61.0,60,0
    .goto Elwynn Forest,57.8,59.4
    >>Tuez les |cRXP_ENEMY_Loups galeux|r, les |cRXP_ENEMY_Loups forestier gris|r et les |cRXP_ENEMY_Rôdeurs|r. Dépouillez-les pour une |cRXP_LOOT_Mâchoire de loup|r
    .collect 204907,1 -- Wolf Jawbone (1)
    .mob Mangy Wolf
    .mob Gray Forest Wolf
    .mob Prowler
    .train 425477,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Voyagez à Stormwind
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Rendez vous à L'Agneau Assassiné. Descendez les escaliers
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Descendez tout en bas de l'Agneau assassiné
    .cast 418065 >> |cRXP_WARN_Utilisez le|r |T133733:0|t[|cRXP_LOOT_Tome inquiétant|r] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Soboz|r
    .use 204905
    .train 425477,1
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 204905 >> Tuez |cRXP_ENEMY_Soboz|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r] |cRXP_WARN_pour apprendre|r |T236293:0|t[Grâce démoniaque]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Grâce démoniaque - 10 (Dun Morogh)
#title Grâce démoniaque

step << Warlock
    .goto Dun Morogh,22.8,50.6
    >>Tuez les |cRXP_ENEMY_Exhalombres Frostmane|r. Dépouillez-les pour un |T133733:0|t[|cRXP_LOOT_Tome inquiétant|r]
    .collect 208139,1 -- Ominous Tome (1)
    .mob Frostmane Shadowcaster
    .train 425477,1
step << Warlock
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>Tuez les |cRXP_ENEMY_Jeunes wendigo|r et les |cRXP_ENEMY_Wendigos|r. Dépouillez-les pour leur |cRXP_LOOT_Sang de wendigo|r
    .collect 208140,1 -- Wendigo Blood (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 425477,1
step << Warlock
    .goto Dun Morogh,45.6,43.2,60,0
    .goto Dun Morogh,34.6,41.8
    >>Tuez n'importe quel |cRXP_ENEMY_Loup|r dans Dun Morogh. Dépouillez-les pour leur |cRXP_LOOT_Mâchoire de loup|r
    .collect 204907,1 -- Wolf Jawbone
    .mob Starving Winter Wolf
    .mob Winter Wolf
    .mob Snow Tracker Wolf
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .cast 418065 >> |cRXP_WARN_Utilisez le|r |T133733:0|t[|cRXP_LOOT_Tome inquiétant|r] |cRXP_WARN_pour invoquer|r |cRXP_ENEMY_Soboz|r
    .use 208139
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .use 204905 >> Tuez |cRXP_ENEMY_Soboz|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Grâce|r] |cRXP_WARN_pour apprendre|r |T236293:0|t[Grâce démoniaque]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Salve de Traits de l’ombre - 16 (Sombrivage)
#title Salve de Traits de l’ombre

step << Warlock
    .goto Darkshore,56.8,27.6,60,0
    .goto Darkshore,57.6,26.0
    >>Tuez |cRXP_ENEMY_Delmanis le Haï|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune des Traits d’ombre|r]
    .collect 208744,1 -- Rune of Shadowbolts (1)
    .unitscan Delmanis the Hated
    .train 403936,1
step << Warlock
    .train 403936 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Traits d’ombre|r] |cRXP_WARN_pour apprendre|r |T136195:0|t[Salve de Traits de l’ombre]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Trait du chaos - 8 (Dun Morogh)
#title Trait du chaos

step << Warlock
    .goto Dun Morogh,69.365,58.302
    >>Tuez le |cRXP_ENEMY_Trogg gelé|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Trait du chaos|r]
    >>|cRXP_WARN_Note: Pour briser le bloc de glace, vous devrez l'attaquer avec plusieurs sorts de feu très rapidement|r
    >>|cRXP_WARN_Lancez|r |T135817:0|t[Immolation] |cRXP_WARN_et les sorts de votre Diablotin. Vous aurez besoin de l'aide d'un autre joueur Démoniste ou Mage pour le briser|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Trogg
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Trait du chaos|r] |cRXP_WARN_pour apprendre|r |T236291:0|t[Trait du chaos]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Trait du chaos - 8 (Forêt d'Elwynn)
#title Trait du chaos

step << Warlock
    .goto Elwynn Forest,77.010,51.897
    >>Tuez le |cRXP_ENEMY_Murloc gelé|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Trait du chaos|r]
    >>|cRXP_WARN_Note: Pour briser le bloc de glace, vous devrez l'attaquer avec plusieurs sorts de feu très rapidement|r
    >>|cRXP_WARN_Lancez|r |T135817:0|t[Immolation] |cRXP_WARN_et les sorts de votre Diablotin. Vous aurez besoin de l'aide d'un autre joueur Démoniste ou Mage pour le briser|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Murloc
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Trait du chaos|r] |cRXP_WARN_pour apprendre|r |T236291:0|t[Trait du chaos]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Évocation - 35 (Hautes-terres Arathies)
#title Évocation

-- Invocation

step
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_Nous vous recommandons de trouver des joueurs supplémentaires pour grouper afin d'obtenir la|r |T134419:0|t[|cRXP_LOOT_Rune d'Évocation|r] |cRXP_WARN_comme cela nécessite de tuer des élites dans le Donjon de Stromgarde|r
step
    .train 426443,1
    .zone Arathi Highlands >> Voyagez aux Hautes-terres d'Arathi
step
    .train 426443,1
    #completewith next
    .subzone 324 >> Voyagez au Donjon de Stromgarde
step
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>Tuez les |cRXP_ENEMY_Conjurateurs du Syndicat|r. Dépouillez-les pour leur |T348282:0|t[|cRXP_LOOT_Pendentif|r]
    >>Tuez un de leur serviteur |cRXP_ENEMY_Marcheur du Vide|r en canalisant |T136163:0|t[Siphon d'âme] dessus afin d'obtenir une |T132885:0|t[|cRXP_LOOT_Âme du Vide|r]
    .collect 213573,10
    .collect 213572,1
    .mob Syndicate Conjuror
    .mob Voidwalker Minion
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >> |cRXP_WARN_Entrez dans la grande maison au niveau inférieur du Donjon de Stromgarde, puis montez au 2ème étage|r
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >> |cRXP_WARN_Utilisez le|r |T348282:0|t[|cRXP_LOOT_Pendentif|r] |cRXP_WARN_en haut des escaliers, à côté du|r |cRXP_PICK_Prisme du vide|r |cRXP_WARN_flottant pour invoquer un élite de niveau 36, le |cRXP_ENEMY_Cherche-Vide|r
    .use 213573
step
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>Tuez le |cRXP_ENEMY_Cherche-Vide|r. Dépouillez-le pour la |T134419:0|t[|cRXP_LOOT_Rune d’Évocation|r]
    .collect 213098,1
    .mob Void Seeker
step
    .train 426443 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_LOOT_Rune d'Évocation|r] |cRXP_WARN_pour apprendre|r |T136133:0|t[Évocation]
    .use 213098
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Danse des malveillants - 35 (Désolace)
#title Danse des malveillants

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Desolace >>Voyagez à Désolace
step
    .train 416017,1
    .goto Desolace,74.5,13.4
    >>Cliquez sur le |cRXP_ENEMY_Démoniste téméraire|r au sol. Dépouillez-le pour la |T236297:0|t[Sculpture en soufre]
    >>|cRXP_WARN_Il s'agit d'un ennemi rare et il y a une chance qu'il ne soit pas présent|r
    .collect 213583,1
    .mob Reckless Warlock
    .unitscan Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Lancez|r |T135818:0|t[Flammes infernales] |cRXP_WARN_pour vous infliger des dégâts et passer sous 70% de vie. Ensuite, votre|r |T236297:0|t[Sculpture en soufre] |cRXP_WARN_se transformera en|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Méchanceté|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Méchanceté|r] |cRXP_WARN_pour apprendre|r |T236295:0|t[Danse des malveillants]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Danse des malveillants - 35 (Strangleronce)
#title Danse des malveillants

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Stranglethorn Vale>>Voyagez à la Vallée de Strangleronce
step
    .train 416017,1
    .goto Stranglethorn Vale,31.2,47.4
    >>Cliquez sur le |cRXP_ENEMY_Démoniste téméraire|r au sol. Dépouillez-le pour la |T236297:0|t[Sculpture en soufre]
    >>|cRXP_WARN_Il s'agit d'un ennemi rare et il y a une chance qu'il ne soit pas présent|r
    .collect 213583,1
    .unitscan Reckless Warlock
    .mob Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Lancez|r |T135818:0|t[Flammes infernales] |cRXP_WARN_pour vous infliger des dégâts et passer sous 70% de vie. Ensuite, votre|r |T236297:0|t[Sculpture en soufre] |cRXP_WARN_se transformera en|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Méchanceté|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Méchanceté|r] |cRXP_WARN_pour apprendre|r |T236295:0|t[Danse des malveillants]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Ombreflamme - 40 (Désolace)
#title Ombreflamme


-- Shadowflame

step
    .train 426467,1
    #completewith next
    .zone Desolace >>Voyagez à Désolace |cRXP_WARN_Nous vous recommandons fortement de monter un groupe d'au moins 3 joueurs.|r
step
    .train 426467,1
    .train 19028,3 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >> |cRXP_WARN_Cliquez sur l'Autel pour invoquer la|r |cRXP_ENEMY_Séductrice Ceeyna|r |cRXP_WARN_mais assurez-vous d'utiliser votre|r |T136121:0|t[Gardien de l'ombre]|cRXP_WARN_, votre|r |T136190:0|t[Sacrifice] |cRXP_WARN_et votre|r |T136160:0|t[Lien spirituel]|r |cRXP_WARN_au préalable|r |cFFFF0000comme vous subirez beaucoup de dégâts pendant la canalisation et vous ne pourrez pas les soigner|r
step
    .train 426467,1
    .train 19028,1 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >> |cRXP_WARN_Cliquez sur l'Autel pour invoquer la|r |cRXP_ENEMY_Séductrice Ceeyna|r |cRXP_WARN_mais assurez-vous d'utiliser votre|r |T136121:0|t[Gardien de l'ombre]|cRXP_WARN_,et votre|r |T136190:0|t[Sacrifice] |cRXP_WARN_au préalable|r |cFFFF0000comme vous subirez beaucoup de dégâts pendant la canalisation et vous ne pourrez pas les soigner|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    >>Tuez la |cRXP_ENEMY_Séductrice Ceeyna|r. Dépouillez-la pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d’ombreflamme|r]
    .collect 213101,1
    .mob Seductress Ceeyna
step
    .train 426467 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'ombreflamme|r] |cRXP_WARN_pour apprendre|r |T236302:0|t[Ombreflamme]
    .use 213101
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Aura d’immolation
#name Aura d’immolation - 40 (Ashenvale)

step
    #completewith next
    .zone Ashenvale >> Voyagez à Ashenvale
step
    .goto Ashenvale,93.5,38.0,100 >> Dirigez-vous vers la zone d'incursion de cauchemar d'Ashenvale marquée sur votre carte
    .train 431758,1
step
    >>Tuez les démons en dehors du portail jusqu'à ce que vous ayez récupéré les trois objets énumérés ci-dessous
    .collect 221972,1 >>|T132839:0|t|cRXP_LOOT_Feu pyronirique|r sur les |cRXP_ENEMY_Diablotins pyroniriques|r
    .collect 221971,1 >>|T237396:0|t|cRXP_LOOT_Corne du serment onirique|r sur |cRXP_ENEMY_Jurêve Braisétincelle|r
    .collect 221973,1 >>|T133724:0|t|cRXP_LOOT_Crocs de Chasse-rêves|r sur les |cRXP_ENEMY_Chiens pyroniriques|r
    .mob Dreampyre Imp
    .mob Emberspark Dreamsworn
    .mob Dreamhunter Hound
    .train 431758,1
step
    .cast 447537 >> Faites un clic droit sur n'importe lequel des objets dans vos sacs pour les combiner et recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune d’aura d’immolation|r]
    .collect 220618,1 --Rune of Immolation Aura
    .use 221972
    .train 431758,1
step
    .train 431758 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’aura d’immolation|r] |cRXP_WARN_pour apprendre|r |T135802:0|t[Aura d’immolation]
    .use 220618
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Invocation d’un gangregarde
#name Invocation d’un gangregarde - 10 (Azeroth)

step
    #completewith next
    +|cRXP_WARN_Pour recevoir cette rune, vous devrez avoir trouvé un|r |T236294:0|t|cRXP_FRIENDLY_Diablotin explorateur|r. |cRXP_WARN_Si vous n'en avez pas déjà un, lancez|r |T136163:0|t|cRXP_FRIENDLY_[Siphon d'âme]|r |cRXP_WARN_sur des mobs. À chaque tick du sort, vous aurez une chance d'obtenir une|r |T133257:0|t|cRXP_LOOT_Âme d'explorateur|r. |cRXP_WARN_Utilisez-la pour apprendre à invoquer votre|r |T236294:0|t|cRXP_FRIENDLY_Diablotin explorateur|r
step
    +Allez dans l'une des zones ci-dessous. La rune peut être obtenue dans n'importe laquelle d'entre elles, mais les zones de niveau plus élevé vous offriront de meilleures récompenses de votre Diablotin explorateur
    >>Les Tarides
    >>La Marche de l'Ouest
    >>Sombrivage
    >>La Forêt des Pins-argentés
    >>Ashenvale
    >>Les Carmines
    >>Marais des Chagrins
    >>Désolace
    >>Féralas
    >>Azshara
    >>Terres Foudroyées
    .zoneskip The Barrens
    .zoneskip Westfall
    .zoneskip Darkshore
    .zoneskip Silverpine Forest
    .zoneskip Ashenvale
    .zoneskip Redridge Mountains
    .zoneskip Swamp of Sorrows
    .zoneskip Desolace
    .zoneskip Feralas
    .zoneskip Azshara
    .zoneskip Blasted Lands
step
    >>Cherchez des |cRXP_FRIENDLY_portails gangrenés|r dans les emplacements marqués sur votre carte. Lorsque vous en trouvez un, invoquez votre |T236294:0|t|cRXP_FRIENDLY_Diablotin explorateur|r et complétez son dialogue en vous tenant à côté du portail. Le Diablotin explorateur commencera à l'explorer et vous recevrez un buff |T136164:0|t|cRXP_FRIENDLY_Diablotin en mission|r. Après environ 10-20 minutes, votre diablotin reviendra vers vous ou vous pourrez l'invoquer de nouveau et lui parler pour rendre une quête répétable vous récompensant du |T133639:0|t|cRXP_LOOT_Trésor venu d’ailleurs|r. En l'ouvrant, vous recevrez du butin et vous aurez une chance de recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune du gangregarde|r]. Continuez à chercher des failles et à ramasser des trésors jusqu'à ce que vous la trouviez
    .goto Westfall,28.6,44.0,0
    .goto Westfall,29.0,47.8,0
    .goto Westfall,29.0,58.2,0
    .goto Westfall,29.6,69.4,0
    .goto Westfall,29.8,34.4,0
    .goto Westfall,31.4,39.2,0
    .goto Westfall,31.4,65.6,0
    .goto Westfall,32.2,76.0,0
    .goto Westfall,32.2,80.2,0
    .goto Westfall,32.4,29.2,0
    .goto Westfall,34.0,82.2,0
    .goto Westfall,37.4,85.0,0
    .goto Westfall,41.4,15.4,0
    .goto Westfall,44.8,46.6,0
    .goto Westfall,47.0,39.4,0
    .goto Westfall,47.4,79.2,0
    .goto Westfall,47.6,22.0,0
    .goto Westfall,47.6,67.2,0
    .goto Westfall,47.8,13.8,0
    .goto Westfall,51.0,32.2,0
    .goto Westfall,51.6,71.4,0
    .goto Westfall,57.0,10.6,0
    .goto Westfall,62.6,26.0,0
    .goto The Barrens,39.6,13.8,0
    .goto The Barrens,40.0,18.4,0
    .goto The Barrens,40.8,14.4,0
    .goto The Barrens,42.0,14.2,0
    .goto The Barrens,44.4,50.0,0
    .goto The Barrens,45.8,51.2,0
    .goto The Barrens,46.4,52.6,0
    .goto The Barrens,47.6,49.4,0
    .goto The Barrens,51.6,53.4,0
    .goto The Barrens,53.0,50.8,0
    .goto The Barrens,54.2,52.6,0
    .goto The Barrens,54.4,48.6,0
    .goto The Barrens,55.6,25.6,0
    .goto The Barrens,55.8,51.0,0
    .goto The Barrens,56.0,24.8,0
    .goto The Barrens,57.6,23.6,0
    .goto The Barrens,58.2,49.6,0
    .goto The Barrens,58.8,25.8,0
    .goto The Barrens,59.0,29.2,0
    .goto The Barrens,59.0,32.0,0
    .goto The Barrens,59.2,36.4,0
    .goto The Barrens,59.8,27.6,0
    .goto The Barrens,60.2,36.0,0
    .goto The Barrens,60.8,29.0,0
    .goto The Barrens,61.8,32.0,0
    .goto Silverpine Forest,38.8,18.4,0
    .goto Silverpine Forest,38.8,23.4,0
    .goto Silverpine Forest,44.6,25.2,0
    .goto Silverpine Forest,45.4,31.8,0
    .goto Silverpine Forest,49.8,13.4,0
    .goto Silverpine Forest,50.2,56.8,0
    .goto Silverpine Forest,50.2,65.2,0
    .goto Silverpine Forest,55.6,24.6,0
    .goto Darkshore,37.6,63.8,0
    .goto Darkshore,43.2,27.0,0
    .goto Darkshore,44.0,82.0,0
    .goto Darkshore,45.0,26.2,0
    .goto Darkshore,46.2,46.8,0
    .goto Darkshore,47.4,28.8,0
    .goto Darkshore,49.8,36.8,0
    .goto Darkshore,56.4,24.8,0
    .goto Darkshore,59.8,21.8,0
    .goto Ashenvale,24.4,63.4,0
    .goto Ashenvale,27.6,62.6,0
    .goto Ashenvale,30.2,30.2,0
    .goto Ashenvale,33.6,28.4,0
    .goto Ashenvale,44.6,64.2,0
    .goto Ashenvale,51.2,47.0,0
    .goto Ashenvale,52.6,62.8,0
    .goto Ashenvale,55.6,40.2,0
    .goto Ashenvale,67.0,46.0,0
    .goto Ashenvale,67.2,51.0,0
    .goto Ashenvale,77.4,73.0,0
    .goto Ashenvale,80.4,70.6,0
    .goto Ashenvale,84.8,70.2,0
    .goto Redridge Mountains,29.8,30.4,0
    .goto Redridge Mountains,31.2,21.8,0
    .goto Redridge Mountains,42.8,16.8,0
    .goto Redridge Mountains,71.4,57.8,0
    .goto Redridge Mountains,71.4,83.6,0
    .goto Redridge Mountains,72.0,57.8,0
    .goto Redridge Mountains,79.0,33.4,0
    .goto Redridge Mountains,81.6,60.4,0
    .goto Redridge Mountains,83.2,44.4,0
    .goto Redridge Mountains,86.2,52.6,0
    .goto The Barrens,42.8,81.8,0
    .goto The Barrens,43.2,80.2,0
    .goto The Barrens,46.2,85.6,0
    .goto The Barrens,47.8,83.6,0
    .goto The Barrens,48.4,81.2,0
    .goto The Barrens,50.2,80.6,0
    .goto Swamp of Sorrows,10.4,59.4,0
    .goto Swamp of Sorrows,12.4,29.8,0
    .goto Swamp of Sorrows,16.4,63.0,0
    .goto Swamp of Sorrows,22.8,64.0,0
    .goto Swamp of Sorrows,27.0,48.8,0
    .goto Swamp of Sorrows,34.2,28.8,0
    .goto Swamp of Sorrows,36.2,50.6,0
    .goto Swamp of Sorrows,49.0,38.8,0
    .goto Swamp of Sorrows,56.6,65.0,0
    .goto Swamp of Sorrows,60.2,27.6,0
    .goto Swamp of Sorrows,69.4,78.4,0
    .goto Swamp of Sorrows,72.4,10.4,0
    .goto Swamp of Sorrows,77.4,89.6,0
    .goto Swamp of Sorrows,81.2,34.0,0
    .goto Swamp of Sorrows,83.2,66.6,0
    .goto Swamp of Sorrows,87.6,26.0,0
    .goto Swamp of Sorrows,90.8,65.2,0
    .goto Swamp of Sorrows,91.4,57.0,0
    .goto Desolace,47.4,22.2,0
    .goto Desolace,48.8,82.2,0
    .goto Desolace,49.4,75.0,0
    .goto Desolace,52.0,85.4,0
    .goto Desolace,52.2,72.4,0
    .goto Desolace,52.8,81.0,0
    .goto Desolace,54.4,19.2,0
    .goto Desolace,56.0,74.8,0
    .goto Desolace,71.6,18.4,0
    .goto Desolace,72.6,21.8,0
    .goto Desolace,73.4,24.6,0
    .goto Desolace,74.4,10.6,0
    .goto Desolace,76.4,19.2,0
    .goto Desolace,80.4,17.0,0
    .goto Blasted Lands,35.0,55.0,0
    .goto Blasted Lands,41.2,33.4,0
    .goto Blasted Lands,43.6,25.0,0
    .goto Blasted Lands,46.8,39.2,0
    .goto Blasted Lands,48.8,48.6,0
    .goto Blasted Lands,56.0,36.6,0
    .goto Blasted Lands,60.2,46.0,0
    .goto Blasted Lands,62.0,39.2,0
    .goto Feralas,68.2,58.8,0
    .goto Feralas,70.4,62.6,0
    .goto Feralas,72.4,63.8,0
    .goto Feralas,73.2,54.4,0
    .goto Feralas,74.2,50.4,0
    .goto Feralas,74.2,60.0,0
    .goto Feralas,76.2,56.4,0
    .goto Feralas,76.6,63.4,0
    .goto Azshara,16.4,51.0,0
    .goto Azshara,17.6,58.4,0
    .goto Azshara,21.2,54.0,0
    .goto Azshara,24.8,47.8,0
    .goto Azshara,25.0,81.4,0
    .goto Azshara,30.2,79.8,0
    .goto Azshara,33.0,81.4,0

    .collect 221499,1 --Rune of the felguard
    .use 223148 --Otherworldy Treasure
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step
    .train 431756 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du gangregarde|r] |cRXP_WARN_pour apprendre|r |T136216:0|t[Invocation d'un gangregarde]
    .use 221499

]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#title Pandémie
#name Pandémie - 40 (Féralas)

step
    #completewith next
    .zone Feralas >> Voyagez à Féralas
step
    .goto Feralas,69.6,43.3
    >>Dirigez-vous à la position indiquée à l'ouest du Camp Mojache. Trouvez un |cRXP_ENEMY_Chaman du Totem-sinistre malade mort|r allongé à côté d'un arbre. À côté de celui-ci, vous trouverez un |cRXP_PICK_Coffre Totem-sinistre|r, dépouillez-le pour le |T133291:0|t|cRXP_LOOT_Collier Totem-sinistre|r
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
    .train 431743,1
step
    .goto 1444/1,695.400,-4920.300,20 >>Prenez le chemin montant vers la colline vers la Tanière des Griffebois
    .train 431743,1
step
    .goto 1444/1,831.200,-4851.000,20 >>Prenez le chemin marqué par des torches
    .train 431743,1
step
    .goto 1444/1,826.500,-4725.100
    >>Restez sur le côté droit du camp et dirigez-vous vers le |cRXP_ENEMY_Mystique Griffebois malade mort|r. Vous trouverez un |cRXP_PICK_Sac Griffebois|r à côté de lui, ouvrez-le pour le |T135139:0|t|cRXP_LOOT_Bâton Griffebois brisé|r
    .collect 221975,1 --Broken Woodpaw Staff
    .unitscan Dead Diseased Woodpaw Mystic
    .train 431743,1
step
    >>Utilisez le |T135139:0|t|cRXP_LOOT_Bâton Griffebois brisé|r pour le combiner avec le |T133291:0|t|cRXP_LOOT_Collier Totem-sinistre|r et créer un |T135153:0|t|cRXP_LOOT_Bâton de nature malade|r
    .collect 221976,1 --Diseased Nature Staff
    .use 221975
    .train 431743,1
step
    .goto Feralas,72.6,50.8
    >>Cherchez un |cRXP_ENEMY_Marcheur des bois malade|r endormi, utilisez votre |T135153:0|t|cRXP_LOOT_Bâton de nature malade|r pour le réveiller. Tuez-le et dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de pandémie|r]
    .collect 220617,1 --Rune of Pandemic
    .use 221976
    .train 431743,1
step
    .train 431743 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de pandémie|r] |cRXP_WARN_pour apprendre|r |T136227:0|t[Pandémie]
    .use 220617
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Décimation
#name Décimation - 55 (Azeroth)

step
    #completewith next
    .zone Burning Steppes >> Voyagez jusqu'aux Steppes ardentes
step
    #loop
    .goto Burning Steppes,93.2,59.0,55,0
    .goto Burning Steppes,72.2,31.6,55,0
    .goto Burning Steppes,69.0,26.4,55,0
    .goto Burning Steppes,59.8,65.0,55,0
    .goto Burning Steppes,36.4,60.8,55,0
    .goto Burning Steppes,24.2,64.6,55,0
    .goto Burning Steppes,37.6,42.2,55,0
    >>|cRXP_WARN_Cherchez des |cRXP_PICK_Failles gangrenées|r. Ce sont des portails pouvant apparaître dans toute la zone|r
    >>|cRXP_WARN_Interagissez avec la |cRXP_PICK_Faille|r pour envoyer votre |cRXP_FRIENDLY_Diablotin explorateur|r à travers la |cRXP_PICK_Faille|r et attendez qu'il revienne avec un|r |T135222:0|t[|cRXP_LOOT_Harmonisateur de portail de la Légion|r]
    >>|cRXP_WARN_Vous devrez peut-être répéter le processus plusieurs fois jusqu'à ce qu'il revienne avec l'|r |T135222:0|t[|cRXP_LOOT_Harmonisateur de portail de la Légion|r]
    .collect 224806,1
    .train 440922,1
    .skipgossip
step
    #completewith next
    .zone Blasted Lands >> Voyagez jusqu'aux Terres foudroyées
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224806 >> |cRXP_WARN_Utilisez l'|r |T135222:0|t[|cRXP_LOOT_Harmonisateur de portail de la Légion|r] |cRXP_WARN_sur une |cRXP_PICK_Cicatrice gangrenée|r qui le transformera en|r |cRXP_PICK_Portail d'un autre monde|r
    >>|cRXP_WARN_Interagissez avec le |cRXP_PICK_Portail d'un autre monde|r et envoyez votre |cRXP_FRIENDLY_Diablotin explorateur|r à travers celui-ci, puis attendez son retour avec un|r |T134429:0|t[|cRXP_LOOT_Harmonisateur d’harmonisateur de portail|r]
    >>|cRXP_WARN_Vous devrez peut-être répéter le processus plusieurs fois jusqu'à ce qu'il revienne avec l'|r |T134429:0|t[|cRXP_LOOT_Harmonisateur d’harmonisateur de portail|r]
    .collect 224912,1
    .train 440922,1
    .skipgossip
step
    .use 224912 >> |cRXP_WARN_Utilisez l'|r |T134429:0|t[|cRXP_LOOT_Harmonisateur d’harmonisateur de portail|r] |cRXP_WARN_pour le transformer en|r |T135224:0|t[|cRXP_LOOT_Harmonisateur de portail surchargé|r]
    .collect 224893,1
    .train 440922,1
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224893 >> |cRXP_WARN_Utilisez l'|r |T135224:0|t[|cRXP_LOOT_Harmonisateur de portail surchargé|r] |cRXP_WARN_sur une |cRXP_PICK_Cicatrice gangrenée|r, ce qui la fera devenir rouge|r
    >>|cRXP_WARN_Interagissez avec et envoyez votre |cRXP_FRIENDLY_Diablotin explorateur|r dedans, puis attendez son retour avec la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Décimation|r]
    .collect 225686,1
    .train 440922,1
    .skipgossip
step
    .train 440922 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Décimation|r] |cRXP_WARN_pour apprendre|r |T135808:0|t[Décimation]
    .use 225686
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Marque du chaos
#name Marque du chaos - 50 (Maleterres de l'Ouest)

step
    #completewith next
    .zone Western Plaguelands >> Voyagez aux Maleterres de l'Ouest
step
    #loop
    .goto Western Plaguelands,50.6,77.6
    >>|cRXP_WARN_Lancez|r |T136163:0|t[Siphon d'âme] |cRXP_WARN_sur les |cRXP_ENEMY_Ecorcheurs Squelettes|r jusqu'à ce que vous ayez obtenu 3|r |cRXP_LOOT_Fragments d’âme pestiférées|r
    .collect 225929,3
    .mob Skeletal Flayer
    .train 440924,1
step
    .goto Western Plaguelands,43.361,84.143 << Alliance
    .goto Tirisfal Glades,83.035,72.631 << Horde
    >>|cRXP_WARN_Rendez vos |cRXP_LOOT_Fragments d’âme pestiférées|r à |cRXP_FRIENDLY_Pixi Dérobéclat|r à la pointe du Noroît pour recevoir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Marque du chaos|r] << Alliance
    >>|cRXP_WARN_Rendez vos |cRXP_LOOT_Fragments d’âme pestiférées|r à |cRXP_FRIENDLY_Prazik Dérobéclat|r à la Barricade afin de recevoir la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Marque du chaos|r] << Horde
    .collect 225688,1
    .target Pixi Pilfershard << Alliance
    .target Prazik Pilfershard << Horde
    .train 440924,1
step
    .train 440924 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Marque du chaos|r] |cRXP_WARN_pour apprendre|r |T136226:0|t[Marque du Chaos]
    .use 225688
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Armure infernale
#name Armure infernale - 55 (Terres Foudroyées)

step
    #completewith next
    .zone Blasted Lands >> Voyagez jusqu'aux Terres foudroyées
    >>|cRXP_WARN_Assurez-vous d'avoir appris les capacités suivantes et pensez à emmener un healer avec vous, comme vous devrez tuer un élite de niveau 56|r
    >>|T134131:0|t[Pierre de sort supérieure]
    >>|T136121:0|t[Gardien de l'ombre]
    >>|T136190:0|t[Sacrifice] |cRXP_WARN_pour votre|r |T136221:0|t[Marcheur du Vide]
step
    .train 440926,1
    #loop
    .goto Blasted Lands,65.31,32.63,20,0
    .goto Blasted Lands,68.050,28.667
    >>Tuez n'importe quel |cRXP_ENEMY_lige d'ombre|r. Dépouillez-les pour la |cRXP_LOOT_Note lige d’ombre|r
    .collect 227658,1
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
    .mob Shadowsworn Enforcer
    .mob Shadowsworn Warlock
    .mob Shadowsworn Dreadweaver
step
    .train 440926,1
    .goto Blasted Lands,68.050,28.667
    >>Dirigez-vous vers l' |cRXP_PICK_Autel|r au fond de la grotte
    >>|cRXP_WARN_Avant de cliquer sur l' |cRXP_PICK_Autel|r, assurez-vous d'avoir utilisé votre|r |T134131:0|t[Pierre de sort supérieure]|cRXP_WARN_, votre|r |T136121:0|t[Gardien de l'ombre] |cRXP_WARN_et|r |T136190:0|t[Sacrifice] |cRXP_WARN_, comme vous êtes sur le point de subir d'importants dégâts en cliquant sur l' |cRXP_PICK_Autel|r et d'invoquer |cRXP_ENEMY_Heliath|r en le faisant. |cRXP_ENEMY_Heliath|r est un élite de niveau 56|r
    >>Tuez |cRXP_ENEMY_Heliath|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Armure infernale|r]
    .collect 225687,1
    .mob Heliath
step
    .train 440926 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’Armure infernale|r] |cRXP_WARN_pour apprendre|r |T236418:0|t[Armure infernale]
    .use 225687
]])
