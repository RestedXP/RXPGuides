if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Pénitence - 3 (Forêt d'Elwynn)
#title Pénitence

step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>Tuez les |cRXP_ENEMY_Travailleurs kobolds|r. Dépouillez-les pour un |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un acolyte tourmenté|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_Utilisez l'emote /genou dans votre fenêtre de discussion à l'intérieur de l'Abbaye de Northshire|r
    >>|cRXP_WARN_Vous recevrez le buff|r |T135934:0|t[Méditation sur la Lumière] |cRXP_WARN_|r
    .cast 410958 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un acolyte tourmenté|r] |cRXP_WARN_pendant que vous avez le buff|r |T135934:0|t[Méditation sur la Lumière] |cRXP_WARN_|r
    .use 205951
    .itemcount 205951,1
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Pénitence - 1 (Dun Morogh)
#title Pénitence


step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Ouvrez la |cRXP_PICK_Cantine mâcheroc|r sur le sol. Récupérez le |T136222:0|t|cRXP_LOOT_[Souvenir d'un acolyte tourmenté]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Pénitence - 2 (Sombrevallon)
#title Pénitence

step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r à l'étage
    .accept 77574 >> Acceptez la quête Méditations sur Élune
    .target Shanda
    .train 402862,1
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >> Voyagez au puits de lune de Sombrevallon
    .train 402862,1
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_Dès que vous êtes au puits de lune, utilisez l'emote /genou dans votre fenêtre de discussion|r
    >>|cRXP_WARN_Vous recevrez le buff|r |T136057:0|t[Méditations sur Élune] |cRXP_WARN_|r
    .train 402862,1
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un acolyte tourmenté|r] |cRXP_WARN_pendant que vous avez le buff|r |T136057:0|t[Méditations sur Élune] |cRXP_WARN_|r
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
    .train 402862,1
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r à l'étage
    .turnin 77574 >> Rendez la quête Méditations sur Élune
    .target Shanda
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Troll Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Pénitence - 2 (Durotar)
#title Pénitence


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Acceptez la quête La sagesse des Loa
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Voyagez à l' |cRXP_PICK_Autel des Loas|r au Village de Sen'Jin Village et utilisez l'emote /genou
    .use 205951 >>Parlez au |cRXP_FRIENDLY_Loa serpent|r lorsqu'il apparaît, puis utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un acolyte tourmenté|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Rendez la quête La sagesse des Loa
    .target Ken'jai
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Pénitence - 2 (Tirisfal)
#title Pénitence


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .accept 77670 >>Acceptez la quête Méditation sur la non-mort
    .target Dark Cleric Duesten
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>Entrez dans le cimetière et utilisez l'emote /genou
    .use 205951 >>Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un acolyte tourmenté|r] lorsque vous obtenez le buff |T237569:0|t[Méditation sur la non-mort]
    .complete 77670,1 >>Apprenez Gravure de gants (Pénitence)
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Rendez la quête Méditation sur la non-mort
    .target Dark Cleric Duesten

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Homoncules - 8 (Durotar)
#title Homoncules

step
    .train 402852,1
    #completewith next
    .zone Durotar >>Voyagez à Durotar
step
    .train 402852,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Agenouillez-vous devant l'|cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>Tuez les |cRXP_ENEMY_Trolls vaudou|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .goto Durotar,67.6,86.4
    .collect 205947,1
    .mob Voodoo Troll
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Vous devez maintenant trouver un Prêtre mort-vivant avec un buff Loa. Vous devez vous agenouiller (/kneel) devant lui et il doit /prier pour vous.|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
step << Undead
    .train 402852,1
    .goto Durotar,55.32,72.66
    .aura 418459 >>|cRXP_WARN_Agenouillez-vous au cimetière de Sen'jin|r afin d'obtenir le buff |T237569:0|t[Méditation sur la non-mort] amélioration
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Homoncules - 7 (Clairières de Tirisfal)
#title Homoncules

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
step
    .train 402852,1
    >>Tuez les |cRXP_ENEMY_Guerriers écarlates|r ou les |cRXP_ENEMY_Missionnaires écarlates|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Maintenant, vous devez trouver un Prêtre mort-vivant avec un buff Loa. Vous devez vous agenouiller devant lui et il doit utiliser l'émote /prier sur vous pour obtenir le buff |T237569:0|t[Méditation sur la non-mort].|r
step << Troll
    #completewith next
    .zone Durotar >>Voyagez à Durotar (prenez le zeppelin vers Orgrimmar)
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
step << Undead
    #completewith next
    .zone Durotar >>Voyagez à Durotar (prenez le zeppelin vers Orgrimmar)
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    *|cRXP_WARN_Vous pouvez aussi trouver un Prêtre troll avec le buff |T136077:0|t[Méditation sur les Loas]. Agenouillez-vous devant lui et il doit utiliser l'émote /prier sur vous|r.
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_Agenouillez-vous au cimetière de Sen'jin|r afin d'obtenir le buff |T237569:0|t[Méditation sur la non-mort] amélioration
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Souffrance partagée - 13 (Durotar)
#title Souffrance partagée

step
    #completewith next
    .zone Durotar >>Voyagez à Durotar
step
    .train 402854,1
    >>Tuez |cRXP_ENEMY_Makasgar|r ou |cRXP_ENEMY_Gazz'uz|r (dans la grotte), en fonction duquel est le plus proche de vous (le point de repère vous mène vers le plus proche). Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r]
    .goto Durotar,52.6,8.8,-1
    .goto Durotar,62.0,66.2,-1
    .collect 205945,1
    .mob Makasgar
    .mob Gazz'uz
step
    .train 402854,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r] |cRXP_WARN_pour apprendre|r |T136160:0|t[Souffrance partagée]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Souffrance partagée - 6 (Clairières de Tirisfal)
#title Souffrance partagée

step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
step
    .train 402854,1
    >>Tuez les |cRXP_ENEMY_Fermiers de Tirisfal|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r]
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Agenouillez-vous au cimetière jusqu'à obtenir le buff |T237569:0|t[Méditation sur la non-mort]
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>Voyagez à Durotar (prenez le zeppelin vers Orgrimmar)
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .aura -418459
    >>|cRXP_WARN_Vous pouvez aussi trouver un Prêtre mort-vivant avec un buff Loa. Vous devez vous agenouiller devant lui et il doit utiliser l'émote /prier sur vous pour obtenir le buff |T237569:0|t[Méditation sur la non-mort].|r
    .skipgossip 208307,1
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r] |cRXP_WARN_pour apprendre|r |T136160:0|t[Souffrance partagée]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Fléau du Vide - 5 (Durotar)
#title Fléau du Vide

step
    #completewith next
    .zone Durotar >>Voyagez à Durotar
step
    .train 425216,1
    >>Tuez les |cRXP_ENEMY_Marins|r et les |cRXP_ENEMY_Soldats de marine|r. Dépouillez-les pour obtenir le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .goto Durotar,57.6,55.4
    .collect 205940,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .train 425216,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Fléau du Vide - 6 (Clairières de Tirisfal)
#title Fléau du Vide

step
    #completewith next
    .zone Tirisfal Glades >>Voyagez aux Clairières de Tirisfal
step
    .train 425216,1
    >>Tuez |cRXP_ENEMY_Branchiar|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Agenouillez-vous au cimetière jusqu'à obtenir le buff |T237569:0|t[Méditation sur la non-mort]
step << Troll
    #completewith next
    .zone Durotar >>Voyagez à Durotar (prenez le zeppelin vers Orgrimmar)
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Agenouillez-vous devant le |cRXP_PICK_Autel des Loas|r et parlez au |cRXP_FRIENDLY_Loa serpent|r pour obtenir le buff |T136077:0|t[Méditation sur les Loas]
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Prière de guérison - 6 (Durotar)
#title Prière de guérison

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Esprit de l'aventurier|r dans les Pitons de Kolkar
    >>|cRXP_WARN_Un autre joueur (Prêtre ou Chaman) doit cliquer sur le portail. Dépouillez ensuite l' |r |cRXP_FRIENDLY_Esprit de l'aventurier|r |cRXP_WARN_ pour l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r] |cRXP_WARN_pour apprendre|r |T135944:0|t[Prière de guérison]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Prière de guérison - 10 (Mulgore)
