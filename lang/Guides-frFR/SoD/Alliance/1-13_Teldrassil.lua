if GetLocale() ~= "frFR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 1-7 Sombrevallon SoD
#displayname 1-7 Sombrevallon
#version 1
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 7-13 Teldrassil SoD
step << !NightElf
    #sticky
    #completewith next
    +Vous avez sélectionné un guide conçu pour les Elfes de la Nuit. Vous devriez choisir la même zone de départ que celle par laquelle vous commencez
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >> Acceptez la quête L'Equilibre de la nature
step << Druid/Warrior/Rogue/Hunter/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] |cRXP_BUY_et achetez-lui la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]|r << Priest
    >>|cRXP_BUY_Vendez vos|r |T133975:0|t[Pommes] |cRXP_BUY_et achetez les runes suivantes:|r << Druid
    >>|cRXP_BUY_Vendez l'une de votre|T133972:0|t|cRXP_LOOT_[Viande séchée coriace]|r et achetez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] << Warrior
    >>|cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] et vos |T132540:0|t[Bottes] |cRXP_WARN_(vous ne pouvez pas y graver de runes)|r |cRXP_BUY_et achetez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r] |cRXP_BUY_et|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] << Rogue
    >>|cRXP_BUY_Vendez votre|r |T135005:0|t[Chemise] et vos |T132540:0|t[Bottes] |cRXP_WARN_(vous ne pouvez pas graver dessus)|r |cRXP_BUY_et achetez-lui la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ordre de tuer|r] |cRXP_BUY_et le|r |T133739:0|t[|cRXP_FRIENDLY_Traité sur Cœur de lion|r] chez lui|r << Hunter
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 208772,1 << Rogue --Rune of Saber Slash
    >>Vous obtiendrez très bientôt le reste de vous runes
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Hunter/Druid/Priest
    .equip 18 >> Équipez l'|T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r], vous pourrez l'utiliser après 30 secondes pour apprendre |T237472:0|t[Fureur de Hurlorage] << Druid
    .train 402852 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] pour apprendre |T237570:0|t[Homoncules] << Priest
    .train 400105 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappe-ténèbres|r] pour apprendre |T132323:0|t[Frappe-ténèbres] << Rogue
    .train 424984 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de sabre|r] pour apprendre |T132375:0|t[Coup de sabre] << Rogue
    .train 403470 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ivresse de la victoire|r] pour apprendre |T132342:0|t[Ivresse de la victoire], vous allez la graver bientôt << Warrior
    .train 410111 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Ordre de tuer|r] << Hunter
    .train 409580 >> Utilisez le |T133739:0|t[|cRXP_FRIENDLY_Traité sur Cœur de lion|r] pour apprendre |T132185:0|t[Cœur de lion] << Hunter
    .train 424718 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune des étoiles|r] pour apprendre |T135730:0|t[Éruption stellaire] << Druid
    .train 416044 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du soleil|r] pour apprendre |T236216:0|t[Éclat solaire] << Druid
    .train 439770 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de l’étoile filante|r] pour apprendre |T236168:0|t[Météores] << Druid
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .engrave 7 >> Gravez |T237570:0|t[Homoncules] sur votre pantalon << Priest
    .engrave 7 >> Gravez |T236174:0|t[Tir mortel] sur votre pantalon << Hunter
    .engrave 7 >> Gravez |T135730:0|t[Éruption stellaire] sur votre pantalon << Druid
step << Hunter
    #optional
    #sticky
    .aura 409583 >> N'oubliez pas d'activer |T132185:0|t[Cœur de lion]
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >> Utilisez l'|T134903:0|t[|cRXP_FRIENDLY_Idole lunaire|r] sur la page de votre personnage pour apprendre |T237472:0|t[Fureur de Hurlorage]
    .engrave 5 >> Gravez votre plastron avec |T237472:0|t[Fureur de Hurlorage]
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    >>Dépouillez les mobs que vous tuez, assurez-vous d'avoir de quoi vendre pour au moins 10 pièces de cuivre au vendeur, vous en aurez besoin pour apprendre |T132333:0|t[Cri de guerre]<< Warrior
    .xp 2 >> Montez jusqu'au niveau 2
step << !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r et à |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Acceptez la quête Un bon ami
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Acceptez la quête La protectrice sylvestre
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Melithar Forteramure|r.
    #label GoodProtector
    .accept 458 >> Acceptez la quête La protectrice sylvestre
	.goto Teldrassil,59.924,42.474
    .target Melithar Staghelm
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keina
step << Rogue
    .goto Teldrassil,59.63,38.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .accept 77573 >> Acceptez la quête Travail à l’étage
    .turnin 77573 >> Rendez la quête Travail à l’étage
    .target Frahun Shadewhisper
step << Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
    .accept 77575 >> Acceptez la quête À l’ombre des toiles
    .turnin 77575 >> Rendez la quête À l’ombre des toiles
    .trainer >> Apprenez [Cri de guerre]
    .target Alyissia
step << Warrior/Rogue
    .equip 10 >> Équipez les |T132938:0|t[Gants en anneaux ternis] << Warrior
    .engrave 10 >> Gravez |T132342:0|t[Ivresse de la victoire] sur vos gants << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Équipez les |T132952:0|t[Gants en cuir craquelé] << Rogue
    .engrave 10 >> Gravez |T132375:0|t[Coup de sabre] sur vos gants << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,60.8,42.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .accept 4495 >> Acceptez la quête Un bon ami
    .target Dirania Silvershine
step
    >>|cRXP_WARN_Équipez bien toutes les équipements que vous trouverez. Vous en aurez besoin pour graver des|r |T134419:0|t|[Runes] |cRXP_WARN_|r
    >>Tuez les |cRXP_ENEMY_Young Nightsabers|r et les |cRXP_ENEMY_Young Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Conservator Ilthalaine|r
    >>Prenez les |T132939:0|t[Gants] en récompense de cette quête pour y graver une rune << Druid/Hunter
    >>Prenez les |T132611:0|t[Brassards] en récompense de quête pour y graver une rune << Priest
    .turnin 456 >> Rendez la quête L'Equilibre de la nature
    .target Conservator Ilthalaine
    .accept 457 >> Acceptez la quête L'Equilibre de la nature
step << Hunter/Rogue/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    >> |cRXP_BUY_Vendez votre surplus et achetez toutes les runes suivantes:|r << Hunter/Rogue/Priest
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    >>Vous obtiendrez très bientôt le reste de vous runes
    .target Rune Broker
    .skipgossip
step << Hunter/Rogue/Priest
    .use 212552 << Priest --Psychosophic Epiphany
    .use 221481 << Priest --Nihilit Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 206168 << Hunter --Rune of the Chimera
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 227922 << Rogue --Rune of the Swashbuckler
    .train 431663 >> Utilisez la |T135791:0|t[|cRXP_FRIENDLY_Épiphanie psychosophique|r] pour apprendre |T136181:0|t[Pointe mentale] << Priest
    .train 431705 >> Utilisez l' |T135791:0|t[|cRXP_FRIENDLY_Épiphanie nihiliste|r] pour apprendre |T132886:0|t[Zone de vide] << Priest
    .train 425216 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r] pour apprendre |T237514:0|t[Fléau du Vide] << Priest
    .train 402862 >> Utilisez le |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un acolyte tourmenté|r] pour apprendre |T237545:0|t[Pénitence] << Priest
    .train 402849 >> Utilisez la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la chute d’un roi|r] pour apprendre |T136149:0|t[Mot de l'ombre : Mort] << Priest
    .train 410121 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de la chimère|r] pour apprendre |T236176:0|t[Tir de la chimère] << Hunter
    .train 415423 >> Utilisez le |T133739:0|t[|cRXP_FRIENDLY_Traité sur l’aspect de la vipère|r] pour apprendre |T132160:0|t[Aspect de la vipère] << Hunter
    .train 410122 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune du Loup solitaire|r] pour apprendre |T132266:0|t[Loup solitaire] << Hunter
    .train 416086 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de combat rapproché|r] pour apprendre |T132394:0|t[Spécialiste de la mêlée] << Hunter
    .train 440563 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de guérilla|r] pour apprendre |T132171:0|t[Attaque éclair] << Hunter
    .train 400101 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Pas de l'ombre|r] pour apprendre |T132303:0|t[Pas de l'ombre] << Rogue
    .train 432301 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup bas|r] pour apprendre |T236285:0|t[Avantage déloyal] << Rogue
    .train 415922 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Bretteur|r] pour apprendre |T134538:0|t[Tromblon] << Rogue
