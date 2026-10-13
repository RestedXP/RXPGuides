if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.GetSeason() ~= 2 then return end
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon << Warrior
#subgroup Plastron << Hunter
#name Runes de Carrodin
#displayname Consumé par la rage - 25 (Paluns) << Warrior
#displayname Pourfendeur de cobras - 25 (Paluns) << Hunter
#title Consumé par la rage << Warrior
#title Pourfendeur de cobras << Hunter

step
    #season 2
    #completewith next
    .zone Wetlands >>Voyagez aux Paluns
step
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >> Entrez dans la grotte du Rocher de Thelgen
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step
    #season 2
    .goto Wetlands,47.24,65.34
    >>Tuez |cRXP_ENEMY_Carrodin|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage dévorante|r] << Warrior
    >>Tuez |cRXP_ENEMY_Carrodin|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Pourfendeur de cobras|r] << Hunter
    .collect 210573,1 << Warrior --Rune of Consuming Rage (1)
    .collect 211205,1 << Hunter --Rune of Aspect of Cobra Slayer (1)
    .mob Carrodin
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage dévorante|r] |cRXP_WARN_pour apprendre|r |T136088:0|t[Consumé par la rage]
    .use 210573
    .itemcount 210573,1
step << Hunter
    #season 2
    .train 410115 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Pourfendeur de cobras|r] |cRXP_WARN_pour apprendre|r |T136040:0|t[Pourfendeur de cobras]
    .use 211205
    .itemcount 211205,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Envenimer - 25 (Hillsbrad)
#title Envenimer


    --Rune of Envenom

step
    #season 2
    #completewith next
	.goto Hillsbrad Foothills,76.72,46.22,60 >> Voyagez vers le Fort-de-Durn
step
    #season 2
    .goto Hillsbrad Foothills,80.2,39.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kris Legace|r
    >>|cRXP_BUY_Achetez-lui le|r |T133469:0|t[Bon tuyau] |cRXP_BUY_|r
    .collect 210330,1 --Hot Tip (1)
    .target Kris Legace
    .train 400102,1
step
    #season 2
    .use 210330 >>Ouvrez le |T133469:0|t[Bon tuyau]
    .collect 210323,1 --Safe Combination (1)
    .collect 210329,1 --Hillsbrad Treasure Map (1)
    .train 400102,1
step
    #completewith next
    .zone Western Plaguelands >>Voyagez aux Maleterres de l'Ouest
step
    #season 2
    .goto Western Plaguelands,59.4,84.5
    >>Ouvrez le |cRXP_PICK_Coffre rouillé|r dans l'eau pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de venin|r]
    .collect 210322,1 --Rune of Venom (1)
    .train 400102,1
step
    #season 2
    .train 400102 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de venin|r]
    .use 210322
    .itemcount 210322,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Coupe-gorge - 25 (Bois de la Pénombre)
#title Coupe-gorge

step
    #season 2
    .goto Duskwood,81.24,71.86
    >>Ouvrez la |cRXP_PICK_Boîte à offrandes|r dans le cimetière des Jardins du Repos afin d'obtenir un |T133343:0|t[|cRXP_LOOT_Anneau d’argent ciselé|r]
    .collect 210251,1 --Engraved Silver Ring (1)
    .train 424988,1
step
    #season 2
    .goto Duskwood,48.5,79.9
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Cours-la-nuit défias|r pour un |T133345:0|t[|cRXP_LOOT_Anneau d’or ciselé|r]
    .collect 210250,1 --Engraved Gold Ring (1)
    .mob Defias Night Runner
    .train 424988,1
step
    #season 2
    #completewith next
    .goto Duskwood,19.9,44.6,60,0 >>Voyagez jusqu'à la statue de Colline-aux-Corbeaux
step
    #season 2
    .goto Duskwood,19.9,44.6
    .use 210250 >> Équipez les deux anneaux et tapez /genou à la statue pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Runes du surin|r]
    .use 210251
    .collect 210252,1 --Rune of Shiving (1)
    .train 424988,1
step
    #season 2
    .train 424988 >>Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Runes du surin|r] pour apprendre |T236280:0|t[Coupe-gorge]
    .use 210252
    .itemcount 210252,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frappes féroces - 14 (Serres-Rocheuses)
#title Frappes féroces

step << Druid
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>Tuez les |cRXP_ENEMY_Totem-sinistre|r. Dépouillez-les pour l' |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    .equip 18,210534 >> |cRXP_WARN_Équipez l'|r |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    >>|cRXP_WARN_Lancez|r |T136085:0|t[Rétablissement] |cRXP_WARN_ou|r |T136041:0|t[Toucher guérisseur] |cRXP_WARN_sur 10 Bêtesamicales différentes telles que les Familiers de Chasseur/les Druides en Forme d'ours/les Chamans en Loup fantôme|r << Horde
    >>|cRXP_WARN_Lancez|r |T136085:0|t[Rétablissement] |cRXP_WARN_ou|r |T136041:0|t[Toucher guérisseur] |cRXP_WARN_sur 10 Bêtes amicales différentes comme les familiers de Chasseurou les Druides en formes d'ours|r << Alliance
    .train 410021 >> |cRXP_WARN_Utilisez l' |r |T134233:0|t[|cRXP_FRIENDLY_Idole du fauve|r] |cRXP_WARN_pour apprendre|r |T132143:0|t[Frappes féroces]
    .itemcount 210534,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Éruption stellaire - 25 (Paluns)
#title Éruption stellaire

step << Druid
    #completewith next
    +|cRXP_WARN_Vous pouvez le faire au niveau 1, cependant cela nécessitera de mourir à de nombreuses fois|r
    .train 424718,1
step << Druid
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grugimdern|r
    >>|cRXP_WARN_Il vous donnera un|r |T134052:0|t[|cRXP_LOOT_Champifond|r]
    .collect 210499,1 -- Marshroom (1)
    .skipgossip
    .target Grugimdern
    .train 424718,1
step << Druid
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_Utilisez le|r |T134052:0|t[|cRXP_LOOT_Champifond|r] |cRXP_WARN_pour le manger|r
    .use 210499
    .train 424718,1
step << Druid
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vodyanoi|r
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    .train 424718 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune des étoiles|r] |cRXP_WARN_pour apprendre|r |T135730:0|t[Éruption stellaire]
    .use 210500
    .itemcount 210500,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron << Priest/Hunter/Druid/Warrior/Shaman
#subgroup Pantalon << Warlock/Paladin
#subgroup Gants << Rogue
#subgroup Brassards << Mage
#name Runes de Grizzbi
#displayname Heureux hasard - 25 (Tarides) << Priest
#displayname Loup solitaire - 25 (Tarides) << Hunter
#displayname Survie du plus fort - 25 (Tarides) << Druid
#displayname Porteguerre - 25 (Tarides) << Warrior
#displayname Spécialisation Ambidextrie - 25 (Tarides) << Shaman
#displayname Pacte démoniaque - 25 (Tarides) << Warlock
#displayname Sacrifice divin - 25 (Tarides) << Paladin
#displayname Remonter le temps - 25 (Tarides) << Mage
#displayname Main gauche - 25 (Tarides) << Rogue
#next Frappe du croisé - 4 (Forêt d'Elwynn) << Human Paladin
#next Frappe du croisé - 4 (Dun Morogh) << Dwarf Paladin
#next Explosion de lave - 25 (Contreforts d'Hillsbrad) << Shaman
#title Heureux hasard << Priest
#title Loup solitaire << Hunter
#title Survie du plus fort << Druid
#title Porteguerre << Warrior
#title Spécialisation Ambidextrie << Shaman
#title Pacte démoniaque << Warlock
#title Sacrifice divin << Paladin
#title Remonter le temps << Mage
#title Main gauche << Rogue

<< SoD

step
    #completewith next
    .zone The Barrens >>Voyagez à Ratchet dans les Tarides. |cRXP_WARN_Vous aurez besoin de 3 pièces d'or afin d'acheter la rune|r
step
    .goto The Barrens,61.8,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grizzbi|r dans l'auberge
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Achetez et utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie harmonieuse|r] |cRXP_WARN_pour apprendre|r |T237549:0|t[Sérendipité] << Priest
    .train 410010 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de sacrifice|r] |cRXP_WARN_pour apprendre|r |T134596:0|t[Gravure de pantalon (Main de sacrifice)] << Paladin
    .train 401761 >>|cRXP_WARN_Achetez et utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Remonter le temps|r] |cRXP_WARN_pour apprendre|r |T237538:0|t[Remonter le temps] << Mage
    .train 410122 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du Loup solitaire|r] |cRXP_WARN_pour apprendre|r |T132266:0|t[Loup solitaire] << Hunter
    .train 416042 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de survie|r] |cRXP_WARN_pour apprendre|r |T132126:0|t[Survie du plus fort] << Druid
    .train 425445 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Porteguerre|r] |cRXP_WARN_pour apprendre|r |T236319:0|t[Porteguerre] << Warrior
    .train 425476 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du pacte|r] |cRXP_WARN_pour vous apprendre|r |T237562:0|t[Pacte démoniaque] << Warlock
    .train 424990 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Main gauche|r] |cRXP_WARN_pour vous apprendre|r |T237531:0|t[Main gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Ambidextrie|r] |cRXP_WARN_pour apprendre|r |T132686:0|t[Gravure de plastron (Spécialisation Ambidextrie)] << Shaman
    .target Grizzby
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
#subgroup Plastron << Shaman/Rogue
#subgroup Pantalon << Mage/Warlock/Hunter
#subgroup Gants << Paladin/Warrior/Priest/Druid
#name Runes des Fournitures
#displayname Incandescence mentale - 25 (Réputation) << Priest
#displayname Propagation du serpent - 25 (Réputation) << Hunter
#displayname Coup de crâne - 25 (Réputation) << Druid
#displayname Fureur obsessionnelle - 25 (Réputation) << Warrior
#displayname Pluie guérisseuse - 25 (Réputation) << Shaman
#displayname Affliction éternelle - 25 (Réputation) << Warlock
#displayname Guide de lumière - 25 (Réputation) << Paladin
#displayname Éruption d'arcanes - 25 (Réputation) << Mage
#displayname Juste une égratignure - 25 (Réputation) << Rogue
#next Sacrifice divin - 25 (Azeroth) << Paladin
#title Incandescence mentale << Priest
#title Propagation du serpent << Hunter
#title Coup de crâne << Druid
#title Fureur obsessionnelle << Warrior
#title Pluie guérisseuse << Shaman
#title Affliction éternelle << Warlock
#title Guide de lumière << Paladin
#title Éruption d’arcanes << Mage
#title Juste une égratignure << Rogue

<< SoD

--VV if (Reputation) name formatting removed, change in Paladin guide too

step
    >>Essayez de trouver des |T132765:0|t[Fournitures égarées]. Revenez ensuite dans une capitale et rendez-les. Si vous souhaitez obtenir la réputation plus rapidement, achetez les objets requis à l'Hôtel des Ventes pour l'améliorer
    *|cRXP_WARN_Vous pouvez tuer en boucle des mobs de plus bas niveau jusqu'à atteindre un niveau de réputation Amical. Vous devrez ensuite tuer des mobs de plus haut niveau (>=17).|r Les coffres dans le monde ont plus de 90% de chances de contenir un de ces objets.
    .reputation 2587,friendly << Horde
    .reputation 2586,friendly << Alliance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Officier de ravitaillement|r dans la ville la plus proche
    .goto Orgrimmar,51.6,64.6,-1 << Horde
    .goto Thunder Bluff,39.8,53.4,-1 << Horde
    .goto Undercity,64.6,38.2,-1 << Horde
    .goto Stormwind City,55.0,61.6,-1 << Alliance
    .goto Ironforge,24.6,67.2,-1 << Alliance
    .goto Darnassus,60.0,56.4,-1 << Alliance
    .use 211386 << Mage
    .use 211387 << Paladin
    .use 211392 << Warlock
    .use 211391 << Shaman
    .use 211385 << Hunter
    .use 211393 << Warrior
    .use 206002 << Druid
    .use 211390 << Rogue
    .use 205950 << Priest
    .train 415996 >>|cRXP_WARN_Achetez et utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie ténébreuse|r] |cRXP_WARN_pour apprendre|r |T237565:0|t[Incandescence mentale] << Priest
    .train 409999 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Guide de lumière|r] |cRXP_WARN_pour apprendre|r |T236247:0|t[Guide de lumière] << Paladin
    .train 425171 >>|cRXP_WARN_Achetez et utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Éruption d’arcanes|r] |cRXP_WARN_pour apprendre|r |T135734:0|t[Éruption d’arcanes] << Mage
    .train 425760 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Propagation du serpent|r] |cRXP_WARN_pour apprendre|r |T132209:0|t[Propagation du serpent] << Hunter
    .train 416046 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup de crâne|r] |cRXP_WARN_pour apprendre|r |T133732:0|t[Coup de crâne] << Druid
    .train 416003 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Fureur obsessionnelle|r] |cRXP_WARN_pour apprendre|r |T134919:0|t[Fureur obsessionnelle] << Warrior
    .train 416008 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’Affliction éternelle|r] |cRXP_WARN_pour apprendre|r |T236296:0|t[Affliction éternelle] << Warlock
    .train 400082 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Taquinerie|r] |cRXP_WARN_pour apprendre|r |T132284:0|t[Juste une égratignure] << Rogue
    .train 416057 >>|cRXP_WARN_Achetez et utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Pluie guérisseuse|r] |cRXP_WARN_pour apprendre|r |T136107:0|t[Pluie guérisseuse] << Shaman
    .target Elaine Compton << Alliance
    .target Tamelyn Aldridge << Alliance
    .target Macry Baker << Alliance
    .target Jornah << Horde
    .target Dokimi << Horde
    .target Gishah << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Croissance sauvage - 25 (Plusieurs zones)
#title Croissance sauvage

step << Druid
    #completewith next
    .zone Ashenvale >> Voyagez à Ashenvale
