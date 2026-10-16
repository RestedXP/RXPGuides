if GetLocale() ~= "frFR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#xprate >1.49 << Human Warlock
#name 12-14 Sombrivage
#displayname 10-14 Sombrivage << Dwarf Hunter
#displayname 11-14 Sombrivage << !Human !Mage
#displayname 12-14 Sombrivage << Gnome Mage
#subgroup RestedXP Alliance 1-20
#defaultfor Human/NightElf/Dwarf/Gnome !Warlock
#next 14-20 Île de Brume-sang

step << !NightElf
    #optional
    .abandon 6392 >> Abandonnez Retourner vers Brock. Vous ne rendrez pas cette quête
step << !NightElf
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r dans l'étage inférieure de la caserne
    >>|cRXP_BUY_Achetez un|r [Bois simple] |cRXP_BUY_et un|r [Silex et amadou] |cRXP_BUY_ à Neal|r << Hunter
    .vendor 1448 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
	.target Neal Allen
    .money <0.08 << !Hunter
    .zoneskip Darkshore
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r à l'intérieur
    .vendor 1453 >> |cRXP_BUY_Achetez-lui des|r [Potions de soins] |cRXP_BUY_si il en a en stock|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Voyagez vers les quais pour le bateau se rendant à Auberdine
    .zoneskip Darkshore
step << !NightElf
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    >>Sur le bateau si il vient d'arriver, ou sur le quai si le bateau vient de partir:
    .cast 818 >>Fabriquez un [Feu de camp basique] (dans l'onglet Général de votre Grimoire)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les objets suivants:
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Viande de loup maigre]|r en [Viande de loup grillée]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +Vous avez besoin de 50 en [Cuisine] pour une quête au Bois de la Pénombre plus tard
    >>|T133971:0|t[Cuisiner] les |cRXP_LOOT_[Morceau de viande de sanglier]|r en [Viande de sanglier rôtie]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    .goto 1437,4.370,56.762
    >>Montez en niveau vos [Premiers soins] en attendant le bateau pour Sombrivage
    .zone Darkshore >> Prenez le bateau pour Sombrivage
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept Les Family et les the Fishing Pole
    .turnin 1141 >> Turn in Les Family et les the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional << !NightElf
    #completewith BuzzBox1 << !NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laird|r
    >>Achetez-lui jusqu'à 20 [Lutjan à longue mâchoire cru]
    .turnin 6342 >> Rendez Flight to Auberdine << NightElf
    .collect 4592,15 --Longjaw Mud Snapper
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >> Montez les escaliers pour y trouver |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wizbang Cranktoggle|r à l'étage
    .accept 983 >> Acceptez Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Acceptez Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acceptez How Big a Threat?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
    .xp <11,1
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Prenez le chemin de vol de Nid-de-l'Aigle
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>Tuez des |cRXP_ENEMY_Jeunes trotteur des forêts|r et des |cRXP_ENEMY_Trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>Faites attention les |cRXP_ENEMY_Jeune trotteur des forêts|r s'enfuient à <30% de vie
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    #optional
    #completewith DarkshoreEnd
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Envoyez votre familier attaquer un |cRXP_ENEMY_Ours des chardons|r. Dès que votre familier est étourdi par l' |cRXP_ENEMY_Ours des chardons|r, abandonnez votre familier et commencez à le dompter|r
    .train 2981 >> Attaquez des mobs avec celui-ci pour qu'il apprenne [Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> Cliquez ici pour plus d'information sur le dressage des familiers
    .target Thistle Bear
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Tuez des |cRXP_ENEMY_Clampant des marées pygmée|r et des |cRXP_ENEMY_Jeune clampant des récifs|r. Dépouillez-les pour leur |cRXP_LOOT_Patte de clampant|r
    >>Il se peut que vous deviez aller dans l'eau pour les trouver
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Ouvrez  |cRXP_PICK_La créature marine échouée|r. Dépouillez-la pour l' |cRXP_LOOT_Os de créature marine|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Utiliser|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It can be used from any range as long as you have one targeted|r
    >>==N'UTILISEZ PAS L'OBJET DE QUÊTE SI IL N'Y A PAS D'OURS À PROXIMITÉ==
    >>Vous pouvez gaspiller le piège, ce qui rendra la quête impossible à compléter! Si cela se produit, vous devez retourner au donneur de quête et lui demander un autre piège
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Courrez vers le bord du Camp Furbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
#optional
    .xp 10+6760 >> Farmez jusqu'à 6760+/7600xp
step
    #label Auber1
    #completewith next
    .subzone 442 >> Voyagez vers Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Cliquez sur le |cRXP_PICK_Bigobox 827|r sur le sol
    .turnin 983 >> Rendez Buzzbox 827
step
#optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acceptez Washed Ashore
    .target Gwennyth Bly'Leggonde
step
#optional
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Ouvrez  |cRXP_PICK_La créature marine échouée|r. Dépouillez-la pour l' |cRXP_LOOT_Os de créature marine|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Rendez Washed Ashore
    .accept 4681 >> Accepte Washed Ashore
    .target Gwennyth Bly'Leggonde
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Acceptez For Love Eternal
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439,32.432,43.744,15 >> Allez au bout du quai, puis sautez dans l'eau
step
    .goto 1439,31.841,46.304
    >>Ouvrez le |cRXP_PICK_Squelette de tortue de mer|r. Dépouillez-la pour ses |cRXP_LOOT_Restes de tortue de mer|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Rendez Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !Dwarf/!Hunter
    .xp 12
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >> Accept Les Red Crystal
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Rendez la quête Terres malades
    .accept 2138 >> Acceptez la quête Nettoyage de l'infection
    .target Tharnariun Treetender
step
#xprate >1.49
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Rendez la quête Terres malades
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .target Terenthis
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 985 >> Acceptez Quelle est l'ampleur de la menace ?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
    .target Terenthis
step
#xprate >1.49
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .accept 4761 >> Acceptez la quête Thundris Tissevent
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accepte Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Livin
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
    .accept 954 >> Acceptez la quête Bashal'Aran
    .accept 958 >> Acceptez la quête Les outils des Bien-nés
    .target Thundris Windweaver
step
#xprate >1.49
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Rendez la quête Thundris Tissevent
    .accept 4762 >> Acceptez la quête La Bondissante
    .accept 954 >> Acceptez la quête Bashal'Aran
    .target Thundris Windweaver
step
    #optional
    #completewith HSAuber
    >>Tuez des |cRXP_ENEMY_Jeunes trotteur des forêts|r et des |cRXP_ENEMY_Trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>Faites attention les |cRXP_ENEMY_Jeune trotteur des forêts|r s'enfuient à <30% de vie
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<1,1
    .zoneskip Darkshore,1 << Druid
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
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Remontez jusqu'au |cRXP_PICK_Mystérieux Cristal rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto Darkshore,42.93,50.82,0
    .goto Darkshore,45.51,48.93,0
    .goto Darkshore,42.47,45.36,0
    .goto Darkshore,42.93,50.82,55,0
    .goto Darkshore,45.51,48.93,55,0
    .goto Darkshore,42.47,45.36,55,0
    >>Tuez des |cRXP_ENEMY_Sélénien|r. Dépouillez-les pour leur |cRXP_LOOT_[Petit oeuf]|r
    >>Ils seront utilisés pour monter votre niveau de [Cuisine] à 10 plus tard
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Grell sauvage|r et des |cRXP_ENEMY_Fée vile|r sur la route|r
    .turnin 954 >> Rendez la quête Bashal'Aran
    .accept 955 >> Acceptez la quête Bashal'Aran
    .target Asterion
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Tuez les |cRXP_ENEMY_Grell sauvage|r et les |cRXP_ENEMY_Fée vile|r. Dépouillez-les pour leur |cRXP_LOOT_Boucle d'oreille de Grell|r
    >>|cRXP_WARN_Évitez de tuer des |cRXP_ENEMY_Satyre Deth'ryll|r pour le moment|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Rendez la quête Bashal'Aran
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Tuez les |cRXP_ENEMY_Satyre Deth'ryll|r. Dépouillez-les pour leur |cRXP_LOOT_Ancien sceau de pierre de lune|r
    >>Ils n'ont pas de respawn dynamique, passez à autre chose si vous n'arrivez pas à trouver des |cRXP_ENEMY_Deth'ryll Satyrs|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isOnQuest 956
step
#xprate >1.49
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Rendez la quête Bashal'Aran
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Acceptez la quête Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
#xprate <1.5
    #optional
    .abandon 956 >> Abandonnez Bashal'Aran
step << !Draenei
#xprate <1.5
    .goto 1439,53.4,28.8,0
    .goto 1439,54.8,22.8,0
    .goto 1439,44.6,24.8,0
    .goto 1439,49.8,32.8,0
    #completewith HSAuber
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    >>|cRXP_WARN_Si vous ne trouvez plus de |cRXP_ENEMY_Ours des chardons enragé| à tuer, sautez cette étape, vous pourrez la compléter plus tard|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .zoneskip Darkshore,1 << Druid
step << !Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>Utilisez le [Tube de prélèvement vide] à la source de la Bondissante
    .complete 4762,1 --Cliffspring River Sample (1)