step << Druid
    #sticky
    #optional
    >> |cRXP_WARN_Soyez à l'affût de toute|r Cape |cRXP_WARN_qui pourrait tomber|r|cRXP_WARN_. Équipez-le et gravez|r |T236168:0|t[Météores] |cRXP_WARN_dessus|r
    .engrave 15 >> Gravez |T236168:0|t[Météores] sur votre |T133771:0|t[Cape]
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Soyez à l'affût de tout|r Plastron/Ceinture/Cape |cRXP_WARN_qui pourrait tomber|r|cRXP_WARN_. Équipez-les et gravez les runes respectives|r
    .engrave 5 >> Gravez |T132266:0|t[Loup solitaire] sur votre |T132724:0|t[Torse]
    .engrave 6 >> Gravez |T132394:0|t[Spécialiste de la mêlée] sur votre |T132513:0|t[Ceinture]
    .engrave 15 >> Gravez |T132171:0|t[Attaque éclair] sur votre |T133771:0|t[Cape]
step << Rogue
    #sticky
    #optional
    >> |cRXP_WARN_Soyez à l'affût de tout|r Ceinture/Cape/Brassards |cRXP_WARN_qui pourrait tomber|r|cRXP_WARN_. Équipez-les et gravez les runes correspondantes|r
    .engrave 5 >> Gravez |T236285:0|t[Avantage déloyal] sur vos |T133830:0|t[Brassards]
    .engrave 6 >> Gravez |T132303:0|t[Pas de l'ombre] sur votre |T132513:0|t[Ceinture]
    .engrave 15 >> Gravez |T134538:0|t[Tromblon] sur votre |T133771:0|t[Cape]
step << Hunter/Druid
    #optional
    #sticky
    .equip 10 >> Équipez les |T132939:0|t[Gants d'entraînement d'archer]
    .engrave 10 >> Gravez |T236176:0|t[Tir de la chimère] sur vos gants << Hunter
    .engrave 10 >> Gravez |T236216:0|t[Éclat solaire] sur vos gants << Druid
    .use 5394
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,41.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Janna Brightmoon|r à l'étage.
    >>|cRXP_BUY_Vendez votre surplus et achetez la|r |T132495:0|t[Ceinture en étoffe légère] |cRXP_BUY_et les|r |T132543:0|t[Chaussures en étoffe légère]|cRXP_BUY_. Vous en aurez besoin pour y graver des runes|r
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 --Thin Cloth Shoes (1)
    .target Janna Brightmoon
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r à l'étage
    .accept 77574 >> Acceptez la quête Méditations sur Élune
    .turnin 77574 >> Rendez la quête Méditations sur Élune
    .target Shanda
step << Priest
    #optional
    #completewith next
    .equip 10 >> Équipez les |T132961:0|t[Gants en étoffe rapiécés]
    .equip 6 >> Équipez la |T132495:0|t[Ceinture en étoffe légère]
    .equip 8 >> Équipez les |T132543:0|t[Chaussures en étoffe légère]
    .equip 9 >> Équipez les |T132611:0|t[Brassards en tiges entrelacées]
    .engrave 10 >> Gravez |T136149:0|t[Mot de l'ombre : Mort] sur vos gants
    .engrave 6 >> Gravez |T136181:0|t[Pointe mentale] sur vos brassards
    .engrave 8 >> Gravez |T237514:0|t[Fléau du Vide] sur vos bottes
    .engrave 9 >> Gravez |T132886:0|t[Zone de vide] sur vos brassards
    .use 711 --Tattered Cloth Gloves
    .use 3599 --Thin Cloth Belt
    .use 2117 --Thin Cloth Shoes
    .use 11187 --Stemleaf Bracers
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,40.8
    >>|cRXP_WARN_Descendez|r en sautant et parlez à|Tinterface/worldmap/chatbubble_64grey.blp:20|t |cRXP_FRIENDLY_Dellylah|r
    .vendor >>|cRXP_BUY_Achetez 10|r |T132794:0|t|cRXP_LOOT_Eaux de source|r
    .target Dellylah
step
    #label balancetwocomplete
    .goto Teldrassil,59.8,34.1
    >>Tuez les |cRXP_ENEMY_Mangy Nightsabers|r et les |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Rendez la quête Un bon ami
    .target Iverron
    .accept 3519 >> Acceptez la quête Un ami dans le besoin
step
    #season 2
    .goto Teldrassil,59.8,34.1
    .xp 3-400 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 400xp pour le niveau 3 (500/900)
step
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
    .turnin 457 >> Rendez la quête L'Equilibre de la nature
    .target Conservator Ilthalaine
	.accept 3116 >> Acceptez la quête Sceau simple << Warrior
	.accept 3117 >> Acceptez la quête Sceau gravé << Hunter
    .accept 3119 >> Acceptez la quête Sceau béni << Priest
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Rendez la quête Un ami dans le besoin
    .target Dirania Silvershine
    .accept 3521 >> Acceptez la quête Antidote d'Iverron
step << Hunter
    #season 2
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Faites en sorte qu'il vous reste 1 pièces d'argent au vendeur pour vous permettre d'acheter|r |T132204:0|t[|cRXP_FRIENDLY_Morsure de serpent|r]. |cRXP_WARN_N'achetez pas l'arc si cela ne vous permet pas d'acheter vos sorts plus tard|r
	.vendor >> |cRXP_BUY_Achetez un stack de|r |T132382:0|t[Flèches grossières]
    .vendor >> |cRXP_BUY_Achetez un|r |T135499:0|t[Arc courbe en bois de corne]
    .target Keina
step << Hunter
    #season 2
    #completewith next
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << !Hunter !Druid !Priest
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin
    .target Keina
 step << NightElf Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Rendez la quête Sceau simple
    .train 772 >> Apprenez [Pourfendre]
    .train 100 >> Apprenez [Charge]
    .target Alyissia
step << Druid/Priest
    #season 2
    #label DTrain4
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dellylah|r
    .vendor >> Vendez tout ce dont nous n'avez pas besoin
    >>|cRXP_BUY_Achetez 10|r [Eau de source]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Acceptez la quête Le venin des Tissebois
    .target Gilshalan Windwalker
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Rendez la quête Sceau gravé
    .accept 77568 >> Acceptez la quête La force d’un chasseur
    .turnin 77568 >> Rendez la quête La force d’un chasseur
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
    #label IchorVenomSac
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
    >>ASTUCE : |cRXP_WARN_Prenez les jambières comme récompense de cette quête et gardez-les. Vous les utiliserez pour graver une rune ultérieurement|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Rendez la quête La protectrice sylvestre
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Rendez la quête Antidote d'Iverron
    .accept 3522 >> Acceptez la quête Antidote d'Iverron
    .target Dirania Silvershine
    .xp >7,1
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Rendez la quête Antidote d'Iverron
    .target Dirania Silvershine
    .xp <7,1
step << !Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
    .target Keina
step << Hunter
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keina|r
	.vendor >> Vendez tout ce dont nous n'avez pas besoin << !Hunter
	.vendor >> |cRXP_BUY_Achetez 3 ou 4 stacks de|r [Flèche grossière] << Hunter
    .vendor >> |cRXP_BUY_Achetez un|r |T135499:0|t[Arc courbe en bois de corne] |cRXP_BUY_si vous ne l'avez pas déjà|r << Hunter
    .target Keina
step << Hunter
    #completewith next
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Rendez la quête Le venin des Tissebois
    .target Gilshalan Windwalker
    .accept 917 >> Acceptez la quête L'œuf d'araignée Tissebois
    .xp >7,1
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Rendez la quête Le venin des Tissebois
    .target Gilshalan Windwalker
    .xp <7,1,ExitRune
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Équipez la|r |T135641:0|t[Dague du bois-chardon]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Montez l'Arbre Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Rendez la quête Sceau verdoyant
    .train 5177 >>Apprenez |T136006:0|t[|cRXP_FRIENDLY_Colère|r] Rang 2
    .target Mardant Strongoak
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Iverron|r
    >>ASTUCE : |cRXP_WARN_Prenez les pantalons comme récompense de cette quête et gardez-les. Vous les utiliserez pour graver une rune ultérieurement|r << Priest sod
    .turnin 3522 >> Rendez la quête Antidote d'Iverron
    .isOnQuest 3522
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Entrez dans la Grotte de Sombrefil
    .isOnQuest 917
step
    .goto Teldrassil,57.0,26.4
    >>Ramassez un |cRXP_LOOT_Webwood Egg|r sur le sol au fond de la Grotte
    .complete 917,1 --Collect Webwood Egg (x1)
    .isOnQuest 917
step
	#softcore
	#completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
    .isOnQuest 917
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gilshalan Windwalker|r
    >>ASTUCE : |cRXP_WARN_Prenez la Tunique en récompense de cette quête et équipez-la. Vous l'utiliserez pour graver une rune ultérieurement|r << Hunter/Rogue
    .turnin 917 >> Rendez la quête L'œuf d'araignée Tissebois
    .target Gilshalan Windwalker
    .isQuestComplete 917
step
    #season 2
    #label ExitRune
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Marchand de runes|r.
    >>|cRXP_WARN_ASSUREZ-VOUS DE NE PAS VENDRE LES ÉQUIPEMENTS QUE VOUS POUVEZ ÉQUIPER|r
    .vendor >> |cRXP_BUY_Vendez votre surplus et achetez-lui toutes les |T134419:0|t|cRXP_WARN_[Runes]|r dont vous avez besoin|r
    .target Rune Broker
    .skipgossip
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Acceptez la quête Au service d'Elune
    .turnin 3119 >> Rendez la quête Sceau béni
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acceptez la quête Livraison pour Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 7-13 Teldrassil SoD
#displayname 7-13 Teldrassil
#version 1
#group RestedXP Alliance 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 13-20 Sombrivage SoD


step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Acceptez la quête Les commandements de Zenn
step << Hunter
    #season 2
    #completewith FlankingStrike
    #sticky
    >>Lors de vos quêtes, tuez les |cRXP_ENEMY_Hiboux Strigids|r ou les |cRXP_ENEMY_Hurleurs Strigids|r. Dépouillez-les pour la |T134025:0|t|cRXP_LOOT_Viande d’oiseau de Teldrassil|r
    .collect 208608,1 -- Teldrassil Bird Meat 1/1
    .train 425762,1 --Flanking Strike
step << Warrior
    #season 2
    #completewith zenn
    >>Tuez les |cRXP_ENEMY_Sabre-de-nuits sauvages|r ou les |cRXP_ENEMY_Rôdeurs sabre-de-nuits|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de tigre coupée|r
    >>Tuez les |cRXP_ENEMY_Hiboux Strigids|r ou les |cRXP_ENEMY_Hurleurs Strigids|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de chouette coupée|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses Tissebois|r ou les |cRXP_ENEMY_Croc-venins Tissebois|r. Dépouillez-les pour leur |cRXP_LOOT_Tête d’araignée coupée|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    #sticky
    #completewith zenn
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith SoDSpiderLegs
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    >>Faites en sorte d'avoir 1 emplacement vide dans vos sacs avant d'accepter cette quête
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
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .accept 932 >> Acceptez la quête Haine folle
    .accept 2438 >> Acceptez la quête Le Capturêve d'émeraude
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .accept 2438 >> Acceptez la quête Le Capturêve d'émeraude
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe en bois de corne]
    >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Achetez|r [Rough Arrows] |cRXP_BUY_jusqu'à ce que votre carquois soit plein|r
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Achetez des|r |T132382:0|t[Flèches grossières] |cRXP_BUY_jusqu'à ce qu'il vous reste 2 pièces d'argent ou que vous en ayez 3 stacks|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +Équipez le [Arc courbe en bois de corne]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Glaive] |cRXP_BUY_si vous pouvez vous le permettre(5s 36c), sinon passez cette étape|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
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
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Stylet] |cRXP_BUY_si vous pouvez vous le permettre(4s 1c), sinon passez cette étape|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r [Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (5s 4c), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Rendez la quête Livraison pour Dolanaar << Hunter
    .turnin 2159 >> Rendez la quête Livraison pour Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Achetez 10 |cRXP_LOOT_Lait frais|r ou autant que vous le pouvez << Priest
    .home >> Liez votre Pierre de Foyer à Dolanaar
step << Warrior
    #season 2
    .goto Teldrassil,54.8,66.0,25 >>Dirigez-vous à l'emplacement indiqué. Vérifiez si l' |cRXP_FRIENDLY_Epéiste errant|r est présent. Si vous le trouvez, vous pouvez le défier en duel pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    >>|cRXP_WARN_Vous ne pourrez très sûrement pas le tuer seul à ce niveau, passez cette étape si aucun joueur aux alentours ne peut vous aider, vous pourrez revenir après le niveau 10 avec votre Brise-genou et votre arme de jet et vérifier s'il est toujours présent|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .train 1130 >> Apprenez Marque du chasseur
    .train 3044 >> Apprenez [Tir des Arcanes]
    .target Dazalar
    .xp >8,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .train 5116 >> Apprenez [Trait de choc]
    .target Dazalar
    .xp <8,1
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 929 >> Acceptez la quête La couronne de la Terre
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Ciblez |cRXP_FRIENDLY_Sentinel Shaya|r
    >>Lancez [Soins inférieurs (Rang 2)] |cRXP_WARN_and|r [Mot de pouvoir : Robustesse] sur |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    >>|cRXP_WARN_Ne prenez pas la quêtes des Pousses|r << !sod/Warrior/Rogue
    .turnin 997 >> Rendez la quête La terre de Denalan
    .target Denalan
    .accept 918 >> Acceptez la quête Les graines de sylvain
    .accept 919 >> Acceptez la quête Les pousses de sylvain << !sod/Warrior/Rogue
step << Rogue
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Sylvains|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Druid
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Timberlings|r. Dépouillez-les pour leur|cRXP_LOOT_Seeds|r
    >>Ramassez les |cRXP_LOOT_Timberling Sprouts|r sur le sol
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod --Collect Timberling Sprout (x12)
    .mob Timberling
step << Druid
    #season 2
    #completewith next
    .goto Teldrassil,52.831,78.731,100 >> Allez sur la branche de l'arbre géant
    .train 416044,1
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
    #hardcore
    .train 416044 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du soleil|r] |cRXP_WARN_pour apprendre|r |T236216:0|t[Éclat solaire]
    .use 206989
    .itemcount 206989,1
    .train 416044,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .train 416044 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du soleil|r] |cRXP_WARN_pour apprendre|r |T236216:0|t[Éclat solaire]
    .deathskip >>Mourez et ressuscitez à Dolanaar
    .use 206989
    .itemcount 206989,1
    .train 416044,1
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Tuez les |cRXP_ENEMY_Timberlings|r. Dépouillez-les pour leur|cRXP_LOOT_Seeds|r
    >>Ramassez les |cRXP_LOOT_Timberling Sprouts|r sur le sol << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod/Warrior/Rogue --Collect Timberling Sprout (x12)
    .mob Timberling
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Tuez les |cRXP_ENEMY_Sylvains|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau supérieur droit de carte]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Rendez la quête Les graines de sylvain
    .target Denalan
    .accept 922 >> Acceptez la quête Rellian Vertecime
    .turnin 919 >> Rendez la quête Les pousses de sylvain << !sod/Warrior/Rogue