step << Druid
    .goto Ashenvale,86.963,43.159
    >>Cliquez sur la |cRXP_PICK_Statue de chouette|r pour commencer l'événement
    >>|cRXP_WARN_Vous devrez vaincre 3 vagues de 2 mobs à la fois, de niveaux 23 à 25|r
    >>|cRXP_WARN_Assurez-vous que le |cRXP_FRIENDLY_Feu follet invoqué|r ne meure pas. Vous ne pouvez pas le soigner, mais il sera entièrement soigné entre chaque vague|r
    >>Après avoir vaincu toutes les vagues de mobs, ramassez le |cRXP_PICK_Don du feu follet|r au sol
    .collect 210044,1 -- Symbol of the First Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .goto Duskwood,46.91,58.76,50,0
    .goto Duskwood,45.13,58.26,25,0
    .goto Duskwood,49.520,33.851
    .subzone 856 >> Voyagez au Bosquet crépusculaire dans le Bois de la Pénombre
    .train 410028,1
step << Druid
    .goto Duskwood,49.520,33.851
    .aura 424310 >> Cliquez sur la |cRXP_PICK_Statue de chouette|r pour gagner le buff |T132150:0|t[Yeux de la chouette]
    .train 410028,1
step << Druid
    .goto Duskwood,45.13,58.26
    #completewith next
    +Sortez du Bosquet crépusculaire
    .subzoneskip 856,1
    .train 410028,1
step << Druid
    .goto Duskwood,65.2,34.8,65,0
    .goto Duskwood,60.6,25.8,65,0
    .goto Duskwood,66.0,23.6,65,0
    .goto Duskwood,68.0,31.6,65,0
    .goto Duskwood,65.2,34.8
    >>Tuez |cRXP_ENEMY_Agon|r. Dépouillez-le pour le |cRXP_LOOT_Symbole de la deuxième chouette|r
    >>|cRXP_ENEMY_Agon|r |cRXP_WARN_patrouille dans la zone|r
    >>|cRXP_WARN_Vous devez avoir le buff|r |T132150:0|t[Yeux de la chouette] |cRXP_WARN_pour pouvoir voir|r |cRXP_ENEMY_Agon|r
    .collect 210043,2 -- Symbol of the Second Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Hillsbrad Foothills >> Voyagez aux Contreforts de Hautebrande
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,36.914,76.142
    .goto Hillsbrad Foothills,54.424,82.016,0
    +Cliquez sur la |cRXP_PICK_Statue de chouettes jumelles|r afin d'obtenir le buff |T237178:0|t[Aura des chouettes jumelles]
    >>|cRXP_WARN_Vous avez 1min 40s pour atteindre l'autre petite île et cliquer sur l'autre|r |cRXP_PICK_Statue de chouettes jumelles|r
    >>|cRXP_WARN_N'oubliez pas d'utiliser votre|r |T132112:0|t[Forme aquatique]
    >>|cRXP_WARN_L'autre île est indiquée sur votre carte|r
    .aura 424181
    .aura 424182
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,54.424,82.016
    >>Nagez vers l'autre île. Cliquez sur la |cRXP_PICK_Statue de chouettes jumelles|r en moins de 1min 40s
    >>|cRXP_WARN_N'oubliez pas d'utiliser votre|r |T132112:0|t[Forme aquatique]
    >>|cRXP_WARN_Si vous échouez et perdez le buff, cliquez sur cette |cRXP_PICK_Statue de chouettes jumelles|r et retournez sur l'île d'où vous venez|r
    .collect 210026,3 -- Symbol of the Third Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Téléportez-vous à Reflet-de-Lune
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Téléportez-vous à Reflet-de-Lune
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .accept 78229 >> Acceptez la quête L'épreuve des trois chouettes
    .turnin 78229 >> Rendez la quête L'épreuve des trois chouettes
    .target Loganaar
    .train 410028,1
step << Druid
    .train 410028 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de croissance sauvage|r] |cRXP_WARN_pour apprendre|r |T236153:0|t[Croissance sauvage]
    .use 210137
    .itemcount 210137,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Mage SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron << Warrior
#subgroup Pantalon << Mage
#name Runes de la Liche du Bois de la Pénombre
#displayname Flagellation - 25 (Bois de la Pénombre) << Warrior
#displayname Régénération de masse - 25 (Bois de la Pénombre) << Mage
#title Flagellation << Warrior
#title Régénération de masse << Mage

step << Warrior/Mage
    #completewith next
    .goto Duskwood,23.630,34.888,15 >> Entrez dans la crypte au nord-est
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,26.115,30.863
    >>Ouvrez le |cRXP_PICK_Coffre poussiéreux|r. Récupérez-y le |T252996:0|t[|cRXP_LOOT_Phylactère décrépit|r]
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,15.602,38.621,15 >> Sortez de cette crypte et descendez dans la crypte à l'ouest
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,18.140,37.940
    .cast 426182 >> Cliquez sur les |cRXP_PICK_Os endormis|r sur le petit trône|r
    >>|cRXP_WARN_Cela fera apparaître la |rLiche éveillée|cRXP_ENEMY_, un élite de niveau 25|r
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,18.140,37.940
    >>Tuez la |cRXP_ENEMY_Liche éveillée|r. Dépouillez-la pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Flagellation|r] << Warrior
    >>Tuez la |cRXP_ENEMY_Liche éveillée|r. Dépouillez-la pour les |T134939:0|t[|cRXP_FRIENDLY_Notes de sorts : Régénération de masse|r] << Mage
    >>|cRXP_WARN_Si un autre joueur combat la |cRXP_ENEMY_Liche éveillée|r vous pouvez les aider et les récupérer également|r
    .collect 210569,1 << Warrior -- Rune of Flagellation (1)
    .collect 211514,1 << Mage -- Spell Notes: Mass Regeneration (1)
    .mob Awakened Lich
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior
    .train 416050 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Flagellation|r] |cRXP_WARN_pour apprendre|r |T133495:0|t[Flagellation]
    .use 210569
    .itemcount 210569,1
    .train 403480,1
step << Mage
    .train 416050 >> |cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sorts : Régénération de masse|r] |cRXP_WARN_pour apprendre|r |T132870:0|t[Régénération de masse]
    .use 211514
    .itemcount 211514,1
    .train 415939,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Coup déchaîné - 25 (Plusieurs zones)
#title Coup déchaîné

step << Warrior
    #completewith next
    .goto Wetlands,49.40,16.98
    .subzone 205 >> Voyagez à Dun Modr dans les Paluns
    .train 425444,1
step << Warrior
    .goto Wetlands,46.92,17.53,15,0
    .goto Wetlands,46.553,18.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Entrepreneur Sombrefer|r à l'intérieur du bâtiment
    >>|cRXP_WARN_Vous devrez peut-être mourir plusieurs fois en avançant avec votre cadavre pour arriver jusqu'à lui|r
    >>|cRXP_BUY_Achetez une|r |T135130:0|t[Lance du tueur de dragon] |cRXP_BUY_pour 75 pièces d'argent|r
    .collect 209874,1,78134,1 -- Dragonslayer's Lance (1)
    .target Entrepreneur sombrefer
    .train 425444,1
step << Warrior
    #completewith next
    .goto Redridge Mountains,69.928,55.814
    .subzone 2099 >> Voyagez au Donjon de Guet-de-Pierre dans les Carmines
    .train 425444,1
step << Warrior
    .goto Redridge Mountains,69.928,55.814
    >>Cliquez sur le |cRXP_PICK_Bouclier mural|r. Récupérez le |cRXP_LOOT_Bouclier du tueur de dragon|r
    >>|cRXP_WARN_Il se situe dans le donjon principal en haut des escaliers, derrière |cRXP_ENEMY_Gath'Ilzogg|r qui est un élite de niveau 26|r
    >>|cRXP_WARN_Vous devrez tuer |cRXP_ENEMY_Gath'Ilzogg|r ou faire en sorte qu'il soit engagé par un autre joueur afin de pouvoir le ramasser. Assurez-vous d'être dans un groupe avant d'entrer|r
    .collect 209873,1,78133,1 -- Dragonslayer's Shield (1)
    .train 425444,1
step << Warrior
    #completewith next
    .subzone 209,2 >> Montez un groupe et entrez dans le Donjon d'Ombrecroc
step << Warrior
    >>Ouvrez le |cRXP_PICK_Heaume abandonné|r. Récupérez le |cRXP_LOOT_Casque du tueur de dragon|r
    >>|cRXP_WARN_Vous le trouverez sur un banc derrière le|r |cRXP_ENEMY_Commandant Springvale|r
    .collect 209872,1,78132,1 -- Dragonslayer's Helm (1)
    .train 425444,1
step << Warrior
    #completewith next
    .zone Ashenvale >> Voyagez à Ashenvale
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonso|r
    .accept 78132 >> Acceptez la quête Casque du tueur de dragon
    .accept 78134 >> Acceptez la quête Lance du tueur de dragon
    .accept 78133 >> Acceptez la quête Bouclier du tueur de dragon
    .turnin 78132 >> Rendez la quête Casque du tueur de dragon
    .turnin 78134 >> Rendez la quête Lance du tueur de dragon
    .turnin 78133 >> Rendez la quête Bouclier du tueur de dragon
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonso|r
    .accept 78144 >> Acceptez la quête Alonso le Tueur de dragons
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.029,68.999
    >>Tuez le |cRXP_ENEMY_Dragonnet vert|r
    .complete 78144,1 -- Accompany Alonso to slay the dragon.
    .target Alonso
    .mob Green Dragon Whelp
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.053,69.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonso|r
    .turnin 78144 >> Rendez la quête Alonso le Tueur de dragons
    .target Alonso
    .train 425444,1
step << Warrior
    .train 425444 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Coup déchaîné|r] |cRXP_WARN_pour apprendre|r |T132215:0|t[Coup déchaîné]
    .use 210015
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Force d'âme - 22 (Ashenvale)
#title Force d'âme

step << Priest
    .goto Ashenvale,32.0,43.0,65,0
    .goto Ashenvale,33.6,38.8,65,0
    .goto Ashenvale,37.6,34.0
    >>Tuez les |cRXP_ENEMY_Totémiques Crin-de-Chardon|r et les |cRXP_ENEMY_Chamans Crin-de-Chardon|r. Dépouillez-les pour obtenir |T135736:0|t[Clairvoyance primordiale]
    .collect 211534,1 -- Primal Insight (1)
    .mob Thistlefur Totemic
    .mob Thistlefur Shaman
    .train 415997,1
step << Priest
    .goto Ashenvale,38.002,29.528,40,0
    .goto Ashenvale,37.938,27.958,30,0
    .goto Ashenvale,38.819,27.160,30,0
    .goto Ashenvale,38.804,26.558
    >>|cRXP_WARN_Montez l'arbre géant à côté de l'entrée de la grotte. Suivez la flèche attentivement|r
    .use 211534 >>|cRXP_WARN_Utilisez la|r |T135736:0|t[Clairvoyance primordiale] |cRXP_WARN_quand vous êtes à côté des deux capturêves sur l'arbre pour créer la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie des sept visiteurs]|r
    .collect 211531,1 -- Prophecy of Seven Visitors (1)
    .train 415997,1
step << Priest
    >>Vous allez maintenant devoir obtenir deux buffs |T135934:0|t|T136057:0|t[Méditation] << Alliance
    >>Vous allez maintenant devoir obtenir deux buffs |T237569:0|t|T136077:0|t[Méditation] << Horde
    >>Vous devez utiliser l'emote /genou à l'intérieur de l'un des lieux suivants : l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autes de la Lumière à Anvilmar, le Loch Modan ou la Garde Mystique à Ironforge << Human/Dwarf
    >>Vous devez utiliser l'emote /genou à l'un des endroits suivants: un puits de lune, comme celui de Stormwind ou celui de Darnassus << NightElf
    >>Vous devez utiliser l'emote /genou dans n'importe quel cimetière << Undead
    >>Vous devez utiliser l'emote /genou à n'importe quel Autel des Loas, comme celui du Village de Sen'jin ou celui de la Croisée dans les Tarides << Troll
    >>Pour recevoir votre deuxième buff |T135934:0|t|T136057:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant << Alliance
    >>Pour recevoir votre deuxième buff |T237569:0|t|T136077:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant << Horde
    .train 415997 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie des sept visiteurs]|r |cRXP_WARN_pour apprendre|r |T135911:0|t[Force d'âme] << Alliance
    .train 415997 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie des sept visiteurs]|r |cRXP_WARN_pour apprendre|r |T135911:0|t[Force d'âme] << Horde
    .use 211531
    .itemcount 211531,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Brassards
#name Mot de pouvoir : Barrière - 22 (Carmines)
#title Mot de pouvoir : Barrière

step << Priest
    #completewith next
    .zone Redridge Mountains >> Voyagez vers Les Carmines
    .train 425213,1
step << Priest
    .goto Redridge Mountains,67.2,53.6
    .goto Redridge Mountains,68.8,57.4
    >>Tuez les |cRXP_ENEMY_Exhalombres Blackrock|r. Dépouillez-les pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la ville ensorcelée|r]
    >>Les |cRXP_ENEMY_Exhalombres Blackrock|r |cRXP_WARN_sont des élites de niveau 22-23. Faites-le en groupe|r
    .collect 211530,1 -- Prophecy of a City Enthralled (1)
    .mob Blackrock Shadowcaster
    .train 425213,1
step << Priest
    >>Vous allez maintenant devoir obtenir deux buffs |T135934:0|t|T136057:0|t[Méditation] << Alliance
    >>Vous allez maintenant devoir obtenir deux buffs |T237569:0|t|T136077:0|t[Méditation] << Horde
    >>Vous devez utiliser l'emote /genou à l'intérieur de l'un des lieux suivants : l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autes de la Lumière à Anvilmar, le Loch Modan ou la Garde Mystique à Ironforge << Human/Dwarf
    >>Vous devez utiliser l'emote /genou à l'un des endroits suivants: un puits de lune, comme celui de Stormwind ou celui de Darnassus << NightElf
    >>Vous devez utiliser l'emote /genou dans n'importe quel cimetière << Undead
    >>Vous devez utiliser l'emote /genou à n'importe quel Autel des Loas, comme celui du Village de Sen'jin ou celui de la Croisée dans les Tarides << Troll
    >>Pour recevoir votre deuxième buff |T135934:0|t|T136057:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant << Alliance
    >>Pour recevoir votre deuxième buff |T237569:0|t|T136077:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant << Horde
    .train 425213 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la ville ensorcelée]|r |cRXP_WARN_pour apprendre|r |T253400:0|t[Mot de pouvoir : Barrière] << Alliance
    .train 425213 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de la ville ensorcelée]|r |cRXP_WARN_pour apprendre|r |T253400:0|t[Mot de pouvoir : Barrière] << Horde
    .use 211530
    .itemcount 211530,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Gants