#title Prière de guérison

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Esprit de l'aventurier|r à l'extérieur de la Mine de la KapitalRisk
    >>|cRXP_WARN_Un autre joueur (Prêtre ou Chaman) doit cliquer sur le portail. Dépouillez ensuite l' |r |cRXP_FRIENDLY_Esprit de l'aventurier|r |cRXP_WARN_ pour l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r] |cRXP_WARN_pour apprendre|r |T135944:0|t[Prière de guérison]
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Foi distordue - 10 (Loch Modan)
#title Foi distordue

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Entrez dans la mine du Ru d'argent
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>Tuez les |cRXP_ENEMY_Rats des tunnels|r. Dépouillez-les pour une |T237281:0|t[|cRXP_LOOT_Pièce à offrandes|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Geomancer
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >> |cRXP_WARN_Utilisez la|r |T237281:0|t[|cRXP_LOOT_Pièce à offrandes|r] |cRXP_WARN_au puits à l'intérieur de la Mine du Ru d'argent|r |cRXP_WARN_pour recevoir le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué|r] |cRXP_WARN_pour apprendre|r |T237566:0|t[Foi distordue]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Foi distordue - 14 (Marche de l'Ouest)
#title Foi distordue

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>Tuez le |cRXP_ENEMY_Travailleur immortel|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un champion dévoué|r]
    >>|cRXP_WARN_Vous devez utiliser un sort de sacré afin d'achever le|r |cRXP_ENEMY_Travailleur immortel|r
    >>|cRXP_WARN_Le |cRXP_ENEMY_Travailleur immortel|r peut apparaître à la Carrière de la Côte de l'or et à la Mine de Jangolode|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué|r] |cRXP_WARN_pour apprendre|r |T237566:0|t[Foi distordue]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Foi distordue - 18 (Sombrivage)
#title Foi distordue

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Tuez les |cRXP_ENEMY_Myrmidons Tempécailles|r, les |cRXP_ENEMY_Guerriers Tempécailles|r et les |cRXP_ENEMY_Ensorceleuses Tempécailles|r. Dépouillez-les pour une |T236364:0|t[|cRXP_LOOT_Offrande Briselance|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >> |cRXP_WARN_Utilisez l'|r |T236364:0|t[|cRXP_LOOT_Offrande Briselance|r] |cRXP_WARN_à l'Idole Briselance sous l'eau pour obtenir le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué|r] |cRXP_WARN_pour apprendre|r |T237566:0|t[Foi distordue]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Souffrance partagée - 10 (Dun Morogh)
#title Souffrance partagée

step << Priest
    .goto Loch Modan,77.894,62.236
    >>Tuez le |cRXP_ENEMY_Capitaine Beld|r en bas, à l'intérieur du bâtiment. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un sauveur en captivité|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r] |cRXP_WARN_pour apprendre|r |T136160:0|t[Souffrance partagée]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Souffrance partagée - 6 (Forêt d'Elwynn)
#title Souffrance partagée

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>Tuez les |cRXP_ENEMY_Mineurs kobolds|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un sauveur en captivité|r] |cRXP_WARN_pour apprendre|r |T136160:0|t[Souffrance partagée]
    >>|cRXP_WARN_Vous devez avoir 1 buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Homoncules - 8 (Dun Morogh)
#title Homoncules

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>Tuez les |cRXP_ENEMY_Prophètes Crins-de-givre|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    >>|cRXP_WARN_Vous devez avoir 2 buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Homoncules - 8 (Forêt d'Elwynn)
#title Homoncules

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>Tuez les |cRXP_ENEMY_Sorcier-voleurs défias|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    >>|cRXP_WARN_Vous devez avoir 2 buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme, l'Abbaye de Comté-du-Nord, la Cathédrale de Hurlevent, les Autels de la Lumière à Courbenclume, Loch Modan ou la Garde mystique à Forgefer|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Homoncules - 8 (Teldrassil)
#title Homoncules

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Voyagez jusqu'à Gangreroche
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>Tuez les |cRXP_ENEMY_Grells vicieux|r, les |cRXP_ENEMY_Fées maudites|r et les |cRXP_ENEMY_Fées des ombres|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    >>|cRXP_WARN_Vous devez avoir deux buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme un puits de lune, l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autels de la Lumière à Anvilmar, au Loch Modan ou la Garde mystique à Ironforge|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Prière de guérison - 6 (Forêt d’Elwynn)
#title Prière de guérison

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Prêtre ou Paladin se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Paladin ou un Prêtre dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après avoir complété le rituel. Dépouillez-le pour l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r]
    .train 402848 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r] |cRXP_WARN_pour apprendre|r |T135944:0|t[Prière de guérison]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Prière de guérison - 8 (Teldrassil)
#title Prière de guérison

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Prêtre ou Druide se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Druide ou un Prêtre dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après avoir complété le rituel. Dépouillez-le pour l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r]
    .train 402848 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r] |cRXP_WARN_pour apprendre|r |T135944:0|t[Prière de guérison]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Prière de guérison - 6 (Dun Morogh)
#title Prière de guérison

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_Rejoignez un groupe avec un autre Prêtre ou Paladin se tenant sur les |cRXP_FRIENDLY_Restes d'aventurier|r, ou demandez l'aide à un Paladin ou un Prêtre dans le canal Général (Tapez /1 dans le chat)|r
    >>|cRXP_WARN_Parlez aux |cRXP_FRIENDLY_Restes d'aventurier|r sur le sol pour commencer le rituel, OU cliquez sur le|r |T136223:0|t[Rituel d'esprit] de l'autre joueur|cRXP_WARN_(en étant dans leur groupe)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Esprit de l'aventurier|r apparaîtra et mourra après avoir complété le rituel. Dépouillez-le pour l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r]
    .train 402848 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie réciproque|r] |cRXP_WARN_pour apprendre|r |T135944:0|t[Prière de guérison]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Mot de l'ombre : Mort - 10 (Sombrivage)
#title Mot de l'ombre : Mort