step
    #season 2 << Hunter/Druid/Priest
    #season 1 << Warrior/Rogue
	.abandon 919 >> Abandonnez la quête Les pousses de sylvain, elle n'est plus rentable à faire
step << Warrior
    #season 2
    .goto Teldrassil,62.6,71.8,25 >>Dirigez-vous à l'emplacement indiqué. Vérifiez si l' |cRXP_FRIENDLY_Epéiste errant|r est présent. Si vous le trouvez, vous pouvez le défier en duel pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    >>|cRXP_WARN_Vous ne pourrez très sûrement pas le tuer seul à ce niveau, passez cette étape si aucun joueur aux alentours ne peut vous aider, vous pourrez revenir après le niveau 10 avec votre Brise-genou et votre arme de jet et vérifier s'il est toujours présent|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Voyagez jusqu'au Village de Brise-stellaire
step
    .goto Teldrassil,68.02,59.66
    >>Ouvrez le |cRXP_PICK_Tallonkai's Dresser|r. Récupérez le |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gaerolas Talvethren|r en haut des escaliers
    .turnin 475 >> Rendez la quête Une brise étrange
    .target Gaerolas Talvethren
    .accept 476 >> Acceptez la quête La corruption des Pins-tordus
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>Utilisez la [Fiole de jade] au puits de lune du Village de Brise-stellaire
    .complete 929,1 --Collect Filled Jade Phial (x1)