#name Cercle de soins - 25 (Bois de la Pénombre)
#title Cercle de soins

step << Priest
    .goto Duskwood,50.4,70.8,60,0
    .goto Duskwood,50.2,76.4
    >>Tuez les |cRXP_ENEMY_Cours-la-nuit défias|r, les |cRXP_ENEMY_Lames nocturnes défias|r et les |cRXP_ENEMY_Enchanteurs défias|r. Dépouillez-les pour la |T135736:0|t[|cRXP_LOOT_Sombre clairvoyance|r]
    .collect 211528,1 -- Dark Insight (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Night Enchanter
    .train 402859,1
step << Priest
    .goto Duskwood,91.11,30.58
    .use 211528 >> |cRXP_WARN_Utilisez la|r |T135736:0|t[|cRXP_LOOT_Sombre clairvoyance|r] |cRXP_WARN_à la tombe isolée derrière la tour afin de recevoir la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie des mille lumières|r]
    .collect 211490,1 -- Prophecy of a Thousand Lights (1)
    .train 402859,1
step << Priest
    >>Vous allez maintenant devoir obtenir deux buffs |T135934:0|t|T136057:0|t[Méditation] << Alliance
    >>Vous allez maintenant devoir obtenir deux buffs |T237569:0|t|T136077:0|t[Méditation] << Horde
    >>Vous devez utiliser l'emote /genou à l'intérieur de l'un des lieux suivants : l'Abbaye de Northshire, la Cathédrale de Stormwind, les Autes de la Lumière à Anvilmar, le Loch Modan ou la Garde Mystique à Ironforge << Human/Dwarf
    >>Vous devez utiliser l'emote /genou à l'un des endroits suivants: un puits de lune, comme celui de Stormwind ou celui de Darnassus << NightElf
    >>Vous devez utiliser l'emote /genou dans n'importe quel cimetière << Undead
    >>Vous devez utiliser l'emote /genou à n'importe quel Autel des Loas, comme celui du Village de Sen'jin ou celui de la Croisée dans les Tarides << Troll
    >>Pour recevoir votre deuxième buff |T135934:0|t|T136057:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant << Alliance
    >>Pour recevoir votre deuxième buff |T237569:0|t|T136077:0|t[Méditation], vous devez utiliser l'emote /genou devant un Prêtre possédant un buff |T135934:0|t|T136057:0|t[Méditation] différent du vôtre, et il doit /prier en vous ciblant << Horde
    .train 402859 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T135934:0|t|T136057:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie des mille lumières]|r |cRXP_WARN_pour apprendre|r |T135887:0|t[Cercle de soins] << Alliance
    .train 402859 >> |cRXP_WARN_Dès que vous avez les deux buffs|r |T237569:0|t|T136077:0|t[Méditation] |cRXP_WARN_buffs, utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie des mille lumières]|r |cRXP_WARN_pour apprendre|r |T135887:0|t[Cercle de soins] << Horde
    .use 211490
    .itemcount 211490,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Plastron
#name Frappes de cobra - 25 (Contreforts d'Hillsbrad)
#title Frappes de cobra


    --Rune of Cobra Strikes

step
    #season 2
    #completewith next
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts d'Hillsbrad (par exemple, depuis Undercity en passant par la Forêt des Pins-Aagentés) << Horde
    .zone Hillsbrad Foothills >>Voyagez aux Contreforts d'Hillsbrad (par exemple, allez au nord depuis les Paluns) << Alliance
step
    #season 2
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Cherchez |cRXP_FRIENDLY_Zixil|r. Il patrouille entre Moulin-de-Tarren et Southshore. Achetez-lui l' |T134041:0|t[Appât à mordeuse d’eau douce]
    .collect 210410,1 --Freshwater Snapper Bait (1)
    .target Zixil
    .train 425759,1
step
    #season 2
    .goto Hillsbrad Foothills,61.05,33.36
    .use 210410 >>Utilisez le |T134041:0|t[Appât à mordeuse d’eau douce] sur le bateau au milieu de l'étang
    >>Tuez |cRXP_ENEMY_Koartul|r (élite de niveau 25) lorsqu'il apparaît. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappes de cobra|r]
    .collect 210596,1 --Rune of Cobra Strikes (1)
    .mob Koartul
    .train 425759,1
step
    #season 2
    .train 425759 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frappes de cobra|r] |cRXP_WARN_pour apprendre|r |T236177:0|t[Frappes de cobra]
    .use 210596
    .itemcount 210596,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Pantalon
#name Tir mortel - 25 (Plusieurs zones)
#title Tir mortel

step
    #completewith WyvernWrangling
    >>|cRXP_BUY_Achetez une|r |T135144:0|t[Baguette magique supérieure] |cRXP_BUY_à l'hôtel des ventes|r
    .collect 11288,1 --Greater Magic Wand (1)
    .train 410111,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Commencez à chercher un groupe pour les Cavernes des Lamentations|r
step
    #season 2
    #completewith next
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >> Entrez dans les Cavernes des Lamentations
step
    #season 2
    >>Tuez |cRXP_ENEMY_Mutanus le Dévoreur|r. Dépouillez-le pour le |T132775:0|t[|cRXP_LOOT_Cristal hypnotique|r]
    .collect 209838,1 --Hypnotic Crystal (1)
    .mob Mutanus the Devourer
    .train 410111,1
step
    #season 2
    #completewith next
    .zone Ashenvale >>Voyagez à Ashenvale
step
    #season 2
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    .goto Ashenvale,35.75,32.01
    >>Tuez les |cRXP_ENEMY_Chamans Crin-de-Chardon|r. Dépouillez-les pour l' |T237004:0|t[|cRXP_LOOT_Essence de magie sauvage|r]
    .collect 209841,1 --Wild Magic Essence (1)
    .mob Thistlefur Shaman
    .train 410111,1
step
    #season 2
    .use 209841 >>Utilisez l' |T237004:0|t[|cRXP_LOOT_Essence de magie sauvage|r] pour fabriquer la |T237489:0|t[|cRXP_LOOT_Baguette noueuse de magie sauvage|r]
    .collect 209840,1 --Gnarled Wand of Wild Magic (1)
    .train 410111,1
step
    #season 2
    #completewith WyvernWrangling
    .zone Stonetalon Mountains >>Voyagez jusqu'au Serres-Rocheuses
step
    #season 2
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jixo Fusetaré|r dans les Serres-Rocheuses
    .accept 78114 >>Acceptez la quête Domptage de wyverne sauvage
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    #label WyvernWrangling
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jixo Fusetaré|r
    .turnin 78114 >>Rendez la quête Domptage de wyverne sauvage
    .accept 78121 >>Acceptez la quête Dresser une wyverne sauvage
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .goto Stonetalon Mountains,60.70,62.33
    >>Restez avec |cRXP_FRIENDLY_Jixo Fusetaré|r et regardez-le apprivoiser une |cRXP_ENEMY_Wyverne|r
    .turnin 78121 >>Rendez la quête Dresser une wyverne sauvage
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .train 410111 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'Ordre de tuer|r] |cRXP_WARN_pour apprendre|r |T236174:0|t[Tir mortel]
    .use 209852
    .itemcount 209852,1


]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guide des runes et des livres
<< SoD
#subgroup Plastron << Shaman
#subgroup Ceinture << Warrior/Hunter/Mage/Paladin
#subgroup Bottes << Warlock/Priest/Rogue/Druid
#name Runes du Cavalier noir
#displayname Esprit du rédempteur - 40 (Azeroth) << Priest
#displayname Spécialiste de la mêlée - 40 (Azeroth) << Hunter
#displayname Roi de la jungle - 40 (Azeroth) << Druid
#displayname Moment exact - 40 (Azeroth) << Warrior
#displayname Maîtrise à deux mains - 40 (Azeroth) << Shaman
#displayname Connaissance démoniaque - 40 (Azeroth) << Warlock
#displayname Imprégnation de lumière - 40 (Azeroth) << Paladin
#displayname Barrage de projectiles - 40 (Azeroth) << Mage
#displayname Affût - 40 (Azeroth) << Rogue
#title Esprit du rédempteur << Priest
#title Spécialiste de la mêlée << Hunter
#title Roi de la jungle << Druid
#title Moment exact << Warrior
#title Maîtrise à deux mains << Shaman
#title Connaissance démoniaque << Warlock
#title Imprégnation de lumière << Paladin
#title Barrage de projectiles << Mage
#title Affût << Rogue

step
    #completewith Sigil
    +|cRXP_WARN_Avant d'essayer d'obtenir cette rune, nous vous recommandons fortement de chercher un groupe. Vous devez tuer un élite de niveau 41 à 7 reprises au total|r
step
    #completewith next
    .zone Deadwind Pass >>Voyagez au Défilé de Deuillevent
step
    #label Sigil
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Agent de Dalaran|r pour recevoir le |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r]
    .skipgossip 218920,1
    .collect 216941,1
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .equip 13 >> |cRXP_WARN_Équipez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r]
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    .aura 438288 >> |cRXP_WARN_Allez jusqu'à l'emplacement qu'indique la flèche. En vous approchant, vous recevrez le buff|r |T237534:0|t[Sombre présence] |cRXP_WARN_|r
    >>|cRXP_WARN_VOUS NE DEVEZ PAS ÊTRE SUR VOTRE MONTURE POUR RECEVOIR LE BUFF !|r
    >>|cRXP_WARN_Assurez-vous d'avoir équipé le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_|r
    .use 216941
    .itemcount 216945,<1
step
    #completewith next
    .goto Deadwind Pass,45.04,28.88
    .cast 438305 >> |cRXP_WARN_Utilisez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Cavalier noir|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    >>Tuez le |cRXP_ENEMY_Cavalier noir|r. Dépouillez-le pour la |cRXP_LOOT_Relique de Dalaran curieuse|r
    .use 216941
    .collect 216945,1
    .mob Dark Rider
step
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au Marais des Chagrins
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    .aura 438288 >> |cRXP_WARN_Allez jusqu'à l'emplacement qu'indique la flèche. En vous approchant, vous recevrez le buff|r |T237534:0|t[Sombre présence] |cRXP_WARN_|r
    >>|cRXP_WARN_VOUS NE DEVEZ PAS ÊTRE SUR VOTRE MONTURE POUR RECEVOIR LE BUFF !|r
    >>|cRXP_WARN_Assurez-vous d'avoir équipé le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_|r
    .use 216941
    .itemcount 216948,<1
step
    #completewith next
    .goto Swamp of Sorrows,69,28
    .cast 438305 >> |cRXP_WARN_Utilisez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Cavalier noir|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    >>Tuez le |cRXP_ENEMY_Cavalier noir|r. Dépouillez-le pour la |cRXP_LOOT_Relique de Dalaran étrange|r
    .use 216941
    .collect 216948,1
    .mob Dark Rider
step
    #completewith next
    .zone Duskwood >>Voyagez au Bois de la Pénombre
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    .aura 438288 >> |cRXP_WARN_Allez jusqu'à l'emplacement qu'indique la flèche. En vous approchant, vous recevrez le buff|r |T237534:0|t[Sombre présence] |cRXP_WARN_|r
    >>|cRXP_WARN_VOUS NE DEVEZ PAS ÊTRE SUR VOTRE MONTURE POUR RECEVOIR LE BUFF !|r
    >>|cRXP_WARN_Assurez-vous d'avoir équipé le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_|r
    .use 216941
    .itemcount 216946,<1
step
    #completewith next
    .goto Duskwood,23,47
    .cast 438305 >> |cRXP_WARN_Utilisez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Cavalier noir|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    >>Tuez le |cRXP_ENEMY_Cavalier noir|r. Dépouillez-le pour la |cRXP_LOOT_Relique de Dalaran scintillante|r
    .use 216941
    .collect 216946,1
    .mob Dark Rider
step
    #completewith next
    .zone Badlands >>Voyagez aux Terres ingrates
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    .aura 438288 >> |cRXP_WARN_Allez jusqu'à l'emplacement qu'indique la flèche. En vous approchant, vous recevrez le buff|r |T237534:0|t[Sombre présence] |cRXP_WARN_|r
    >>|cRXP_WARN_VOUS NE DEVEZ PAS ÊTRE SUR VOTRE MONTURE POUR RECEVOIR LE BUFF !|r
    >>|cRXP_WARN_Assurez-vous d'avoir équipé le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_|r
    .use 216941
    .itemcount 216951,<1
step
    #completewith next
    .goto Badlands,58,54
    .cast 438305 >> |cRXP_WARN_Utilisez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Cavalier noir|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    >>Tuez le |cRXP_ENEMY_Cavalier noir|r. Dépouillez-le pour la |cRXP_LOOT_Relique de Dalaran glissante|r
    .use 216941
    .collect 216951,1
    .mob Dark Rider
step
    #completewith next
    .zone Arathi Highlands >>Voyagez aux Hautes-terres d'Arathi
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    .aura 438288 >> |cRXP_WARN_Allez jusqu'à l'emplacement qu'indique la flèche. En vous approchant, vous recevrez le buff|r |T237534:0|t[Sombre présence] |cRXP_WARN_|r
    >>|cRXP_WARN_VOUS NE DEVEZ PAS ÊTRE SUR VOTRE MONTURE POUR RECEVOIR LE BUFF !|r
    >>|cRXP_WARN_Assurez-vous d'avoir équipé le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_|r
    .use 216941
    .itemcount 216947,<1
step
    #completewith next
    .goto Arathi Highlands,60,40
    .cast 438305 >> |cRXP_WARN_Utilisez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Cavalier noir|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    >>Tuez le |cRXP_ENEMY_Cavalier noir|r. Dépouillez-le pour la |cRXP_LOOT_Relique de Dalaran bourdonnante|r
    .use 216941
    .collect 216947,1
    .mob Dark Rider
step
    #completewith next
    .zone The Barrens >>Voyagez jusqu'aux Tarides
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    .aura 438288 >> |cRXP_WARN_Allez jusqu'à l'emplacement qu'indique la flèche. En vous approchant, vous recevrez le buff|r |T237534:0|t[Sombre présence] |cRXP_WARN_|r
    >>|cRXP_WARN_VOUS NE DEVEZ PAS ÊTRE SUR VOTRE MONTURE POUR RECEVOIR LE BUFF !|r
    >>|cRXP_WARN_Assurez-vous d'avoir équipé le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_|r
    .use 216941
    .itemcount 216949,<1