step << Priest
    .goto Darkshore,30.5,47.5
    >>Cliquez sur le |cRXP_PICK_Vestige|r sur la petite île. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>Vous allez maintenant devoir obtenir deux buffs |T135934:0|t|T136057:0|t[Méditation]
    >>Vous devez utiliser l'emote /genou à l'intérieur de l'un des lieux suivants : Un puits de lune, l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autes de la Lumière à Anvilmar, le Loch Modan ou la Garde Mystique à Ironforge
    >>Pour recevoir votre deuxième buff |T135934:0|t|T136057:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant
    .train 402849 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi]|r |cRXP_WARN_pour apprendre|r |T136149:0|t[Mot de l'ombre : Mort]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Mot de l'ombre - Mort - 12 (Loch Modan)
#title Mot de l'ombre : Mort

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >> Voyagez au Bastion des Mo’grosh au Loch Modan
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_Ciblez l' |cRXP_FRIENDLY_Idole hérétique|r pour vous agenouiller automatiquement|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Heretic Idol|r targeted|r
    >>|cRXP_WARN_Vous recevrez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>Vous allez maintenant devoir obtenir deux buffs |T135934:0|t|T136057:0|t[Méditation]
    >>Vous devez utiliser l'emote /genou à l'intérieur de l'un des lieux suivants : Un puits de lune, l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autes de la Lumière à Anvilmar, le Loch Modan ou la Garde Mystique à Ironforge
    >>Pour recevoir votre deuxième buff |T135934:0|t|T136057:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant
    .train 402849 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi]|r |cRXP_WARN_pour apprendre|r |T136149:0|t[Mot de l'ombre : Mort]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Mot de l’ombre : Mort - 20 (Tarides)
#title Mot de l'ombre : Mort

step
    #completewith next
    .zone The Barrens >> Voyagez jusqu'aux Tarides
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>Lancez |T135894:0|t[Dissipation de la magie] sur le |cRXP_ENEMY_Mirage du désert|r. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r]
    *|cRXP_WARN_Il s'agit d'un fantôme vert qui patrouille. Utilisez la macro de ciblage RestedXP pour le cibler.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>Vous allez maintenant devoir obtenir deux buffs |T237569:0|t|T136077:0|t[Méditation]
    >>Vous devez utiliser l'emote |cRXP_WARN_/genou|r à l'un des endroits suivants devant l'autel et parler ensuite à l'esprit : Sen'jin ou la Croisée |cRXP_WARN_(les emplacements des sanctuaires sont indiqués sur votre carte, vous pouvez aussi trouver n'importe quel Prêtre avec le buff qui peut les dupliquer sur vous)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Pour obtenir votre deuxième buff |T237569:0|t|T136077:0|t[Méditation], vous devez utiliser l'emote |cRXP_WARN_/genou|r devant un Prêtre mort-vivant qui a |T237569:0|t[Méditation sur la non-mort], et il doit utiliser l'emote /prier en vous ciblant
    .train 402849 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi]|r |cRXP_WARN_pour apprendre|r |T136149:0|t[Mot de l'ombre : Mort]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Vous allez maintenant devoir obtenir deux buffs |T237569:0|t|T136077:0|t[Méditation]
    >>Vous devez utiliser l'emote |cRXP_WARN_/genou|r à l'un des endroits suivants devant l'autel et parler ensuite à l'esprit : Sen'jin ou la Croisée
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>Pour recevoir votre deuxième buff |T237569:0|t|T136077:0|t[Méditation], utilisez l'émote |cRXP_WARN_/genou|r dans un cimetière pour afin de recevoir le buff |T237569:0|t[Méditation sur la non-mort] |cRXP_WARN_(un sanctuaire et un cimetière sont indiqués sur votre carte, vous pouvez aussi trouver un autre Prêtre avec le buff pour vous le dupliquer)|r
    .train 402849 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi]|r |cRXP_WARN_pour apprendre|r |T136149:0|t[Mot de l'ombre : Mort]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Mot de l’ombre : Mort - 24 (Forêt des Pins-argentés)
#title Mot de l'ombre : Mort

step
    #completewith next
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
step
    .goto Silverpine Forest,65.8,23.6
    >>Ramassez le |cRXP_PICK_Parchemin|r derrière |cRXP_ENEMY_Thule Ravenclaw|r (élite de niveau 24) pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r]
    *|cRXP_WARN_Le parchemin est au deuxième étage. Il est plus facile de le faire en groupe.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>Vous allez maintenant devoir obtenir deux buffs |T237569:0|t|T136077:0|t[Méditation]
    >>Vous devez utiliser l'emote |cRXP_WARN_/genou|r à l'un des endroits suivants devant l'autel et parler ensuite à l'esprit : Sen'jin ou la Croisée |cRXP_WARN_(les emplacements des sanctuaires sont indiqués sur votre carte, vous pouvez aussi trouver n'importe quel Prêtre avec le buff qui peut les dupliquer sur vous)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Pour obtenir votre deuxième buff |T237569:0|t|T136077:0|t[Méditation], vous devez utiliser l'emote |cRXP_WARN_/genou|r devant un Prêtre mort-vivant qui a |T237569:0|t[Méditation sur la non-mort], et il doit utiliser l'emote /prier en vous ciblant
    .train 402849 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi]|r |cRXP_WARN_pour apprendre|r |T136149:0|t[Mot de l'ombre : Mort]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Vous allez maintenant devoir obtenir deux buffs |T237569:0|t|T136077:0|t[Méditation]
    >>Vous devez utiliser l'emote |cRXP_WARN_/genou|r à l'un des endroits suivants devant l'autel et parler ensuite à l'esprit : Sen'jin ou la Croisée
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>Pour recevoir votre deuxième buff |T237569:0|t|T136077:0|t[Méditation], utilisez l'émote |cRXP_WARN_/genou|r dans un cimetière pour afin de recevoir le buff |T237569:0|t[Méditation sur la non-mort] |cRXP_WARN_(un sanctuaire et un cimetière sont indiqués sur votre carte, vous pouvez aussi trouver un autre Prêtre avec le buff pour vous le dupliquer)|r
    .train 402849 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi]|r |cRXP_WARN_pour apprendre|r |T136149:0|t[Mot de l'ombre : Mort]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Foi distordue - 10 (Forêt des Pins-argentés)
#title Foi distordue

step
    #completewith next
    .zone Silverpine Forest >> Voyagez à la Forêt des Pins argentés
step
    .train 425215,1
    >>Tuez l' Esprit hurlant|cRXP_ENEMY_. Dépouillez-le pour le |T136222:0|t[|rSouvenir d’un champion dévoué|cRXP_FRIENDLY_]
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué] |cRXP_WARN_pour apprendre|r |T237566:0|t[Foi distordue]
    >>|cRXP_WARN_Vous devez avoir un buff|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_en tapant|r /genou |cRXP_WARN_en face du |cRXP_PICK_Sanctuaire de Loa|r (à Durotar ou dans Les Tarides) ou en vous agenouillant en face d'un autre prêtre avec le buff alors qu'il utilise l'emote /prier sur vous|r << Troll
    >>|cRXP_WARN_Vous devez avoir un buff|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_en tapant|r /genou |cRXP_WARN_à un cimetière ou en vous agenouillant en face d'un autre prêtre avec le buff alors qu'il utilise /prier sur vous|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,55.6,73.3 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Foi distordue - 10 (Tarides)
#title Foi distordue

step
    #completewith next
    .zone The Barrens >> Voyagez jusqu'aux Tarides
step
    .train 425215,1
    >>Tuez les Tranchecrins|cRXP_ENEMY_. Dépouillez-les pour la |T236248:0|t[|rMain secourable|cRXP_FRIENDLY_]
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob Razormane Thornweaver
    .mob Razormane Hunter
    .mob Razormane Water Seeker
    .mob Razormane Defender
step
    .train 425215,1
    >>|cRXP_WARN_Trouvez un joueur ou un familier mort que vous pouvez ressusciter (avec |T135955:0|t[Résurrection]) afin d'obtenir le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué]
    .collect 205905,1