step << Warrior
    #season 2
    #completewith TeldrassilEnd
    #sticky
    >>Tuez les |cRXP_ENEMY_Sabre-de-nuits sauvages|r ou les |cRXP_ENEMY_Rôdeurs sabre-de-nuits|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de tigre coupée|r
    >>Tuez les |cRXP_ENEMY_Hiboux Strigids|r ou les |cRXP_ENEMY_Hurleurs Strigids|r. Dépouillez-les pour leur |cRXP_LOOT_Tête de chouette coupée|r
    >>Tuez les |cRXP_ENEMY_Rôdeuses Tissebois|r ou les |cRXP_ENEMY_Croc-venins Tissebois|r. Dépouillez-les pour leur |cRXP_LOOT_Tête d’araignée coupée|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    >>Tuez les |cRXP_ENEMY_Nightsabers|r. Dépouillez les pour leur |cRXP_LOOT_Fangs|r
    >>Tuez les |cRXP_ENEMY_Strigid Owls|r. Dépouillez-les pour leur|cRXP_LOOT_Feathers|r
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r. Dépouillez-les pour leur |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Gardez vos|r |T132832:0|t[Petit oeuf] |cRXP_WARN_et vos|r |T134321:0|t[Petite patte d'araignée] |cRXP_WARN_pour monter votre niveau de |T133971:0|t[Cuisine] |cRXP_WARN_plus tard|r
    >>Passez cette étape si vous n'avez pas de chance avec le butin et s'il n'y a plus de mobs aux alentours
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Rendez la quête Les commandements de Zenn
    .isQuestComplete 488
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >> Montez jusqu'au niveau 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Montez jusqu'au niveau 7 +2350xp
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Acceptez la quête En quête de rédemption !
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
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
    #season 1 << Priest/Rogue
    #season 2 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 2438 >> Rendez la quête Le Capturêve d'émeraude
    .target Tallonkai Swiftroot
    .accept 2459 >> Acceptez la quête Ferocitas le Mangeur de rêves << !sod/Warrior
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un |r [Arc courbe en bois de corne] |cRXP_BUY_si vous pouvez vous le permettre(2s 85c), sinon passez cette étape|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
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
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +Équipez le [Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez un |r [Stylet] |cRXP_BUY_si vous pouvez vous le permettre(4s 1c), sinon passez cette étape|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +Équipez le [Stylet]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez et équipez le|r [Bâton de marche] |cRXP_BUY_si vous pouvez vous le permettre (5s 4c), sinon passez cette étape|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 933 >> Acceptez la quête La couronne de la Terre
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .target Kal
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Proche d'un petit arbre
    .goto 1438/1,822.200,9948.500,6 >>Sur la petite colline
    .goto 1438/1,809.800,9926.400,6 >>Près de l'arbre massif
    >>Ramassez les 3 |cRXP_LOOT_Gangrenoix|r aux emplacements marqués sur votre carte.
    >>Passez cette étape si aucun d'entre eux n'est présent et que vous n'arrivez pas à remplir cet objectif
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Rendez la quête En quête de rédemption !
    .itemcount 3418,3
    .isOnQuest 489
    .target Zenn Foulhoof
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	#completewith jewel
    >>Ramassez les |cRXP_LOOT_Fel Cones|r sur le sol
    >>Ils se situent en général près des troncs d'arbre
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #completewith next
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Si il n'y a pas beaucoup de |cRXP_ENEMY_Gnarlpine Mystics|r il se peut que vous deviez tuer des |cRXP_ENEMY_Gnarlpine Warriors|r pour les faire réapparaître|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	.goto Teldrassil,69.37,53.41
	>>Tuez |cRXP_ENEMY_Ferocitas le Mangeur de rêves|r. Dépouillez-le pour le |T133288:0|t[|cRXP_LOOT_Collier pin-tordu|r]
    .use 8049 >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Gnarlpine Necklace|r] pour récupérer le|r |cRXP_LOOT_Joyau de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Tuez les |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Si il n'y a pas beaucoup de |cRXP_ENEMY_Gnarlpine Mystics|r il se peut que vous deviez tuer des |cRXP_ENEMY_Gnarlpine Warriors|r pour les faire réapparaître|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Vendez et réparez votre équipement si nécessaire|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Ramassez les |cRXP_LOOT_Fel Cones|r sur le sol
    >>Ils se situent en général près des troncs d'arbre
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Rendez la quête En quête de rédemption !
    .isOnQuest 489
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Essayez de terminer les |cRXP_LOOT_Petites pattes d'araignée|r
    >>|cRXP_WARN_Passez cette étape s'il n'y a pas d'araignées à côté de Zenn|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 0
    #sticky
	#completewith spiderLegs
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    >>Vous en aurez besoin pour une quête plus tard
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 2
    .abandon 489 >> Abandonnez la quête En quête de rédemption ! Il n'est pas rentable de faire un détour pour la rendre plus tard
step << !sod/Priest/Rogue
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Voyagez jusqu'à Gangreroche
step << Rogue
    #season 2
    #completewith MutiRune
    >>Tuez les |cRXP_ENEMY_Grell vicieux|r, les |cRXP_ENEMY_Fées maudites|r et les |cRXP_ENEMY_Fées des ombres|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    >>Tuez le |cRXP_ENEMY_Seigneur Melenas|r. Dépouillez-le pour obtenir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Priest
    #season 2
    #completewith next
    >>Tuez les |cRXP_ENEMY_Grells vicieux|r, les |cRXP_ENEMY_Fées maudites|r et les |cRXP_ENEMY_Fées des ombres|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << !sod/Priest/Rogue
    .goto Teldrassil,51.2,50.6
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Priest
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Tuez les |cRXP_ENEMY_Grells vicieux|r, les |cRXP_ENEMY_Fées maudites|r et les |cRXP_ENEMY_Fées des ombres|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >> |cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie d’une citadelle profanée|r] |cRXP_WARN_pour apprendre|r |T237570:0|t[Homoncules]
    >>|cRXP_WARN_Vous devez avoir deux buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme un puits de lune, l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autels de la Lumière à Anvilmar, au Loch Modan ou la Garde mystique à Ironforge|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    .goto Teldrassil,51.2,50.6
    >>Tuez le |cRXP_ENEMY_Seigneur Melenas|r. Dépouillez-le pour obtenir l' |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Rogue
    #season 2
    #label MutiRune
    .train 400094 >> |cRXP_WARN_Utilisez l'|r |T134419:0|t[|cRXP_FRIENDLY_Idole de mutilation|r] |cRXP_WARN_pour apprendre|r |T132304:0|t[Estropier]
    .use 203990
    .itemcount 203990,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Tuez les |cRXP_ENEMY_Grell vicieux|r, les |cRXP_ENEMY_Fées maudites|r et les |cRXP_ENEMY_Fées des ombres|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur gauche de carte]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << !sod/Priest/Rogue
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Rendez la quête La couronne de la Terre
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Acceptez la quête La couronne de la Terre
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Voyagez jusqu'au sud-ouest de Teldrassil
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>Cliquez sur le |cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >> Acceptez la quête Le fruit luminescent
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Voyagez jusqu'aux bassins d'Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>Utilisez la [Fiole de tourmaline] au puits de lune des bassins d'Arlithrien
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Tuez les |cRXP_ENEMY_Webwood Lurkers|r et les |cRXP_ENEMY_Webwood Venomfangs|r. Dépouillez les pour leur |cRXP_LOOT_Small Spider Legs|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Voyagez jusqu'à Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >> Mourez et ressuscitez au cimetière de Dolanaar, faites en sorte de mourir à l'est du puits de lune, sinon vous risquez de vous retrouver à Darnassus
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 7383 >> Acceptez la quête La couronne de la Terre
step
	#xprate <1.5
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Apprenez la Cuisine
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
    .target Zarrin