step
    #completewith next
    .goto The Barrens,52,36
    .cast 438305 >> |cRXP_WARN_Utilisez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Cavalier noir|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    >>Tuez le |cRXP_ENEMY_Cavalier noir|r. Dépouillez-le pour la |cRXP_LOOT_Relique de Dalaran lourde|r
    .use 216941
    .collect 216949,1
    .mob Dark Rider
step
    #completewith next
    .zone Desolace >>Voyagez à Désolace
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    .aura 438288 >> |cRXP_WARN_Allez jusqu'à l'emplacement qu'indique la flèche. En vous approchant, vous recevrez le buff|r |T237534:0|t[Sombre présence] |cRXP_WARN_|r
    >>|cRXP_WARN_VOUS NE DEVEZ PAS ÊTRE SUR VOTRE MONTURE POUR RECEVOIR LE BUFF !|r
    >>|cRXP_WARN_Assurez-vous d'avoir équipé le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_|r
    .use 216941
    .itemcount 216950,<1
step
    #completewith next
    .goto Desolace,65,25
    .cast 438305 >> |cRXP_WARN_Utilisez le|r |T338784:0|t[|cRXP_FRIENDLY_Cachet d'Ariden|r] |cRXP_WARN_pour révéler le|r |cRXP_ENEMY_Cavalier noir|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    >>Tuez le |cRXP_ENEMY_Cavalier noir|r. Dépouillez-le pour la |cRXP_LOOT_Relique de Dalaran inquiétante|r
    .use 216941
    .collect 216950,1
    .mob Dark Rider
step
    #completewith next
    .zone Deadwind Pass >>Voyagez au Défilé de Deuillevent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Agent de Dalaran|r
    .turnin 80147 >>Rendez la quête Relique de Dalaran curieuse
    .turnin 80149 >>Rendez la quête Relique de Dalaran curieuse
    .turnin 80098 >>Rendez la quête Relique de Dalaran curieuse
    .turnin 80152 >>Rendez la quête Relique de Dalaran curieuse
    .turnin 80148 >>Rendez la quête Relique de Dalaran curieuse
    .turnin 80150 >>Rendez la quête Relique de Dalaran curieuse
    .turnin 80151 >>Rendez la quête Relique de Dalaran curieuse
    .turnin 80120 >>Rendez la quête Au service de Dalaran
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir l' |T135791:0|t[|cRXP_FRIENDLY_Épiphanie lumineuse|r] << Priest
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune d’imprégnations|r] << Paladin
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir les |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Barrage de projectiles|r] << Mage
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de combat rapproché|r] << Hunter
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune du roi de la jungle|r] << Druid
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Précision impitoyable|r] << Warrior
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Savoir interdit|r] << Warlock
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de l’assaillant|r] << Rogue
    >>Ouvrez le |T133666:0|t[|cRXP_FRIENDLY_Sac de fournitures|r] pour recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de maîtrise à deux mains|r] << Shaman
    .use 217014
    .collect 213144,1 << Priest
    .collect 213130,1 << Paladin
    .collect 213112,1 << Mage
    .collect 213124,1 << Hunter
    .collect 213118,1 << Druid
    .collect 213104,1 << Warrior
    .collect 213100,1 << Warlock
    .collect 213137,1 << Rogue
    .collect 216606,1 << Shaman
step
    .itemcount 213144,1 << Priest
    .itemcount 213130,1 << Paladin
    .itemcount 213112,1 << Mage
    .itemcount 213124,1 << Hunter
    .itemcount 213118,1 << Druid
    .itemcount 213104,1 << Warrior
    .itemcount 213100,1 << Warlock
    .itemcount 213137,1 << Rogue
    .itemcount 216606,1 << Shaman
    .use 213144 << Priest
    .use 213130 << Paladin
    .use 213112 << Mage
    .use 213124 << Hunter
    .use 213118 << Druid
    .use 213104 << Warrior
    .use 213100 << Warlock
    .use 213137 << Rogue
    .use 216606 << Shaman
    .train 425312 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie lumineuse|r] |cRXP_WARN_pour apprendre|r |T132864:0|t[Esprit du rédempteur] << Priest
    .train 426180 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’imprégnations|r] |cRXP_WARN_pour apprendre|r |T236254:0|t[Imprégnation de lumière] << Paladin
    .train 401763 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Barrage de projectiles|r] |cRXP_WARN_pour apprendre|r |T236221:0|t[Barrage de projectiles] << Mage
    .train 416086 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de combat rapproché|r] |cRXP_WARN_pour apprendre|r |T132394:0|t[Spécialiste de la mêlée] << Hunter
    .train 424765 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du roi de la jungle|r] |cRXP_WARN_pour apprendre|r |T236159:0|t[Roi de la jungle] << Druid
    .train 416005 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Précision impitoyable|r] |cRXP_WARN_pour apprendre|r |T134377:0|t[Moment exact] << Warrior
    .train 416014 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Savoir interdit|r] |cRXP_WARN_pour apprendre|r |T136172:0|t[Connaissance démoniaque] << Warlock
    .train 415926 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l’assaillant|r] |cRXP_WARN_pour apprendre|r |T236286:0|t[Affût] << Rogue
    .train 436368 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de maîtrise à deux mains|r] |cRXP_WARN_pour apprendre|r |T135145:0|t[Maîtrise à deux mains] << Shaman
]])

RXPGuides.RegisterGuide([[

#classic
<< SoD
#group RestedXP Guide des runes et des livres
#subgroup Ceinture << Druid/Priest/Rogue/Warlock
#subgroup Bottes << Mage/Shaman/Hunter/Paladin/Warrior
#name Runes de la suite de Désolace
#displayname Pointe mentale - 35 (Azeroth) << Priest
#displayname Lance-piège - 35 (Azeroth) << Hunter
#displayname Éclipse - 35 (Azeroth) << Druid
#displayname Régénération enragée - 35 (Azeroth) << Warrior
#displayname Éveil ancestral - 35 (Azeroth) << Shaman
#displayname Ombre et flammes - 35 (Azeroth) << Warlock
#displayname L'art de la guerre - 35 (Azeroth) << Paladin
#displayname Gel mental - 35 (Azeroth) << Mage
#displayname Couteau empoisonné - 35 (Azeroth) << Rogue
#title Pointe mentale << Priest
#title Lance-piège << Hunter
#title Éclipse << Druid
#title Régénération enragée << Warrior
#title Éveil ancestral << Shaman
#title Ombre et flammes << Warlock
#title L'art de la guerre << Paladin
#title Gel mental << Mage
#title Couteau empoisonné << Rogue

step
    #completewith next
    .zone Desolace >>Voyagez à Désolace
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Cliquez sur le |cRXP_PICK_Feu de camp éteint|r
    .goto Desolace,47.532,54.605
    .accept 79229 >>Acceptez la quête Crime de grand chemin
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .goto Desolace,62.314,38.965
    .turnin 79229 >>Rendez la quête Crime de grand chemin
    .accept 79235 >>Acceptez la quête En cavale
    .target Bibbly F'utzbuckle
step
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce |cRXP_WARN_(Baie-du-Butin)|r
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79235 >>Rendez la quête En cavale
    .accept 79236 >>Acceptez la quête Une cerise, et tu me dis tout ?
    .target Tokal
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nixxrax Fillamug|r
    >>|cRXP_BUY_Achetez un|r |T132790:0|t[Grog à la cerise]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1,79236,1
    .target Nixxrax Fillamug
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79236 >>Rendez la quête Une cerise, et tu me dis tout ?
    .accept 79242 >>Acceptez la quête Pas d’honneur chez les voleurs
    .target Tokal
step
    #completewith next
    .zone Wetlands >>Voyagez à la frontière entre les Hautes-terres Arathies et les Paluns
step
    .goto Wetlands,58.320,6.927
    .cast 6477 >>Montez dans la |cRXP_PICK_Chaloupe|r dans l'eau
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .subzoneskip 308
step << NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illari Plumenuit|r pour recevoir la |cRXP_LOOT_Clé d'Illari|r
    .complete 79242,1 --Found Illari Duskfeather
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,2
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    #completewith next
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illari Plumenuit|r. Vous devrez ensuite l'affronter
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip 215655,1,1,1
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>Tuez |cRXP_ENEMY_Illari Plumenuit|r. Ouvrez la |cRXP_PICK_Bourse perdue|r qu'elle laisse tomber au sol. Dépouillez-les pour la |cRXP_LOOT_Clé d’Illari|r
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,1
    .mob Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Illari Plumenuit|r
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip
    .target Illari Duskfeather
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Cliquez sur le |cRXP_PICK_Cache de butin d’Illari|r au sol
    .goto Arathi Highlands,94.154,69.266
    .turnin 79242 >>Rendez la quête Pas d’honneur chez les voleurs
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour l' |T135791:0|t[|cRXP_FRIENDLY_Épiphanie psychosophique|r] << Priest
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Guerre|r] << Paladin
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour le |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Gel mental|r] << Mage
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour le |T134419:0|t[|cRXP_FRIENDLY_Rune de trappeur|r] << Hunter
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d’éclipse|r] << Druid
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage guérisseuse|r] << Warrior
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de Ténèbres enflammées|r] << Warlock
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour le |T134419:0|t[|cRXP_FRIENDLY_Rune de Lame empoisonnée|r] << Rogue
    >>Ouvrez la |T133876:0|t[|cRXP_LOOT_Boîte incrustée de joyaux|r] pour la |T134419:0|t[|cRXP_FRIENDLY_Rune d’Éveil ancestral|r] << Shaman
    .collect 212552,1 << Priest
    .collect 212551,1 << Paladin
    .collect 208853,1 << Mage
    .collect 212549,1 << Hunter
    .collect 212548,1 << Druid
    .collect 212562,1 << Warrior
    .collect 212561,1 << Warlock
    .collect 212559,1 << Rogue
    .collect 212560,1 << Shaman
    .use 212553 --Jewel-Encrusted Box (1)
step
    .train 431663 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie psychosophique|r] |cRXP_WARN_pour apprendre|r |T136181:0|t[Pointe mentale] << Priest
    .train 416031 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Guerre|r] |cRXP_WARN_pour apprendre|r |T236246:0|t[L’art de la guerre] << Paladin
    .train 401752 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Gel mental|r] |cRXP_WARN_pour apprendre|r |T236206:0|t[Gel mental] << Mage
    .train 410118 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de trappeur|r] |cRXP_WARN_pour apprendre|r |T133882:0|t[Lance-piège] << Hunter
    .train 410029 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’éclipse|r] |cRXP_WARN_pour apprendre|r |T236151:0|t[Éclipse] << Druid
    .train 403467 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Rage guérisseuse|r] |cRXP_WARN_pour apprendre|r |T132345:0|t[Régénération enragée] << Warrior
    .train 426452 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Ténèbres enflammées|r] |cRXP_WARN_pour apprendre|r |T135823:0|t[Ombre et flammes] << Warlock
    .train 425102 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Lame empoisonnée|r] |cRXP_WARN_pour apprendre|r |T236270:0|t[Couteau empoisonné] << Rogue
    .train 425883 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’Éveil ancestral|r] |cRXP_WARN_pour apprendre|r |T237571:0|t[Éveil ancestral] << Shaman
    .use 212552 << Priest
    .use 212551 << Paladin
    .use 208853 << Mage
    .use 212549 << Hunter
    .use 212548 << Druid
    .use 212562 << Warrior
    .use 212561 << Warlock
    .use 212559 << Rogue
    .use 212560 << Shaman
    .itemcount 212552,1 << Priest
    .itemcount 212551,1 << Paladin
    .itemcount 208853,1 << Mage
    .itemcount 212549,1 << Hunter
    .itemcount 212548,1 << Druid
    .itemcount 212562,1 << Warrior
    .itemcount 212561,1 << Warlock
    .itemcount 212559,1 << Rogue
    .itemcount 212560,1 << Shaman
step
    .goto 1417,89.536,78.149
    .cast 6477 >>Montez dans la |cRXP_PICK_Chaloupe|r dans l'eau pour retourner à Arathi
    .subzoneskip 308,1
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guide des runes et des livres
#subgroup Livres de sorts
#name Runes des livres de sorts

#displayname Intelligence étendue (Stormwind) << Alliance Mage
#displayname Intelligence étendue (Orgrimmar) << Horde Mage
#title Intelligence étendue << Mage
#displayname Aspect de la vipère/Cœur de lion (Stormwind) << Alliance Hunter
#displayname Aspect de la vipère/Cœur de lion (Orgrimmar) << Horde Hunter
#title Aspect de la vipère/Cœur de lion << Hunter
#displayname Moisson d'âme/Portail d'invocation/Gangrarmure (Stormwind) << Alliance Warlock
#displayname Moisson d'âme/Portail d'invocation/Gangrarmure (Orgrimmar) << Horde Warlock
#title Moisson d'âme/Portail d’invocation/Gangrarmure << Warlock
#displayname Redirection/Poison occulte/Poison ankylosant/Poison sébacé/Poison atrophiant (Stormwind) << Alliance Rogue
#displayname Redirection/Poison occulte/Poison ankylosant/Poison sébacé/Poison atrophiant (Orgrimmar) << Horde Rogue
#title Redirection/Poison occulte/Poison ankylosant/Poison sébacé/Poison atrophiant << Rogue
#displayname Ombrefiel/Robustesse augmentée (Stormwind) << Alliance Priest
#displayname Ombrefiel/Robustesse augmentée (Orgrimmar) << Horde Priest
#title Ombrefiel/Robustesse augmentée << Priest
#displayname Restauration amplifiée/Ressusciter/Fauverie accentuée (Stormwind) << Alliance Druid
#displayname Restauration amplifiée/Ressusciter/Fauverie accentuée (Orgrimmar) << Horde Druid
#title Restauration amplifiée/Ressusciter/Fauverie accentuée << Druid
#displayname Cri de commandement/Crochet à viande (Stormwind) << Alliance Warrior
#displayname Cri de commandement/Crochet à viande (Orgrimmar) << Horde Warrior
#title Cri de commandement/Crochet à viande << Warrior
#displayname Testament de l’exorciste/Bénédictions amplifiées (Stormwind) << Paladin
#title Testament de l'exorciste/Bénédictions amplifiées << Paladin
#displayname Projection totémique/Rage du chaman (Orgrimmar) << Shaman
#title Projection totémique/Rage du chaman << Shaman