step
    .train 425215 >> |cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un champion dévoué] |cRXP_WARN_pour apprendre|r |T237566:0|t[Foi distordue]
    >>|cRXP_WARN_Vous devez avoir un buff|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_en tapant|r /genou |cRXP_WARN_en face du |cRXP_PICK_Sanctuaire de Loa|r (à Durotar ou dans Les Tarides) ou en vous agenouillant en face d'un autre prêtre avec le buff alors qu'il utilise l'emote /prier sur vous|r << Troll
    >>|cRXP_WARN_Vous devez avoir un buff|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_en tapant|r /genou |cRXP_WARN_à un cimetière ou en vous agenouillant en face d'un autre prêtre avec le buff alors qu'il utilise /prier sur vous|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.8 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Fléau du Vide - 6 (Forêt d'Elwynn)
#title Fléau du Vide

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Entrez dans la mine de Fargodeep
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Tuez |cRXP_ENEMY_Dent-d'or|r. Dépouillez-le pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Fléau du Vide - 6 (Dun Morogh)
#title Fléau du Vide


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Tuez les |cRXP_ENEMY_Gnomes lépreux|r. Dépouillez-les pour le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Rénovation surpuissante - 27 (Mille pointes)
#title Rénovation surpuissante


-- Empowered Renew

step
    .train 425309,1
    .zone Thousand Needles >>Voyagez aux |cFFfa9602Mille pointes|r
step
    .train 425309,1
    .goto Thousand Needles,31.33,37.05,10,0
    .goto Thousand Needles,33.17,35.38,15,0
    .goto Thousand Needles,31.96,31.32,15,0
    .goto Thousand Needles,33.04,27.61,30,0
    .goto Thousand Needles,35.20,31.09,30,0
    .goto Thousand Needles,34.17,38.81
    >>Tuez les |cRXP_ENEMY_Géomanciens du Totem sinistre|r, les |cRXP_ENEMY_Bandits du Totem sinistre|r, les |cRXP_ENEMY_Ravageurs du Totem sinistre|r et les |cRXP_ENEMY_Marteleurs du Totem sinistre|r. Dépouillez-les pour la |T135975:0|t[|cRXP_LOOT_Prophétie de chemin accéléré|r]
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_LOOT_Prophétie de chemin accéléré|r] |cRXP_WARN_pour apprendre|r |T236254:0|t[Rénovation surpuissante]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Rénovation surpuissante - 33 (Montagnes d'Alterac)
#title Rénovation surpuissante

-- Empowered Renew

step
    .train 425309,1
    .zone Alterac Mountains >>Voyagez aux |cFFfa9602Montagnes d'Alterac|r
step
    .train 425309,1
    #loop
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72,70,0
    >>Tuez les |cRXP_ENEMY_Crushridge Ogres|r et les |cRXP_ENEMY_Crushridge Brutes|r. Dépouillez-les pour la |T135975:0|t[|cRXP_LOOT_Prophétie de chemin accéléré|r]
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .train 425309 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_LOOT_Prophétie de chemin accéléré|r] |cRXP_WARN_pour apprendre|r |T236254:0|t[Rénovation surpuissante]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture
#name Regain d’espoir - 31 (Désolace)
#title Regain d’espoir

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >> |cRXP_WARN_Vous devez avoir appris|r |T136206:0|t[Contrôle mental] |cRXP_WARN_pour obtenir la rune de|r |T135923:0|t[Regain d'espoir] |cRXP_WARN_|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_Vous devez être au moins de niveau 31 pour lancer|r |T136206:0|t[Contrôle mental] |cRXP_WARN_sur une|cRXP_ENEMY_ Prêtresse des marées Ondulame|r de niveau 33 plus tard|r
step
    .train 425310,1
    #completewith next
    .zone Desolace >>Voyagez à |cFFfa9602Désolace|r
step
    #loop
    .goto Desolace,35.4,29.6,60,0
    .goto Desolace,33.6,15,0,60,0
    .goto Desolace,40.0,17.4,60,0
    .goto Desolace,38.6,23.6,60,0
    .train 425310,1
    >>Tuez les |cRXP_ENEMY_Nagas Ondulames|r. Dépouillez-les pour la |T136222:0|t[|cRXP_LOOT_Vision troublante|r]
    .collect 213599,1
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Oracle
    .mob Slitherblade Myrmidon
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tide Priestess
step -- step shows for players that are only level 31
    #optional
    #completewith next
    +NOTE : Vous ne pouvez lancer|cRXP_WARN_ |T136206:0|t[Contrôle mental] |rque sur les |cRXP_WARN_Prêtresses des marées ondulames|cRXP_ENEMY_ de niveau 33|r. Le sort échouera sur ceux de niveau 34|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >> |cRXP_WARN_Lancez|r |T136206:0|t[Contrôle mental] |cRXP_WARN_sur une|r |cRXP_ENEMY_Prêtresse des marées Ondulame|r
    >>|cRXP_WARN_Pendant qu'elle est sous l'effet de|r |T136206:0|t[Contrôle mental]|cRXP_WARN_, ciblez-VOUS et lancez|r |T136077:0|t[Méditation sur l’abîme] |cRXP_WARN_à partir de la barre d'action de familier|r
    >>|cRXP_WARN_Appuyez sur Echap. ensuite pour annuler le|r |T136206:0|t[Contrôle mental] |cRXP_WARN_et tuez la|r |cRXP_ENEMY_Prêtresse des marées Ondulame|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >> |cRXP_WARN_Utilisez la|r |T136222:0|t[|cRXP_LOOT_Vision troublante|r] |cRXP_WARN_pour apprendre|r |T135923:0|t[Regain d’espoir]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Dispersion 40 (Vallée de Strangleronce)
#title Dispersion

-- Dispersion

step
    .train 425314,1
    >>|cRXP_WARN_Trouvez un joueur voleur avec la rune|r |T132299:0|t[Maître de la discrétion] |cRXP_WARN_rune et le bijou|r |T338666:0|t[Charme de Jani] |cRXP_WARN_pour utiliser|r |T133644:0|t[Vol à la tire] |cRXP_WARN_sur n'importe quel |cRXP_ENEMY_Troll Bloodscalp|r dans la Vallée de Strangleronce afin d'obtenir le|r |T237446:0|t[Parchemin troll mystérieux]|cRXP_WARN_. Un joueur mage doit ensuite utiliser un|r |T135933:0|t[Charme de compréhension] |cRXP_WARN_pour le déchiffrer afin de le transformer en|T134938:0|t[|cRXP_LOOT_Parchemin troll déchiffré|r]|r
    >>|cRXP_WARN_Vous pouvez aussi acheter un|r |T237446:0|t[Parchemin troll mystérieux]|r |cRXP_WARN_à l'Hôtel des ventes et demander à un mage de le déchiffrer, ou acheter directement le |T134938:0|t[|cRXP_LOOT_Parchemin troll déchiffré|r]|r
    .use 216880 >>|cRXP_WARN_Utilisez le |T134938:0|t[|cRXP_LOOT_Parchemin troll déchiffré|r] pour lance cette quête|r
    >>|cRXP_WARN_Vous pouvez aussi demande à un Prêtre de partager la quête avec vous|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >> Acceptez la quête Le parchemin des Trolls
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>Voyage vers la |cFFfa9602Vallée de Strangleronce|r
    >>|cRXP_WARN_Assurez-vous d'avoir 2 buffs actifs de|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_avant de vous y rendre|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>Cliquez sur la |cRXP_PICK_Source sacrée|r. Récupérez-y l' |T134712:0|t[|cRXP_LOOT_Eau de la source sacrée|r]
    >>|cRXP_WARN_Vous devrez peut-être tuer le|cRXP_ENEMY_ Seigneur Sakrasis|r (Rare de niveau 45) |rqui protège|cRXP_PICK_ la source sacrée|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >> Voyagez aux Ruines de Zul'Kunda
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >> |cRXP_WARN_Utilisez l'|r |T134712:0|t[|cRXP_LOOT_Eau de la source sacrée|r] |cRXP_WARN_à la petite fontaine|r
    >>Vous devrez peut-être tuer|cRXP_WARN_ Gan'zulah|cRXP_ENEMY_ (niveau 41) |ret un petit groupe de|cRXP_ENEMY_ Trolls|r autour de lui afin d'atteindre la petite fontaine|r
    .use 737
    .mob Gan'zulah
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>Cliquez sur la |cRXP_PICK_Source|r qui apparaît. Récupérez-y la |T135975:0|t[|cRXP_LOOT_Prophétie de malveillance captive|r]
    .collect 213142,1
step
    .train 425314 >> |cRXP_WARN_Utilisez la|r |T135975:0|t|cRXP_LOOT_[Prophétie de malveillance captive]|r |cRXP_WARN_pour apprendre|r |T237563:0|t[Dispersion]
    .use 213142
step
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 79731 >> Rendez la quête Le parchemin des Trolls
    .target Hemet Nesingwary
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Suppression de la douleur - 32 (Azeroth)
#title Suppression de la douleur

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>Allez aux |cFFfa9602Clairières de Tirisfal|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >> Entrez dans le cimetière du donjon Monastère écarlate
step
    >>Cliquez sur la |cRXP_PICK_Tombe|r près de l'endroit où le Cavalier sans tête apparaît pour récupérer l' |cRXP_LOOT_|T136222:0|t[Écho du cimetière]|r |cRXP_WARN_Nous vous recommandons fortement de monter un groupe de 5 joueurs pour cette étape.|r
    .link https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_Cliquez ici pour une image de référence.|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>Voyagez aux Hautes-terres d'Arathi
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>Cliquez sur la |cRXP_PICK_Tombe|r pour récupérer l' |cRXP_LOOT_|T136222:0|t[Écho d’Arathi]|r à la ferme de Go'sheke, à côté du plus grand bâtiment.
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>Voyagez au Marécage d'Âprefange
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>Cliquez sur la |cRXP_PICK_Tombe|r afin de récupérer l' |cRXP_LOOT_|T136222:0|t[Écho de Theramore]|r se trouvant près du cimetière de l'Alliance.
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>Voyagez au |cFFfa9602Marais des Chagrins|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>Cliquez sur la |cRXP_PICK_Tombe|r pour récupérer |cRXP_LOOT_|T136222:0|t[Écho du marécage]|r se trouvant près d'un lac, à côté d'un arbre.
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>Allez aux |cFFfa9602Clairières de Tirisfal|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >> Entrez dans le donjon du Monastère écarlate côté Bibliothèque|cRXP_WARN_Nous vous recommandons fortement un groupe de 5 joueurs pour les prochaines étapes.|r
step
    .train 402855,1
    .cast 437054 >>Utilisez l' |T136222:0|t[Écho du marécage] devant la statue de Guerrier.
    .use 215425
step
    .train 402855,1
    .cast 437053 >>Utilisez l' |T136222:0|t[Écho d’Arathi] devant la statue de Mage.
    .use 215428
step
    .train 402855,1
    .cast 436952 >>Utilisez l' |T136222:0|t[Écho de Theramore] devant la statue de Paladin.
    .use 215425
step
    .train 402855,1
    .cast 437055 >>Utilisez l' |T136222:0|t[Écho du cimetière] devant la statue du Prêtre.
    .use 215426
step
    .train 402855 >>Cliquez sur le Vestige orange au centre de la pièce afin de recevoir l' |T135791:0|t|cRXP_FRIENDLY_[Épiphanie apocryphe]|r, utilisez-la pour apprendre |T135936:0|t[Suppression de la douleur]
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#name Œil du Vide - 50 (Azeroth)

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>Voyagez aux Hinterlands
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>Cliquez sur l' |cRXP_PICK_|T236407:0|tŒil luminescent|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>Voyagez jusqu'aux Terres foudroyées
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>Cliquez sur l' |cRXP_PICK_|T236407:0|tŒil palpitant|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>Voyagez à la Gorge des Vents brûlants
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>Cliquez sur l' |cRXP_PICK_|T236407:0|tŒil vibrant|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>Cliquez sur l' |cRXP_PICK_|T236407:0|tŒil torve|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>Voyagez à Féralas
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>Cliquez sur l' |cRXP_PICK_|T236407:0|tŒil brûlant|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>Cliquez sur l' |cRXP_PICK_|T236407:0|tŒil suintant|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>Voyagez à Gangrebois
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>Cliquez sur l' |cRXP_PICK_|T236407:0|tŒil perçant|r
    .collect 223336,1 --1/1 Piercing Eye
    .train 402864,1
step
    #completewith next
    .zone Azshara >>Voyagez jusqu'à Azshara
    .train 402864,1
step
    .goto Azshara,89.8,33.6
    >>Ciblez le |cRXP_FRIENDLY_Sanctuaire du guetteur|r
    .emote KNEEL,223590
    .accept 82316,1 >>Acceptez la quête Sept yeux cachés
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Vague de Lumière
#name Vague de Lumière - 40 (Tanaris)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Vous ne pouvez obtenir la rune de|r |T135981:0|t[Vague de Lumière] |cRXP_WARN_qu'entre 21h et 6h à Tanaris.|r
    +Vous pouvez chercher dans la Vallée de Strangleronce quand vous voulez obtenir la rune en dehors de ces horaires.
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
    .train 431669,1
step
    .train 431669,1
    >>Tuez l' |cRXP_ENEMY_Echo d'une âme perdue|r |cRXP_WARN_avec des sorts/une baguette de sacré ou d'arcane|r. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r]
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Vous avez besoin de DEUX buffs méditation: cherchez un joueur prêtre avec plusieurs buffs, utilisez l'émote /genou devant lui, et attendez qu'il utilise sur vous l'émote /prier.|r
    .train 431669 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r] |cRXP_WARN_pour apprendre|r |T135981:0|t[Vague de Lumière]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Vague de Lumière