step << Warrior/Rogue
    #season 0
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Byancie
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Apprenez la Cuisine
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
    >>|cRXP_WARN_Si vous êtes déjà au niveau 10 et que vous n'avez pas encore les pattes d'araignée, n'hésitez pas à passer cette quête. Appenez quand même la cuisine|r
step << Rogue
    #season 2
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Apprenez [Premiers soins]
    .target Byancie
step << !sod/Priest/Rogue
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 2438 >> Rendez la quête Le Capturêve d'émeraude << sod Priest/sod Rogue
    .turnin 932 >> Rendez la quête Haine folle
    .turnin 2459 >> Rendez la quête Ferocitas le Mangeur de rêves << !sod
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 2459 >> Rendez la quête Ferocitas le Mangeur de rêves
    .accept 932 >> Acceptez la quête Haine folle
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Si vous n'êtes pas assez avancé, complétez la quête du Seigneur Melenas|r.
step << Druid
    #season 2
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kal|r
	.trainer >> Apprenez vos sorts de classe
    .accept 5925 >> Acceptez la quête Écouter l'appel
    .target Kal
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Apprenez vos sorts de classe
    .accept 5629 >>Acceptez la quête Retour à la maison << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .train 5171 >> Apprenez [Débiter] << !sod
    .train 921 >> Apprenez [Vol à la tire] aussi, qui sera nécessaire pour une quête de Voleur au niveau 10
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.trainer >> Apprenez vos sorts de classe
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6102 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Strigid Screecher|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6103 >> Acceptez la quête Entraîner la bête
    .train 1130 >> Faites bien attention à avoir appris la Marque du chasseur. Vous en aurez besoin pour obtenir une rune plus tard
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .accept 1684 >> Acceptez la quête Elanaria
    .accept 487 >> Acceptez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Acceptez la quête Pomme d'amour
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .accept 487 >> Acceptez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Rogue
    #season 2
    #completewith runeOfPrecision
    #optional
    #label topleft
    >>Tuez ou utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Furbolgs Pin-tordu|r. Dépouillez-les pour obtenir le |T134327:0|t[|cRXP_LOOT_Morceau supérieur gauche de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Tuez les |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Warrior
    #season 2
    .goto Teldrassil,46.6,53.0
    >>Tuez les |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Priest
    #season 2
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> Entrez dans le Refuge des saisons de Ban’ethil. Cet endroit peut être difficile si vous n'êtes pas dans un groupe. Vous pourrez sinon vous y rendre plus tard pour l'obtention de votre rune de |T237514:0|t[Fléau du Vide]
    .train 425216,1 << Priest
step << Priest
    #season 2
    .goto Teldrassil,44.401,60.655
    >>Ouvrez la |cRXP_PICK_Cache pin-tordu|r. Récupérez-y un |T136222:0|t[|cRXP_FRIENDLY_Souvenir d’un noir dessein|r]
    >>|cRXP_WARN_Note: La |cRXP_PICK_Clé de cache pin-tordu|r peut apparaître à plusieurs emplacements aléatoires dans les refuges de Ban'ethil|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Utilisez le|r |T136222:0|t[|cRXP_FRIENDLY_Souvenir d'un noir dessein|r] |cRXP_WARN_pour apprendre|r |T237514:0|t[Fléau du Vide]
    >>|cRXP_WARN_Vous devez avoir un buff|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_en tapant /kneel dans un endroit sacré comme un puits de lune, l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autels de la Lumière à Anvilmar, au Loch Modan ou la Garde mystique à Ironforge|r
    .use 205940
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
    #label runeOfPrecision
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
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
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
    #softcore
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes de Darnassus
    .target Gardien des âmes
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe composite]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Achetez et équipez 400|r |T132382:0|t[Flèches pointues]
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,46.6,46.3
    >>|cRXP_WARN_Lancez|r |T132212:0|t[Marque du chasseur] |cRXP_WARN_sur le|r |cRXP_ENEMY_Buisson bruissant|r
    >>Tuez le |cRXP_ENEMY_Braconnier sans-racines|r qui apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1 --Master Marksman
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Voyagez jusqu'à la clairière de l'Oracle
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>Utilisez la [Fiole d'améthyste] à la clairière de l'Oracle
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step << Rogue
	#xprate < 1.5
    #season 2
    #completewith xp10
    >>Tuez ou utilisez le |T133644:0|tVol à la tire sur les |cRXP_ENEMY_Harpies Plumesang|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step
	#xprate < 1.5
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
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>Cliquez sur les |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >> Acceptez la quête Les racines flamboyantes

step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >> Gagnez en expérience jusqu'à ce qu'il ne vous manque que 2670xp pour le niveau 10 (3830/6500)
    >>|cRXP_WARN_Une fois que vous atteignez ce seuil d'expérience, ignorez la quête des harpies/l'escorte et allez directement à Darnassus. Vous aurez une autre occasion de terminer ces quêtes plus tard|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Rendez la quête Brume
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    .accept 938 >> Acceptez la quête Brume
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
    .turnin 938 >> Rendez la quête Brume
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step << Rogue
	#xprate <1.5
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Tuez ou utilisez le |T133644:0|tVol à la tire sur les |cRXP_ENEMY_Harpies Plumesang|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
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
	#xprate < 1.5
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
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>Finissez la collecte des 7 Petites pattes d'araignée
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>Si vous êtes toujours en retard sur l'expérience, faites la quête des harpies au nord
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de visée|r] |cRXP_WARN_pour apprendre|r |T132177:0|t[Maître tireur]
    .use 206155
    .train 410113,1
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes de Darnassus
    >>|cRXP_WARN_Assurez-vous que vous êtes plus proche du cimetière de Darnassus que de celui de Dolanaar, sinon vous pourriez atterrir au mauvais cimetière. Courez jusqu'à sortir complètement de la tanière, puis mourez si vous n'êtes pas sûr de la distance|r << sod Priest
    >>|cRXP_WARN_Assurez-vous que vous êtes plus proche du cimetière de Darnassus que de celui de Dolanaar, sinon vous pourriez atterrir au mauvais cimetière. Courez sur le côté ouest de la rivière, puis mourez si vous n'êtes pas sûr de la distance|r << sod Hunter/sod Warrior/sod Druid
    .target Gardien des âmes
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Druid
    #optional
    #season 2
    .xp <10,1
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acceptez la quête Nessa Chantelombre
 step << Warrior
    #season 2
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .train 227 >>Apprenez la compétence Bâtons << Warrior
    .train 2567 >> Apprenez la compétence Armes de jet << Warrior
    .target Ilyenia Moonfire
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez et équipez un stack de |r |T135425:0|t[Couteau de lancer perçant]
    .collect 3107,200
    .target Ariyell Skyshadow