step
    #completewith BuyBook
    >>|cRXP_WARN_Les livres de compétences peuvent maintenant s'acheter avec de l'or à Stormwind au lieu de devoir faire la route jusqu'au Monastère écarlate.|r << Alliance
    >>|cRXP_WARN_Les livres de compétences peuvent maintenant s'acheter avec de l'or à Orgrimmar au lieu de devoir faire la route jusqu'au Monastère écarlate.|r << Horde
    .zone Stormwind City >> Voyagez à Stormwind << Alliance
    .zone Orgrimmar >> Voyagez à Orgrimmar << Horde
step << Alliance
    #optional
    #completewith next
    .goto Stormwind City,70.347,27.208,15,0
    .goto Stormwind City,72.005,21.542,20 >> Voyagez au Donjon de Hurlevent
step
    #label BuyBook
    .goto Stormwind City,74.182,7.465 << Alliance
    .goto Orgrimmar,38.923,38.398 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milton Sheaf|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zor Arbre-solitaire|r << Horde
    >>|cRXP_WARN_Note: Le |T133736:0|t|cRXP_LOOT_[Tome d’intelligence étendue]|r nécessite le niveau 25 pour être utilisé|r << Mage
    >>|cRXP_WARN_Note: Le |T133733:0|t|cRXP_LOOT_[Grimoire de moisson d’âme]|r et le |T133733:0|t|cRXP_LOOT_[Grimoire du portail d’invocation]|r nécessitent le niveau 25 pour être utilisés|r << Warlock
    >>|cRXP_WARN_Note: Le |T133733:0|t|cRXP_LOOT_[Grimoire de Gangrarmure]|r nécessite le niveau 50 pour être utilisé|r << Warlock
    >>|cRXP_WARN_Note: Le |T133745:0|t|cRXP_LOOT_[Testament de l’exorciste]|r et le |T133745:0|t|cRXP_LOOT_[Testament de martyr]|r nécessitent le niveau 10 pour être utilisés|r << Paladin
    >>|cRXP_WARN_Note: Le |T133745:0|t|cRXP_LOOT_[Testament des bénédictions améliorées]|r nécessite le niveau 25 pour être utilisé|r << Paladin
    >>|cRXP_WARN_Note: Le |T133739:0|t|cRXP_LOOT_[Traité sur Cœur de lion]|r nécessite le niveau 10 pour être utilisé|r << Hunter
    >>|cRXP_WARN_Note: Le |T133739:0|t|cRXP_LOOT_[Traité sur l’aspect de la vipère]|r nécessite le niveau 25 pour être utilisé|r << Hunter
    >>|cRXP_WARN_Note: Le |T133735:0|t|cRXP_LOOT_[Manuel de Redirection]|r nécessite le niveau 25 pour être utilisé|r << Rogue
    >>|cRXP_WARN_Note: Le |T133735:0|t|cRXP_LOOT_[Manuel de Poison occulte]|r nécessite le niveau 54 pour être utilisé|r << Rogue
    >>|cRXP_WARN_Note: Le |T133735:0|t|cRXP_LOOT_[Manuel de Poison ankylosant]|r, le |cRXP_LOOT_[Manuel de Poison sébacé]|r et le |cRXP_LOOT_[Manuel de Poison atrophiant]|r nécessitent le niveau 60 pour être utilisés|r << Rogue
    >>|cRXP_WARN_Note: Le |T237162:0|t|cRXP_LOOT_[Parchemin d'ombrefiel]|r et le |T237162:0|t|cRXP_LOOT_[Parchemin de robustesse augmentée]|r nécessitent le niveau 25 pour être utilisés|r << Priest
    >>|cRXP_WARN_Note: Le |T134914:0|t|cRXP_LOOT_[Pamphlet de fauverie accentuée]|r|cRXP_WARN_,|r le |T134914:0|t|cRXP_LOOT_[Pamphlet de restauration améliorée]|r |cRXP_WARN_et le |T134914:0|t|cRXP_LOOT_[Pamphlet de résurrection]|r nécessitent le niveau 25 pour être utilisés|r << Druid
    >>|cRXP_WARN_Note: Le |T133741:0|t|cRXP_LOOT_[Manuel du cri de commandement]|r nécessite le niveau 25 pour être utilisé|r << Warrior
    >>|cRXP_WARN_Note: Le |T133741:0|t|cRXP_LOOT_[Recueil : Crochet à viande]|r nécessite le niveau 40 pour être utilisé|r << Warrior
    >>|cRXP_WARN_Note: Le |T133747:0|t|cRXP_LOOT_[Révélation de Rage du chaman]|r nécessite le niveau 10 pour être utilisé|r << Shaman
    >>|cRXP_WARN_Note: La |T133747:0|t|cRXP_LOOT_[Révélation de projection totémique]|r nécessite le niveau 25 pour être utilisé|r << Shaman
    .train 438040 >>|cRXP_WARN_Achetez et utilisez le|r |T133735:0|t|cRXP_LOOT_[Manuel de Redirection]|r |cRXP_WARN_pour apprendre|r |T135425:0|t[Redirection] << Rogue
    .train 458822 >>|cRXP_WARN_Achetez et utilisez le|r |T133735:0|t|cRXP_LOOT_[Manuel de Poison occulte]|r |cRXP_WARN_pour apprendre|r |T135935:0|t[Poison occulte] << Rogue
    .train 438040 >>|cRXP_WARN_Achetez et utilisez le|r |T133735:0|t|cRXP_LOOT_[Manuel de Poison ankylosant]|r |cRXP_WARN_pour apprendre|r |T132098:0|t[Poison ankylosant] << Rogue
    .train 439500 >>|cRXP_WARN_Achetez et utilisez le|r |T133735:0|t|cRXP_LOOT_[Manuel de Poison sébacé]|r |cRXP_WARN_pour apprendre|r |T132108:0|t[Poison sébacé] << Rogue
    .train 438040 >>|cRXP_WARN_Achetez et utilisez le|r |T133735:0|t|cRXP_LOOT_[Manuel de Poison atrophiant]|r |cRXP_WARN_pour apprendre|r |T132100:0|t[Poison atrophiant] << Rogue
    .train 436949 >>|cRXP_WARN_Achetez et utilisez le|r |T133736:0|t|cRXP_LOOT_[Tome d’intelligence étendue]|r |cRXP_WARN_pour apprendre|r |T236513:0|t[Intelligence étendue] << Mage
    .train 436956 >>|cRXP_WARN_Achetez et utilisez le|r |T134914:0|t|cRXP_LOOT_[Pamphlet de fauverie accentuée]|r |cRXP_WARN_pour apprendre|r |T132124:0|t[Fauverie accentuée] << Druid
    .train 417123 >>|cRXP_WARN_Achetez et utilisez le|r |T134914:0|t|cRXP_LOOT_[Pamphlet de restauration améliorée]|r |cRXP_WARN_pour apprendre|r |T136073:0|t[Restauration amplifiée] << Druid
    .train 437138 >>|cRXP_WARN_Achetez et utilisez le|r |T134914:0|t|cRXP_LOOT_[Pamphlet de résurrection]|r |cRXP_WARN_pour apprendre|r |T132132:0|t[Ressusciter] << Druid
    .train 409580 >>|cRXP_WARN_Achetez et utilisez le|r |T133739:0|t|cRXP_LOOT_[Traité sur Cœur de lion]|r |cRXP_WARN_pour apprendre|r |T132185:0|t[Cœur de lion] << Hunter
    .train 415423 >>Achetez et utilisez le|cRXP_WARN_ |T133739:0|t|r[Traité sur l’aspect de la vipère]|cRXP_LOOT_ pour apprendre|r |T132160:0|t[|cRXP_WARN_Aspect de la vipère|r] << Hunter
    .train 415076 >>|cRXP_WARN_Achetez et utilisez le|r |T133745:0|t|cRXP_LOOT_[Testament de l’exorciste]|r |cRXP_WARN_pour apprendre|r |T135956:0|t[Exorciste] << Paladin
    .train 407798 >>|cRXP_WARN_Achetez et utilisez le|r |T133745:0|t|cRXP_LOOT_[Testament de martyr]|r |cRXP_WARN_pour apprendre|r |T135961:0|t[Sceau du martyr] << Paladin
    .train 435984 >>|cRXP_WARN_Achetez et utilisez le|r |T133745:0|t|cRXP_LOOT_[Testament des bénédictions améliorées]|r |cRXP_WARN_pour apprendre|r |T236248:0|t[Bénédictions amplifiées] << Paladin
    .train 401977 >>|cRXP_WARN_Achetez et utilisez le|r |T237162:0|t|cRXP_LOOT_[Parchemin d’ombrefiel]|r |cRXP_WARN_pour apprendre|r |T136199:0|t[Ombrefiel] << Priest
    .train 436951 >>|cRXP_WARN_Achetez et utilisez le|r |T237162:0|t|cRXP_LOOT_[Parchemin de robustesse augmentée]|r |cRXP_WARN_pour apprendre|r |T237543:0|t[Robustesse augmentée] << Priest
    .train 437032 >>|cRXP_WARN_Achetez et utilisez le|r |T133733:0|t|cRXP_LOOT_[Grimoire de moisson d’âme]|r |cRXP_WARN_pour apprendre|r |T132851:0|t[Moisson d’âme] << Warlock
    .train 437169 >>|cRXP_WARN_Achetez et utilisez le|r |T133733:0|t|cRXP_LOOT_[Grimoire du portail d’invocation]|r |cRXP_WARN_pour apprendre|r |T134423:0|t[Portail d’invocation] << Warlock
    .train 403619 >>|cRXP_WARN_Achetez et utilisez le|r |T133733:0|t|cRXP_LOOT_[Grimoire de Gangrarmure]|r |cRXP_WARN_pour apprendre|r |T136156:0|t[Gangrarmure] << Warlock
    .train 403215 >>|cRXP_WARN_Achetez et utilisez le|r |T133741:0|t|cRXP_LOOT_[Manuel du cri de commandement]|r |cRXP_WARN_pour apprendre|r |T132351:0|t[Cri de commandement] << Warrior
    .train 403228 >>|cRXP_WARN_Achetez et utilisez le|r |T133741:0|t|cRXP_LOOT_[Recueil : Crochet à viande]|r |cRXP_WARN_pour apprendre|r |T132507:0|t[Crochet à viande] << Warrior
    .train 425336 >>|cRXP_WARN_Achetez et utilisez la|r |T133747:0|t|cRXP_LOOT_[Révélation de Rage du chaman]|r |cRXP_WARN_pour apprendre|r |T136088:0|t[Rage du chaman] << Shaman
    .train 437009 >>|cRXP_WARN_Achetez et utilisez le|r |T133747:0|t|cRXP_LOOT_[Révélation de projection totémique]|r |cRXP_WARN_pour apprendre|r |T310733:0|t[Projection totémique] << Shaman
    .use 216738 << Rogue -- Manual of Redirect
    .use 226396 << Rogue -- Manual of Occult Poison
    .use 226394 << Rogue -- Manual of Atrophic Poison
    .use 226397 << Rogue -- Manual of Sebacious Poison
    .use 226395 << Rogue -- Manual of Numbing Poison
    .use 216740 << Mage -- Tome of Expanded Intellect
    .use 216744 << Priest -- Scroll of Increased Fortitude
    .use 216745 << Priest -- Scroll of Shadowfiend
    .use 216746 << Warrior -- Handbook of Commanding Shout
    .use 226403 << Warrior -- Handbook of Meathook
    .use 216747 << Warlock -- Grimoire of Soul Harvesting
    .use 216748 << Warlock -- Grimoire of Portal of Summoning
    .use 403619 << Warlock -- Grimoire of Fel Armor
    .use 216764 << Druid -- Leaflet of Deeper Wilds
    .use 216767 << Druid -- Leaflet of Revive
    .use 216768 << Paladin -- Testament of Enhanced Blessings
    .use 226400 << Paladin -- Testament of the Exorcist
    .use 226398 << Paladin -- Testament of Martyrdom
    .use 216769 << Shaman -- Revelation of Totemic Projection
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .use 216770 << Hunter -- Treatise on Aspect of the Viper
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 216771 << Druid -- Leaflet of Enhanced Restoration
    .target Milton Sheaf << Alliance
    .target Zor Lonetree << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Bottes
#name Runes du Filet à insectes
#displayname Frappe de wyverne - 35 (Azeroth) << Hunter
#displayname Instincts de survie - 35 (Azeroth) << Druid
#title Frappe de wyverne << Hunter
#title Instincts de survie << Druid

step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au Marais des Chagrins
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Amaryllis Webb|r
    >>|cRXP_BUY_Achetez un|r |T133653:0|t[Kit d'entomologiste novice]
    .collect 213565,1 --Entomology Starter Kit (1x)
    .target Amaryllis Webb
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Ouvrez le |T133653:0|t[Kit d’entomologiste novice]
    .use 213565
    .collect 213562,1 --Bug Catching Net (1x)
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Stranglethorn Vale >>Voyagez à la Vallée de Strangleronce
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    >>|cRXP_WARN_Utilisez le|r |T134325:0|t[Filet à insectes] |cRXP_WARN_sur une|r |cRXP_ENEMY_Tarentule arborescente|r
    >>|cRXP_WARN_Vous les trouverez sur les souches d'arbre|r
    .use 213562
    .collect 213566,1 --Arbor Tarantula Specimen (1x)
    .mob Arbor Tarantula
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Arathi Highlands >>Voyagez aux Hautes-terres d'Arathi
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Arathi Highlands,54.0,38.6,0
    .goto Arathi Highlands,57.0,39.8,0
    .goto Arathi Highlands,59.6,57.0,0
    .goto Arathi Highlands,61.2,55.6,0
    .goto Arathi Highlands,54.0,38.6,20,0
    .goto Arathi Highlands,57.0,39.8,20,0
    .goto Arathi Highlands,59.6,57.0,20,0
    .goto Arathi Highlands,61.2,55.6,20,0
    .goto Arathi Highlands,62.6,56.0,20,0
    >>|cRXP_WARN_Utilisez le|r |T134325:0|t[Filet à insectes] |cRXP_WARN_sur un|r |cRXP_ENEMY_Charançon des foins|r
    >>|cRXP_WARN_Vous les trouverez dans n'importe quelle ferme, notamment à l'intérieur des granges|r
    .use 213562
    .collect 213568,1 --Hay Weevil Specimen (1x)
    .mob Hay Weevil
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Desolace >>Voyagez à Désolace
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Desolace,53.0,59.0,0
    .goto Desolace,50.0,55.8,30,0
    .goto Desolace,53.0,59.0,30,0
    .goto Desolace,54.0,62.6,30,0
    >>|cRXP_WARN_Utilisez le|r |T134325:0|t[Filet à insectes] |cRXP_WARN_sur un|r |cRXP_ENEMY_Pique-chair|r
    >>|cRXP_WARN_Vous les trouverez au Cimetière des Kodos|r
    .use 213562
    .collect 213567,1 --Flesh Picker Specimen (1x)
    .mob Flesh Picker
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Voyagez au Marais des Chagrins
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>Parlez à |cRXP_FRIENDLY_Amaryllis Webb|r afin de recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune de Revigoration|r] << Hunter
    >>Parlez à |cRXP_FRIENDLY_Amaryllis Webb|r afin de recevoir la |T134419:0|t[|cRXP_FRIENDLY_Rune d'instinct|r] << Druid
    .collect 213125,1 << Hunter --Rune of Invigoration (1x)
    .collect 213119,1 << Druid --Rune of Instinct (1x)
    .skipgossip 217412,1
    .target Amaryllis Webb
step
    .train 416089 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Revigoration|r] |cRXP_WARN_pour apprendre|r |T135125:0|t[Frappe de wyverne] << Hunter
    .train 410027 >> |cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d'instinct|r] |cRXP_WARN_pour apprendre|r |T132266:0|t[Instincts de survie] << Druid
    .use 213125 << Hunter
    .use 213119 << Druid
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guide des runes et des livres
#subgroup Divers
#subweight -1
#name Sac de couchage douillet - 14
#title Sac de couchage douillet

step
    #optional
    +|cRXP_WARN_Vous devez être au minimum de niveau 14 avant de pouvoir commencer la quête pour le|r |T133662:0|t[|cRXP_LOOT_Sac de couchage douillet|r]
    .xp >14,1
step << Alliance
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step << Alliance
    .goto Westfall,37.413,50.701
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .accept 79008 >> Acceptez la quête … et cette note que vous avez trouvée
step << Alliance
    #completewith next
    .zone The Barrens >> Voyagez jusqu'aux Tarides
step << Alliance
    .goto The Barrens,46.361,73.904
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .turnin 79008 >> Rendez la quête … et cette note que vous avez trouvée
    .accept 79192 >> Acceptez la quête Tort-tue
step << Horde
    #completewith next
    .zone The Barrens >> Voyagez jusqu'aux Tarides
step << Horde
    .goto The Barrens,46.361,73.904
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .accept 79007 >> Acceptez la quête … et cette note que vous avez trouvée
step << Horde
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step << Horde
    .goto Westfall,37.413,50.701
    >>Cliquez sur les |cRXP_PICK_Restes brûlés|r au sol
    .turnin 79007 >> Rendez la quête … et cette note que vous avez trouvée
    .accept 79192 >> Acceptez la quête Tort-tue
step
    #completewith next
    .zone Stonetalon Mountains >> Voyagez jusqu'au Serres-Rocheuses
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >> Montez le long du chemin de terre au nord de la retraite de Roche-Soleil
step
    .goto Stonetalon Mountains,40.748,52.576
    >>Cliquez sur la |cRXP_PICK_Litière de poche|r sur la boîte
    .turnin 79192 >> Rendez la quête Tort-tue
    .accept 79980 >> Acceptez la quête Décaniller
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >> Suivez le chemin passant dans les montagnes
step
    .goto Stonetalon Mountains,39.614,49.783
    >>Cliquez sur le |cRXP_PICK_Monticule de poussière|r sur le sol
    .turnin 79980 >> Rendre la quête Décaniller
    .accept 79974 >> Acceptez la quête Travail humide
step
    #completewith next
    .zone Loch Modan >> Voyagez jusqu'au Loch Modan
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.4,12.9,8 >> |cRXP_WARN_Montez sur le mur du barrage du Loch Modan et descendez prudemment sur le rebord au centre du barrage. Suivez la flèche|r
step
    .goto Loch Modan,49.421,12.917
    >>Cliquez sur la |cRXP_PICK_Figurine sculptée|r sur la corniche
    .turnin 79974 >> Rendez la quête Travail humide
    .accept 79975 >> Acceptez la quête Le poing de l’aigle
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >> Voyagez Mur de Thoradin à la frontière des zones Hautes-terres Arathies et Contreforts d'Hillsbrad
step
    #completewith next
    .goto Arathi Highlands,24.132,21.470,7 >> Montez sur le chariot et remontez le long du mur
step
    .goto Arathi Highlands,22.466,24.127
    >>Cliquez sur le |cRXP_PICK_Sac de messager|r sur le mur
    .turnin 79975 >> Rendez la quête Le poing de l’aigle
    .accept 79976 >> Acceptez la quête Ça doit être ici
step
    .goto Arathi Highlands,22.466,24.127
    >>Cliquez sur la |cRXP_PICK_Besace roulée à la hâte|r au sol
    .turnin 79976 >> Rendez la quête Ça doit être ici
step
    +|cRXP_WARN_Nous vous recommandons fortement de garder votre|r |T134057:0|t[|cRXP_LOOT_Mélange étudiant|r] |cRXP_WARN_pour l'utiliser aux niveaux plus haut. Chaque utilisation de|r |T134057:0|t[|cRXP_LOOT_Mélange étudiant|r] |cRXP_WARN_ajoute 20% d'expérience reposée à votre personnage, par conséquent il est plus efficace de l'utiliser aux niveaux supérieurs|r
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque <<Druid/Shaman/Warrior
#subgroup Brassards <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#name Runes des Gardiens d'émeraude
#displayname Armure de la fournaise <<Mage
#displayname Encorner <<Druid
#displayname T.N.T. <<Hunter
#displayname Marteau de courroux amélioré <<Paladin
#displayname Zone de vide <<Priest
#displayname Tailler dans le vif <<Rogue
#displayname Brûler <<Shaman
#displayname Affliction instable <<Warlock
#displayname Maîtrise du bouclier <<Warrior

step
    +|cRXP_WARN_Allez à l'une des zones listées ci-dessous. Aux emplacements indiqués dans chacune d'entre elles, vous trouverez un PNJ d'une nouvelle faction,|r les |cRXP_FRIENDLY_Gardiens d'émeraude|r.
    >>Bois de la Pénombre
    >>Ashenvale
    >>Féralas
    >>Les Hinterlands
    .zoneskip Duskwood
    .zoneskip Ashenvale
    .zoneskip Feralas
    .zoneskip The Hinterlands
step
    >>Cherchez un intendant des |cRXP_FRIENDLY_Gardiens émeraudes|r à l'endroit marqué et achetez-lui votre rune
    .goto Duskwood,45.6,51.2,-1
    .goto Ashenvale,89.6,40.6,-1
    .goto Feralas,48.6,12.6,-1
    .goto The Hinterlands,61.4,34.6,-1
    .target Quartermaster Falinar
    .target Quartermaster Kyleen
    .target Quartermaster Valdane
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
step
    .train 431705 >>|cRXP_WARN_Utilisez l'|r |T135791:0|t[|cRXP_FRIENDLY_Épiphanie nihiliste|r] |cRXP_WARN_pour apprendre|r |T132886:0|t[Zone de vide] << Priest
    .train 429308 >>|cRXP_WARN_Utilisez les|r |T134939:0|t[|cRXP_FRIENDLY_Notes de sort : Armure de la fournaise|r] |cRXP_WARN_pour apprendre|r |T132221:0|t[Armure de la fournaise] << Mage
    .train 431747 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’affliction|r] |cRXP_WARN_pour apprendre|r |T136228:0|t[Affliction instable] << Warlock
    .train 416066 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de brûlure|r] |cRXP_WARN_pour apprendre|r |T135822:0|t[Brûlure] << Shaman
    .train 410098 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du protecteur|r] |cRXP_WARN_pour apprendre|r |T132359:0|t[Maîtrise du bouclier] << Warrior
    .train 432297 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune d’empressement|r] |cRXP_WARN_pour apprendre|r |T236269:0|t[Tailler dans le vif] << Rogue
    .train 431611 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de détonation|r] |cRXP_WARN_pour apprendre|r |T133713:0|t[T.N.T.] << Hunter
    .train 431447 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de l'effusion de sang|r] |cRXP_WARN_pour apprendre|r |T304501:0|t[Étripage] << Druid
    .train 429261 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune du marteau|r] |cRXP_WARN_pour apprendre|r |T236262:0|t[Marteau de courroux amélioré] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221511 << Warrior --Rune of the Protector
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer

]])


RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#subgroup Brassards <<Druid/Shaman/Warrior
#name Runes de l'Offrande sauvage
#displayname Protection avancée - 40 (Azeroth) <<Mage
#displayname Prêt à tirer - 40 (Azeroth) <<Hunter
#displayname Sanctuaire amélioré - 40 (Azeroth) <<Paladin
#displayname Égide divine - 40 (Azeroth) <<Priest
#displayname Toute-puissance de combat - 40 (Azeroth) <<Rogue
#displayname Remous - 40 (Azeroth) <<Shaman
#displayname Vengeance - 40 (Azeroth) <<Warlock
#displayname Épée et bouclier - 40 (Azeroth) <<Warrior
#displayname Régénération frénétique améliorée - 40 (Azeroth) <<Druid

step
    #completewith next
    .zone Felwood >>Voyagez à Gangrebois
step
    .goto Felwood,51.6,82.0
    >>Parlez à l' |cRXP_FRIENDLY_Emissaire crocs-d'ombre|r près du Sanctuaire d'Émeraude
    .accept 82043 >>Acceptez la quête Les dieux sauvages
    .target Shadowtooth Emissary
step
    #optional
    #completewith next
    .goto The Hinterlands,66.27,65.13,0
    >>|cRXP_WARN_Pour finir cette quête, vous aurez besoin d'un joueur avec le|r |T134799:0|t|cRXP_LOOT_Breuvage de murmure sauvage|r |cRXP_WARN_dans ses sacs. Il tombe sur les trolls d'élite à Jintha'alor dans les Hinterlands. Récupérez-le uniquement si personne dans votre groupe pour les Souilles de Tranchebauge ne l'a|r
    .collect 221261,1 --Wildwhisper Draught
step
    .goto The Barrens,45.5,92.4
    >>Cherchez un groupe pour les Souilles de Tranchebauge. Vous devrez libérer la route en colimaçon vers le boss final |cRXP_ENEMY_Amnennar le Porte-froid|r et le tuer. Ensuite, une personne du groupe doit utiliser le |T134799:0|t|cRXP_LOOT_Breuvage de murmure sauvage|r afin d'invoquer l' |cRXP_FRIENDLY_Esprit d'Agamaggan|r. Parlez-lui pour rendre la quête et recevoir la suite
    .turnin 82043 >>Rendez la quête Les dieux sauvages
    .accept 82044 >>Acceptez la quête Les dieux sauvages
    .target Spirit of Agamaggan
    .mob Amnennar the Coldbringer
    .use 221261
step
    >>Vous recevez maintenant un |T237378:0|t|cRXP_LOOT_Rugissement d'agamaggan|r. Vous pouvez utiliser cet objet dans certaines zones spécifiques des |cRXP_PICK_profondeurs de Blackrock|r, |cRXP_PICK_Zul'farrak|r et |cRXP_PICK_Maraudon|r afin d'invoquer un nouveau boss |cRXP_ENEMY_Ancienne délirante|r qui fera toujours tomber une |T132119:0|t|cRXP_LOOT_Offrande sauvage|r à sa mort. Récupérez-en 3 pour compléter la quête. Les |T132119:0|t|cRXP_LOOT_Offrandes sauvages|r servent aussi de monnaie servant à acheter des objets très puissants auprès de l' |cRXP_FRIENDLY_Émissaire crocs-d'ombre|r, si vous le souhaitez vous pouvez en récupérer plus que les 3 nécessaires à votre rune
    >>|cRXP_WARN_Dans|r |cRXP_FRIENDLY_Zul'Farrak|r |cRXP_WARN_tuez 3 boss quelconques et vous pourrez faire apparaître une|r |cRXP_ENEMY_Ancienne délirante|r |cRXP_WARN_près du bassin de Ghaz'rilla|r
    >>|cRXP_WARN_Dans|r |cRXP_FRIENDLY_Maraudon|r |cRXP_WARN_tuez la|r |cRXP_ENEMY_Princesse Theradras|r |cRXP_WARN_et vous pourrez faire apparaître une|r |cRXP_ENEMY_Ancienne délirante|r |cRXP_WARN_dans son arène|r
    >>|cRXP_WARN_Dans les|r |cRXP_FRIENDLY_profondeurs de Black|r |cRXP_WARN_tuez le|r |cRXP_ENEMY_Grand Interrogateur Gerstahn|r, le |cRXP_ENEMY_Maître-chien Grebmar|r |cRXP_WARN_et terminez l'événement de|r |cRXP_ENEMY_l'Arène|r |cRXP_WARN_. Ensuite, vous pourrez faire apparaître une|r |cRXP_ENEMY_Ancienne délirante|r |cRXP_WARN_sur la grand-route des Sombrefer (la route vers Bael'gar)|r
    >>|cRXP_WARN_ASTUCE:|r Les offrandes peuvent être récupérées en raid et vous pouvez refaire le même donjon à plusieurs reprises. Actuellement, la façon la plus rapide de les obtenir est de |cRXP_WARN_rejoindre un raid de 10 joueurs|r et d' |cRXP_WARN_enchaîner des runs Maraudon Princesse ou Zul'farrak|r
    .complete 82044,1 --Wild Offering 3/3
    .use 221418
    .mob Delirious Ancient
step
    #optional
    #completewith next
    .zone Felwood >>Retournez à Gangrebois
step
    .goto Felwood,51.6,82.0
    >>Parlez à l' |cRXP_FRIENDLY_Emissaire crocs-d'ombre|r près du Sanctuaire d'Émeraude
    .turnin 82044 >>Rendez la quête Les dieux sauvages
    .target Shadowtooth Emissary
step
    .train 431650 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Sagesse d'Hyjal|r] que vous avez reçu |cRXP_WARN_pour apprendre|r |T237539:0|t[Égide divine] << Priest
    .train 431461 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Sagesse d'Hyjal|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T132091:0|t[Régénération frénétique améliorée] << Druid
    .train 401754 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Sagesse d'Hyjal|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T135733:0|t[Protection avancée] << Mage
    .train 416085 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Sagesse d'Hyjal|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T236185:0|t[Prêt à tirer] << Hunter
    .train 429247 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Sagesse d'Hyjal|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T135925:0|t[Sanctuaire amélioré] << Paladin
    .train 432293 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Sagesse d'Hyjal|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T135673:0|t[Toute-puissance de combat] << Rogue
    .train 410105 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Sagesse d'Hyjal|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T252995:0|t[Remous] << Shaman
    .train 426470 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Remous|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T236299:0|t[Vengeance] << Warlock
    .train 427082 >>|cRXP_WARN_Utilisez l'objet|r |T236160:0|t[|cRXP_FRIENDLY_Remous|r] que vous venez d'obtenir |cRXP_WARN_pour apprendre|r |T236315:0|t[Épée et bouclier] << Warrior
    .use 222962 --Hyjal's Wisdom
]])