#name Vague de Lumière - 40 (Marais des Chagrins)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Vous ne pouvez obtenir la rune de|r |T135981:0|t[Vague de Lumière] |cRXP_WARN_qu'entre 21h et 6h dans le Marais des Chagrins.|r
    +Vous pouvez chercher dans la Vallée de Strangleronce quand vous voulez obtenir la rune en dehors de ces horaires.
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au Marais des Chagrins
    .train 431669,1
step
    .train 431669,1
    >>Tuez l' |cRXP_ENEMY_Echo d'une âme perdue|r |cRXP_WARN_avec des sorts/une baguette de sacré ou d'arcane|r. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r]
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Vous avez besoin de DEUX buffs méditation: cherchez un joueur prêtre avec plusieurs buffs, utilisez l'émote /genou devant lui, et attendez qu'il utilise sur vous l'émote /prier.|r
    .train 431669 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r] |cRXP_WARN_pour apprendre|r |T135981:0|t[Vague de Lumière]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Vague de Lumière
#name Vague de Lumière - 40 (Hinterlands)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Vous ne pouvez obtenir la rune de|r |T135981:0|t[Vague de Lumière] |cRXP_WARN_qu'entre 21h et 6h dans les Hinterlands|r
    +Vous pouvez chercher dans la Vallée de Strangleronce quand vous voulez obtenir la rune en dehors de ces horaires.
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>Voyagez aux Hinterlands
    .train 431669,1
step
    .train 431669,1
    >>Tuez l' |cRXP_ENEMY_Echo d'une âme perdue|r |cRXP_WARN_avec des sorts/une baguette de sacré ou d'arcane|r. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r]
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Vous avez besoin de DEUX buffs méditation: cherchez un joueur prêtre avec plusieurs buffs, utilisez l'émote /genou devant lui, et attendez qu'il utilise sur vous l'émote /prier.|r
    .train 431669 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r] |cRXP_WARN_pour apprendre|r |T135981:0|t[Vague de Lumière]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Vague de Lumière
#name Vague de Lumière - 40 (Vallée de Strangleronce) 2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_L'âme ne peut apparaître qu'après l'événement Lune de sang. Vous pouvez aussi désactiver l'événement pour vous et courir jusqu'à la position du point de repère|r.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
    .train 431669,1
step
    .train 431669,1
    >>Tuez l' |cRXP_ENEMY_Echo d'une âme perdue|r |cRXP_WARN_avec des sorts/une baguette de sacré ou d'arcane|r. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r]
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Vous avez besoin de DEUX buffs méditation: cherchez un joueur prêtre avec plusieurs buffs, utilisez l'émote /genou devant lui, et attendez qu'il utilise sur vous l'émote /prier.|r
    .train 431669 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r] |cRXP_WARN_pour apprendre|r |T135981:0|t[Vague de Lumière]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#title Vague de Lumière
#name Vague de Lumière - 40 (Vallée de Strangleronce) 1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Vous ne pouvez obtenir la rune de|r |T135981:0|t[Vague de Lumière] |cRXP_WARN_qu'entre 21h et 6h.|r
    +Vous pouvez chercher dans la Vallée de Strangleronce 2 quand vous voulez obtenir la rune en dehors de ces horaires.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
    .train 431669,1
step
    .train 431669,1
    >>Tuez l' |cRXP_ENEMY_Echo d'une âme perdue|r |cRXP_WARN_avec des sorts/une baguette de sacré ou d'arcane|r. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r]
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Vous avez besoin de DEUX buffs méditation: cherchez un joueur prêtre avec plusieurs buffs, utilisez l'émote /genou devant lui, et attendez qu'il utilise sur vous l'émote /prier.|r
    .train 431669 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la tribu perdue|r] |cRXP_WARN_pour apprendre|r |T135981:0|t[Vague de Lumière]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Soins de lien
#name Soins de lien - 58 (Maleterres de l'Ouest et de l'Est)
#next Capacités raciales de Prêtre - 60 (Azeroth)

step << Alliance
    #completewith next
    .zone Stormwind City >> Voyagez à Stormwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Grande prêtresse Laurena|r dans la cathédrale de Stormwind
    .accept 84320 >> Acceptez la quête Héritage perdu
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Voyagez à Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dietrich Praice|r dans la Vallée des esprits
    .accept 84405 >> Acceptez la quête Héritage perdu
    .target Dietrich Praice
step
    #completewith next
    .zone Western Plaguelands >> Voyagez aux Maleterres de l'Ouest
step
    .goto Western Plaguelands,51.9,82.4,50 >> Voyagez à la grande crypte se trouvant à côté de la Colline des Chagrins
step
    .goto Western Plaguelands,54.8,81.2
    >>|cRXP_WARN_Entrez dans la crypte et allez à gauche. Descendez et cherchez un petit coffre en bois dans une petite alcôve à votre droite. Ouvrez-le pour le |r |T133299:0|t[|cRXP_PICK_Bijou de famille|r]
    .collect 227745,1 --Family Heirloom(1)
step
    .goto Western Plaguelands,53.8,80.2
    >>|cRXP_WARN_Descendez au fond de la crypte. Ouvrez les|r |T133741:0|t[|cRXP_PICK_Archives de famille|r] |cRXP_WARN_sur une étagère à droite et le|r |T133735:0|t[|cRXP_PICK_Journal de survivant|r] |cRXP_WARN_sur la table à gauche|r
    .collect 227747,1 --Family Records
    .collect 227748,1 --Survivor Journal
step << Alliance
    #completewith next
    .zone Stormwind City >> Retournez à Stormwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Grande prêtresse Laurena|r dans la cathédrale de Stormwind
    .turnin 84320 >> Rendez la quête Héritage perdu
    .accept 84321 >> Acceptez la quête Relique de lumière
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Retournez à Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dietrich Praice|r dans la Vallée des esprits
    .turnin 84405 >> Rendez la quête Héritage perdu
    .accept 84406 >> Acceptez la quête Relique de lumière
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_La prochaine quête vous demandera de récupérer un objet dans une zone élite. Vous pouvez le faire seul, mais si vous avez un niveau plus bas ou un équipement faible, pensez à demander de l'aide|r
    .zone Western Plaguelands >> Retournez aux Maleterres de l'ouest
step
    .goto Western Plaguelands,48.2,21.7,50 >> Dirigez-vous vers Hearthglen, |cRXP_WARN_n'oubliez pas qu'il s'agit d'une zone élite|r