step << Warrior
    #season 2
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Achetez une |T134830:0|t[|cRXP_LOOT_Potion de soins inférieure|r]. Elle vous aidera à obtenir la rune d' |T236317:0|t[Assaut frénétique] de Dolanaar
    .collect 929,1 --Lesser Healing Potion (1)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 425412,1 --Skips if you already have Frenzied Assault
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Rendez la quête Elanaria
    .target Elanaria
    .accept 1683 >> Acceptez la quête Vorlus Vilsabot
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delwynna|r à l'étage
    >>|cRXP_WARN_Rendez les trois |cRXP_LOOT_Têtes coupées|r pour recevoir les|r |T134455:0|t[|cRXP_FRIENDLY_Fragments de rune de chasseurs de monstres|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Utilisez l'un des |T134455:0|t[|cRXP_FRIENDLY_Fragments de rune de chasseurs de monstres|r] pour faire la|T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour apprendre|r |T135291:0|t[Dévaster]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Saelienne l'aubergiste|r
    .home >> Liez votre Pierre de foyer à Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Achetez plus de|r |T132815:0|t|cRXP_LOOT_Lait glacé|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r au sommet de l'Arbre
    .turnin 940 >> Rendez la quête Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin 5925 >>  Rendez la quête Écouter l’appel << sod
    .accept 5921 >> Acceptez la quête Reflet-de-Lune
	.trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Rendez la quête Entraîner la bête
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >> Acceptez la quête Les larmes de la Lune
step << Warrior
    #season 2
    .hs >> Utilisez votre Pierre de foyer pour revenir à Dolanaar
    .vendor >> Parlez au Marchand|cRXP_BUY_ et achetez 5-10 |T133968:0|t[|cRXP_LOOT_Pains sorti du four|r] à l'aubergiste
step << Warrior
    #season 2
    #sticky
    #completewith FrenziedAssault
    >>Rendez la quête à la |cRXP_FRIENDLY_Prêtresse de la lune Amara|r si vous la croisez pendant que vous complétez les autres objectifs
    >>|cRXP_WARN_Ne changez pas votre route pour la chercher|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Warrior
	#season 2
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez un|r |T135145:0|t[Bâton de marche], équipez-la.
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Warrior
    #season 2
    #completewith melenas
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Voyagez jusqu'à Gangreroche
step << Warrior
    #season 2
    #label melenas
    .goto Teldrassil,51.2,50.6
    >>Tuez |cRXP_ENEMY_Lord Melenas|r. Dépouillez-le pour sa|cRXP_LOOT_Tête|r
    >>|cRXP_ENEMY_Lord Melenas|r peut se situer à de nombreux endroits à travers Gangreroche
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Warrior
	#season 2
    #softcore
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << Warrior
    #season 2
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Apprenez la Cuisine
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
    >>|cRXP_WARN_Passez cette étape si vous n'avez pas 7 petites pattes d'araignée. Apprenez quand même la Cuisine, vous allez en avoir besoin plus tard|r
step << Warrior
    #season 2
    #label FrenziedAssault
    .goto Teldrassil,55.619,59.787
    >>Parlez à |cRXP_FRIENDLY_Keldamyr l'aubergiste|r à Dolanaar
    >>Parlez à |cRXP_ENEMY_Syllart|r en haut des escaliers, puis combattez-le. Il s'évanouira à 0%
    >>Si |cRXP_ENEMY_Syllart|r n'est pas présent, attendez qu'il réapparaisse
    >>Parlez à |cRXP_FRIENDLY_Keldamyr l'aubergiste|r de nouveau après avoir assommé |cRXP_ENEMY_Syllart|r pour obtenir la |T134419:0|t[|cRXP_FRIENDLY_Rune d'Assaut frénétique|r]
    .train 425447 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’assaut frénétique|r] |cRXP_WARN_pour apprendre|r |T236317:0|t[Assaut frénétique]
    >>|cRXP_WARN_Note: Cela peut être assez difficile à faire seul en fonction de votre niveau. Demandez de l'aide si nécessaire|r
    >>|cRXP_WARN_Vous pouvez le tuer seul si vous pouvez le kite et lui infliger des dégâts avec votre arme de jet. Ralentissez-le avec|r |T132316:0|t[Brise-genou] |cRXP_WARN_puis courez et utilisez|r |r |T132324:0|t[Lancer] |cRXP_WARN_sur lui en restant à distance.|r |cRXP_WARN_Utilisez une|r |T134830:0|t[Potion de soins] |cRXP_WARN_et des|r |T133685:0|t[Bandages] |cRXP_WARN_pour vous soigner si vous en avez besoin|r
    --Might wanna add a guide video
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tallonkai Swiftroot|r au sommet de l'Arbre
    .turnin 932 >> Rendez la quête Haine folle