RXPGuides.RegisterGuide([[
<<Warlock/Priest/Mage/Paladin
<< SoD
#classic
#group RestedXP Guide des runes et des livres
#subgroup Casque <<Warlock
#subgroup Brassards <<Paladin/Priest/Mage
#name Runes de Cristal tellurique
#displayname Déplacement - 45 (Azeroth) <<Mage
#displayname Puissance purifiante - 45 (Azeroth) <<Paladin
#displayname Désespoir - 45 (Azeroth) <<Priest
#displayname Explosion de fumées - 45 (Azeroth) <<Warlock

step
    #optional
    #completewith next
    >>|cRXP_WARN_Afin de trouver cette rune, vous devrez obtenir 4|r |T134938:0|t|cRXP_LOOT_Parchemins de géomancie|r |cRXP_WARN_et en canaliser un sur quatre Cristaux telluriques dans différentes zones du monde afin de faire apparaître les|r |cRXP_ENEMY_Marcheurs telluriques enragés|r. |cRXP_WARN_Vous pouvez aussi vous mettre en groupe avec d'autres mages qui ont le parchemin ou des démonistes avec les|r |T132842:0|t|cRXP_FRIENDLY_Fragments du noyau du monde|r << Mage
    >>|cRXP_WARN_Afin de trouver cette rune, vous devrez obtenir 4|r |T132842:0|t|cRXP_FRIENDLY_Fragments du noyau du monde|r |cRXP_WARN_lors de vos expéditions avec votre|r |T236294:0|t[|cRXP_FRIENDLY_Diablotin explorateur|r] |cRXP_WARN_et en canaliser un sur quatre Cristaux telluriques dans différentes zones du monde afin de faire apparaître les|r |cRXP_ENEMY_Marcheurs telluriques enragés|r. |cRXP_WARN_Vous pouvez aussi vous mettre en groupe avec d'autres démonistes qui ont les fragments ou des mages avec les|r |T134938:0|t|cRXP_LOOT_Parchemins de géomancie|r << Warlock
    +|cRXP_WARN_Afin de trouver cette rune, vous devrez vous mettre en groupe avec un démoniste ayant des|r |T132842:0|t|cRXP_FRIENDLY_Fragments du noyau du monde|r |cRXP_WARN_ou un mage ayant des|r |T134938:0|t|cRXP_LOOT_Parchemins de géomancie|r |cRXP_WARN_pour invoquer les mobs nécessaires. Vous ne pouvez pas les invoquer vous-même|r << Priest/Paladin
    .collect 223171,4 << Mage
    .collect 223168,4 << Warlock

step
    >>Allez à chacun des Cristaux telluriques indiqués sur votre carte et utilisez votre |T134938:0|t|cRXP_LOOT_Parchemin de géomancie|r dessus, ou demandez à un membre de votre groupe de le faire, afin d'invoquer un |cRXP_ENEMY_Marcheur tellurique enragé|r. Tuez-le et dépouillez-le pour ses |cRXP_LOOT_Cristaux telluriques|r. Vous pouvez le faire dans n'importe quel ordre << Mage
    >>Allez à chacun des Cristaux telluriques indiqués sur votre carte et utilisez vos |T132842:0|t|cRXP_FRIENDLY_Fragments du noyau du monde|r dessus, ou demandez à un membre de votre groupe de le faire, afin d'invoquer un |cRXP_ENEMY_Marcheur tellurique enragé|r. Tuez-le et dépouillez-le pour ses |cRXP_LOOT_Cristaux telluriques|r. Vous pouvez le faire dans n'importe quel ordre << Warlock
    >>Allez à chacun des cristaux telluriques indiqués sur votre carte et demandez au démoniste ou au mage de votre groupe d'invoquer un |cRXP_ENEMY_Marcheur tellurique enragé|r. Tuez-le et dépouillez-le pour obtenir son |cRXP_LOOT_Cristal tellurique|r. Vous pouvez le faire dans n'importe quel ordre << Priest/Paladin
    .goto Azshara,22.0,79.0,-1
    .goto Feralas,57.0,60.0,-1
    .goto The Hinterlands,48.0,59.0,-1
    .goto Searing Gorge,55,65,-1
    .collect 221318,1 >>Récupérez les |T237193:0|t|cRXP_LOOT_Cristaux telluriques d'Azshara|r à |cRXP_PICK_Azshara|r près de la crête Lugubre
    .collect 221317,1 >>Récupérez les |T237189:0|t|cRXP_LOOT_Cristaux telluriques de Feralas|r à |cRXP_PICK_Féralas|r dans les plateaux Sauvages
    .collect 221319,1 >>Récupérez les |T237192:0|t|cRXP_LOOT_Cristaux telluriques de Blackrock|r dans la partie sud de la |cRXP_PICK_Gorge des Vents brûlants|r
    .collect 221320,1 >>Récupérez les |T237191:0|t|cRXP_LOOT_Cristaux telluriques des Hinterlands|r aux |cRXP_PICK_Hinterlands|r au nord de l'Autel de Zul
    .mob Enraged Leywalker
    .train 429309,1 << Mage
    .train 431745,1 << Warlock
    .train 429255,1 << Paladin
    .train 431673,1 << Priest
step
    .train 429309 >> |cRXP_WARN_Utilisez l'un des quatre cristaux que vous avez obtenus pour les combiner et apprendre|r |T132171:0|t[Déplacement] << Mage
    .train 431745 >> |cRXP_WARN_Utilisez l'un des quatre cristaux que vous avez obtenus pour les combiner et apprendre|r |T236290:0|t[Explosion de fumées] << Warlock
    .train 429255 >> |cRXP_WARN_Utilisez l'un des quatre cristaux que vous avez obtenus pour les combiner et apprendre|r |T135950:0|t[Puissance purifiante] << Paladin
    .train 431673 >> |cRXP_WARN_Utilisez l'un des quatre cristaux que vous avez obtenus pour les combiner et apprendre|r |T237555:0|t[Désespoir] << Priest
    .use 221318 --Azshara Leycryst
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD/Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Casque
#title Dextérité mentale << Shaman
#title Douleur et souffrance << Priest
#name Dextérité mentale - 43 (Tanaris) << Shaman
#name Douleur et souffrance - 43 (Tanaris) << Priest

-- Mental Dexterity/Pain and Suffering
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Voyagez jusqu'à Tanaris
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Mages de l'ombre Bat-le-désert|r. Dépouillez-les pour les |T134939:0|t[|cRXP_LOOT_Notes de démoniste codées|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,59.8,24.0,35,0
    .goto Tanaris,65.6,32.2,35,0
    .goto Tanaris,62.4,33.2,30,0
    >>Tuez les |cRXP_ENEMY_Larrons Bat-le-désert|r. Dépouillez-les pour la |T134329:0|t[|cRXP_LOOT_Formule Bat-le-désert|r]
    .collect 221549,1
    .mob Wastewander Thief
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,58.4,38.6,40,0
    .goto Tanaris,60.3,23.4,40,0
    .goto Tanaris,66.2,35.0,40,0
    >>Tuez les |cRXP_ENEMY_Mages de l'ombre Bat-le-désert|r. Dépouillez-les pour les |T134939:0|t[|cRXP_LOOT_Notes de démoniste codées|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Utilisez la|r |T134329:0|t[Formule Bat-le-désert] |cRXP_WARN_pour recevoir les|r |T237018:0|t[Notes de démoniste décodées]
    .goto Tanaris,58.0,36.0
    .use 221549
    .collect 221545,1
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Placez-vous sur le|r "Parchemin cryptique d'invocation". |cRXP_WARN_Utilisez les|r |T237018:0|t[Notes de démoniste décodées] |cRXP_WARN_en vous tenant sur le parchemin|r.
    >>Tuez le |cRXP_ENEMY_Marcheur du Vide enragé|r. Dépouillez-le pour la |T134419:0|t[|cRXP_FRIENDLY_Rune de dextérité mentale|r] << Shaman
    >>Tuez le |cRXP_ENEMY_Marcheur du Vide enragé|r. Dépouillez-le pour la |T135975:0|t[|cRXP_FRIENDLY_Prophétie de l'hiver verdoyant|r] << Priest
    .collect 220610,1 << Shaman
    .collect 221979,1 << Priest
step
    .itemcount 220610,1 << Shaman
    .itemcount 221979,1 << Priest
    .use 220610 << Shaman
    .use 221979 << Priest
    .train 416055 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Dextérité mentale|r] |cRXP_WARN_pour apprendre|r |T136055:0|t[Dextérité mentale] << Shaman
    .train 415991 >>|cRXP_WARN_Utilisez la|r |T135975:0|t[|cRXP_FRIENDLY_Prophétie de l'hiver verdoyant|r] |cRXP_WARN_pour apprendre|r |T237567:0|t[Douleur et souffrance] << Priest
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD/Rogue SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Armes à distance
#name Spécialisation Armes à distance - 58 (Maleterres de l'Est)

step
    #completewith rangeSpec
    .zone Eastern Plaguelands >>Voyagez aux Maleterres de l'Est
step << Horde
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Ramassez le livre rouge à côté de |cRXP_FRIENDLY_Nathanos le Flétrisseur|r. Il se trouve à l'extérieur de la maison, à gauche de la porte. Il contient la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Armes à distance|r]
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step << Alliance
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Ramassez le livre rouge à côté de |cRXP_ENEMY_Nathanos le Flétrisseur|r. Il se trouve à l'extérieur de la maison, à gauche de la porte. Il contient la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Armes à distance|r]
    >>|cRXP_WARN_S'il y a un joueur dans les environs demandez-lui d'engager|r |cRXP_ENEMY_Nathanos le Flétrisseur|r |cRXP_WARN_loin le temps que vous puissiez ramasser la rune en toute sécurité|r
    >>|cRXP_WARN_S'il n'y a aucun joueur dans les environs, vous pouvez mourir en affrontant|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_puis ressuscitez en vous positionnant dans la maison et en vous cachant (LoS). Ensuite, ramassez le livre depuis l'intérieur de la maison, soit en utilisant la touche d'interaction, soit en orientant votre caméra afin de pouvoir cliquer dessus|r << Warrior/Rogue
    >>|cRXP_WARN_S'il n'y aucun joueur dans les environs, envoyez votre familier et utilisez la commande|r |T136106:0|t[Reste] |cRXP_WARN_à une distance correcte de|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_puis utilisez sur lui la commande|r |T132152:0|t[Attaque] |cRXP_WARN_afin qu'il aggro votre familier. Dès qu'il cible votre familier, utilisez la commande|r |T132311:0|t[Passif], |cRXP_WARN_et cela le fera revenir à la position de la commande Reste. Marchez près du livre et utilisez |T132293:0|t[Feindre la mort] pour sortir de combat et ramasser la rune|r << Hunter
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step
    .train 453692 >>|cRXP_WARN_Utilisez la|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Armes à distance|r] |cRXP_WARN_pour apprendre|r |T135490:0|t[Spécialisation Armes à distance]
    .use 226410
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD/Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation (Sacré)
#name Spécialisation (Sacré) - 60 (Maleterres de l'Est)

step
    #completewith next
    >>|cRXP_WARN_Afin de récupérer cette rune, vous devrez affronter des mobs dans une zone élite. Vous pouvez le faire seul, mais si vous avez un niveau plus bas ou un équipement limité, envisagez de trouver un autre joueur pour vous aider|r
    .zone Eastern Plaguelands >> Voyagez aux Maleterres de l'Est
step
    >>|cRXP_WARN_Vous pouvez obtenir cette rune en même temps que|r |T135883:0|t[|cRXP_FRIENDLY_Soins de lien|r] |cRXP_WARN_si vous avez avancé dans cette suite de quêtes en premier. Allez au guide de la rune|r |T135883:0|t[|cRXP_FRIENDLY_Soins de lien|r] |cRXP_WARN_si vous préférez obtenir les deux runes en même temps|r << Priest
    .goto Eastern Plaguelands,77.5,81.7,50 >> Voyagez à la Main de Tyr, |cRXP_WARN_n'oubliez pas qu'il s'agit d'une zone élite|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Dirigez-vous vers l'aile de la bibliothèque du bâtiment marquée sur votre carte et cherchez un livre situé sur une bibliothèque. Ramassez-le afin d'obtenir la rune. N'oubliez pas que vous ne pouvez pas le ramasser en combat|r
    >>|cRXP_WARN_Vous pouvez soit tuer tous les mobs de la pièce, soit mourir à côté du livre et ressusciter à un endroit hors de vue des mobs pour ramasser la rune sans avoir à en tuer|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Sacré|r] pour apprendre |T237537:0|t[Spécialisation Sacré]
    .train 453702,1
    .itemcount 226418,1
    .use 226418
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Druid SoD/Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Arcanes
#name Spécialisation Arcanes - 60 (Maleterres de l'Ouest)

step
    #completewith next
    >>|cRXP_WARN_Afin de récupérer cette rune, vous devrez affronter des mobs dans une zone élite. Vous pouvez le faire seul, mais si vous avez un niveau plus bas ou un équipement limité, envisagez de trouver un autre joueur pour vous aider|r
    .zone Western Plaguelands >> Voyagez aux Maleterres de l'Ouest
step
    .goto Western Plaguelands,48.7,22.4,50 >> Voyagez à Hearthglen, |cRXP_WARN_n'oubliez pas qu'il s'agit d'une zone élite|r
step
    .goto Western Plaguelands,47.3,13.6
    >>|cRXP_WARN_Dirigez-vous vers le haut de la tour marquée sur votre carte. Cherchez un livre rouge posé dans un coin à côté d'une bibliothèque, il est protégé par un|r |cRXP_ENEMY_Prêtre écarlate|r. |cRXP_WARN_Ramassez-le afin d'obtenir la rune|r
    .collect 226413,1 --Rune of Arcane Specialization
    .train 453702,1
step
    #completewith next
    .train 453695 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Arcanes|r] pour apprendre |T132849:0|t[Spécialisation Arcanes]
    .train 453695,1
    .itemcount 226413,1
    .use 226413
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Paladin SoD/Warrior SoD/Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Hache
#name Spécialisation Hache - 58 (Steppes ardentes)

step
    #completewith next
    .zone Burning Steppes >> Voyagez jusqu'aux Steppes ardentes
step
    .goto Burning Steppes,40.3,34.9,100 >> Voyagez au Bastion Blackrock
step
    .goto Burning Steppes,39.9,34.1
    >>|cRXP_WARN_Entrez dans le Bastion et cherchez un livre rouge situé à l'emplacement marqué sur votre carte. Dépouillez-le pour la rune|r
    .collect 226407,1 --Rune of Axe Specialization
step
    #completewith next
    .train 453688 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Hache|r] pour apprendre |T132394:0|t[Spécialisation Hache]
    .itemcount 226407,1
    .use 226407
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Warrior SoD/Shaman SoD/Mage SoD/Priest SoD/Rogue SoD/Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Dague
#name Spécialisation Dague - 60 (Silithus)