step
    .goto Western Plaguelands,42.2,18.1
    >>|cRXP_WARN_Entrez dans l'Hôtel de ville de Hearthglen et interagissez avec le|r |cRXP_PICK_Registre écarlate|r |cRXP_WARN_se trouvant sur l'estrade. Soyez prudent, comme la zone est remplie de mobs d'élite|r
    .turnin 84406 >> Rendez la quête Relique de lumière << Horde
    .turnin 84321 >> Rendez la quête Relique de lumière << Alliance
    .accept 84322 >> Acceptez la quête Recherches écarlates
step
    #completewith next
    >>|cRXP_WARN_La prochaine quête vous demandera de récupérer un objet dans une zone élite. Vous pouvez le faire seul, mais si vous avez un niveau plus bas ou un équipement faible, pensez à demander de l'aide|r
    .zone Eastern Plaguelands >> Voyagez aux Maleterres de l'Est
step
    .goto Eastern Plaguelands,77.5,81.7,50 >> Voyagez à la Main de Tyr, |cRXP_WARN_n'oubliez pas qu'il s'agit d'une zone élite|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_La rune de|r |T237537:0|t[Spécialisation Sacré] |cRXP_WARN_se situe aussi à la Main de Tyr, si vous ne voulez pas l'obtenir maintenant, passez cette étape|r
    >>|cRXP_WARN_Si vous voulez l'obtenir, dirigez-vous vers l'aile de la bibliothèque du bâtiment marquée sur votre carte et cherchez un livre situé sur une bibliothèque. Ramassez-le afin d'obtenir la rune. N'oubliez pas que vous ne pouvez pas le ramasser en combat|r
    >>|cRXP_WARN_Vous pouvez soit tuer tous les mobs de la pièce, soit mourir à côté du livre et ressusciter à un endroit hors de vue des mobs pour ramasser la rune sans avoir à en tuer|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Sacré|r] pour apprendre |T237537:0|t[Spécialisation Sacré]
    .train 453702,1
    .itemcount 226418,1
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Entrez dans le clocher et montez au dernier étage. Interagissez avec la boîte verrouillée qui s'y trouve|r
    .turnin 84322 >> Rendez la quête Recherches écarlates
    .accept 84323 >> Acceptez la quête Le prix intérieur
step
    .goto Eastern Plaguelands,83.6,78.2
    >>Tuez n'importe quel type de mobs écarlate dans la Main de Tyr. Dépouillez-les pour une |T134245:0|t[|cRXP_LOOT_Clé de l’entrepôt d’artéfact|r]
    >>|cRXP_WARN_Vous n'avez pas besoin de tuer des mobs pour cette clé si vous trouvez un voleur avec une compétence en crochetage de 175 ou plus, comme il pourrait ouvrir la boîte pour vous. Passez cette étape si vous préférez chercher un voleur plutôt que farm la clé|r
    .collect 228912,1 --Artifact Storage Key
    .itemcount 132874,<1 --Skips if you get the Shard of Light without the key
step
    >>Utilisez la |T134245:0|t[|cRXP_LOOT_Clé de l’entrepôt d’artéfact|r] pour déverrouiller la |T133876:0|t[|cRXP_LOOT_Boîte casse-tête|r] ou demandez à un voleur de l'ouvrir avec son crochetage. Dépouillez-le pour le |T132874:0|t[|cRXP_LOOT_Fragment de lumière|r]
    .collect 227938,1 --Shard of Light(1)
step << Alliance
    #completewith next
    .zone Stormwind City >> Retournez à Stormwind
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Grande prêtresse Laurena|r dans la cathédrale de Stormwind
    .turnin 84323 >> Rendez la quête Le prix intérieur
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Retournez à Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dietrich Praice|r dans la Vallée des esprits
    .turnin 84323 >> Rendez la quête Le prix intérieur
    .target Dietrich Praice
step
    .train 402853 >> Utilisez l' |T135791:0|t[|cRXP_FRIENDLY_Épiphanie jubilatoire|r] pour apprendre |T135883:0|t[|cRXP_FRIENDLY_Soins de lien|r]
    .use 228123
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Toucher vampirique
#name Toucher vampirique - 60 (Donjon du Canyon de la Malechute)