step << Druid
	#completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestComplete 6001
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Volez jusqu'au village de Rut'theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    .isQuestComplete 6001
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >> Rendez la quête Corps et cœur
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step
    #label HSAuber
    .hs >> Utilisez votre Pierre de foyer pour revenir à Auberdine
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #completewith next
    .subzone 442 >> Retournez à Auberdine
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .accept 4811 >> Accept Les Red Crystal
    .target Sentinel Glynda Nal'Shea
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .accept 4812 >> Acceptez la quête Comme l'eau tombe en cascade
    .target Sentinel Glynda Nal'Shea
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Achetez-lui des|r [Epices douces] |cRXP_BUY_jusqu'à ce que vous ayez|r [Epices douces] |cRXP_BUY_autant ou plus que le montant de |r [Petit oeuf] |cRXP_BUY_que vous avez actuellement|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestAvailable 2178
step
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Voyagez vers le |cRXP_PICK_Feu de camp|r sur le sol|r
    +Commencer à [Cuisiner] des [Oeufs aux herbes]. Continuez jusqu'à ce que votre [Cuisine] ait un niveau de compétence de 10
    >>Continuez à monter votre niveau de [Cuisine]  jusqu'à ce que vous n'ayez plus de [Petit oeuf] << !sod
    >>Il y aura une quête au Bois de la Pénombre plus tard nécessitant un niveau de [Cuisine] de 50 ou plus. Vous pourrez aussi bientôt les cuisiner quand vous serez sur le bateau << !sod
    .skill cooking,50,1
    .skill cooking,<1,1 -- shows if cooking is >1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Rendez la quête La Bondissante
    .isQuestComplete 4762
    .target Thundris Windweaver
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    #completewith FinalAuber
    >>Tuez des |cRXP_ENEMY_Jeunes trotteur des forêts|r et des |cRXP_ENEMY_Trotteur des forêts|r. Dépouillez-les pour leur |cRXP_LOOT_Viande de trotteur|r
    >>Faites attention les |cRXP_ENEMY_Jeune trotteur des forêts|r s'enfuient à <30% de vie
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    .goto 1439,47.314,48.676
    >>Remontez jusqu'au |cRXP_PICK_Mystérieux Cristal rouge|r
    >>|cRXP_WARN_Faites attention aux deux groupes de 2 |cRXP_ENEMY_Sélénien enragé|r à l'ouest du |cRXP_PICK_Mystérieux Cristal rouge|r parce que les duos les plus proches l'un avec l'autre sont liés ensemble|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << !Dwarf/!Hunter
    .goto 1439,37.767,44.001
    >>Utilisez le [Tube d'eau vide] au Puits de lune d'Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Cliquez sur le |cRXP_PICK_Mystérieux Cristal Rouge|r
    >>|cRXP_WARN_Prenez garde aux deux groupes de |cRXP_ENEMY_Moonkins déchaînés|r à l'ouest du |cRXP_PICK_Cristal rouge mystérieux|r lorsque vous cliquez dessus, car ils peuvent vous aggro ensemble|r
    .turnin 4812 >> Rendez la quête Comme l'eau tombe en cascade
    .accept 4813 >> Acceptez la quête Les fragments à l'intérieur
step
#xprate <1.5
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tuez |cRXP_ENEMY_Anaya Dawnrunner|r. Dépouillez-la pour son |cRXP_LOOT_Pendentif|r
    >>Soyez conscient qu'elle a un temps de réapparition de 7-8 minutes et qu'elle peut réapparaître à 4 endroits différents dans Ameth'Aran
    >>N'hésitez pas à vous mettre en groupe avec les joueurs à proximité si vous n'arrivez pas à la trouver. Demander dans le canal Général (/1) pour vous grouper avec n'importe qui la cherchant aussi. Passez cette étape si vous n'arrivez pas à la trouver
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .isOnQuest 963
step
#xprate <1.5
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Tuez les|cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r et les |cRXP_ENEMY_Wailing Highbornes|r. Dépouillez-les pour leur |cRXP_LOOT_Relique|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
#xprate <1.5
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .accept 953 >> Acceptez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
#xprate <1.5
    .goto 1439,42.652,63.145
    >>Cliquez sur |cRXP_PICK_La chute d'Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step
#xprate <1.5
    .goto 1439,42.373,61.815
    >>Cliquez sur la |cRXP_PICK_Flamme antique|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
#xprate <1.5
    .goto Darkshore,43.30,58.70
    >>Cliquez sur |cRXP_PICK_Le Lai d'Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
#xprate <1.5
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
#xprate <1.5
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
#xprate <1.5
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Tysha Moonblade|r
    .turnin 953 >> Rendez la quête La Chute d'Ameth'Aran
    .target Sentinel Tysha Moonblade
step
#xprate <1.5
    #sticky
    #label bears1A
    #loop
    .goto Darkshore,39.03,67.32,0
    .goto Darkshore,42.54,67.76,0
    .goto Darkshore,39.99,78.46,0
    .goto Darkshore,39.03,67.32,70,0
    .goto Darkshore,42.54,67.76,70,0
    .goto Darkshore,39.99,78.46,70,0
    >>Tuez des |cRXP_ENEMY_Ours des chardons enragé|r au sud de Sombrivage
    >>Faites attention car ils peuvent vous infliger [Rage] si vous ne les tuer pas assez vite (réduit la vitesse de régénération des points de vie de 50% pour 10 minutes)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#xprate <1.5
    .goto 1439,37.105,62.167
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4722 >> Acceptez la quête La tortue de mer échouée
step << Draenei
#xprate <1.5
    .goto 1439/1,579.500,5240.300
    >>Cliquez |cRXP_PICK_La créature marine échouée|r
    .accept 4728 >>Acceptez la quête La créature marine échouée
step
#xprate <1.5
    #requires bears1A
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Tuez les |cRXP_ENEMY_Guide Noirbois|r et les |cRXP_ENEMY_Messager du vent Noirbois|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
#xprate <1.5
    #completewith DarkshoreEnd
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 442 -- auberdine
    .subzoneskip 446 -- bashal'aran
step << !Draenei
#xprate <1.5
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Rendez la quête Bashal'Aran
    .target Asterion
step
#xprate <1.5
    #label FinalAuber
    #completewith DarkshoreEnd
    .subzone 442 >> Voyagez vers Auberdine
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Rendez la quête Nettoyage de l'infection
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Rendez la quête Quelle est l’ampleur de la menace ?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Acceptez Easy Strider Living
    .turnin 2178 >> Rendez Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Rendez la quête Les outils des Bien-nés
    .target Thundris Windweaver
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4813 >> Rendez la quête Les fragments à l'intérieur
    .target Sentinel Glynda Nal'Shea
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinelle Glynda Nal'Shea|r
    .turnin 4811 >> Rendez la quête Le cristal rouge
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Rendez la quête La tortue de mer échouée

    --TODO: ADD ids for all the other turn ins (survival guide)
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4722
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>Il se peut que vous devez attendre le temps de son RP si un autre joueur vient de rendre la quête
    .turnin 963 >> Rendez la quête Un amour éternel
    .target Cerellean Whiteclaw
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>Montez le niveau de compétence de vos [Premiers soins] pendant que vous attendez le bateau pour l'Île de Brume-Azur
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Draenei
	#label DarkshoreEnd
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Prenez le bateau pour l'Île de Brume-Azur
step << Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Rendez la quête Bashal'Aran
    .target Asterion
step << Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>Utilisez le [Tube de prélèvement vide] à la source de la Bondissante
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei
    .hs >> Voyagez vers l'Île de Brume-Sang
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance
#name 14-20 Île de Brume-sang
#subgroup RestedXP Alliance 1-20
#defaultfor !Draenei
#next 20-21 Sombrivage;21-23 Ashenvale << !Warlock
#next 20-23 Sombrivage/Ashenvale << Warlock

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shalannius|r
    .trainer >> Apprenez vos sorts de classe
    .target Shalannius
step
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Entrez dans l'Exodar via la rampe de derrière
step << Warrior/Paladin/Hunter/Rogue
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Remontez la rampe vers |cRXP_FRIENDLY_Behomat|r à l'étage supérieur << Warrior
    .goto The Exodar,50.50,81.28,20 >> Remontez la rampe vers |cRXP_FRIENDLY_Handiir|r à l'étage supérieur << Paladin/Hunter/Rogue
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Behomat|r
    .trainer >> Apprenez vos sorts de classe
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Acheter la compétence pour porter des épées à deux mains << Paladin/Warrior
    .train 199 >> Acheter la compétence pour porter des masses à deux mains << Paladin/Warrior
    .train 198 >> Acheter la compétence pour porter des masses à une main << Rogue
    .train 201 >> Acheter la compétence pour porter des épées à une main << Rogue
    .train 5011 >> Acheter la compétence pour porter des arbalètes << Hunter
    .target Handiir
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vord|r
	.trainer >> Apprenez vos sorts de classe
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ganaar|r
	.train 4188 >> Apprenez [Endurance supérieure]
    .train 24549 >> Apprenez [Armure naturelle]
    .target Ganaar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Apprenez vos sorts de classe
    .target Sulaa
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Izmir|r
    .trainer >> Apprenez vos sorts de classe
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edirah|r
    .trainer >> Apprenez vos sorts de classe
    .target Edirah
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l'un des |cRXP_FRIENDLY_Commissaire-priseur de l'Exodar|r
    >>|cRXP_BUY_Achetez les objets suivants pour rendre des quêtes à venir plus facilement dans l'Île de Brume-Sang:|r
    >>Si vous ne le voulez pas, ou si vous ne le pouvez pas, passez cette étape
    >>|T134082:0|t[Éclat de cristal irradié]
    .collect 23984,10
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .isQuestAvailable 9641
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Quittez l'Exodar
    .zoneskip The Exodar,1
step << !Draenei
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >> Apprenez le trajet de vol vers L'Exodar
    .target Stephanos
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Voyagez au nord de l'Île de Brume-Sang
    >>|cRXP_WARN_Pendant que vous accomplissez des quêtes à travers Île de Brume-Sang, n'oubliez pas de conserver 10|r |T132889:0|t[Etoffe de lin] |cRXP_WARN_car vous en aurez besoin pour une quête de classe vers le niveau 24|r << Paladin !Draenei
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Accept Les Kessel Run
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Voyagez au nord vers le Guet du Sang
    >>Suivez bien la flèche ! Faites bien attention à ne pas traverser le pont sinon vous descendrez de votre monture !
    >>N’intéragissez avec aucun mob, ne faites aucune attaque et ne lancez aucun sort car cela vous fera aussi descendre de votre monture ! Cela peut aussi arriver si vous êtes hébété d'une attaque par derrière !
    >>Si vous êtes descendu de votre monture, abandonnez la quête "La tournée de Kessel"
step
    #optional
    #completewith next
    .subzone 3584 >> Voyagez vers le Guet du Sang
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 9646 >> Acceptez WANTED: Deathclaw
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Hôte Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Liez votre Pierre de Foyer à Baie-du-Butin
    .subzoneskip 3584,1
    .bindlocation 3584
step
    #optional
    #sticky
    .abandon 9663 >> Abandonnez La tournée de Kessel
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Redresseuse de torts Aalesia|r
    .accept 9567 >> Acceptez Know Thine Enemy
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .accept 9580 >> Accept Les Bear Necessities
    .accept 9643 >> Acceptez Constrictor Vines
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >> Acceptez Maatparm Mushroom Menagerie
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prospecteur Nachlan|r
    .accept 10063 >> Acceptez Explorers' League, Is That Something for Gnomes?
    .target Prospector Nachlan
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_resseur de torts Aesom|r
    .trainer >> Apprenez vos sorts de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
	.turnin 9641 >> Rendez la quête Les éclats de cristal irradié
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
    .target Vindicator Boros
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Admetius|r
    .accept 9693 >> Acceptez What Argus Means to Me
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Mikolaas|r
    .accept 9581 >> Acceptez Learning from the Crystals
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Rendez What Argus Means to Me
    .accept 9694 >> Acceptez Blood Watch
step << Dwarf Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Tuez les |cRXP_ENEMY_Espion Epervier du soleil|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << Dwarf Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Rendez Blood Watch
    .accept 9779 >> Acceptez Intercepting the Message
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Accept Catch et les Release
step
	#completewith RuinousPolyspore
	>>Cueillez un |cRXP_LOOT_Champignon de sang|r sur le sol
    >>Ceux-ci sont tous le long de l'Île de Brume-Sang
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Cueillez un |cRXP_LOOT_Collybie gangrenée|r sur le sol
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Tuez  |cRXP_ENEMY_Tzerak|r. Dépouillez-le pour sa [|cRXP_LOOT_Tzerak's Armor Plate|r]
    .use 23900 >> Utilisez la [|cRXP_LOOT_Plaque d'armure de Tzerak|r] pour commencer la quête
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acceptez Signs of the Legion
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Cliquez sur les |cRXP_PICK_Glyphes du monument de Nazzivus|r sur le mur de l'autel
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Tuez  |cRXP_ENEMY_Tzerak|r. Dépouillez-le pour sa [|cRXP_LOOT_Tzerak's Armor Plate|r]
    .use 23900 >> Utilisez la [|cRXP_LOOT_Plaque d'armure de Tzerak|r] pour commencer la quête
    >>Si vous ne le voyez pas faire sa patrouille dans les camps, attendez qu'il réapparaisse au sigil violet sur le sol au sud. Il peut prendre jusqu'à 3-6 minutes avant de réapparaître
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Acceptez Signs of the Legion
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Tuez les |cRXP_ENEMY_Satyre Nazzivus|r et les |cRXP_ENEMY_Gangrelige Nazzivus|r
    >>|cRXP_WARN_Vous aurez peut-être besoin de tuer des |cRXP_ENEMY_Voleur Nazzivus|r si vous ne voyez pas de |cRXP_ENEMY_Satyre Nazzivus|r ou de |cRXP_ENEMY_Gangrelige Nazzivus|r afin de les faire reapparaître|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Cueillez un |cRXP_LOOT_Collybie gangrenée|r sur le sol
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#completewith next
	.use 23995 >>Utilisez le [Marqueur de murlocs] sur les |cRXP_ENEMY_Eclaireur Vase Noire|r
    >>Ne TUEZ PAS les |cRXP_ENEMY_Eclaireur Vase Noire|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	>>Tuez |cRXP_ENEMY_Aileron-cruel|r. Dépouillez-le pour le [|cRXP_LOOT_Pendentif de cristal rouge|r]
    .use 23870 >>Utilisez le [|cRXP_LOOT_Pendentif de cristal rouge|r] pour commencer la quête
    >>|cRXP_ENEMY_Aileron-cruel|r patrouille le long du rivage
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >> Acceptez Cruelfin's Necklace
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	.use 23995 >>Utilisez le [Marqueur de murlocs] sur les |cRXP_ENEMY_Eclaireur Vase Noire|r
    >>Ne TUEZ PAS les |cRXP_ENEMY_Eclaireur Vase Noire|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>Utilisez la [Pioche à cristaux] sur les |cRXP_PICK_Cristal du site de l'impact|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Tuez un |cRXP_ENEMY_Frappeur satyre puant|r. Dépouillez-le pour son |cRXP_LOOT_Satyre Puant aquatique|r
    >>|cRXP_WARN_Vous pouvez aussi ramasser le |cRXP_LOOT_Satyre puant aquatique|r sous l'eau|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #completewith next
    .subzone 3584 >> Voyagez vers le Guet du Sang
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >> Rendez Cruelfin's Necklace
    .turnin 9629 >> Turn in Catch et les Release
    .accept 9574 >> Acceptez Victims of Corruption
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Tuez les |cRXP_ENEMY_Tréant corrompu|r. Dépouillez-les pour leur |cRXP_LOOT_Ecorce cristallisée|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Rendez Victims of Corruption
    .accept 9578 >> Acceptez Searching for Galaen
    .target Morae
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Redresseuse de torts Aalesia|r
    .turnin 9594 >> Rendez Signs of the Legion
    .turnin 9567 >> Rendez Know Thine Enemy
    .accept 9569 >> Acceptez Containing the Threat
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Redresseuse de torts Aalesia|r
    .turnin 9567 >> Rendez Know Thine Enemy
    .accept 9569 >> Acceptez Containing the Threat
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .accept 9641 >> Acceptez la quête Les éclats de cristal irradié
	.turnin 9641 >> Rendez la quête Les éclats de cristal irradié
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    +Rappelez-vous de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de clairvoyance] (Augmente l'Intelligence de 5. Dure 30 mins.) << !Warrior !Paladin !Shaman !Rogue
    +Rappelez-vous de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de férocité] (Augmente la puissance d'attaque de 10. Dure 30 mins.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Mikolaas|r
    .turnin 9581 >> Rendez Learning from the Crystals
    .accept 9620 >> Accept Les Minage Survey Team
    .target Harbinger Mikolaas
step << !Dwarf/!Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Tuez les |cRXP_ENEMY_Espion Epervier du soleil|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << !Dwarf/!Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Rendez Blood Watch
    .accept 9779 >> Acceptez Intercepting the Message
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Tuez les |cRXP_ENEMY_Espion Epervier du soleil|r. Dépouillez-les pour leur |cRXP_LOOT_Missive des Eperviers du soleil|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    #completewith next
    .subzone 3591 >> Voyagez vers les Ruines de Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au cadavre du |cRXP_FRIENDLY_Cartographe draeneï|r
    .turnin 9620 >> Turn in Les Minage Survey Team
    .accept 9628 >> Acceptez Salvaging the Data
    .target Draenei Cartographer
step
	#completewith next
	>>Ramassez un |cRXP_LOOT_Polypore des ruines|r sur le sol
    >>Il ressemble à un petit champignon bleu que l'on peut trouver autour des ruines Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Tuez les |cRXP_ENEMY_Marauder irécaille|r et les |cRXP_ENEMY_Ensorceleuse Irécaille|r. Dépouillez-les pour leur |cRXP_LOOT_Cristal de données du relevé|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    #label RuinousPolyspore
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Ramassez un |cRXP_LOOT_Polypore des ruines|r sur le sol
    >>Il ressemble à un petit champignon bleu que l'on peut trouver autour des ruines Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,58.6,55.0,0
    .goto Bloodmyst Isle,58.5,66.7,0
    .goto Bloodmyst Isle,50.2,72.5,0
    .goto Bloodmyst Isle,65.3,54.5,10,0
    .goto Bloodmyst Isle,62.5,53.0,10,0
    .goto Bloodmyst Isle,58.6,55.0,10,0
    .goto Bloodmyst Isle,62.8,59.8,10,0
    .goto Bloodmyst Isle,58.9,61.8,10,0
    .goto Bloodmyst Isle,58.5,66.7,10,0
    .goto Bloodmyst Isle,54.1,67.6,10,0
    .goto Bloodmyst Isle,48.5,66.7,10,0
    .goto Bloodmyst Isle,50.2,72.5,10,0
    .goto Bloodmyst Isle,53.5,75.7,10,0
	>>Cueillez un |cRXP_LOOT_Champignon de sang|r sur le sol
    >>Ceux-ci peuvent se trouver partout le long de l'Île de Brume-Sang
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith next
    .subzone 3598 >> Voyagez vers l'Île Balafre-du-Ver
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .accept 9687 >> Acceptez Restoring Sanctity
    .target Prince Toreth
step
    #completewith FlyExo
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >> Rendez Maatparm Mushroom Menagerie
    .accept 9649 >> Acceptez Ysera's Tears
    .target Maatparm
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9779 >> Rendez Intercepting the Message
    .accept 9696 >> Acceptez Translations...
step
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l'|cRXP_FRIENDLY_Interrogatrice Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >> Rendez Translations...
    .accept 9698 >> Accept Audience avec le Prophet
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Mikolaas|r
    .turnin 9628 >> Rendez Salvaging the Data
    .accept 9584 >> Accept Les Second Sample
    .target Harbinger Mikolaas
step
    #label FlyExo
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Volez vers l'Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Descendez dans l'Exodar
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prophète Velen|r
    .target Prophet Velen
    .turnin 9698 >> Turn in Audience avec le Prophet
    .accept 9699 >> Acceptez Truth or Fiction
step
    .isQuestTurnedIn 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prophète Velen|r
    .target Prophet Velen
    .accept 9699 >> Acceptez Truth or Fiction
step << Druid
	#completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step
	.isOnQuest 9699,9584,9643,9580,10063
    .hs >> Retournez au Guet du Sang
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
	.isOnQuest 9699,9584,9643,9580,10063
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Envolez-vous vers Le Guet du sang
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9699 >> Rendez Truth or Fiction
    .accept 9700 >> Acceptez I Shoot Magic Into the Darkness
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    +Rappelez-vous de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de clairvoyance] (Augmente l'Intelligence de 5. Dure 30 mins.) << !Warrior !Paladin !Shaman !Rogue
    +Rappelez-vous de rendre vos [Éclat de cristal irradié] pour le consommable [Cristal de férocité] (Augmente la puissance d'attaque de 10. Dure 30 mins.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>Utilisez la [Pioche à cristaux] sur le |cRXP_PICK_Cristal de Brume-Sang altéré|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Mikolaas|r
    .turnin 9584 >> Turn in Les Second Sample
    .accept 9585 >> Accept Les Final Sample
    .target Harbinger Mikolaas
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >> Voyagez vers Axxarien
    >>Tuez les |cRXP_ENEMY_Etrangleuse mutée|r. Dépouillez-les pour leur |cRXP_LOOT_Liane étrangleuse épineuse|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Tuez tous ceux que vous croisez sur la route pour Axxarien
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Ramassez les |cRXP_LOOT_Cristaux corrompu|r sur le sol
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Tuez |cRXP_ENEMY_Zevrax|r,les |cRXP_ENEMY_Traqueur des ombres axxarien|r et les |cRXP_ENEMY_Implorateur de l'enfer axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>Utilisez la [Pioche à cristaux] sur les |cRXP_PICK_Cristaux axxarien|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Ramassez les |cRXP_LOOT_Cristaux corrompu|r sur le sol
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Tuez |cRXP_ENEMY_Zevrax|r,les |cRXP_ENEMY_Traqueur des ombres axxarien|r et les |cRXP_ENEMY_Implorateur de l'enfer axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Tuez les |cRXP_ENEMY_Traqueur des ombres axxarien|r et les |cRXP_ENEMY_Implorateur de l'enfer axxarien|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Ramassez les |cRXP_LOOT_Cristaux corrompu|r sur le sol
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Tuez les |cRXP_ENEMY_Etrangleuse mutée|r. Dépouillez-les pour leur |cRXP_LOOT_Liane étrangleuse épineuse|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Tuez |cRXP_ENEMY_Griffe-de-mort|r. Dépouillez-le pour sa |cRXP_LOOT_Patte de Griffe-de-mort|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clopper Crackboum|r
    .turnin 10063 >> Rendez Explorers' League, Is That Something for Gnomes?
    .accept 9548 >> Acceptez Pilfered Equipment
    .accept 9549 >> Acceptez Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clopper Crackboum|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>Cet objet est en stock limité. Passez cette étape si il n'en a plus de disponible
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Tuez les |cRXP_ENEMY_Oracle Vase Noire|r. Dépouillez-les pour leur |cRXP_LOOT_Idole murloc grossière|r
    >>Tuez les |cRXP_ENEMY_Guerrier Vase noire|r et les |cRXP_ENEMY_Guerrier du rivage vase noire|r. Dépouillez-les pour leur |cRXP_LOOT_Couteau murloc grossier|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Ramassez l' |cRXP_LOOT_Equipement de Clopper|r par terre
    >>Il peut apparaître dans n'importe lequel des camps murlocs
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Tuez les |cRXP_ENEMY_Oracle Vase Noire|r. Dépouillez-les pour leur |cRXP_LOOT_Idole murloc grossière|r
    >>Tuez les |cRXP_ENEMY_Guerrier Vase noire|r et les |cRXP_ENEMY_Guerrier du rivage vase noire|r. Dépouillez-les pour leur |cRXP_LOOT_Couteau murloc grossier|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Clopper Crackboum|r
    .turnin 9548 >> Rendez Pilfered Equipment
    .turnin 9549 >> Rendez Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .use 23837 >>Utilisez la [Carte au trésor abîmée] pour commencer la quête
    .accept 9550 >> Acceptez A Map to Where?
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Tuez les |cRXP_ENEMY_Anomalie du Vide|r et explorer l'emplacement du Portail du soleil
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Tuez les |cRXP_ENEMY_Etrangleuse mutée|r. Dépouillez-les pour leur |cRXP_LOOT_Liane étrangleuse épineuse|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>|cRXP_WARN_Prioriser les |cRXP_ENEMY_Etrangleuse mutée|r , vous aurez du temps plus tard pour terminer les|r |cRXP_ENEMY_Ancien ours brun|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Ramassez les |cRXP_LOOT_Os de dragon|r sur le sol
    >>Ils peuvent être difficile à voir et se trouvent le plus souvent autour des petits camps
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Cliquez sur le |cRXP_PICK_Livre ancien endommagé|r sur le sol
    .turnin 9550 >> Rendez A Map to Where?
    .accept 9557 >> Acceptez Deciphering the Book
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Anachorète Paetheus|r
    .turnin 9557 >> Rendez Deciphering the Book
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Mikolaas|r
    .turnin 9585 >> Turn in Les Final Sample
    .accept 10064 >> Accept Parlez à l' Hand
    .turnin 9646 >> Rendez WANTED: Deathclaw
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Anachorète Paetheus|r
    .accept 9561 >> Acceptez Nolkai's Words
    .accept 9632 >> Acceptez Newfound Allies
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .target Vindicator Boros
    .turnin 9700 >> Rendez I Shoot Magic Into the Darkness
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Kuros|r
    .accept 9703 >> Accept Les Cryo-Core
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .turnin 9643 >> Rendez Constrictor Vines
    .accept 9647 >> Acceptez Culling the Flutterers
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9643 >> Rendez Constrictor Vines
    .accept 9647 >> Acceptez Culling the Flutterers
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Redresseuse de torts Aalesia|r
    .turnin 9569 >> Rendez Containing the Threat
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >> Accept Les Minage Expedition
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez de les chercher en vous dirigeant vers Le Cryocœur
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez de les chercher en vous dirigeant vers Le Cryocœur
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >> Voyagez vers Le Cryocœur
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Cliquez sur le |cRXP_FRIENDLY_Cadavre de Galaen|r
    >>|cRXP_WARN_Évitez de tuer beaucoup de |cRXP_ENEMY_Récupérateur Epervier du soleil|r si possible en vous rendant au|r |cRXP_FRIENDLY_Cadavre de Galaen|r
    .turnin 9578 >> Rendez Searching for Galaen
    .accept 9579 >> Acceptez L'évasion de Galen
    .accept 9706 >> Accept Galaen's Journal -Les Fate of Vindicator Saruan
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Tuez les |cRXP_ENEMY_Récupérateur Epervier du soleil|r. Dépouillez-les pour leur |cRXP_LOOT_Amulette de Galaen|r et leur |cRXP_LOOT_Fournitures médicales|r
    >>Vous pouvez aussi ramasser les |cRXP_LOOT_Fournitures médicales|r sur le sol
	>>Utilisez les piliers et les constructions pour vous mettre hors de vue (LoS) des [Boule de feu] si vous en avez besoin
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.isOnQuest 9580
	#completewith GFate
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez à les chercher en vous dirigeant vers le Guet du Sang
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez à les chercher en vous dirigeant vers le Guet du Sang
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >> Voyagez vers le Guet du Sang
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >> Rendez Galaen's Fate
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Kuros|r
    .turnin 9703 >> Turn in Les Cryo-Core
    .turnin 9706 >> Turn in Galaen's Journal -Les Fate of Vindicator Saruan
    .accept 9711 >> Acceptez Matis the Cruel
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .accept 9748 >> Acceptez Don't Drink the Water
    .accept 9753 >> Acceptez What We Know... << Draenei
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Aesom|r
    .trainer >> Apprenez vos sorts de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Admetius|r
    .turnin 9753 >> Rendez What We Know...
    .accept 9756 >> Acceptez la quête Ce que nous ne savons pas…
    .target Exarch Admetius
step << Draenei
    .goto Bloodmyst Isle,54.312,54.215
    >>Parlez à l' |cRXP_ENEMY_Agent Epervier du soleil capturé|r à l'intérieur de sa |cRXP_PICK_Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Exarque Admetius|r
    .turnin 9756 >> Rendez What We Don't Know...
    .accept 9760 >> Acceptez Vindicator's Rest
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Eclaireur Jorli|r et à l' |cRXP_FRIENDLY_Eclaireur Loryi|r
    .turnin 10064 >> Turn in Parlez à l' Hand
    .accept 10065 >> Acceptez Cutting a Path
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >> Acceptez Critters of the Void
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Corin|r
    .turnin 9760 >> Rendez Vindicator's Rest << Draenei
    .accept 10066 >> Acceptez Oh, the Tangled Webs They Weave
    .accept 10067 >> Acceptez Fouled Water Spirits
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>Utilisez le [Lance-fusée] sur |cRXP_ENEMY_Matis le Cruel|r
    >>|cRXP_WARN_Cela invoquera un |cRXP_FRIENDLY_Pisteur of the Hand|r qui le capturera dès que sa santé atteint 50%. Évitez d'être agressé car |cRXP_ENEMY_Matis le Cruel|r frappe très fort|r
    >>|cRXP_ENEMY_Matis le Cruel|r patrouille sur une grosse partie de route. Le chemin de sa patrouille est indiqué sur votre carte
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Tuez des |cRXP_ENEMY_Bestioles du Vide|r
    >>|cRXP_WARN_Vous devez tuer les |cRXP_ENEMY_Anomalie du Vide|r pour que les |cRXP_ENEMY_Bestiole du Vide|r réapparaissent|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
    >>Continuez à les chercher pendant que vous complétez d'autres objectifs
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Tuez les |cRXP_ENEMY_Noueur muté|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Tuez les |cRXP_ENEMY_Ravageur enragé|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Tuez les |cRXP_ENEMY_Noueur muté|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Tuez les |cRXP_ENEMY_Ancien ours brun|r. Dépouillez-les pour leur |cRXP_LOOT_Flanchet d'ancien ours brun|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Tuez les |cRXP_ENEMY_Virevolteur bleu royal|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Corin|r
    .turnin 10066 >> Rendez Oh, the Tangled Webs They Weave
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Eclaireur Jorli|r
    .turnin 10065 >> Rendez Cutting a Path
    .target Scout Jorli
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Tuez les |cRXP_ENEMY_Élémentaires d'eau souillée|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Corin|r
    .turnin 10067 >> Rendez Fouled Water Spirits
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chercheur Cornelius|r
    .accept 9670 >> Acceptez They're Alive! Maybe...
    .target Researcher Cornelius
step
	#completewith next
	>>Tuez les |cRXP_ENEMY_Créature entoilée|r
    >>|cRXP_WARN_Attaquez les |cRXP_ENEMY_Créatures enchevêtrées|r à distance si possible, au cas où une créature hostile sortirait, elle ne vous attaquera pas|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Tuez les |cRXP_ENEMY_Buveuse de sang de Brume|r, les |cRXP_ENEMY_Tisseuse de Brume|r et |cRXP_ENEMY_Zarakh|r au sommet de la Passe d'Ambretoile
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Tuez les |cRXP_ENEMY_Créature entoilée|r
    >>|cRXP_WARN_Attaquez les |cRXP_ENEMY_Créatures enchevêtrées|r à distance si possible, au cas où une créature hostile sortirait, elle ne vous attaquera pas|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Chercheur Cornelius|r
    .turnin 9670 >> Rendez They're Alive! Maybe...
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>Utilisez le [Flacon d'échantillon d'eau] à la source de la cascade
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step << Druid
    .isQuestAvailable 26,6121
	#completewith Lessons
	.cast 18960 >> Lancez [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestAvailable 26,6121
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Volez jusqu'au village de Rut'theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    .isQuestAvailable 26,6121
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Druid
    #label Lessons
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 26 >> Acceptez la quête Une leçon à apprendre
    .accept 6121 >> Acceptez la quête Nouvelles leçons
    .trainer >> Apprenez vos sorts de classe
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dendrite Starblaze|r à l'étage
    .turnin 6121 >> Nouvelles leçons
    .accept 6122 >> Acceptez la quête Le principe originel
    .turnin 26 >> Rendez la quête Une leçon à apprendre
    .accept 29 >> Acceptez la quête L'épreuve du lac
    .target Dendrite Starblaze
step << Druid
    #loop
    .goto Moonglade,54.2,55.6,0
    .goto Moonglade,53.1,48.4,60,0
    .goto Moonglade,54.2,55.6,60,0
    .goto Moonglade,60.5,58.5,60,0
    >>Ouvrez un |cRXP_PICK_Bauble Conteneur|r dans le lac. Ramassez-le pour obtenir le |T134125:0|t[|cRXP_LOOT_Colifichet du sanctuaire|r]
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Utilisez le|r |T134125:0|t[|cRXP_LOOT_Colifichet du sanctuaire|r] |cRXP_WARN_à l'arbre du Sanctuaire de Remulos|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Rendez la quête L'épreuve du lac
    .accept 272 >> Acceptez la quête L'épreuve du lion de mer
    .target Tajarri
step
    .isOnQuest 9748,9669,9741,9711
    .hs >> Retournez au Guet du Sang
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >> Turn in Les Minage Expedition
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >> Rendez Critters of the Void
    .turnin 9748 >> Rendez Don't Drink the Water
    .accept 9746 >> Abandonnez Les limites de l'épuisement physique << Hunter/Shaman/Mage/Warlock
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Apprenez vos sorts de classe
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseurs de torts Kuros|r
    .turnin 9711 >> Rendez Mai'Zoth Cruel
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9580 >> Turn in Les Bear Necessities
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Pisteur Lyceon|r
    .turnin 9647 >> Rendez Culling the Flutterers
    .target Tracker Lyceon
step
    #completewith next
    .subzone 3591 >> Voyagez vers les Ruines de Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Cliquez sur le |cRXP_PICK_Monticule de poussière|r sur le sol
    .turnin 9561 >> Rendez Nolkai's Words
step
    #completewith next
    .subzone 3598 >> Voyagez vers l'Île Balafre-du-Ver
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .turnin 9687 >> Rendez Restoring Sanctity
    .accept 9688 >> Acceptez Into the Dream
    .target Prince Toreth
step
	#completewith TurninRazormaw
	>>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    >>Elles ressemblent à de petits champignons verts
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Tuez les |cRXP_ENEMY_Jeune viride|r et les |cRXP_ENEMY_Rejetons viride|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .turnin 9688 >> Rendez Into the Dream
    .accept 9689 >> Acceptez Razormaw
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Cliquez sur le |cRXP_PICK_Ever-burning Pyre|r au sommet de la montagne pour invoquer |cRXP_ENEMY_Razormaw|r
    .timer 36,Tranchegueule RP
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Tuez |cRXP_ENEMY_Razormaw|r
    >>|cRXP_ENEMY_Razormaw|r est un Elite de niveau 20. Il prend à peu près 35 secondes à atterrir
    >>Cette quête est TRÈS difficile. Montez un groupe pour le tuer si nécessaire. Passez cette étape si vous n'arrivez pas à monter un groupe ou à le tuer solo
    >>N'oubliez pas de lancer [Don des Naaru] sur vous-même ou sur un membre du groupe si besoin << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    #label TurninRazormaw
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prince Toreth|r
    >>Le |cRXP_FRIENDLY_Prince Toreth|r se déplace légèrement
    .turnin 9689 >> Rendez Razormaw
    .target Prince Toreth
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    >>Elles ressemblent à de petits champignons verts
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << Hunter/Shaman/Mage/Warlock
    .isOnQuest 9746
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    >>Tuez les |cRXP_ENEMY_Sunhawk Pyromancers|r et les |cRXP_ENEMY_Sunhawk Defenders|r
    >>Ne complétez celle-ci que si vous êtes à moins de 90% du niveau 19. Il est important que vous atteignez le niveau 20 avant de quitter l'Île de Brume-Sang
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
    .xp 19.95,1 -- Skips step if you are above 19.95%
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestComplete 9746
	.xp 20-2700
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestNotComplete 9746
    .xp 20-1350
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >> Rendez Ysera's Tears
step
    #optional
    .isQuestComplete 9746
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseurs de torts Aesom|r
    .turnin 9746 >> Abandonnez Les limites de l'épuisement physique
    .target Vindicator Aesom
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseurs de torts Aesom|r
    .trainer >> Apprenez vos sorts de classe
    .target Vindicator Aesom
    .xp <20,1
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Volez vers l'Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Mage/Hunter/Warrior/Priest
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Descendez dans l'Exodar
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Remontez la rampe vers |cRXP_FRIENDLY_Behomat|r à l'étage supérieur
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Behomat|r
    .trainer >> Apprenez vos sorts de classe
    .target Behomat
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Apprenez vos sorts de classe
    .target Sulaa
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Edirah|r
    .trainer >> Apprenez vos sorts de classe
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >> Apprenez [Téléportation : Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Achetez au moins une|r [Rune de téléportation] |cRXP_BUY_à Musal|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vord|r
	.trainer >> Apprenez vos sorts de classe
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Apprenez les compétences de votre familier
    .target Ganaar
step << Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Achetez-lui un|r [Arc courbe lourd] |cRXP_BUY_ou regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
    >>Vous l'équiperez plus tard lorsque vous aurez appris la compétence pour porter des Arcs << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Achetez un|r [Arc courbe lourd]
    >>Vous l'équiperez plus tard lorsque vous aurez appris la compétence pour porter des Arcs << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #optional
    #completewith next
    +Équipez l'[Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
    .train 264,3
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Achetez-lui une|r [Baguette ardente] |cRXP_BUY_ou vérifiez si il n'y en a pas une meilleure à l'Hôtel des Ventes|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Achetez une|r [Baguette ardente] |cRXP_BUY_à Oss|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +Équipez la [Baguette ardente]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Izmir|r
    .trainer >> Apprenez vos sorts de classe
    .target Izmir
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    >>|cRXP_FRIENDLY_Chasseresse Kella Arquenuit|r |cRXP_WARN_est située à l'extérieur de l'entrée arrière de L'Exodar|r
    .turnin 9632 >> Rendez Newfound Allies
    .accept 9633 >> Accept Les Way to Auberdine
    .target Huntress Kella Nightbow
step << Druid
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step << Druid
    .goto Moonglade,48.102,67.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine>>Volez à Sombrivage
    .target Sindrayl
step << !Druid
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Prenez le bateau pour Sombrivage
step << !NightElf Hunter/!NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Prenez le bateau pour Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
step << !NightElf Hunter/Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Apprenez vos sorts de classe
step << !NightElf Hunter
    >>Montez la rampe à la droite de |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Apprenez les compétences de votre familier
    .target Silvaria
step << !NightElf Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Parlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Apprenez la compétence Arcs
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
step << !NightElf Hunter
    #ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Achetez-lui un|r [Arc courbe lourd] |cRXP_BUY_ou regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Achetez un|r [Arc courbe lourd]
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #optional
    +Équipez l'[Arc courbe lourd]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r au sous-sol
    .trainer >> Apprenez vos sorts de classe
    .target Syurna
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez-lui une|r [Épée longue] |cRXP_BUY_ou regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez une|r [Épée longue]|cRXP_BUY_. Équipez-la au niveau 21|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darnassus,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Volez à Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r à l'étage inférieur
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >> Voyagez vers le quai du bateau pour le Port de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>Vous allez maintenant commencer à voyager vers Les Mortemines
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r à l'intérieur
    .vendor 1441 >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    >>Ou sinon, vous pourrez bientôt vérifier l'Hôtel des Ventes pour une alternative meilleure ou à un meilleur prix
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brak Durnad|r à l'intérieur
    .vendor 1441 >>|cRXP_BUY_Achetez une|r [Epée du bourreau]|cRXP_BUY_à Brak (si il en a en stock et que vous en avez les moyens)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +Équipez l'[Épée du bourreau]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << !NightElf !Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Volez à Ironforge
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milstaff Stormeye|r
    .train 3562 >> Apprenez [Téléportation : Forgefer]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Eglantine|r
    .trainer >> Apprenez vos sorts de classe
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Entrez dans la maison de |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Achetez des|r [Grimoires] |cRXP_BUY_pour vos familiers si vous le voulez|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Sautez dans l'eau au bout des quais et nagez jusqu'au point de repère.
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utilisez le service d'assistance aux personnages coincés pour allez à Forgefer. Vous devez vous déconnectez à l'endroit prévu, puis naviguez le menu d'assistance sur un autre personnage (Sinon, vous pouvez c/c le lien du déblocage ci-dessous dans votre navigateur), puis faites défiler jusqu'au service d'assistance. Cliquez sur votre personnage et bougez. Si vous n'arrivez pas à vous débloquer, passez cette étape et nagez le long des montagnes jusqu'aux Marches de l'Ouest
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Cliquez ici pour l'exemple vidéo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs US
    .link https://eu.battle.net/support/en/article/32275 >> Cliquez ici pour le service d'assistance aux personnages coincés pour les serveurs EU
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
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
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Remontez le rivage et prenez la route pour la Colline des Sentinelles
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entrez dans le Tram des profondeurs
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Allez vers Hurlevent
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >> Prenez le Tram des profondeurs vers Hurlevent
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Acceptez la quête Assaut souterrain
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Acceptez la quête Adieu mon frère…
    .accept 168 >> Acceptez la quête À la recherche de cartes du syndicat des mineurs
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Acceptez la quête La dépravation au loin
    .target Argos Nightwhisper
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Apprenez [Téléportation : Hurlevent]
	.xp <20,1
    .target Larimaine Purdue
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    >>Faites bien attention à apprendre la capacité [Crochetage], vous en aurez besoin plus tard
    .train 1804 >> Apprenez [Crochetage]
    .trainer >> Apprenez vos sorts de classe
    .target Osborne the Night Man
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Achetez la compétence pour porter des épées à une main << Mage/Rogue/Warlock
    .train 1180 >> Achetez la compétence pour porter des dagues << Mage/Druid/Priest
    .train 202 >> Achetez la compétence pour porter des épées à deux mains << Warrior/Paladin/Hunter
    .target Woo Ping
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Apprenez le chemin de vol de Hurlevent << !Human
    .fly Westfall >> Volez vers la Marche de l'Ouest << Human/Dwarf Warrior/Gnome Warrior/Rogue/Warlock
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Voyagez vers les Marches de l'Ouest
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Prenez le chemin de vol de la Colline des Sentinelles
    .target Thor
step << Rogue
.dungeon DM
    #label GryanAll
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Acceptez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Tuez en boucle des |cRXP_ENEMY_Gnolls|r au sud de la Colline des Sentinelles le temps de monter un groupe pour les Mortemines|r
    .subzone 20 >>Quand vous avez monté votre groupe, voyagez vers Ruisselune
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entrez dans le Repaire Defias avec votre groupe
step
.dungeon DM
    #completewith EnterDM
    >>Tuez les |cRXP_ENEMY_Defias|r. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    >>Vous pouvez aussi finir cette quête à l'intérieur des Mortemines
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Tuez |cRXP_ENEMY_Foreman Thistlenettle|r. Dépouillez-le pour son |cRXP_LOOT_Badge|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Tuez les |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r et les |cRXP_ENEMY_Undead Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Cards|r
    >>Cette quête se finit À L’EXTÉRIEUR du donjon
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >> Entrez dans le donjon des Mortemines
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Tuez les |cRXP_ENEMY_Defias|r dans Les Mortemines. Dépouillez-les pour leur |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Tuez |cRXP_ENEMY_Sneed|r. Dépouillez-le pour son |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Tuez |cRXP_ENEMY_Edwin VanCleef|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r et sa [|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Tuez |cRXP_ENEMY_Edwin VanCleef|r. Dépouillez-le pour sa [|cRXP_LOOT_An Unsent Letter|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Quittez les Mortemines par la sortie au fond, à l'est d' |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Rendez la quête La Confrérie défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Scout Riell|r au sommet de la Tour
    .turnin 214 >> Rendez la quête Les masques rouges en soie
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>Lancez [Téléportation : Hurlevent]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Elsharin|r tout en haut de la Tour
    .train 2138 >> Apprenez vos sorts de classe
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith DevourerofSouls
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné. Descendez les escaliers
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Apprenez vos sorts de classe
    .target Ursula Deline
    .xp <22,1
step << Warlock
.dungeon DM
    #label DevourerofSouls
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Parlez à |cRXP_FRIENDLY_Duthorian Rall|r à l'intérieur de la Cathédrale
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19835 >> Apprenez vos sorts de classe
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Parlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur de la Cathédrale
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_High Priestess Laurena|r à l'intérieur
    .train 8103 >> Apprenez vos sorts de classe
    .target High Priestess Laurena
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 1856 >> Apprenez vos sorts de classe
    .target Osborne the Night Man
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Voyagez vers |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r à l'intérieur du SI:7 en haut des escaliers
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renzik "The Shiv"|r et |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2281 >> Acceptez la quête Le Rendez-vous des Carmines
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acceptez la quête Mathias et les Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    #completewith RedridgeRendevous
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge Mountains >> Volez vers Les Carmines
    .target Dungar Longdrink
step << !Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Quittez Hurlevent
step << !Human Rogue
.dungeon DM
    #optional
    .isOnQuest 2281,2360
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Voyagez vers Les Carmines
step << !Human
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Prenez le chemin de vol des Carmines
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    #label RedridgeRendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Rendez la quête Le Rendez-vous des Carmines
    .accept 2282 >> Acceptez la quête La scierie d'Alther
    .target Lucius
step << Rogue
.dungeon DM
    .isOnQuest 65
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wiley the Black|r à l'intérieur, en haut des escaliers
    .turnin 65 >> Rendez la quête La Confrérie défias
	.target Wiley the Black
step << Rogue
.dungeon DM
    #completewith next
    .subzone 97 >> Voyagez vers La scierie d'Alther
step << Rogue
.dungeon DM
    .goto 1433,51.846,45.116
    >>Vous DEVEZ le faire pour votre quête de [Poisons] plus tard
    >>|cRXP_WARN_Restez sur la location du point de repère. Positionnez votre caméra et votre curseur jusqu'à ce que vous puissiez cliquer sur 3 |cRXP_PICK_Practice Lockboxes|r en même temps et sans avoir à bouger|r
    .skill lockpicking,80 >>|cRXP_WARN_Ouvrez les |cRXP_PICK_Practice Lockboxes|r sur le sol dans la scierie d'Alther jusqu'à ce que votre score de|r [Crochetage] soit de 80|r
step << Rogue
.dungeon DM
	.goto Redridge Mountains,52.05,44.69
    >>Ouvrez les |cRXP_PICK_Lucius's Lockbox|r. Récupérez les |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step << Rogue
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Rendez la quête La scierie d'Alther
step << Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Sentinel Hill >> Volez vers la Marche de l'Ouest
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Agent Kearnen|r
    >>Vous DEVEZ faire cette quête pour vos [Poisons]
    .turnin 2360 >> Rendez la quête Mathias et les Défias
    .accept 2359 >> Acceptez la quête La Tour de Klaven
    .target Agent Kearnen
step << Rogue
.dungeon DM
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|tUtilisez [Vol à la tire] sur le |cRXP_ENEMY_Malformed Defias Drone|r. Volez-lui la |cRXP_LOOT_Defias Tower Key|r
    >>Vous devez être en [Camouflage] pour utiliser [Vol à la tire]
    >>|cRXP_WARN_Le |cRXP_ENEMY_Malformed Defias Drone|r apparaissent à l'entrée de la tour, puis font le tour de celle-ci|r
    >>Faites attention car il fait BEAUCOUP de dégâts. Si vous perdez votre [Camouflage], utilisez vite votre [Sprint] pour vous enfuir
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Malformed Defias Drone
step << Rogue
.dungeon DM
    #optional
    #completewith Mortwake
    +Équipez la [Dague de Curvewood] pour cette quête si vous n'avez pas déjà de [Dagues] équipée
    .use 15396
    .itemcount 15396,1
step << Rogue
.dungeon DM
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Allez jusqu'à l'avant dernier étage de la tour. Lorsque vous êtes en [Camouflage] |cRXP_WARN_et que les |cRXP_ENEMY_Defias Tower Sentries|r ne sont pas proches de vous, sautez sur la chaise, puis sur la lampe, et ensuite sur la bibliothèque au-dessus du point de repère|r
    >>Enlevez votre [Camouflage] manuellement|cRXP_WARN_, puis appuyez sur votre touche "Interagir avec la cible" pour ouvrir le |cRXP_PICK_Duskwood Chest|r. Récupérez le|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>NOTE: Votre [Camouflage] ne marchera pas plus temporairement après avoir récupéré le |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_Soyez prêt à courir si vous ne voulez pas tuer les |cRXP_ENEMY_Defias Tower Sentries|r au deuxième étage. Ils vont sûrement vous aggro de manière permanente (mais sans vous attaquer) lorsque vous êtes en haut de la bibliothèque comme il s'agit d'un evade spot|r
    >>Si vous avez une [Dague] dans vos sacs ou déjà équipée, vous pouvez lancez [Embuscade] |cRXP_WARN_sur le |cRXP_ENEMY_Defias Tower Patrollers|r et sur les |cRXP_ENEMY_Defias Tower Sentries|r à l'intérieur pour les tuer instantanément. Soyez prêt à vous enfuir après avoir tué le premier|cRXP_ENEMY_Defias Tower Sentry|r  et n'oubliez pas que vous pouvez être touché d'en dessous. Cette technique est plus lente, mais BEAUCOUP plus sure|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Malformed Defias Drone|r et les |cRXP_ENEMY_Defias Drones|r peuvent se trouver à l'entrée de la tour si vous devez vous enfuir de celle-ci|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Cliquez ICI pour un guide vidéo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Utilisez l'[Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
.dungeon DM
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Utilisez votre racial [Forme de Pierre] pour enlever le debuff [Toucher de Zanzil]
    .aura -9991
step << Rogue
.dungeon DM
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Volez à Stormwind
    .target Thor
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Voyagez vers |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
.dungeon DM
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .skill firstaid,80 >> Montez votre niveau de compétence en [Premiers soins] jusqu'à 80
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaina Fuller|r
    >>Si vous avez un ami |cFFF48CBAPaladin|r ou |cFFFF7C0ADruid|r demandez-leur de vous enlever le debuff [Toucher de Zanzil]
    .train 7934 >> Apprenez [Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabriquez un [Anti-venin]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Utilisez un [Anti-venin] dans vos sacs pour retirer le debuff [Toucher de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entrez dans les quartiers généraux du SI:7. Montez les escaliers pour y rejoindre  |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon DM
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >> Rendez la quête La Tour de Klaven
    .target Master Mathias Shaw
step << Rogue
.dungeon DM
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jasper Fel|r au rez-de-chaussée du bâtiment
    >>Achetez des composants pour fabriquer des [|cRXP_FRIENDLY_Fiole de poison vide|r] et des [|cRXP_FRIENDLY_Vanish|r] à Jasper
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
.dungeon DM
    >>Ouvrez votre grimoire et trouvez la compétence [|cRXP_FRIENDLY_Poisons|r] dans l'onglet Général. Ouvrez-la et fabriquer 20 Poison Instantanés. N'oubliez pas leur application sur vos deux armes avant chaque combat
    .collect 6947,20 --Instant Poison (20)
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Voyagez vers |cRXP_FRIENDLY_Wu Shen|r à l'intérieur du Centre de Commande
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wu Shen|r à l'étage
    .train 6192 >> Apprenez vos sorts de classe
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Baros Alexston|r
    .use 2874 >>|cRXP_WARN_Utilisez[|cRXP_LOOT_An Unsent Letter|r] pour commencer la quête|r
    .accept 373 >> Acceptez la quête La lettre non envoyée
    .turnin 373 >> Rendez la quête La lettre non envoyée
    .accept 389 >> Acceptez la quête Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Rendez la quête Bazil Thredd
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wilder Thistlenettle|r à l'intérieur
    .turnin 167 >> Rendez la quête Adieu mon frère…
    .turnin 168 >> Rendez la quête À la recherche de Cartes du Syndicat des Mineurs
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Einris Brightspear|r à l'intérieur
    .trainer >> Apprenez vos sorts de classe
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 2040 >> Rendez la quête Assaut souterrain
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Achetez-lui un|r [Tube en bronze] |cRXP_BUY_si il en a en stock|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >> Lancez [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >> Utilisez votre Pierre de foyer pour revenir à Sombrivage
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
    >>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .zoneskip Darkshore
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step << NightElf
.dungeon BFD
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
step << !NightElf
.dungeon BFD
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Prenez le bateau pour Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argent Guard Manados|r et à |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r à l'étage
    .accept 1199 >> Acceptez la quête Le crépuscule descend
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Acceptez la quête À la recherche de Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Volez à Sombrivage
    .target Vesprystus
    .zoneskip Darkshore
--
step << !Warlock
#xprate >1.49
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    >>Si vous ne pouvez pas accepter cette quête, passez cette étape
    .accept 1275 >> Acceptez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.turnin 9633 >> Rendez la quête En route pour Auberdine
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step << !Warlock
#xprate >1.49
    #completewith next
    .goto 1439,35.724,83.696,50 >> Voyage vers le sud de Sombrivage
step << !Warlock
#xprate >1.49
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>Cela va commencer une escorte. Il se peut que vous deviez attendre qu'il réapparaisse ou que d'autres joueurs terminent l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 731
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    .complete 731,1
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance !Warlock
#xprate <1.5
#name 20-21 Sombrivage
#subgroup RestedXP Alliance 20-32
#defaultfor !Draenei
#next 21-23 Ashenvale

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acceptez la quête Fruit de la mer
    .target Gubber Blump
step
    .goto Darkshore,37.219,44.227
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Acceptez la quête La caverne aux champignons
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    >>Si vous ne pouvez pas accepter cette quête, passez cette étape
    .accept 1275 >> Acceptez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step
	.isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Acceptez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestTurnedIn 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 986 >> Acceptez la quête Un maître perdu
    .target Terenthis
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r à l'étage
    .accept 965 >> Acceptez la quête La Tour d'Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Acceptez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.turnin 9633 >> Rendez la quête En route pour Auberdine
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 4763 >> Acceptez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>Utilisez le [Bol de purification vide] au |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #optional
    #completewith MistVeil
    +Appuyez sur Echap, puis ensuite -> Options -> Commandes
    >>Cochez "Activer la commande d'interaction" et associez une touche à "Interagir avec la cible"
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FAITES ATTENTION A VOTRE BARRE DE SOUFFLE==
    >>Nagez sous l'eau jusqu'à la partie extérieure de l'arrière du bateau
    >>|cRXP_WARN_À l'endroit indiqué par la flèche, appuyez sur votre touche "Interagir avec la cible" pour y ramasser le |cRXP_LOOT_Silver Dawning's Lockbox|r depuis l'extérieur du bateau|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire, nagez sous l'eau jusqu'à l'étage inférieur du bateau puis ramassez le |cRXP_LOOT_Silver Dawning's Lockbox|r directement à l'intérieur de celui-ci|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>==FAITES ATTENTION A VOTRE BARRE DE SOUFFLE==
    >>Nagez sous l'eau jusqu'à la partie extérieure de l'arrière du bateau
    >>|cRXP_WARN_À l'endroit indiqué par la flèche, appuyez sur votre touche "Interagir avec la cible" pour y ramasser le |cRXP_LOOT_Mist Veil's Lockbox|r depuis l'extérieur du bateau|r
    >>|cRXP_WARN_Si vous ne voulez pas le faire, nagez sous l'eau jusqu'à l'étage inférieur du bateau puis ramassez le |cRXP_LOOT_Mist Veil's Lockbox|r directement à l'intérieur de celui-ci|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #completewith BottomKey
    #optional
    >>Tuez les |cRXP_ENEMY_Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isQuestTurnedIn 4681
    .goto Darkshore,44.18,20.60
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4725 >> Acceptez la quête La tortue de mer échouée
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nagez jusqu'à sortir de l'eau
    >>Ouvrez le |cRXP_PICK_Strange Lockbox|r. Récupérez le |cRXP_LOOT_Demi-pendentif d'agilité aquatique|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Cliquez la |cRXP_PICK_Tortue de mer échouée|r
    .accept 4727 >> Acceptez la quête La tortue de mer échouée
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acceptez la quête La recherche de Gyromast
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Tuez les |cRXP_ENEMY_Greymist Oracles|r et les |cRXP_ENEMY_Greymist Tidehunters|r. Dépouillez-les pour leur |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Greymist Oracles|r et leur capacité|r [Eclair] et ils peuvent aussi se soigner avec [Vague de soins]|r
    >>|cRXP_WARN_Vous pouvez vous cacher (LoS) des |cRXP_ENEMY_Greymist Oracles|r lorsqu'il lance leur|r  [Eclair] autour du bateau échoué pour éviter de prendre ses dégâts
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    #label BottomKey
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Tuez les |cRXP_ENEMY_Raging Reef Crawlers|r et les |cRXP_ENEMY_Encrusted Tide Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Raging Reef Crawlers|r et leur capacité|r [Rosser]. Ils peuvent vous infliger 200 points de dégâts instantanément sur leur coups en mêlée
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Tuez les |cRXP_ENEMY_Giant Foreststriders|r. Dépouillez-les pour leur |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #loop
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67,45,0
    .goto Darkshore,61.40,9.40,0
    .goto Darkshore,62.42,7.67,0
    >>Tuez les |cRXP_ENEMY_Moonstalker Sires|r et les |cRXP_ENEMY_Moonstalker Matriarchs|r. Dépouillez-les pour leur |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Attention aux |cRXP_ENEMY_Moonstalker Matriarchs|r. Ils attaquent toujours avec un |cRXP_ENEMY_Moonstalker Runt|r à leur côté|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Rendez la quête La recherche de Gyromast
    .accept 2078 >> Acceptez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
step
    .isOnQuest 2078
    #completewith next
    .goto 1439,55.802,18.290
    .gossip 6669,0 >> Parlez à |cRXP_FRIENDLY_The Threshwackonator 4100|r pour commencer une escorte
    .skipgossip
    .target The Threshwackonator 4100
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>Escortez |cRXP_FRIENDLY_The Threshwackonator 4100|r à  |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tuez|cRXP_ENEMY_The Threshwackonator 4100|r dès qu'il devient hostile
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob The Threshwackonator 4100
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Rendez la quête La vengeance de Gyromast
    .target Gelkak Gyromast
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Rendez la quête La Tour d'Althalaxx
    .accept 966 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Tuez |cRXP_ENEMY_Dark Strand Fanatics|r. Tuez-les pour leur |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Rendez la quête La Tour d'Althalaxx
    .accept 967 >> Acceptez la quête La Tour d'Althalaxx
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Voyagez vers la Grotte de la Bondissante
step << Druid
    .goto Darkshore,54.99,33.41
    >>Utilisez la [Fiole d'échantillon des Chutes de la Bondissante vide] à l'entrée de la Grotte de la Bondissante
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Dépouillez-les |cRXP_LOOT_Scaber Stalks|r et un |cRXP_LOOT_Death Cap|r sur le sol
    >>|cRXP_WARN_Restez sur la partie supérieure. S'il n'y a pas de |cRXP_LOOT_Death Cap|r au bout de la partie supérieure, descendez et récupérez en un dans la salle inférieure au sud|r
    >>|cRXP_WARN_Faites attention car les |cRXP_ENEMY_Stormscale Wave Riders|r lancent|r [Aqua Jet] (Coup à Distance instantané: Inflige des dégâts instantané et peut vous renverser) - faites attention à ne pas vous trouvez dans une position ou vous vous feriez pousser du niveau supérieur de la grotte
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Ouvrez les |cRXP_PICK_Blackwood Fruit Stores|r. Ramassez les |cRXP_LOOT_[Blackwood Fruit Sample]|r
    >>|cRXP_WARN_Ouvrir cela fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront et vont vous courir dessus. Soyez prêt à les combattre ou à vous enfuir|r
    >>|cRXP_WARN_Si vous voyez |cRXP_ENEMY_Xabraxxis|r criez dans le tchat et si vous voyez quelqu'un le combattre, aidez-le. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera par terre. Ramassez le |r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Ouvrez les |cRXP_PICK_Blackwood Nut Stores|r. Ramassez les |cRXP_LOOT_[Blackwood Nut Sample]|r
    >>|cRXP_WARN_Ouvrir cela fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront et vont vous courir dessus. Soyez prêt à les combattre ou à vous enfuir|r
    >>|cRXP_WARN_Si vous voyez |cRXP_ENEMY_Xabraxxis|r criez dans le tchat et si vous voyez quelqu'un le combattre, aidez-le. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera par terre. Ramassez le |r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Ouvrez les|cRXP_PICK_Blackwood Grain Stores|r. Ramassez les|cRXP_LOOT_[Blackwood Grain Sample]|r
    >>|cRXP_WARN_Ouvrir cela fera apparaître 2 |cRXP_ENEMY_Furbolgs Noirbois|r qui vous attaqueront et vont vous courir dessus. Soyez prêt à les combattre ou à vous enfuir|r
    >>|cRXP_WARN_Si vous voyez |cRXP_ENEMY_Xabraxxis|r criez dans le tchat et si vous voyez quelqu'un le combattre, aidez-le. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera par terre. Ramassez le |r |cRXP_LOOT_Talisman of Corruption|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    .cast 16072 >> Utilisez le [Bol de purification rempli] |cRXP_WARN_au |cRXP_PICK_Feu de joie|r pour invoquer|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corruption des Noirbois RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    >>Tuez|cRXP_ENEMY_Xabraxxis|r. Ouvrez le |cRXP_PICK_Xabraxxis' Demon Bag|r qu'il laissera sur le sol. Ramassez le |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .isOnQuest 2139
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tuez la |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Soyez conscients que les |cRXP_ENEMY_Thistle Cubs|r peuvent vous étourdir pendant 2 secondes|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Hunter/Rogue
	#completewith FOTS
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20 << NightElf Hunter -- not going to Darn if already have a better bow
step
    #completewith FOTS
    .subzone 442 >> Voyagez vers Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Rendez la quête Espoir de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Rendez la quête Un maître perdu
    .accept 993 >> Acceptez la quête Un maître perdu
    .target Terenthis
step
    .isQuestTurnedIn 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Acceptez la quête Un maître perdu
    .target Terenthis
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Rendez la quête Océan profond, mer immense
    .target Gorbold Steelhand
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Rendez la quête Le principe originel
    .target Alanndarian Nightsong
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Rendez la quête La corruption des Noirbois
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Rendez la quête La caverne aux champignons
    .accept 948 >> Acceptez la quête Onu
    .target Barithras Moonshade
step
    .isQuestTurnedIn 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Rendez la quête La tortue de mer échouée
    .turnin 4727 >> Rendez la quête La tortue de mer échouée
    .target Gwennyth Bly'Leggonde
step
    #optional
    #label FOTS
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
    .target Gubber Blump
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
step << Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet pour Darnassus
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez-lui une|r [Épée longue] |cRXP_BUY_ou regardez à l'Hôtel des Ventes si il n'y en a pas un meilleur/moins cher|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Achetez une|r [Épée longue]
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +Équipez l'[Épée longue]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Syurna|r dans le sous-sol
    .trainer >> Apprenez vos sorts de classe
    .target Syurna
step << Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darnassus,1
step << Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Volez à Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    #optional
    #completewith next
    .isOnQuest 1138
    >>Tuez des |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Vérifiez si|cRXP_ENEMY_Murkdeep|r n'est pas déjà présent dans l'eau (si un joueur vient de rater le combat ou a laissé le |cRXP_ENEMY_Greymist Hunter|r de la vague de son respawn)|r
    >>Tuez les |cRXP_ENEMY_Greymist Warriors|r et les |cRXP_ENEMY_Greymist Hunters|r dans le camp
    >>|cRXP_WARN_Dirigez-vous vers le bûcher au centre du camp pour commencer le combat contre |cRXP_ENEMY_Murkdeep|r |r
    >>|cRXP_WARN_3 vagues vont apparaître depuis l'eau, chacune juste après avoir fini la vague précédente: la vague 1 a 3 |cRXP_ENEMY_Greymist Coastrunners|r de niveaux  12-13, la vague 2 a 2 |cRXP_ENEMY_Greymist Warriors|r de niveaux 15-16, et la vague 3 a un |cRXP_ENEMY_Murkdeep|r de niveau 19 et un |cRXP_ENEMY_Greymist Hunter|r de niveau 16-17. Vous pouvez rester vers le bûcher pour éviter de prendre l'aggro sur la vague à venir|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Rendez la quête Onu
    .accept 944 >> Acceptez la quête Le Glaive du Maître
    .turnin -952 >> Rendez le Bosquet des Anciens << NightElf
    .target Onu
step
    .goto Darkshore,38.54,86.05,100 >> Voyagez jusqu'à le Glaive du Maître
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>Tuez les |cRXP_ENEMY_Twilight Disciples|r et les  |cRXP_ENEMY_Twilight Thugs|r. Dépouillez-les pour le [|cRXP_LOOT_Book: The Powers Below|r]
    >>Cet objet a un taux de chance de tomber extrêmement bas, et ne va probablement pas tomber. Passez cette étape une fois que vous avez fini vos autres objectifs
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto Darkshore,38.54,86.05
    >>Découvrez le Glaive du Maître
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >> Utilisez la [Fiole de divination] et placez-la sur le sol
    .use 5251
step
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Cliquez sur |cRXP_PICK_Scrying Bowl|r sur le sol|r
    .turnin 944 >> Rendez la quête Le Glaive du Maître
    .accept 949 >> Acceptez la quête Le camp du Marteau du crépuscule
    .use 5251
step
    .goto 1439,38.537,86.050
    >>Cliquez sur |cRXP_PICK_Twilight Tome|r sur le piédestal le plus au nord
    .turnin 949 >> Rendez la quête Le camp du Marteau du crépuscule
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therylune|r. Cela va commencer une escorte
    >>Cela va commencer une escorte, passez cette étape si elle n'est pas là
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>Cela va commencer une escorte. Il se peut que vous deviez attendre qu'il réapparaisse ou que d'autres joueurs terminent l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    .complete 731,1
    .target Prospector Remtravel
step
    #optional
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Tuez les |cRXP_ENEMY_Encrusted Tide Crawlers|r et les |cRXP_ENEMY_Reef Crawlers|r. Dépouillez-les pour leur |cRXP_LOOT_Fine Crab Chunks|r
    >>Passez cette étape et abandonnez [Fruit de la mer] si vous n'avez pas de chance sur les objets de quête
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isOnQuest 993
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Cela va commencer une escorte. Tuez les |cRXP_ENEMY_Furbolgs|r près de la grotte avant de lui parler|r
    .turnin 993 >> Rendez la quête Un maître perdu
    .accept 994,1 >> Acceptez la quête Évasion par la force
    .target Volcor
step
    .isQuestTurnedIn 993
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Cela va commencer une escorte. Tuez les |cRXP_ENEMY_Furbolgs|r près de la grotte avant de lui parler|r
    .accept 994,1 >> Acceptez la quête Évasion par la force
    .target Volcor
step
    .isOnQuest 994
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escortez |cRXP_FRIENDLY_Volcor|r
    >>Après avoir passé la troisième torche en quittant la grotte, un |cRXP_ENEMY_Furlbog|r apparaîtra de chaque côté et attaquera |cRXP_FRIENDLY_Volcor|r
    >>Au milieu de la route, un |cRXP_ENEMY_Furlbogs|r apparaîtra de chaque côté et attaquera |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .target Volcor
step
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance !Warlock
#name 21-23 Ashenvale
#subgroup RestedXP Alliance 20-32
#defaultfor !Draenei
#next 23-24 Les Paluns;24-27 Carmines/Bois de la Pénombre

step
#xprate <1.5
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Rendez la quête La Tour d'Althalaxx
    .accept 970 >> Acceptez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
	.target Orendil Broadleaf
step
#xprate <1.5
    .isOnQuest 970
    .goto Ashenvale,31.25,30.70
    >>Tuez les |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Adepts|r et les |cRXP_ENEMY_Dark Strand Excavators|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez les |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez les |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    >>|cRXP_WARN_Assurez-vous d'avoir la|r |T134916:0|t[Découverte d'herbes] |cRXP_WARN_activée pour les voir sur votre minicarte|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
step
#xprate <1.5
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 970 >> Rendez la quête La Tour d'Althalaxx
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
	.target Delgren the Purifier
step
#xprate <1.5
    .isQuestTurnedIn 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 973 >> Acceptez la quête La Tour d'Althalaxx
	.target Delgren the Purifier
step
    #optional
    #completewith TZS
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Prenez le chemin de vol d'Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Acceptez la quête La grève de Zoram
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin -10752 >> Rendez En direction d'Orneval
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
    .accept 1054 >> Acceptez la quête Diminution de la menace
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
step
.dungeon WC
    #completewith TravelRatchet
    +Commencez à chercher un groupe pour les Cavernes des Lamentations pendant que vous complétez les deux prochaines étapes. Très vite, vous allez vous dirigez vers les Tarides pour faire ce donjon
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Tuez|cRXP_ENEMY_Dal Bloodclaw|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r patrouille dans le village Crin-de-Chardon
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Voyagez vers Ratchet dans les Tarides. Suivez la flèche pour éviter |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol par gryphon à Ratchet
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Voyagez vers les Cavernes des Lamentations. Montez la montagne puis descendez dans la grotte cachée au-dessus de l'entrée du donjon. Suivez la flèche pour arriver à |cRXP_FRIENDLY_Nalpak|r et |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_Mad Magglish|r peut apparaître à plusieurs endroits
    >>Cette quête être complétée à L’EXTÉRIEUR du donjon
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Rentrez dans les Cavernes des Lamentations
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r et |cRXP_ENEMY_Lady Anacondra|r puis parlez au |cRXP_FRIENDLY_Disciple of Naralex|r au début du donjon pour commencer son escorte
    >>Escortez le |cRXP_FRIENDLY_Disciple of Naralex|r à travers les Cavernes des Lamentations et compléter son rituel
    >>Tuez|cRXP_ENEMY_Mutanus the Devourer|r. Dépouillez-le pour son [|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Glowing Shard|r] pour commencer la quête|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Acceptez la quête L'Éclat luminescent
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Voyagez à Ratchet. Vous allez bientôt rendre les quêtes au dessus du donjon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Montez la pente raide de la montagne au dessus des Cavernes des Lamentations. Suivez la flèche
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Descendez dans la grotte cachée au-dessus de l'entrée des Cavernes des Lamentations. Suivez la flèche pour accéder à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
    .subzoneskip 415
step
    .goto Ashenvale,46.37,46.38
    >>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Tuez|cRXP_ENEMY_Dal Bloodclaw|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r patrouille dans le village Crin-de-Chardon
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Rendez la quête Diminution de la menace
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Rendez la quête Larme d'Elune
    .timer 17,Larme d'Elune RP
    .accept 1034 >> Acceptez la quête Les ruines de Chimétoile
step
    .goto Ashenvale,33.30,67.79
    >>Ramassez le |cRXP_PICK_Stardust Covered Bushes|r pour le |cRXP_LOOT_Handful of Stardust|r
    >>Ils apparaissent un peu partout tout le long de l'île
    .complete 1034,1
step
#xprate <1.5
    #completewith ToA973
    .goto Ashenvale,31.67,64.24,15 >> Dirigez-vous vers la base de la montagne
    .goto Ashenvale,31.21,61.60,15 >>Visez tout droit au nord en montant la montagne
step
#xprate <1.5
    .isOnQuest 973
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Tuez|cRXP_ENEMY_Ilkrud Magthrull|r. Dépouillez-le pour son |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r lancera [Gardiens d'Ilkrud] |cRXP_WARN_avec un long temps d'incantation de 5 secondes qui invoquera 2 |cRXP_ENEMY_Voidwalkers|r. Interrompez-le si possible.|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Rendez la quête L'évasion de Therylune
	.target Therysil
step
#xprate <1.5
    #label ToA973
    .isQuestComplete 973
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delgren the Purifier|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >> Rendez la quête La Tour d'Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teronis' Corpse|r
	.turnin 991 >> Rendez la quête Le nettoyage selon Raene
    .accept 1023 >> Acceptez la quête Le nettoyage selon Raene
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Tuez les|cRXP_ENEMY_Saltspittle Murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Soyez vigilant car les |cRXP_ENEMY_Oracles|r peuvent se soigner, et ont un horion instantané qui fait 90 dégâts avec un temps de récupération de quelques secondes|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acceptez la quête L'ancienne statuette
step
    #completewith nagas
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    >>Ne sortez pas de votre route pour terminer cette quête
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Ramassez les |cRXP_LOOT_Ancient Statuette|r sur le sol
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Rendez la quête L'ancienne statuette
    .timer 22,L'ancienne Statuette RP
    .accept 1009 >> Acceptez la quête Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>Si vous avez des [Bombes]|cRXP_WARN_/|r[Grenades], vous pouvez vous en servir pour ramener |cRXP_ENEMY_Ruuzel|r à part
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling"
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Commencez à chercher un groupe pour les Profondeurs de Brassenoire en complétant les prochaines étapes. Vous allez très rapidement faire le donjon
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
    .isQuestComplete 1009
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Rendez la quête Ruuzel
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Tuez en boucle des |cRXP_ENEMY_Naga|r tout en montant un groupe pour Brassenoire. Dirigez-vous vers le donjon une fois que votre groupe est complet
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Voyagez vers les Profondeurs de Brassenoire
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Tuez les|cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r et les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour leur|cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_Vous pourrez aussi récupérer les |cRXP_LOOT_Corrupted Brain Stems|r à l'intérieur de l'instance|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Prenez la route pour le portail de l'instance Profondeurs de Brassenoire, prenez-le quand vous êtes arrivés
    >>Vérifiez si une personne de votre groupe peut partager la quête "La connaissance des profondeurs" de Forgefer avec vous
step
.dungeon BFD
    #completewith Kelris
    >>Tuez les|cRXP_ENEMY_Nagas|r et les |cRXP_ENEMY_Satyrs|r. Dépouillez-les pour leur |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Ouvrez les |cRXP_PICK_Pitted Iron Chest|r sous l'eau près de la zone avec toutes les tortues. Récupérez le |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .turnin -1198 >> Rendez À la recherche de Thaelrid
    .accept 1200 >> Acceptez la quête L'infamie de Brassenoire
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Tuez tous les |cRXP_ENEMY_Twilight's Hammer|r. Dépouillez-les pour leur |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Tuez  |cRXP_ENEMY_Twilight Lord Kelris|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Tuez tous les |cRXP_ENEMY_Twilight's Hammer|r. Dépouillez-les pour leur |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Tuez les|cRXP_ENEMY_Nagas|r et les |cRXP_ENEMY_Satyrs|r. Dépouillez-les pour leur |cRXP_LOOT_Corrupted Brain Stems|r
    >>Si vous n'avez pas encore compléter cette quête, cliquez sur l'autel à la fin du donjon pour vous téléportez à l'entrée. Les mobs à l'extérieur de l'instance peuvent aussi le donner.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step << Druid
	#completewith next
	.cast 18960 >> Lancer [Téléportation : Reflet-de-Lune]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Apprenez vos sorts de classe
    .target Loganaar
step
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TZS2
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Rendez la quête Le nettoyage selon Raene
    .target Raene Wolfrunner
step
    #optional
    #sticky
    .destroy 5505 >> Détruisez le [Journal de Teronis]. Vous en avez plus besoin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Rendez la quête Les ruines de Chimétoile
step
    #label TZS2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Rendez la quête La grève de Zoram
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Volez à Sombrivage
    .target Daelyshia
step
#xprate <1.5
    #optional
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Rendez la quête Fruit de la mer
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Rendez la quête On recherche : Fondeboue !
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Rendez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step
#xprate <1.5
    .isOnQuest 994
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Rendez la quête Évasion par la force
    .target Terenthis
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step << !Hunter !NightElf !Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Prenez le bateau pour Darnassus
    .zoneskip Darnassus
step << NightElf/Hunter/Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
    >>Si vous ne connectez pas Teldrassil en vol pour l'instant, prenez le bateau depuis les quais << !NightElf
	.target Caylais Moonfeather
step
.dungeon BFD
    .isOnQuest 1199,1200,741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Volez à Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .isOnQuest 1199,1200,741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet vers Darnassus
step
    .isOnQuest 1199,1200,741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Rendez la quête Les absences du Prospecteur
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argent Guard Manados|r à l'étage
    .turnin 1199 >> Rendez la quête Le crépuscule descend
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnwatcher Selgorm|r à l'étage
    .turnin 1200 >> Rendez la quête L'infamie de Brassenoire
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darnassus,1
step
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Volez à Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +Commencez à cherche un groupe pour le Donjon d'Ombrecroc. Vous allez bientôt vous diriger vers la Forêt des Pins argentés pour faire le Donjon d'Ombrecroc
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Acceptez la quête La IIIe flotte
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Liez votre Pierre de foyer au Port de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Achetez une|r [Cruche d'hydromiel nain]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Montez les escaliers vers l' |cRXP_FRIENDLY_Archéologue Flagongut|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r en haut des escaliers
    .target Archaeologist Flagongut
    .turnin 942 >> Rendez la quête Les absences du Prospecteur
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Rendez la quête La IIIe flotte
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Tuez en boucle les |cRXP_ENEMY_Mosshides Gnolls|r en cherchant un groupe pour le Donjon d'Ombrecroc
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Il n'y a pas de quête pour le Donjon d'Ombrecroc. Vous devrez courir des Paluns à la Forêt des Pins argentés. Assurez-vous de rester sur la route quand vous traversez les Hautes-terres d'Arathi, et faites attention au |cRXP_ENEMY_Forsaken Courier|r
    >>Vous n'avez pas besoin d'aller au maître de vol des Hautes-terres d'Arathi pour l'instant
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Prenez le chemin de vol de Southshore
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Entrez dans le Donjon d'Ombrecroc
step
#xprate >1.49
.dungeon SFK
    +Il n'y a pas de quête pour le Donjon d'Ombrecroc
    >>Faites le Donjon d'Ombrecroc. Partez quand vous avez terminé
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step << !Draenei !NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Volez à Stormwind
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
step << NightElf/Draenei
#xprate >1.49
    .goto Wetlands,53.74,70.33,30,0
    .goto Wetlands,48.17,67.49,30,0
    .goto Loch Modan,25.11,8.99,20 >>|cRXP_WARN_Voyage à travers le tunnel Dun Algaz vers Loch Modan|r
    .zoneskip Loch Modan --Completes if you run to Loch
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Dirigez-vous vers la grotte à la base du barrage dans l'est des Paluns
	.zone Loch Modan >> Déconnectez-vous en haut des champignons au fond de la grotte.
    >>Quand vous vous reconnecterez, ceci vous téléportera à Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUEZ ICI pour un exemple vidéo
step << NightElf/Draenei
#xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Prenez le chemin de vol de Thelsamar
    .target Thorgrum Borrelson
step << NightElf/Draenei
#xprate >1.49
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_Commencez à enlever votre équipement pendant que vous courez vers Dun Morogh|r
    .deathskip >> Attirez l'attention du |cRXP_ENEMY_Scarred Crag Boars|r pour mourir et réapparaître au |cRXP_FRIENDLY_Esprit Gardien des âmes|r une fois que vous êtes à Dun Morogh
    .mob Scarred Crag Boar
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	>>Entrez dans la grotte des Trogg au sud-est. Déconnectez-vous (logout skip)
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >> CLIQUEZ ICI pour un exemple vidéo
	.zone Ironforge >> Utilisez la technique de "Logout skip" ou voyagez vers Ironforge
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_C'est un objet à approvisionnement limité. Passer cette étape si |cRXP_FRIENDLY_Loslor Rudge|r n'en a pas|r
	.target Loslor Rudge
    .bronzetube
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >> Voyagez à Ironforge
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Prenez le chemin de vol de Forgefer
    .target Gryth Thurden
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Prenez le Tram des profondeurs pour Stormwind
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guide TBC (A)
<< Alliance Warlock
#name 20-23 Sombrivage/Ashenvale
#subgroup RestedXP Alliance 20-32
#next 23-24 Les Paluns;24-27 Carmines/Bois de la Pénombre

step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaussiy|r
    .home >> Liez votre Pierre de Foyer à Southshore
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind>> Volez à Stormwind
    .target Shellei Brondir
step << Warlock
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entrez dans L'Agneau Assassiné. Descendez les escaliers
step << Warlock
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Acceptez la quête La dévoreuse d'âmes
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Apprenez vos sorts de classe
    .target Ursula Deline
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    +Entrez dans le donjon La Prison. Cela vous permettra de rejoindre Sombrivage avec la technique de pierre de foyer "Ghetto Hearth"
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>> Utilisez la technique "Ghetto Hearth" pour Sombrivage. Pour le faire, entrez dans La Prison, puis copier/coller le lien ci-dessous dans le chat. Attendez ensuite le décompte d'1 minute
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLICK HERE
step
#xprate <1.5
    .goto Darkshore,37.219,44.227
    >>Cliquez sur l' |cRXP_PICK_l'Affiche de recherche|r
    .accept 4740 >> Acceptez la quête On recherche : Fondeboue !
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
	.turnin 9633 >> Rendez la quête En route pour Auberdine
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >> Acceptez la quête En direction d'Orneval
    .target Thundris Windweaver
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Rendez la quête La dépravation au loin
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    >>Si vous ne pouvez pas accepter cette quête, passez cette étape
    .accept 1275 >> Acceptez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step
#xprate <1.5
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Vérifiez si|cRXP_ENEMY_Murkdeep|r n'est pas déjà présent dans l'eau (si un joueur vient de rater le combat ou a laissé le |cRXP_ENEMY_Greymist Hunter|r de la vague de son respawn)|r
    >>Tuez les |cRXP_ENEMY_Greymist Warriors|r et les |cRXP_ENEMY_Greymist Hunters|r dans le camp
    >>|cRXP_WARN_Dirigez-vous vers le bûcher au centre du camp pour commencer le combat contre |cRXP_ENEMY_Murkdeep|r |r
    >>|cRXP_WARN_3 vagues vont apparaître depuis l'eau, chacune juste après avoir fini la vague précédente: la vague 1 a 3 |cRXP_ENEMY_Greymist Coastrunners|r de niveaux  12-13, la vague 2 a 2 |cRXP_ENEMY_Greymist Warriors|r de niveaux 15-16, et la vague 3 a un |cRXP_ENEMY_Murkdeep|r de niveau 19 et un |cRXP_ENEMY_Greymist Hunter|r de niveau 16-17. Vous pouvez rester vers le bûcher pour éviter de prendre l'aggro sur la vague à venir|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Prospector Remtravel|r
    >>Cela va commencer une escorte. Il se peut que vous deviez attendre qu'il réapparaisse ou que d'autres joueurs terminent l'escorte
    .turnin 729 >> Rendez la quête Les absences du Prospecteur
    .accept 731,1 >> Acceptez la quête Les absences du Prospecteur
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Prospector Remtravel|r à travers le site de fouilles|r
    .complete 731,1
    .target Prospector Remtravel
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Therylune|r. Cela va commencer une escorte
    >>Cela va commencer une escorte, passez cette étape si elle n'est pas là
    .accept 945 >> Acceptez la quête L'évasion de Therylune
    .target Therylune
step
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escortez |cRXP_FRIENDLY_Therylune|r en dehors du Glaive du Maître|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .isOnQuest 10752,945,4740,731
    .zone Ashenvale >> Voyagez jusqu'au sud d'Ashenvale
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Acceptez la quête Les Cheveux de Bathran
	.target Orendil Broadleaf
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    >>|cRXP_WARN_Assurez-vous d'avoir la|r |T134916:0|t[Découverte d'herbes] |cRXP_WARN_activée pour les voir sur votre minicarte|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Ouvrez-le |cRXP_PICK_Plant Bundles|r sur le sol. Ramassez-le |cRXP_LOOT_Cheveux de Bathran|r
    >>Ils ressemblent à de petits sacs marrons et peuvent être partiellement enfouis dans le lot. Ils peuvent être difficile à trouver
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Rendez la quête Les cheveux de Bathran
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Acceptez la quête Jouvence d'Orendil
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Prenez le chemin de vol d'Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >> Acceptez la quête La grève de Zoram
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin -10752 >> Rendez En direction d'Orneval
    .accept 991 >> Acceptez la quête Le nettoyage selon Raene
    .accept 1054 >> Acceptez la quête Diminution de la menace
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Liez votre Pierre de foyer à Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Rendez la quête Jouvence d'Orendil
    .timer 24,Jouvence d'Orendil RP
    .accept 1033 >> Acceptez la quête Larme d'Elune
step
    .goto Ashenvale,46.37,46.38
    >>Ramassez |cRXP_LOOT_Les larmes d'Ysera|r sur le sol
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Rendez la quête Larme d'Elune
    .timer 17,Larme d'Elune RP
    .accept 1034 >> Acceptez la quête Les ruines de Chimétoile
step
    .goto Ashenvale,33.30,67.79
    >>Ramassez le |cRXP_PICK_Stardust Covered Bushes|r pour le |cRXP_LOOT_Handful of Stardust|r
    >>Ils apparaissent un peu partout tout le long de l'île
    .complete 1034,1
step
    #optional
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Dirigez-vous vers la base de la montagne
    .goto Ashenvale,31.21,61.60,15 >>Visez tout droit au nord en montant la montagne
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Rendez la quête L'évasion de Therylune
	.target Therysil
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Teronis' Corpse|r
	.turnin 991 >> Rendez la quête Le nettoyage selon Raene
    .accept 1023 >> Acceptez la quête Le nettoyage selon Raene
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Tuez les|cRXP_ENEMY_Saltspittle Murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Soyez vigilant car les |cRXP_ENEMY_Oracles|r peuvent se soigner, et ont un horion instantané qui fait 90 dégâts avec un temps de récupération de quelques secondes|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Acceptez la quête L'ancienne statuette
step
    #completewith nagas
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
    >>Ne sortez pas de votre route pour terminer cette quête
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Ramassez les |cRXP_LOOT_Ancient Statuette|r sur le sol
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Rendez la quête L'ancienne statuette
    .timer 22,L'ancienne Statuette RP
    .accept 1009 >> Acceptez la quête Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>Si vous avez des [Bombes]|cRXP_WARN_/|r[Grenades], vous pouvez aussi vous en servir pour pull |cRXP_ENEMY_Ruuzel|r à part
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> Cliquez ici pour un exemple vidéo du "Split pulling"
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Tuez |cRXP_ENEMY_Ruuzel|r. Dépouillez-la pour son |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrouille autour de l'île avec un |cRXP_ENEMY_Wrathtail Myrmidon|r et une |cRXP_ENEMY_Wrathtail Sea Witch|r. Tuez l'un des deux puis relancez le combat si nécessaire|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ est un mob rare qui peut aussi donner le |cRXP_LOOT_Ring of Zoram|r si vous la voyez|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Commencez à chercher un groupe pour les Profondeurs de Brassenoire en complétant les prochaines étapes. Vous allez très rapidement faire le donjon
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Tuez les |cRXP_ENEMY_Wrathtail Nagas|r. Dépouillez-les pour leur |cRXP_LOOT_Tête|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Rendez la quête Ruuzel
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Tuez en boucle des |cRXP_ENEMY_Naga|r tout en montant un groupe pour Brassenoire. Dirigez-vous vers le donjon une fois que votre groupe est complet
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Voyagez vers les Profondeurs de Brassenoire
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Tuez les|cRXP_ENEMY_Fallenroot Rogues|r, |cRXP_ENEMY_Fallenroot Satyrs|r, |cRXP_ENEMY_Blackfathom Oracles|r et les |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Dépouillez-les pour leur|cRXP_LOOT_Corrupted Brain Stems|r
    >>|cRXP_WARN_Vous pourrez aussi récupérer les |cRXP_LOOT_Corrupted Brain Stems|r à l'intérieur de l'instance|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >> Prenez la route pour le portail de l'instance Profondeurs de Brassenoire, prenez-le quand vous êtes arrivés
    >>Vérifiez si une personne de votre groupe peut partager la quête "La connaissance des profondeurs" de Forgefer avec vous
step
.dungeon BFD
    #completewith Kelris
    >>Tuez les|cRXP_ENEMY_Nagas|r et les |cRXP_ENEMY_Satyrs|r. Dépouillez-les pour leur |cRXP_LOOT_Corrupted Brain Stems|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Ouvrez les |cRXP_PICK_Pitted Iron Chest|r sous l'eau près de la zone avec toutes les tortues. Récupérez le |cRXP_LOOT_Lorgalis' Manuscript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à|cRXP_FRIENDLY_Argent Guard Thaelrid|r
    .turnin -1198 >> Rendez À la recherche de Thaelrid
    .accept 1200 >> Acceptez la quête L'infamie de Brassenoire
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Tuez tous les |cRXP_ENEMY_Twilight's Hammer|r. Dépouillez-les pour leur |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Tuez  |cRXP_ENEMY_Twilight Lord Kelris|r. Dépouillez-le pour sa |cRXP_LOOT_Head|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Tuez tous les |cRXP_ENEMY_Twilight's Hammer|r. Dépouillez-les pour leur |cRXP_LOOT_Twilight Pendants|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Tuez les|cRXP_ENEMY_Nagas|r et les |cRXP_ENEMY_Satyrs|r. Dépouillez-les pour leur |cRXP_LOOT_Corrupted Brain Stems|r
    >>Si vous n'avez pas encore compléter cette quête, cliquez sur l'autel à la fin du donjon pour vous téléportez à l'entrée. Les mobs à l'extérieur de l'instance peuvent aussi le donner.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TRoS
    .subzone 415 >> Voyagez jusqu'à Astranaar
step
#xprate <1.5
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Rendez la quête Le nettoyage selon Raene
    .accept 1025 >> Acceptez la quête Une défense agressive
    .target Raene Wolfrunner
step
#xprate >1.49
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >> Rendez la quête Le nettoyage selon Raene
    .target Raene Wolfrunner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Rendez la quête La grève de Zoram
step
    #label TRoS
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Rendez la quête Les ruines de Chimétoile
step
    #optional
    #sticky
    .destroy 5505 >> Détruisez le [Journal de Teronis]. Vous en avez plus besoin
step
#xprate <1.5
    #loop
    .goto Ashenvale,50.08,59.94,0
    .goto Ashenvale,53.75,63.49,0
    .goto Ashenvale,54.17,61.69,0
    .goto Ashenvale,56.45,63.62,0
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,56.45,63.62,70,0
    >>Tuez les |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Totemics|r, |cRXP_ENEMY_Foulweald Ursas|r et un |cRXP_ENEMY_Foulweald Den Watcher|r
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob +Foulweald Ursa
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob +Foulweald Den Watcher
step
#xprate <1.5
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .accept 1016 >> Acceptez la quête Les bracelets d'élémentaire
    .target Sentinel Velene Starstrike
step
#xprate <1.5
    #loop
    .goto Ashenvale,44.78,70.07,0
    .goto Ashenvale,48.90,70.05,0
    .goto Ashenvale,51.28,70.51,0
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    >>Tuez les |cRXP_ENEMY_Befouled Water Elementals|r. Dépouillez-les pour leur |cRXP_LOOT_Bracers|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
#xprate <1.5
    .use 5456 >> Utilisez le [Parchemin de divination] pour créer le [Parchemin divin]
    .complete 1016,1 -- Divined Scroll
step
#xprate <1.5
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1016 >> Rendez la quête Les bracelets d'élémentaire
    .accept 1017 >> Acceptez la quête Mage invocateur
    .target Sentinel Velene Starstrike
step
    .isOnQuest 1017,1716,1025,4740,731
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >> Voyagez vers les Tarides. Suivez la flèche pour éviter |cRXP_ENEMY_Barrens Guards|r
step
#xprate <1.5
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >> Montez le Pic de Brume-funeste. Suivez la flèche jusqu'au sommet
step
#xprate <1.5
    .goto The Barrens,48.22,19.15
    >>Tuez |cRXP_ENEMY_Sarilus Foulborne|r. Dépouillez-le pour sa |cRXP_LOOT_Tête|r
    >>|cRXP_WARN_Les |cRXP_ENEMY_Burning Blade|r aux alentours ne sont que niveau 10-12|r
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
step
#xprate <1.5
.dungeon !WC
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
.dungeon WC
    #completewith TroubleDocks
    +Commencer à chercher un groupe pour les Cavernes des Lamentations. Vous allez bientôt vous rendre au donjon
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >> Rendez la quête La dévoreuse d'âmes
    .accept 1738 >> Acceptez la quête Le cœur du bois
    .target Takar the Seer
step << Warlock
.dungeon !WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol par gryphon à Ratchet
    .fly Astranaar>> Fly to Astranaar
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Apprenez le chemin de vol par gryphon à Ratchet
    .target Bragok
step
.dungeon WC
    #label TroubleDocks
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Acceptez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Voyagez vers les Cavernes des Lamentations. Montez la montagne puis descendez dans la grotte cachée au-dessus de l'entrée du donjon. Suivez la flèche pour arriver à |cRXP_FRIENDLY_Nalpak|r et |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Acceptez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Acceptez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Tuez|cRXP_ENEMY_Mad Magglish|r. Dépouillez-le pour son |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_Mad Magglish|r peut apparaître à plusieurs endroits
    >>Cette quête être complétée à L’EXTÉRIEUR du donjon
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Rentrez dans les Cavernes des Lamentations
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez tous types de créatures |cRXP_ENEMY_Deviate|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Tuez |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r et |cRXP_ENEMY_Lady Anacondra|r puis parlez au |cRXP_FRIENDLY_Disciple of Naralex|r au début du donjon pour commencer son escorte
    >>Escortez le |cRXP_FRIENDLY_Disciple of Naralex|r à travers les Cavernes des Lamentations et compléter son rituel
    >>Tuez|cRXP_ENEMY_Mutanus the Devourer|r. Dépouillez-le pour sa [|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Utilisez le [|cRXP_LOOT_Glowing Shard|r] pour commencer la quête|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Acceptez la quête L'Éclat luminescent
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Tuez tout type de créatures |cRXP_ENEMY_Deviate|r. Dépouillez-les pour leur |cRXP_LOOT_Deviate Hides|r
    >>Cette quête peut être complétée à l'INTÉRIEUR et à l'EXTÉRIEUR des Cavernes des Lamentations
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Voyagez à Ratchet. Vous allez bientôt rendre les quêtes au dessus du donjon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Rendez la quête Fuite de porto aux docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Montez la pente raide de la montagne au dessus des Cavernes des Lamentations. Suivez la flèche
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Rendez la quête L'Éclat luminescent
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Descendez dans la grotte cachée au-dessus de l'entrée des Cavernes des Lamentations. Suivez la flèche pour accéder à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Rendez la quête L'éradication des déviants
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Nalpak|r et à |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Rendez la quête Les peaux de déviants
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Utilisez votre Pierre de foyer pour revenir à Astranaar
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1025 >> Rendez la quête Une défense agressive
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Tuez|cRXP_ENEMY_Dal Bloodclaw|r. Dépouillez-le pour son |cRXP_LOOT_Crâne|r
    >>|cRXP_ENEMY_Dal Bloodclaw|r patrouille dans le village Crin-de-Chardon
    .complete 1054,1
    .unitscan Dal Bloodclaw
step << Warlock
    #completewith next
    .goto Ashenvale,31.50,31.50,40 >> Voyagez vers les Ruines d'Ordil'Aran
step << Warlock
    .goto Ashenvale,31.50,31.50
    >>Ramassez à l'arbre géant l'|cRXP_LOOT_Heartswood|r 
    .complete 1738,1
step
    #completewith next
    .goto Ashenvale,40.1,53.1,0
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    >>|cRXP_WARN_Faites en sorte de mourir du côté est du lac |cRXP_ENEMY_Murloc|r pour être envoyé du côté d'Astranaar|r
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >> Rendez la quête Mage invocateur
	>>Cette quête va vous récompenser de la [Lumière d'Elune]
    >>|T134754:0|t[Lumière d'Elune] - Confère l'immunité aux sorts et aux dégâts pendant 10 sec.
    >>Vous ne pouvez l'utiliser qu'UNE seule fois. Utilisez-la en cas d'urgence
    .target Sentinel Velene Starstrike
step
    #completewith FlyAuber
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
.dungeon !WC
#xprate <1.5
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Rendez la quête Diminution de la menace
    .turnin 1025 >> Rendez la quête Une défense agressive
    .target Raene Wolfrunner
step
.dungeon !WC
#xprate >1.49
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Rendez la quête Diminution de la menace
    .target Raene Wolfrunner
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >> Rendez la quête Diminution de la menace
    .target Raene Wolfrunner
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Volez à Sombrivage
    .target Daelyshia
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Rendez la quête On recherche : Fondeboue !
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 1275 >> Rendez la quête Recherches sur la corruption
    .target Gershala Nightwhisper
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Rendez la quête Les absences du Prospecteur
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Acceptez la quête Les absences du Prospecteur
    .target Archaeologist Hollee
step
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Prenez le bateau pour Teldrassil
    .zoneskip Darnassus
step
    #optional
    #completewith next
    .isOnQuest 741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Prenez le portail violet vers Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Rendez la quête Les absences du Prospecteur
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Acceptez la quête Les absences du Prospecteur
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Apprenez la compétence Bâtons
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Argent Guard Manados|r à l'étage
    .turnin 1199 >> Rendez la quête Le crépuscule descend
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dawnwatcher Selgorm|r à l'étage
    .turnin 1200 >> Rendez la quête L'infamie de Brassenoire
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Traversez le portail violet pour le Village de Rut'theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Prenez le chemin de vol du village de Rut'theran
    .fly Auberdine >> Volez à Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Prenez le bateau pour le Port de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +Commencez à cherche un groupe pour le Donjon d'Ombrecroc. Vous allez bientôt vous diriger vers la Forêt des Pins argentés pour faire le Donjon d'Ombrecroc
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Achetez autant de|r [Potions de soins] |cRXP_BUY_que possible|r
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Dewin Shimmerdawn|r n'en a plus en stock|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Prenez le chemin de vol du Port de Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >> Acceptez la quête La IIIe flotte
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .home >> Liez votre Pierre de foyer au Port de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Helbrek|r
    >>|cRXP_BUY_Achetez une|r [Cruche d'hydromiel nain]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Montez les escaliers vers l' |cRXP_FRIENDLY_Archéologue Flagongut|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archéologue Flagongut|r en haut des escaliers
    .target Archaeologist Flagongut
    .turnin 942 >> Rendez la quête Les absences du Prospecteur
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >> Rendez la quête La IIIe flotte
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Achetez un|r [Tube en bronze]
    >>|cRXP_WARN_Cet objet est en stock limité. Passez cette étape si |cRXP_FRIENDLY_Neal Allen|r n'en a plus en stock|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Tuez en boucle les |cRXP_ENEMY_Mosshides Gnolls|r en cherchant un groupe pour le Donjon d'Ombrecroc
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Il n'y a pas de quête pour le Donjon d'Ombrecroc. Vous devrez courir des Paluns à la Forêt des Pins argentés. Assurez-vous de rester sur la route quand vous traversez les Hautes-terres d'Arathi, et faites attention au |cRXP_ENEMY_Forsaken Courier|r
    >>Vous n'avez pas besoin d'aller au maître de vol des Hautes-terres d'Arathi pour l'instant
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Prenez le chemin de vol de Southshore
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >> Entrez dans le Donjon d'Ombrecroc
step
#xprate >1.49
.dungeon SFK
    +Il n'y a pas de quête pour le Donjon d'Ombrecroc
    >>Faites le Donjon d'Ombrecroc. Partez quand vous avez terminé
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Utilisez votre Pierre de foyer pour revenir au Port de Menethil
    >>|cRXP_BUY_Achetez de la nourriture/eau si besoin|r << !Warrior !Rogue
	>>|cRXP_BUY_Achetez de la nourriture si besoin|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Volez à Stormwind
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
]])