step
    #completewith next
    .zone Burning Steppes >> Voyagez à Silithus
step
    .goto Silithus,20,85,50 >> Dirigez-vous au sud de la zone jusqu'à une tente près des portes d'Ahn'Qiraj
step
    .goto Silithus,20,85
    >>|cRXP_WARN_Entrez dans la tente et cherchez un livre rouge situé à l'emplacement marqué sur votre carte. Dépouillez-le pour la rune|r
    .collect 226409,1 --Rune of Dagger Specialization
step
    #completewith next
    .train 453690 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Dague|r] pour apprendre |T135641:0|t[Spécialisation Dague]
    .itemcount 226409,1
    .use 226409
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Warrior SoD/Shaman SoD/Rogue SoD/Warlock SoD/Paladin SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Défense
#name Spécialisation Défense - 60 (Mont Blackrock)

step
    #completewith next
    .zone 25 >> Voyagez au Mont Rochenoire soit par la Gorge des Vents brûlants, soit par les Steppes ardentes
step
    .goto 1415/0,-1232.500,-7612.600,20 >> Voyagez jusqu’au côté est du cercle de la faille en fusion, jusqu’à trouver une porte menant à un chemin vers le bas du Pic Blackrock
step
    .goto 1415/0,-1294.200,-7574.700,5 >> Remontez le chemin et entrez dans la première pièce sur votre droite. |cRXP_WARN_Il se peut que vous deviez tuer des ennemis élite se trouvant sur votre chemin, comme vous ne pouvez pas récupérer le livre en combat|r
step
    .goto 1415/0,-1302.100,-7583.400
    >>|cRXP_WARN_Cherchez un livre rouge posé au sol dans cette pièce. Il peut apparaître à plusieurs positions. Ramassez-le afin d'obtenir la rune|r
    .collect 226694,1 --Rune of Defense Specialization
step
    #completewith next
    .train 459313 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Défense|r] pour apprendre |T134952:0|t[Spécialisation Défense]
    .itemcount 226694,1
    .use 226694
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Combat farouche
#name Spécialisation Combat farouche - 60 (Berceau-de-l'Hiver)

step
    #completewith next
    .zone Winterspring >> Voyagez au Berceau-de-l'Hiver
step
    .goto Winterspring,49.0,8.0,50 >> Dirigez-vous vers le nord au Roc des Sabres-de-Givre
step
    .goto Winterspring,49.0,8.0
    >>|cRXP_WARN_Cherchez un livre rouge à l'emplacement marqué. Il est peut-être protégé par deux|r |cRXP_ENEMY_Sabre-de-givre|r |cRXP_WARN_de niveau 55-56. Ramassez-le pour la rune|r
    .collect 226419,1 --Rune of Feral Combat Specialization
step
    #completewith next
    .train 453703 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Combat farouche|r] pour apprendre |T132116:0|t[Spécialisation Combat farouche]
    .itemcount 226419,1
    .use 226419
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Mage SoD/Shaman SoD/Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation (Feu)
#name Spécialisation (Feu) - 52 (Gorge des Vents brûlants)

step
    #completewith next
    .zone Searing Gorge >> Voyagez à la Gorge des Vents brûlants
step
    .goto 1427/0,-1425.800,-6772.400,25 >> Entrez dans la fosse de la scorie par l'entrée de la grotte marquée sur votre carte
step
    .goto 1427/0,-1306.900,-6642.800,25 >> Traversez le pont menant au nord
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Cherchez un livre rouge sur un banc derrière le|r |cRXP_ENEMY_Surveillant Maltorius|r. |cRXP_WARN_Dépouillez-le pour la rune. Gardez à l'esprit que vous ne pouvez pas le faire en combat|r
    >>|cRXP_WARN_Si vous êtes d'un niveau plus élevé, vous pouvez le ramasser sans pull le|r |cRXP_ENEMY_Surveillant Maltorius|r |cRXP_WARN_en longeant le bord de son balcon. Si vous n'y arrivez pas, essayez de demander à un autre joueur de l'attirer pendant que vous ramassez le livre, ou tuez-le ainsi que ses gardes|r
    >>|cRXP_WARN_En tant que Chasseur, vous pouvez l'éloigner avec votre familier puis lancer|r |T132293:0|t[Feindre la mort] |cRXP_WARN_à côté du livre pour sortir de combat et le ramasser. Assurez-vous d'attirer le Surveillant hors de votre ligne de vue ou il pourrait vous remettre en combat|r << Hunter
    .collect 226414,1 --Rune of Fire Specialization
step
    #completewith next
    .train 453696 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Feu|r] pour apprendre |T132847:0|t[Spécialisation (Feu)]
    .itemcount 226414,1
    .use 226414
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Druid SoD/Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Arme de pugilat
#name Spécialisation Arme de pugilat - 60 (Silithus)

step
    #completewith next
    .zone Silithus >> Voyagez à Silithus
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Cherchez un livre rouge à la position marquée. Il est enveloppé par le crépuscule et pourrait être un peu difficile à voir|r
    .collect 226411,1 --Rune of Fist Weapon Specialization
step
    #completewith next
    .train 453691 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Arme de pugilat|r] pour apprendre |T133832:0|t[Spécialisation Arme de pugilat]
    .itemcount 226411,1
    .use 226411
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Hunter SoD/Shaman SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Givre
#name Spécialisation Givre - 60 (Berceau-de-l'Hiver)

step
    #completewith next
    .zone Winterspring >> Voyagez au Berceau-de-l'Hiver
step
    .goto Winterspring,59.0,59.0,50 >> Dirigez-vous vers le sud jusqu'au camp des Chouettards
step
    .goto Winterspring,59.0,59.0
    >>|cRXP_WARN_Cherchez un livre rouge à l'emplacement indiqué. Il pourrait être gardé par un couple de |rChouettards|cRXP_ENEMY_ de niveaux 57-58|r |cRXP_WARN_Dépouillez-les pour la rune|r
    .collect 226415,1 --Rune of Frost Specialization
step
    #completewith next
    .train 453697 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Givre|r] pour apprendre |T132852:0|t[Spécialisation Givre]
    .itemcount 226415,1
    .use 226415
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Rogue SoD/Shaman SoD/Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Nature
#name Spécialisation Nature - 56 (Gangrebois)

step
    #completewith next
    .zone Felwood >> Voyagez à Gangrebois
step
    .goto Felwood,63.42,7.71,50 >> Dirigez-vous au nord jusqu'au Village de Gangrepatte
step
    .goto Felwood,62.8,7.5
    >>|cRXP_WARN_Cherchez un livre rouge à l'emplacement indiqué. Il se trouve dans un camp près du|r |cRXP_ENEMY_Chef de clan Saignegueule|r |cRXP_WARN_Dépouillez-le pour la rune|r
    .collect 226416,1 --Rune of Nature Specialization
step
    #completewith next
    .train 453698 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Nature|r] pour apprendre |T132848:0|t[Spécialisation (Nature)]
    .itemcount 226416,1
    .use 226416
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Rogue SoD/Shaman SoD/Paladin SoD/Priest SoD/Druid SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Masse
#name Spécialisation Masse - 60 (Paluns)

step
    #completewith next
    .zone Wetlands >> Voyagez aux Paluns
step
    .goto 1437/0,-3451.700,-3450.800,25 >> Dirigez-vous vers l'est jusqu'au début du chemin vers Grim Batol
step
    .goto 1437/0,-3582.500,-4138.200,25 >> Suivez le chemin jusqu'à Grim Batol. |cRXP_WARN_Ne combattez pas les dragons rouges sur la route; vous pouvez y arriver sans en tuer aucun|r
step
     .goto 1437/0,-3451.900,-4052.500
    >>|cRXP_WARN_Montez le chemin jusqu'à la porte de Grim Batol. Cherchez un livre rouge sur le côté droit de l'entrée. Ramassez-le pour la rune|r
    .collect 226408,1 --Rune of Mace Specialization
step
    #completewith next
    .train 453689 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Masse|r] pour apprendre |T133038:0|t[Spécialisation Masse]
    .itemcount 226408,1
    .use 226408
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Warlock SoD/Shaman SoD/Mage SoD/Priest SoD/Druid SoD/Hunter SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Armes d'hast
#name Spécialisation Armes d'hast - 60 (Azshara)

step
    #completewith next
    .zone Azshara >> Voyagez jusqu'à Azshara
step
    .goto Azshara,76.43,43.95,100 >> Allez au Temple d'Arkkoran
step
    .goto Azshara,76.88,44.24
    >>|cRXP_WARN_Cherchez un livre rouge posé sur un puits de lune à l'intérieur du temple. Ramassez-le pour la rune|r
    .collect 226412,1 --Rune of Pole Weapon Specialization
step
    #completewith next
    .train 453694 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Armes d'hast|r] pour apprendre |T135145:0|t[Spécialisation Armes d'hast]
    .itemcount 226412,1
    .use 226412
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD/Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Ombre
#name Spécialisation Ombre - 60 (Terres Foudroyées)

step
    #completewith next
    .zone Blasted Lands >> Voyagez jusqu'aux Terres foudroyées
step
    .goto Blasted Lands,45.19,55.29,100 >> Dirigez-vous vers le sud à la Balafre impure. |cRXP_WARN_Vous devrez traverser une zone élite avec beaucoup de mobs de haut niveau insensibles aux sorts de contrôle. Vous devrez très probablement mourir quelques fois et avancez jusqu'à la position de la rune|r
step
    .goto Blasted Lands,33.0,48.0
    >>|cRXP_WARN_Cherchez un livre rouge posé sur un autel indiqué sur votre carte. Ramassez-le pour la rune|r
    .collect 226417,1 --Rune of Shadow Specialization
step
    #completewith next
    .train 453700 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Ombre|r] pour apprendre |T132851:0|t[Spécialisation Ombre]
    .itemcount 226417,1
    .use 226417
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Paladin SoD/Mage SoD/Warlock SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation Épée
#name Spécialisation Épée - 60 (Défilé de Deuille-vent)

step
    #completewith next
    .zone Deadwind Pass >> Voyagez au Défilé de Deuillevent
step
    .goto Deadwind Pass,47.40,75.50 >> Dirigez-vous vers le sud à Karazhan
step
    .goto 1430/0,-2019.100,-11170.300,10 >> Entrez dans la cave du Maître
step
    .goto Deadwind Pass,43.06,74.58
    >>|cRXP_WARN_Entrez dans la zone de la cave et cherchez un livre rouge situé à l'emplacement marqué sur votre carte. Dépouillez-le pour la rune|r
    .collect 226406,1 --Rune of Sword Specialization
step
    #completewith next
    .train 453635 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation Epée|r] pour apprendre |T132223:0|t[Spécialisation Épée]
    .itemcount 226406,1
    .use 226406
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Warlock SoD/Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation en méditation
#name Spécialisation en méditation - 30 (Mille pointes)

step
    #completewith next
    .zone Thousand Needles >> Voyagez aux Salines dans les Mille pointes
    >>Le chemin de vol le plus proche de l'emplacement de la rune est celui de Gadgetzan
step
    .goto Thousand Needles,80,77,10 >> Entrez dans la hutte marquée sur votre carte
step
    .goto Thousand Needles,80,77
    >>|cRXP_WARN_Entrez dans la hutte et cherchez un |cRXP_WARN_livre gris|r posé sur une étagère à l'intérieur. Ramassez-le afin d'obtenir la rune|r
    .collect 231828,1 --Rune of Meditation Specialization
step
    .train 468763 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation en méditation|r] pour apprendre |T135913:0|t[Spécialisation en méditation]
    .itemcount 231828,1
    .use 231828
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Priest SoD
#group RestedXP Guide des runes et des livres
#subgroup Anneau
#title Spécialisation en soins
#name Spécialisation en soins - 40 (Hautes-terres Arathies)

step
    #completewith next
    .zone Arathi Highlands >> Voyagez aux Hautes-terres d'Arathi
step
    .goto Arathi Highlands,21.98,79.75,40 >> Dirigez-vous vers la Crique de Faldir, suivez le chemin entre les montagnes et le mur sud-est de Stromgarde
step
    .goto Arathi Highlands,35.2,79.1
    >>|cRXP_WARN_Dirigez-vous vers le feu de camp près du |cRXP_FRIENDLY_Professeur Phizzlethorpe|r, cherchez un |cRXP_WARN_livre gris|r posé sur une caisse à côté du feu de camp. Dépouillez-le afin d'obtenir la rune|r
    .collect 231829,1 --Rune of Healing Specialization
    .target Professor Phizzlethorpe
step
    .train 468761 >> Utilisez la |T134419:0|t[|cRXP_FRIENDLY_Rune de Spécialisation en soins|r] pour apprendre |T135913:0|t[Spécialisation en soins]
    .itemcount 231829,1
    .use 231829
]])