step
    #completewith next
    >>La rune de |T135978:0|t[|cRXP_FRIENDLY_Toucher vampirique|r] tombe sur le dernier boss du Canyon de la Malechute, le nouveau donjon ajouté dans SoD
    .zone Felwood >> |cRXP_WARN_Afin d'entrer dans le donjon, vous avez d'abord besoin d'un bijou obtenu via une courte quête. Allez à Gangrebois pour la commencer|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Émissaire crocs-d'ombre|r
    .accept 84384 >> Acceptez la quête Supercheries démoniaques
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Voyagez au Berceau-de-l'Hiver
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Winterspring,65.6,21.4
    >>Cherchez les |cRXP_ENEMY_Chouettards berserks|r au nord de Long-Guet. Tuez-les et dépouillez-les pour les |T237413:0|t[|cRXP_LOOT_Épiphyses de chouettard|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Felwood >> Retournez à Gangrebois
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Émissaire crocs-d'ombre|r
    .turnin 84384 >> Rendez la quête Supercheries démoniaques
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    +Équipez le |T136232:0|t[|cRXP_FRIENDLY_Gardien d'illusion crocs-d’ombre|r] dans l'un de vos emplacements de bijou. Vous devez l'avoir équipé afin d'entrer dans le donjon
    .use 228172
    .itemcount 228172,<1
step
    >>|cRXP_WARN_La rune de|r |T135978:0|t[|cRXP_FRIENDLY_Toucher vampirique|r] |cRXP_WARN_tombe sur le dernier boss du Canyon de la Malechute, le nouveau donjon ajouté dans SoD. Commencez à chercher un groupe pour ce donjon en vous dirigeant vers Ashenvale|r
    >>Si vous êtes en vol, volez à la halte de Talrendis dans Azshara au lieu d'Astranaar. Vous serez plus proche de l'entrée du donjon << Alliance
    .zone Ashenvale >> Voyagez à Ashenvale
step
    .goto Ashenvale,84.5,75.0,50 >> Dirigez-vous vers l'entrée du donjon Canyon de la Malechute
step
    >>Terminez le donjon. L' |T135791:0|t[|cRXP_FRIENDLY_Épiphanie apéritive|r] vous permettant d'apprendre |T135978:0|t[|cRXP_FRIENDLY_Toucher vampirique|r] tombe sur le dernier boss du donjon, le |cRXP_ENEMY_Fantôme de Hurlenfer|r. |cRXP_WARN_N'oubliez pas de le dépouiller afin de récupérer la rune !|r
    .collect 228126,1 --Apperitive Epiphany
    .mob Hellscream's Phantom
step
    .train 402857 >> Utilisez l' |T135791:0|t[|cRXP_FRIENDLY_Épiphanie apéritive|r] pour apprendre |T135978:0|t[|cRXP_FRIENDLY_Toucher vampirique|r]
    .use 228126
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Divers
#title Capacités raciales de Prêtre
#name Capacités raciales de Prêtre - 60 (Azeroth)


step
    #completewith next
    >>|cRXP_WARN_La capacité supplémentaire du prêtre est un déblocage à l'échelle du serveur. Cela signifie que, si un autre joueur l'a déjà fait sur votre serveur, vous pouvez ignorer toute la suite de quêtes et aller directement à Karazhan afin d'apprendre votre nouvelle capacité raciale. Si ce n'est pas le cas, vous pouvez utiliser le guide ci-dessous pour être le joueur le débloquant pour votre serveur !|r
    .zone Deadwind Pass >> Voyagez au Défilé de Deuillevent
step
    .goto Deadwind Pass,40.8,78.4
    >>Voyagez à un petit sanctuaire près de Karazhan
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Appréhension divine|r dans un sanctuaire à côté de Karazhan pour choisir la capacité raciale que vous souhaitez prendre
    .target Divine Apprehension
step
    #completewith PreQStart
    +Il s'agit du début de la suite de quêtes pour débloquer la capacité raciale supplémentaire des prêtre sur tout le serveur. |cRXP_WARN_Il y a de fortes chances qu'elle ait déjà été terminée sur votre serveur et que vous n'ayez pas besoin de faire tout ce qui suit. Continuez uniquement si vous voulez essayer cette suite de quête ou si vous savez qu'elle n'a pas encore été débloquée|r
step
    #completewith QStart
    +|cRXP_WARN_Afin de commencer cette quête, vous devez avoir déjà fait la suite de quêtes qui vous récompense de|r |T135883:0|t[|cRXP_FRIENDLY_Soins de lien|r]|cRXP_WARN_. Vous trouverez un guide pour l'obtenir dans la section des runes de capes|r
    .train 402853,1
step
    #label PreQStart
    .goto Eastern Plaguelands,48.1,24.0
    >>|cRXP_WARN_Pour rendre la première quête de cette suite, vous aurez besoin de 4|r |T134855:0|t[|cRXP_LOOT_Eaux sacrées de Stratholme|r] |cRXP_WARN_en plus d'autres composants pouvant être achetés à l'hôtel des ventes. Cherchez un groupe pour faire le donjon Stratholme(côté morts-vivants)|r
    >>|cRXP_WARN_Une fois à l'intérieur, cherchez et ouvrez les Caisses de ravitaillement posées au sol et dispersées dans toute l'instance. Elles peuvent contenir les Eaux sacrées, mais aussi être des leurres pouvant faire apparaître des ennemis pénibles à gérer|r
    .collect 13180,4 --Stratholme Holy Water(4)
step << Alliance
    #completewith next
    .zone Stormwind City >> Voyagez à Stormwind
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez 6 |T133682:0|t[|cRXP_LOOT_Bandage épais en étoffe runique|r], 4 |T134834:0|t[|cRXP_LOOT_Potions de soins majeures|r] et 8 |T132834:0|t[|cRXP_LOOT_Oeufs géants|r] à l'hôtel des ventes. Vous en avez besoin pour la première quête de cette suite avec l' |T134855:0|t[|cRXP_LOOT_Eau sacrée de Stratholme|r] que vous avez déjà collectée.
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Auctioneer Jaxon
step << Alliance
    #label QStart
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Grande prêtresse Laurena|r dans la cathédrale de Stormwind
    .accept 84324 >> Acceptez la quête Offres diplomatiques
    .turnin 84324 >> Rendez la quête Offres diplomatiques
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Voyagez à Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thathung|r
    >>Achetez 6 |T133682:0|t[|cRXP_LOOT_Bandage épais en étoffe runique|r], 4 |T134834:0|t[|cRXP_LOOT_Potions de soins majeures|r] et 8 |T132834:0|t[|cRXP_LOOT_Oeufs géants|r] à l'hôtel des ventes. Vous en avez besoin pour la première quête de cette suite avec l' |T134855:0|t[|cRXP_LOOT_Eau sacrée de Stratholme|r] que vous avez déjà collectée.
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Thathung
step << Horde
    #label QStart
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dietrich Praice|r dans la Vallée des esprits
    .accept 84408 >> Acceptez la quête Offres diplomatiques
    .turnin 84408 >> Rendez la quête Offres diplomatiques
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Pour la prochaine partie de la quête, vous devrez trouver un prêtre de la faction opposée qui fait aussi cette suite de quêtes pour pouvoir progresser|r
    .zone Eastern Plaguelands >> Voyagez aux Maleterres de l'Est
step
    .goto Eastern Plaguelands,47,58
    >>|cRXP_WARN_Voyagez vers le|r |cRXP_FRIENDLY_Sanctuaire de coopération|r |cRXP_WARN_se trouvant dans les Maleterres de l'Est. Infligez-vous des dégâts mutuellement avec le prêtre de la faction opposée, puis utilisez l'objet|r |T134918:0|t[|cRXP_FRIENDLY_Gardien altruiste|r] |cRXP_WARN_que vous avez reçu en rendant la quête précédente pour vous soigner mutuellement|r
    >>Si vous l'avez fait correctement, le |cRXP_FRIENDLY_Sanctuaire de coopération|r vous proposera une quête, acceptez-la
    .accept 84325 >> Acceptez la quête Sanctuaire de coopération << Alliance
    .accept 84410 >> Acceptez la quête Sanctuaire de coopération << Horde
    .use 228130
step << Alliance
    #completewith next
    .zone Stormwind City >> Retournez à Stormwind
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Achetez 2 |T134459:0|t[|cRXP_LOOT_Barres d'arcanite|r], 2 |T134086:0|t[|cRXP_LOOT_Sangs de la montagne|r] et 3 |T134132:0|t[|cRXP_LOOT_Saphir bleu|r] à l'Hôtel des ventes. Vous en aurez bientôt besoin pour rendre une quête. Ces objets peuvent coûter cher
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Auctioneer Jaxon
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Grande prêtresse Laurena|r dans la cathédrale de Stormwind
    .turnin 84325 >> Rendez la quête Sanctuaire de coopération
    .accept 84326 >> Acceptez la quête Anneau diplomatique
    .turnin 84326 >> Rendez la quête Anneau diplomatique
    .accept 84327 >> Acceptez la quête Une mission diplomatique
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Retournez à Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thathung|r
    >>Achetez 2 |T134459:0|t[|cRXP_LOOT_Barres d'arcanite|r], 2 |T134086:0|t[|cRXP_LOOT_Sangs de la montagne|r] et 3 |T134132:0|t[|cRXP_LOOT_Saphir bleu|r] à l'Hôtel des ventes. Vous en aurez bientôt besoin pour rendre une quête. Ces objets peuvent coûter cher
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Thathung
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dietrich Praice|r dans la Vallée des esprits
    .turnin 84410 >> Rendez la quête Sanctuaire de coopération
    .accept 84411 >> Acceptez la quête Anneau diplomatique
    .turnin 84411 >> Rendez la quête Anneau diplomatique
    .accept 84412 >> Acceptez la quête Une mission diplomatique
    .target Dietrich Praice
step << Horde
    #completewith next
    >>|cRXP_WARN_Afin de terminer cette quête, vous devrez à nouveau trouver un prêtre de la faction opposée et lui demander d'utiliser l'|r |T133396:0|t[|cFF0070FFAnneau diplomatique|r] |cRXP_WARN_sur vous pendant en étant à côté des portes de Stormwind. Cela fera que les gardes de la ville ne vous attaqueront plus et vous permettra d'entrer en toute sécurité dans la capitale ennemie|r
    >>|cRXP_WARN_Gardez à l'esprit que les joueurs de faction opposée peuvent toujours vous attaquer sur un serveur JcJ !|r
    .zone Elwynn Forest >> Allez aux portes de Stormwind
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Demandez à un prêtre de faction opposée d'utiliser son |T133396:0|t[|cFF0070FFAnneau diplomatique|r] sur vous pour que les gardes de la ville ne vous attaquent pas et dirigez-vous vers la Cathédrale de Stormwind. |cRXP_WARN_Vous pouvez toujours être attaqué par d'autres joueurs !|r
    >>|cRXP_WARN_Le prêtre de la faction opposée doit vous escorter jusqu'au donneur de quête ou vous perdrez l'immunité diplomatique|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Grande prêtresse Laurena|r dans la cathédrale de Stormwind
    .turnin 84412 >> Rendez la quête Une mission diplomatique
    .accept 84413 >> Acceptez la quête Réparer l'éclat
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Afin de terminer cette quête, vous devrez à nouveau trouver un prêtre de la faction opposée et lui demander d'utiliser l'|r |T133396:0|t[|cFF0070FFAnneau diplomatique|r] |cRXP_WARN_sur vous pendant en étant à côté des portes d'Orgrimmar. Cela fera que les gardes de la ville ne vous attaqueront plus et vous permettra d'entrer en toute sécurité dans la capitale ennemie|r
    >>|cRXP_WARN_Gardez à l'esprit que les joueurs de faction opposée peuvent toujours vous attaquer sur un serveur JcJ !|r
    .zone Durotar >> Allez aux portes d'Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Demandez à un prêtre de faction opposée d'utiliser son |T133396:0|t[|cFF0070FFAnneau diplomatique|r] sur vous pour que les gardes de la ville ne vous attaquent pas et dirigez-vous vers la Vallée des esprits. |cRXP_WARN_Vous pouvez toujours être attaqué par d'autres joueurs !|r
    >>|cRXP_WARN_Le prêtre de la faction opposée doit vous escorter jusqu'au donneur de quête ou vous perdrez l'immunité diplomatique|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dietrich Praice|r dans la Vallée des esprits
    .turnin 84327 >> Rendez la quête Une mission diplomatique
    .accept 84328 >> Acceptez la quête Réparer l'éclat
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Commencez à chercher un groupe pour le donjon Hache-Tripes Ouest, pour la prochaine quête vous devrez tuer le|r |cRXP_ENEMY_Magister Kalendris|r |cRXP_WARN_l'un des boss du donjon|r
    .zone Feralas >> Voyagez à Féralas
step
    .goto Feralas,59.1,43.2,100 >> Entrez dans la zone de Hache-Tripes
step
    .goto Feralas,60.4,30.2
    >>Entrez dans Hache-Tripes Ouest et tuez le |cRXP_ENEMY_Magister Kalendris|r. Dépouillez-le pour le livre |T133737:0|t[|cRXP_LOOT_Divinité appliquée|r]. Il se trouve dans la partie du donjon avec les fantômes
    .collect 227912,1
step << Horde
    #completewith next
    >>|cRXP_WARN_Afin de terminer cette quête, vous devrez à nouveau trouver un prêtre de la faction opposée et lui demander d'utiliser l'|r |T133396:0|t[|cFF0070FFAnneau diplomatique|r] |cRXP_WARN_sur vous pendant en étant à côté des portes de Stormwind. Cela fera que les gardes de la ville ne vous attaqueront plus et vous permettra d'entrer en toute sécurité dans la capitale ennemie|r
    >>|cRXP_WARN_Gardez à l'esprit que les joueurs de faction opposée peuvent toujours vous attaquer sur un serveur JcJ !|r
    .zone Elwynn Forest >> Allez aux portes de Stormwind
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Demandez à un prêtre de faction opposée d'utiliser son |T133396:0|t[|cFF0070FFAnneau diplomatique|r] sur vous pour que les gardes de la ville ne vous attaquent pas et dirigez-vous vers la Cathédrale de Stormwind. |cRXP_WARN_Vous pouvez toujours être attaqué par d'autres joueurs !|r
    >>|cRXP_WARN_Le prêtre de la faction opposée doit vous escorter jusqu'au donneur de quête ou vous perdrez l'immunité diplomatique|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Grande prêtresse Laurena|r dans la cathédrale de Stormwind
    .turnin 84413 >> Rendez la quête Réparer l'éclat
    .accept 84329 >> Acceptez la quête La Convocation se réunit
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Afin de terminer cette quête, vous devrez à nouveau trouver un prêtre de la faction opposée et lui demander d'utiliser l'|r |T133396:0|t[|cFF0070FFAnneau diplomatique|r] |cRXP_WARN_sur vous pendant en étant à côté des portes d'Orgrimmar. Cela fera que les gardes de la ville ne vous attaqueront plus et vous permettra d'entrer en toute sécurité dans la capitale ennemie|r
    >>|cRXP_WARN_Gardez à l'esprit que les joueurs de faction opposée peuvent toujours vous attaquer sur un serveur JcJ !|r
    .zone Durotar >> Allez aux portes d'Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Demandez à un prêtre de faction opposée d'utiliser son |T133396:0|t[|cFF0070FFAnneau diplomatique|r] sur vous pour que les gardes de la ville ne vous attaquent pas et dirigez-vous vers la Vallée des esprits. |cRXP_WARN_Vous pouvez toujours être attaqué par d'autres joueurs !|r
    >>|cRXP_WARN_Le prêtre de la faction opposée doit vous escorter jusqu'au donneur de quête ou vous perdrez l'immunité diplomatique|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dietrich Praice|r dans la Vallée des esprits
    .turnin 84328 >> Rendez la quête Réparer l'éclat
    .accept 84329 >> Acceptez la quête La Convocation se réunit
    .target Dietrich Praice
step
    #completewith next
    .zone Deadwind Pass >> Voyagez au Défilé de Deuillevent
step
    .goto Deadwind Pass,40.8,78.4
    >>Voyagez à un petit sanctuaire près de Karazhan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maethra Cœur-de-Cendre|r à un sanctuaire près de Karazhan
    .turnin 84329 >> Rendez la quête La Convocation se réunit
step
    +Rendre la quête ci-dessus devrait compléter la de suite et débloquer la possibilité de changer de capacité raciale de prêtre en celle d'une autre race pour tout le serveur
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Cape
#title Protection de l’âme
#name Protection de l’âme - 60 (Stratholme)

step
    #completewith next
    >>|cRXP_WARN_Afin de compléter cette rune, vous devrez terminer quelques tâches au sein du donjon de Stratholme (côtés vivant et morts-vivants). Commencez à chercher un groupe pour le faire|r
    .zone Eastern Plaguelands >> Voyagez aux Maleterres de l'Est
step
    .goto Eastern Plaguelands,47.8,24.2
    >>Entrez dans Stratholme
    >>|cRXP_WARN_LISEZ ATTENTIVEMENT CETTE SECTION COMME CETTE QUÊTE DE RUNE N'EST PAS TRÈS CONVENTIONNELLE|r
    >>Afin d'obtenir la rune, vous devrez rassembler 3 essences sur certains des boss de Stratholme. Les boss qui possèdent les essences sont |cRXP_WARN_ALÉATOIRES ET DIFFÉRENTS À CHAQUE ID DE DONJON|r. Pour savoir quels boss ont l'essence dans votre parcours, vous devrez trouver des indices situés sur des piliers dans le bâtiment écarlate du côté vivant du donjon
    >>Pour réunir les essences, vous aurez besoin de 3 |T134799:0|t[|cRXP_LOOT_Bocaux d’ombres de Stratholme|r] qui tombent sur les [|cRXP_PICK_Colis de la boîte à lettres|r] dans le donjon. Pour ouvrir les [|cRXP_PICK_Boîtes à lettres|r], vous devez d'abord tuer le |cRXP_ENEMY_Messager de Stratholme|r pour récupérer sur lui les |T134237:0|t[|cRXP_LOOT_Clés de la boîte à lettres|r]
    >>Dès que que vous avez rassemblé toutes les essences, vous devez retourner aux piliers avec les indices et les activer avec l'essence correspondant à l'indice qu'ils ont donné. Cela fera apparaître un orbe à côté d'eux, que vous devrez ramasser afin d'obtenir la rune
    +|cRXP_WARN_Cliquez ici une fois que vous avez lu ce qui précède et que vous voulez voir plus de détails et savoir quel indice correspond à quel boss. Vous pouvez toujours revenir à cette étape si nécessaire|r
step
    >>|cRXP_WARN_Voici les indices et les boss auxquels ils correspondent:|r
    >>Parmi les défunts cette personne mortelle réside Avec des sorts de glace et des acolytes = Maleki le Blafard
    >>Spectre condamné à garder une tour Richesse et pouvoir ne sont d'aucun secours = Baronne Anastari
    >>L'ancien royaume redécouvert. Échange un maître contre un autre = Nerub'enkan
    >>Construit de chair, un péché de science traqué par les meilleurs réprouvés = Ramstein Grandgosier
    >>Le peuple comptait sur lui pour le guider à l'heure de son plus grand besoin = Magistrat Barthilas
    >>Un champion de malveillance impie, d'énormes horreurs gardent son palais = Baron Rivendare
    >>Une fureur sacrée purge le péché et pourtant une ombre se cache à l'intérieur. = Balnazzar
    >>L'odeur du soufre emplit la pièce. Ce zélote vous réserve un accueil explosif. = Maître canonnier Willey
    +|cRXP_WARN_Cliquez ici si vous voulez voir l'ordre le plus efficace recommandé pour les étapes à suivre afin de terminer cette quête. Vous pouvez toujours revenir à cette étape pour relire les indices si nécessaire|r
step
    >>|cRXP_WARN_L'ordre efficace que nous vous recommandons pour cette quête est le suivant:|r
    >>1. Commencez du côté vivant du donjon
    >>2. Ramassez trois [|cRXP_PICK_Colis de la boîte à lettres|r] pour obtenir les |T134799:0|t[|cRXP_LOOT_Bocaux d’ombres de Stratholme|r], les bocaux sont uniques, donc un joueur différent doit les ramasser à chaque fois
    >>3. Retournez à la salle des piédestaux et déterminez quels boss ont les essences dans votre ID
    >>4. Récupérez toutes les essences au fur et à mesure de votre progression dans le donjon
    >>5. Retournez à la salle des piédestaux et activez chacun d'entre eux avec son essence
    >>6. Récupérez l'orbe qui apparaît pour votre rune
    .collect 228124,1 --Oneiric Epiphany
step
    .train 402850 >> Utilisez l' |T135791:0|t[|cRXP_FRIENDLY_Épiphanie onirique|r] pour apprendre |T135948:0|t[|cRXP_FRIENDLY_Protection de l’âme|r]
    .use 228124
]])