step << Warrior
    #season 2
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
    .target Laird
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >> Utilisez votre Pierre de foyer pour revenir à Dolanaar
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Achetez 4 stacks de|r |T132382:0|t[Flèches pointues]|cRXP_BUY_. Équipez-les dès que vous atteignez le niveau 10|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Apprenez la Cuisine
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Acceptez la quête Une recette kaldorei
    .turnin 4161 >> Rendez la quête Une recette kaldorei
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>Trouvez la Prêtresse de la lune Amara, elle patrouille sur la route à l'ouest de Dolanaar.
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >> Rendez la quête La route de Darnassus
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.train 13165 >> Apprenez vos sorts de niveau 10
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Rendez la quête La couronne de la Terre
    .target Corithras Moonrage
    .accept 935 >> Acceptez la quête La couronne de la Terre
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Rendez la quête Les racines flamboyantes
    .turnin 930 >> Rendez la quête Le fruit luminescent
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Rendez la quête Le cœur moussu
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>Cliquez sur le |cRXP_LOOT_Pot de Denalan|r
	.turnin 941 >> Rendez la quête Une belle plante
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >> Mourez et ressuscitez au Gardien des âmes
    .target Gardien des âmes
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Apprenez vos sorts de classe
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Apprenez vos sorts de classe
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Apprenez vos sorts de classe
    .train 5171 >> Apprenez [Débiter]
    .train 921 >> Apprenez [Vol à la tire] aussi, qui sera nécessaire pour une quête de Voleur au niveau 10
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acceptez la quête Dompter la bête
	.trainer >> Apprenez vos sorts de classe
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6101 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Nightsaber Stalker|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6102 >> Acceptez la quête Dompter la bête
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>Utilisez le [Bâtonnet de domptage] sur un |cRXP_ENEMY_Strigid Screecher|r
    >>Vous devez faire un clic droit sur le portrait de votre familier afin de retirer votre familier avant d'en dompter un autre
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Rendez la quête Dompter la bête
    .target Dazalar
    .accept 6103 >> Acceptez la quête Entraîner la bête
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .accept 1684 >> Acceptez la quête Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Acceptez la quête Pomme d'amour
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Achetez une|r |T135145:0|t[Canne de marche]
    >>|cRXP_WARN_Vous l'équiperez plus tard. Passez cette étape si vous trouvez un bâton différent|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moon Priestess Amara|r
    >>|cRXP_FRIENDLY_La Prêtresse de la lune Amara|r |cRXP_WARN_patrouille sur la route à l'ouest de Dolanaar|r
    .turnin 487 >> Rendez la quête La route de Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Une fois vous avez passé la zone des furbold, mourez volontairement et ressuscitez au cimetière de Darnassus
    .target Gardien des âmes
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Rendez la quête Rellian Vertecime
    .target Rellian Greenspyre
    .accept 923 >> Acceptez la quête Tumeurs
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r au sommet de l'Arbre
    .turnin -935 >> Rendez la quête La couronne de la Terre
    .turnin -940 >> Rendez la quête Teldrassil
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
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Voyagez vers |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>Tuez les |cRXP_ENEMY_Vorlus Vilehoof|r. Dépouillez-les pour leur|cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #season 2
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCherchez |cRXP_FRIENDLY_Jaeana|r, elle patrouille dans la Terrasse des Marchands
    >>|cRXP_BUY_Achetez-lui un stack de|r |T133972:0|t[Viande séchée coriace] |cRXP_BUY_.
    >>|cRXP_WARN_Vous allez en avoir besoin pour nourrir votre chouette, elles ne mangent que de la viande et il n'y a pas de vendeur de viande à Sombrivage|r
    .collect 117,15
    .target Jaeana
step << !Warrior
    #season 2
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acceptez la quête Nessa Chantelombre
step << Hunter
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe composite]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #sticky
    #label StrigidHunter
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>Lancez [Apprivoiser une bête] |cRXP_WARN_sur un |cRXP_ENEMY_Strigid Hunter|r pour le dompter|r -- .tame 1997
    .train 2981 >> Attaquez des mobs avec celui-ci pour qu'il apprenne [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Cliquez ici pour plus d'information sur le dressage des familiers|r
	.unitscan Strigid Hunter
step << Hunter
    #sticky
    #requires StrigidHunter
    .engrave 5 >> Gravez |T132270:0|t[Maîtrise des bêtes] sur votre |T132724:0|t[Plastron]
step
    #season 0 << Rogue/Druid
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Tuez les |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r et les |cRXP_ENEMY_Elder Timberlings|r. Dépouillez-les pour leur |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Hunter
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Utilisez la |T134025:0|t[Viande d’oiseau de Teldrassil] près du cadavre pour invoquer |cRXP_ENEMY_Mowgh|r
    >>Tuez |cRXP_ENEMY_Mowgh|r et dépouillez-le pour la |T134419:0|t|cRXP_LOOT_[Rune de Contournement]|r
    .collect 205979,1
    .train 425762,1 --Flanking Strike
    .use 208608
    .mob Mowgh
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Contournement|r] |cRXP_WARN_pour apprendre|r |T132175:0|t[Frappe latérale]
    .use 205979
    .itemcount 205979,1
    .train 425762,1 --Flanking Strike
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 7 >> Ouvrez votre page de personnage et gravez sur vos jambes la |T132175:0|t[Frappe latérale]
step
    #season 0 << Rogue/Druid
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
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >> Acceptez la quête La clairière enchantée
step << Rogue
    #season 2
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
step << Rogue
    #season 2
    #sticky
    #completewith MistStart
    #label BottomRightMapPiece
    >>Tuez ou utilisez le |T133644:0|tVol à la tire sur les |cRXP_ENEMY_Harpies Plumesang|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
    >>Vous devez être en [Camouflage] pour utiliser votre [Vol à la tire]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>Tuez les |cRXP_ENEMY_Bloodfeather Harpies|r. Dépouillez les pour leur |cRXP_LOOT_Belts|r
    >>Les |cRXP_ENEMY_Bloodfeather Matriarchs|r lancent [Vague de soins] et [Éclair] qui inflige des dégâts importants. Essayez de les tuer rapidement
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Rogue
    #season 2
    #sticky
    #completewith next
    #requires BottomRightMapPiece
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
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mist|r
    >>|cRXP_WARN_Ceci va commencer une quête d'escorte|r
    >>|cRXP_WARN_Passez cette quête si le PNJ n'est pas présent|r
    .accept 938 >> Acceptez la quête Brume
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    >>Tuez ou utilisez le |T133644:0|tVol à la tire sur les |cRXP_ENEMY_Harpies Plumesang|r. Dépouillez-les pour le |T134327:0|t[|cRXP_LOOT_Morceau inférieur droit de carte]|r
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
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >> Rendez la quête Brume
    .isOnQuest 938
step << !sod/Warrior/Rogue/Druid
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >> Rendez la quête La clairière enchantée
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acceptez la quête Teldrassil
step << Druid
    #season 2
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
step << Druid
    #season 2
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Tuez les |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r et les |cRXP_ENEMY_Elder Timberlings|r. Dépouillez-les pour leur |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Warrior
    #season 2
    .goto Teldrassil,39.8,37.4,25 >>Dirigez-vous à l'emplacement indiqué. Vérifiez si l' |cRXP_FRIENDLY_Epéiste errant|r est présent. Si vous le trouvez, vous pouvez le défier en duel pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Mourez et ressuscitez au cimetière de Darnassus
    >>Faites bien attention à être du côté ouest de la rivière ou vous risquez de prendre la mauvaise route << sod
    .target Gardien des âmes
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,25 >>Dirigez-vous à l'emplacement indiqué. Vérifiez si l' |cRXP_FRIENDLY_Epéiste errant|r est présent si vous ne l'avez pas encore trouvé. Si vous le trouvez, vous pouvez le défier en duel pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Teldrassil,43.8,77.0,25 >>Dirigez-vous à l'emplacement indiqué. Vérifiez si l' |cRXP_FRIENDLY_Epéiste errant|r est présent si vous ne l'avez pas encore trouvé. Si vous le trouvez, vous pouvez le défier en duel pour obtenir la rune de |T132334:0|t[|cRXP_FRIENDLY_Frénésie sanglante|r]
    >>|cRXP_WARN_Il peut apparaître à plusieurs emplacements aléatoirement et ne peut être présent qu'à l'un d'entre eux. Passez cette étape s'il n'est pas ici|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #softcore
    #completewith next
    #sesaon 2
    .goto Teldrassil,40.8,75.6
    .deathskip >>Mourez et ressuscitez au cimetière de Darnassus
    >>|cRXP_WARN_Soyez plus proche du cimetière de Darnassus que de celui de Dolanaar, sinon vous risques d'aller dans la mauvaise direction. Si vous n'êtes pas sûr, continuez à l'est de l'emplacement marqué sur votre carte|r
    .target Gardien des âmes
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acceptez la quête Nessa Chantelombre
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Voyagez jusqu'à Darnassus
step
	.abandon 927 >> Abandonnez la quête Le cœur moussu. Vous n'aurez plus d'opportunité pour la rendre à partir de maintenant
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Rendez la quête Elanaria
    .target Elanaria
    .accept 1683 >> Acceptez la quête Vorlus Vilsabot
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Voyagez vers |cRXP_ENEMY_Vorlus Vilehoof|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>Tuez les |cRXP_ENEMY_Vorlus Vilehoof|r. Dépouillez-les pour leur|cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Mourez volontairement après avoir passé la zone des furbolg et ressuscitez à Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Voyagez jusqu'à Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Rendez la quête Vorlus Vilsabot
--	.accept 1686 >> Accept The Shade of Elura
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delwynna|r à l'étage
    >>|cRXP_WARN_Rendez les trois |cRXP_LOOT_Têtes coupées|r pour recevoir les|r |T134455:0|t[|cRXP_FRIENDLY_Fragments de rune de chasseurs de monstres|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Utilisez l'un des |T134455:0|t[|cRXP_FRIENDLY_Fragments de rune de chasseurs de monstres|r] pour faire la|T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r]
    .train 403475 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dévastation|r] |cRXP_WARN_pour apprendre|r |T135291:0|t[Dévaster]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Rendez la quête Entraîner la bête
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r sur la plateforme du milieu
    .turnin 5931 >> Rendez la quête Retour à Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acceptez la quête Corps et cœur
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Fandral Forteramure|r
    .turnin -935 >> Rendez la quête La couronne de la Terre
    .turnin -940 >> Rendez la quête Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
step << !Rogue
    #season 2
    #label darnSoD
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Rendez la quête Tumeurs
step << Rogue
    #season 2
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Rendez la quête Les larmes de la Lune
    .target Priestess A'moora
    .accept 2520 >> Acceptez la quête Sacrifice de Sathrah
step << Rogue
    #season 2
    .goto Darnassus,39.7,85.8
	.use 8155 >>Utilisez le [Sacrifice de Sathrah] à la fontaine
    .complete 2520,1 --Offer the sacrifice at the fountain
step << Rogue
    #season 2
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Rendez la quête Sacrifice de Sathrah
step << Warrior/Rogue/Druid
    #season 2
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archidruide Fandral Forteramure|r
    .turnin 940 >> Rendez la quête Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Rendez la quête Bosquet des Anciens
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Rendez la quête Tumeurs
step << Hunter
    .goto Darnassus,40.2,9.8
    .trainer >>Apprenez vos sorts de classe de niveau 12 << sod
    >>|cRXP_WARN_Passez cette étape et revenez après avoir rendu la quête Les larmes de la Lune si vous n'avez pas assez d'argent ou si vous n'êtes pas encore au niveau 12|r << sod
    .target Jocaste
step << Hunter
    .goto Darnassus,42.2,8.8
    .trainer >>Apprenez les compétences de votre familier
    .target Silvaria
step << Rogue
    #season 2
    .goto Darnassus,38.6,15.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lelanai|r
    .vendor >> |cRXP_BUY_Vendez tout ce dont nous n'avez pas besoin|r
    .target Lelanai
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Rendez la quête L’appel du destin
step << Rogue
    #season 2
    >>|cRXP_WARN_Gardez au moins 29 pièces d'argent après avoir appris vos sorts. Vous les utiliserez pour acheter un arc|r
    .trainer >> Apprenez vos sorts de classe de niveau 12
step << !sod/!Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >> Rendez la quête Les larmes de la Lune
    .target Priestess A'moora
    .accept 2520 >> Acceptez la quête Sacrifice de Sathrah
step << !sod/!Rogue
    .goto Darnassus,39.7,85.8
	.use 8155 >>Utilisez le [Sacrifice de Sathrah] à la fontaine
    .complete 2520,1 --Offer the sacrifice at the fountain
step << !sod/!Rogue
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >> Rendez la quête Sacrifice de Sathrah
step << Priest
    #season 2
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Prêtresse Alathea|r
    .turnin 5629 >> Rendez la quête Retour à la maison
    .target Priestess Alathea
step << Priest
    #season 2
    .goto Darnassus,38.6,82.0
    .trainer >> Apprenez vos sorts de classe de niveau 12
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Firodren Mandelune|r
    .train 2366 >> Apprenez [Herboristerie]
    >>|T136065:0|tL'[Herboristerie] est nécessaire pour récolter 5 [Terrestrine] pour une quête de classe importante plus tard. Vous pourrez oublier ce métier plus tard
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à un |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Achetez les objets suivants pour rendre des quêtes directement à Sombrivage plus tard:
    >>|T134187:0|t[Terrestrine] << Druid era
    >>|T133912:0|t[Mérou de Sombrivage]
    >>|T133972:0|t[Viande de trotteur]
    *Passez cette étape si vous préférez ne pas les acheter.
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCherchez |cRXP_FRIENDLY_Jaeana|r, elle patrouille dans la Terrasse des Marchands
    >>|cRXP_BUY_Achetez-lui un stack de|r |T133972:0|t[Viande séchée coriace] |cRXP_BUY_.
    >>|cRXP_WARN_Vous allez en avoir besoin pour nourrir votre chouette, elles ne mangent que de la viande et il n'y a pas de vendeur de viande à Sombrivage|r
    .collect 117,15
    .target Jaeana
step << Hunter
    #season 2
    .goto Darnassus,64.2,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kieran|r. Il est à l'étape supérieur de la hutte
    >>|cRXP_BUY_Achetez une|r |T135145:0|t[Canne de marche]
    >>|cRXP_WARN_Passez cette étape si vous avez déjà un autre bâton prêt à être équipé dans vos sacs|r
    .collect 2495,1
    .target Kieran
    .money <0.1539
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .train 227 >>Apprenez la compétence Bâtons << Hunter/Warrior/Priest
    .train 265 >>Apprenez la compétence Arcs << Sod Rogue
    >>Si vous avez un Bâton dans votre sac, équipez-le. << Hunter
    >>Si vous avez un Arc dans votre sac, équipez-le. << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +Équipez le [Bâton de marche]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez et équipez un|r [Arc courbe composite]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
	.vendor >>|cRXP_BUY_Achetez des|r |T132382:0|t[Flèches pointues]
    .target Ariyell Skyshadow
step << Hunter/Sod Rogue
    #season 2
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
	.vendor >>|cRXP_BUY_Achetez des|r |T132382:0|t[Flèches pointues]
    .vendor >>|cRXP_BUY_Achetez un|r |T134410:0|t[Carquois moyen] |cRXP_BUY_si vous pouvez vous le permettre|r << Hunter
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +Équipez l'[Arc courbe composite]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r [Bâton noueux]|cRXP_BUY_. Équipez le au niveau 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez un|r [Bâton]|cRXP_BUY_. Équipez le au niveau 11|r << era
    >>|cRXP_BUY_Achetez et équipez un|r |T135154:0|t[Bâton de combat] |cRXP_BUY_si vous ne pouvez pas vous offrir un|r |T135147:0|t[Bâton noueux] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
	>>|cRXP_BUY_Achetez et équipez un|r |T135346:0|t[Sabre d’abordage] |cRXP_BUY_si vous ne pouvez pas vous offrir un|r |T135154:0|t[Bâton de combat]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +Équipez le [Coutelas]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +Équipez le [Bâton]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Warrior
    #season 2
	.goto Darnassus,58.6,35.6
    .target Arias'ta Bladesinger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arias'ta Chantelame|r
    .trainer >> Apprenez vos sorts de classe
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rellian Greenspyre|r au second étage
    >>|cRXP_BUY_Achetez une|r [Dague de lancer équilibrée]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
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
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Rendez la quête Nessa Chantelombre
    .target Nessa Shadowsong
    .accept 6341 >> Acceptez la quête Le don de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Rendez la quête Retourner à Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Rendez la quête Le don de Teldrassil
    .target Vesprystus
    .accept 6342 >> Acceptez la quête Vol vers Auberdine
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
]])
