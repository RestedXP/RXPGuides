if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance
#xprate >1.49 << Human Warlock
#name 12-14 Darkshore
#displayname 10-14 Darkshore << Dwarf Hunter
#displayname 11-14 Darkshore << !Human !Mage
#displayname 12-14 Darkshore << Gnome Mage
#subgroup RestedXP Allianz 1-20
#defaultfor Human/NightElf/Dwarf/Gnome !Warlock
#next 14-20 Bloodmyst

step << !NightElf
    #optional
    .abandon 6392 >> Abandon Return to Brock. You won't turn this in (NOT TRANSLATED IN :deDE YET)
step << !NightElf
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neal Allen|r auf dem unteren Stockwerk der Kaserne
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihm|r << Hunter
    .vendor 1448 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
	.target Neal Allen
    .money <0.08 << !Hunter
    .zoneskip Darkshore
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r innerhalb
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the dock für boat to Auberdine
    .zoneskip Darkshore
step << !NightElf
    #optional
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
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
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
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
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
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
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_die folgenden Gegenstände:|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
    #optional
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
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
    >>Level dein [Erste Hilfe] während du auf das Boot zur Dunkelküste wartest
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional << !NightElf
    #completewith BuzzBox1 << !NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_from him|r (NOT TRANSLATED IN :deDE YET)
    .turnin 6342 >> Gebt die Quest Der Flug nach Auberdine ab << NightElf
    .collect 4592,15 --Longjaw Mud Snapper
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >> Die Treppe hinauf in Richtung |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r oben
    .accept 983 >> Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaussiy|r
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Akzeptiert die Quest Verseuchtes Land
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
    .xp <11,1
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r und |cRXP_ENEMY_Waldschreiter|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig|r |cRXP_ENEMY_Waldschreiterjunges|r |T132307:0|t[Fliehen] |cRXP_WARN_bei unter 30% Gesundheit|r
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
    >>|cRXP_WARN_Sendet euer pet zum Angriff auf einen |cRXP_ENEMY_Distelbär|r. Sobald euer pet durch den |cRXP_ENEMY_Distelbär|r betäubt ist, gebt euer Haustier auf und beginnt es zu zähmen|r
    .train 2981 >> |cRXP_WARN_Greift mobs mit ihm an um|r |T132140:0|t[Klaue (Rang 2)] zu lernen
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
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
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    >>|cRXP_WARN_Ihr müsstet möglicherweise ins Wasser gehen, um sie zu finden|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Öffnet die |cRXP_PICK_Gestrandete Meereskreatur|r. Plündert sie für die |cRXP_LOOT_Meereskreaturknochen|r
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
    >>|cRXP_WARN_Benutzen|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Tollwütiger Distelbär|r. It can be used from any range as long as you have one targeted|r
    >>|cRXP_WARN_==BENUTZT NICHT DEN QUESTGEGENSTAND, WENN KEIN BÄR IN DER NÄHE IST==|r
    >>|cRXP_WARN_Du kannst die Falle verschwenden und die Quest damit unlösbar machen! Sollte dir das passieren, musst du zum Questgeber zurückkehren und um eine weitere Falle bitten.|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Lauft zum Rand des Furbolg-Lagers
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
#optional
    .xp 10+6760 >> Grind to 6760+/7600xp (NOT TRANSLATED IN :deDE YET)
step
    #label Auber1
    #completewith next
    .subzone 442 >> Reist nach Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
step
#optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
#optional
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Öffnet die |cRXP_PICK_Gestrandete Meereskreatur|r. Plündert sie für die |cRXP_LOOT_Meereskreaturknochen|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .accept 4681 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439,32.432,43.744,15 >> Reist zum Ende des Stegs, dann springt ins Wasser
step
    .goto 1439,31.841,46.304
    >>Öffnet die |cRXP_PICK_Skelettartige Meeresschildkröte|r. Plündert sie für die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step << !Dwarf/!Hunter
    .xp 12
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .target Tharnariun Treetender
step
#xprate >1.49
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .target Terenthis
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target Terenthis
step
#xprate >1.49
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .accept 958 >> Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .target Thundris Windweaver
step
#xprate >1.49
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .target Thundris Windweaver
step
    #optional
    #completewith HSAuber
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r und |cRXP_ENEMY_Waldschreiter|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig|r |cRXP_ENEMY_Waldschreiterjunges|r |T132307:0|t[Fliehen] |cRXP_WARN_bei unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<1,1
    .zoneskip Darkshore,1 << Druid
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>|cRXP_WARN_ENTER die Mondkin-Höhle|r
    .cast 18974 >> |cRXP_WARN_Benutzt|r |T132857:0|t[Cenarion Mondstaub] |cRXP_WARN_am |cRXP_PICK_Mondkin Stein|r im Inneren der Höhle, um|r |cRXP_ENEMY_Mondklaue|r herbeizurufen
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >> Tötet |cRXP_ENEMY_Mondklaue|r. Sprecht mit |cRXP_FRIENDLY_Mondklaue Willenskraft|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Reist zum geheimnisvollen roten Kristall
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto Darkshore,42.93,50.82,0
    .goto Darkshore,45.51,48.93,0
    .goto Darkshore,42.47,45.36,0
    .goto Darkshore,42.93,50.82,55,0
    .goto Darkshore,45.51,48.93,55,0
    .goto Darkshore,42.47,45.36,55,0
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Vermeidet |cRXP_ENEMY_Wilder Grell|r und |cRXP_ENEMY_Übler Grimmling|r auf dem weg zu töten|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
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
    >>Tötet |cRXP_ENEMY_Wilde Grells|r und |cRXP_ENEMY_Übler Grimmling|r. Plündert sie für |cRXP_LOOT_Grell-Ohrring|r
    >>|cRXP_WARN_Vermeidet es die |cRXP_ENEMY_Satyr der Deth'ryll|r vorerst zu töten|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
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
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Sie haben keine dynamischen Respawns. Überspringt diesen Schritt, falls ihr keine |rSatyr der Deth'ryll|cRXP_ENEMY_ findet|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isOnQuest 956
step
#xprate >1.49
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
#xprate <1.5
    #optional
    .abandon 956 >> Brecht die Quest Bashal'Aran ab
step << !Draenei
#xprate <1.5
    .goto 1439,53.4,28.8,0
    .goto 1439,54.8,22.8,0
    .goto 1439,44.6,24.8,0
    .goto 1439,49.8,32.8,0
    #completewith HSAuber
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    >>|cRXP_WARN_If you run out of |cRXP_ENEMY_Rabid Thistle Bears| to kill, skip this step. You will complete it later|r (NOT TRANSLATED IN :deDE YET)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .zoneskip Darkshore,1 << Druid
step << !Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestComplete 6001
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Fliegt nach Rut'theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    .isQuestComplete 6001
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .turnin 6001 >> Gebt die Quest Körper und Herz ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step
    #label HSAuber
    .hs >> Ruhestein nach Auberdine
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #completewith next
    .subzone 442 >> Kehrt nach Auberdine zurück
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Kauft|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm, bis ihr genauso viele|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_ oder mehr wie|r |T132832:0|t[Kleine Eier] |cRXP_BUY_die ihr derzeit habt|r
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
    >>|cRXP_WARN_Lauft zum |cRXP_PICK_Lagerfeuer|r auf dem Boden|r
    +|cRXP_WARN_Fangt an|r |T133971:0|t[Kochkunst] |T132834:0|t[Kräutergebackenes Ei] |cRXP_WARN_. zu kochen. Macht dies, bis eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_mindestens 10 erreicht hat|r
    >>Macht weiter, um eure |T133971:0|t[Kochkunst] |cRXP_WARN_zu leveln, bis euch die |r |T132832:0|t[kleinen Eier] |cRXP_WARN_ausgehen|r << !sod
    >>|cRXP_WARN_Es gibt eine Quest im Dämmerwald, die später eure|r |T133971:0|t[Kochkunst]|cRXP_WARN_ von 50 oder höher erfordert. Ihr könnt dies auch kochen, wenn ihr das nächste mal das Boot nehmt|r << !sod
    .skill cooking,50,1
    .skill cooking,<1,1 -- shows if cooking is >1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .isQuestComplete 4762
    .target Thundris Windweaver
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    #completewith FinalAuber
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r und |cRXP_ENEMY_Waldschreiter|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig|r |cRXP_ENEMY_Waldschreiterjunges|r |T132307:0|t[Fliehen] |cRXP_WARN_bei unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    .goto 1439,47.314,48.676
    >>Reist zum geheimnisvollen roten Kristall
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << !Dwarf/!Hunter
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leere Wasserröhre] |cRXP_WARN_am Mondbrunnen von Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Klickt den |cRXP_PICK_Geheimnisvoller roter Kristall|r
    >>|cRXP_WARN_Be careful of the two groups of |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r when you click it as they can aggro together|r (NOT TRANSLATED IN :deDE YET)
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
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
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawn locations in Ameth'Aran|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her. Skip this step if you can't find her|r (NOT TRANSLATED IN :deDE YET)
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
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r, |cRXP_ENEMY_Zuckender Hochgeborener|r und |cRXP_ENEMY_Klagende Hochgeborene|r. Plündert sie für ihre |cRXP_LOOT_Relikte|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
#xprate <1.5
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
step
#xprate <1.5
    .goto 1439,42.652,63.145
    >>Klickt |cRXP_PICK_Der Untergang von Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step
#xprate <1.5
    .goto 1439,42.373,61.815
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
#xprate <1.5
    .goto Darkshore,43.30,58.70
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
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
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r im südlichen Dunkelküste
    >>|cRXP_WARN_Seid vorsichtig, denn sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Reduziert alle Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#xprate <1.5
    .goto 1439,37.105,62.167
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step << Draenei
#xprate <1.5
    .goto 1439/1,579.500,5240.300
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
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
    >>Tötet |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
#xprate <1.5
    #completewith DarkshoreEnd
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 442 -- auberdine
    .subzoneskip 446 -- bashal'aran
step << !Draenei
#xprate <1.5
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
    .target Asterion
step
#xprate <1.5
    #label FinalAuber
    #completewith DarkshoreEnd
    .subzone 442 >> Reist nach Auberdine
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >> Gebt die Quest Werkzeuge der Hochgeborenen ab
    .target Thundris Windweaver
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4813 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab

    --TODO: ADD ids for all the other turn ins (survival guide)
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4722
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis sein Rollenspiel vorbei ist, falls jemand anderes gerade abgegeben hat|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid]|cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Draenei
	#label DarkshoreEnd
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
step << Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
    .target Asterion
step << Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei
    .hs >> Hearth to Bloodmyst Isle (NOT TRANSLATED IN :deDE YET)
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance
#name 14-20 Bloodmyst
#subgroup RestedXP Allianz 1-20
#defaultfor !Draenei
#next 20-21 Darkshore;27-30 Eschental << !Warlock
#next 20-23 Darkshore/Ashenvale << Warlock

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shalannius|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Shalannius
step
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Betretet Die Exodar über die hintere Rampe
step << Warrior/Paladin/Hunter/Rogue
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Behomat|r on the top floor (NOT TRANSLATED IN :deDE YET) << Warrior
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Handiir|r on the top floor (NOT TRANSLATED IN :deDE YET) << Paladin/Hunter/Rogue
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behomat|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Erlernt 2h Schwerter << Paladin/Warrior
    .train 199 >> Erlernen 2h Streitkolben << Paladin/Warrior
    .train 198 >> Erlernen 1h Maces << Rogue
    .train 201 >> Erlernt 1h Schwerter << Rogue
    .train 5011 >> Erlernen Armbrüste << Hunter
    .target Handiir
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vord|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ganaar|r
	.train 4188 >> Train |T136112:0|t[Great Stamina] (NOT TRANSLATED IN :deDE YET)
    .train 24549 >> Train |T136094:0|t[Natural Armor] (NOT TRANSLATED IN :deDE YET)
    .target Ganaar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sulaa
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Izmir|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Edirah|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Edirah
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Exodar Auctioneer|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Bloodmyst Isle shortly:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T134082:0|t[Irradiated Crystal Shards] (NOT TRANSLATED IN :deDE YET)
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
    .goto The Exodar,73.68,53.70,20 >> Verlassen Die Exodar
    .zoneskip The Exodar,1
step << !Draenei
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >> Get the The Exodar flight path (NOT TRANSLATED IN :deDE YET)
    .target Stephanos
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Travel north to Bloodmyst Isle (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_As you quest through Bloodmyst Isle, remember to keep 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you will need it for a class quest around level 24|r (NOT TRANSLATED IN :deDE YET) << Paladin !Draenei
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Der Korsallauf annehmen
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Travel north to Blood Watch (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Follow the arrow closely! Ensure you do not cross the bridge otherwise you will be dismounted!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Do not engage any mobs, attack, or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_If you become dismounted, abandon the quest "The Kessel Run"|r (NOT TRANSLATED IN :deDE YET)
step
    #optional
    #completewith next
    .subzone 3584 >> Lauf zum Teufelswald Watch
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 9646 >> GESUCHT: Todespranke annehmen
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Set your Hearthstone to Blood Watch (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 3584,1
    .bindlocation 3584
step
    #optional
    #sticky
    .abandon 9663 >> Abandon The Kessel Run (NOT TRANSLATED IN :deDE YET)
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >> Kenne deinen Feind annehmen
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >> Bärdarfsgüter annehmen
    .accept 9643 >> Würgeranken annehmen
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >> Pilzsammlung von Maatparm annehmen
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >> Forscherliga, für Gnome geeignet? annehmen
    .target Prospector Nachlan
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .accept 9641 >> Bestrahlte Kristallsplitter annehmen
	.turnin 9641 >> Turn in Irradiated Crystal Shards (NOT TRANSLATED IN :deDE YET)
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9641 >> Bestrahlte Kristallsplitter annehmen
    .target Vindicator Boros
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Exarch Admetius|r
    .accept 9693 >> Was Argus für mich bedeutet annehmen
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >> Von den Kristallen lernen annehmen
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Turn in What Argus Means to Me (NOT TRANSLATED IN :deDE YET)
    .accept 9694 >> Blutwacht annehmen
step << Dwarf Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Kill |cRXP_ENEMY_Sunhawk Spies|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << Dwarf Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Turn in Blood Watch (NOT TRANSLATED IN :deDE YET)
    .accept 9779 >> Abfangen der Nachricht annehmen
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Kurz geschnappt annehmen
step
	#completewith RuinousPolyspore
	>>Loote a |cRXP_LOOT_Blood Mushroom|ron the ground
    >>|cRXP_WARN_These are all throughout Bloodmyst Isle|r (NOT TRANSLATED IN :deDE YET)
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Loote a |cRXP_LOOT_Fel Cone Fungus|ron the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tzerak|r. Loot him for |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] (NOT TRANSLATED IN :deDE YET)
    .use 23900 >> |cRXP_WARN_Benutzen|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Zeichen der Legion annehmen
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Click the |cRXP_PICK_Nazzivus Monument Glyphs|r on the altar wall (NOT TRANSLATED IN :deDE YET)
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Kill |cRXP_ENEMY_Tzerak|r. Loot him for |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] (NOT TRANSLATED IN :deDE YET)
    .use 23900 >> |cRXP_WARN_Benutzen|r |T134518:0|t[|cRXP_LOOT_Tzerak's Armor Plate|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_WARN_If you do not see him patrolling through the camps, wait for him to spawn at the purple sigil on the ground at the south. It can take 3-6 minutes for him to spawn|r (NOT TRANSLATED IN :deDE YET)
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >> Zeichen der Legion annehmen
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
	>>Kill |cRXP_ENEMY_Nazzivus Satyrs|r und |cRXP_ENEMY_Nazzivus Felsworns|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Nazzivus Rogues|r if you aren't seeing |cRXP_ENEMY_Satyrs|r or |cRXP_ENEMY_Felsworns|r to make them respawn|r (NOT TRANSLATED IN :deDE YET)
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
	>>Loote a |cRXP_LOOT_Fel Cone Fungus|ron the ground
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#completewith next
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger] |cRXP_WARN_on|r |cRXP_ENEMY_Blacksilt Scouts|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_Blacksilt Scouts|r (NOT TRANSLATED IN :deDE YET)
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
	>>Kill |cRXP_ENEMY_Cruelfin|r. Loot him for the |T133339:0|t[|cRXP_LOOT_Red Crystal Pendant|r] (NOT TRANSLATED IN :deDE YET)
    .use 23870 >>|cRXP_WARN_Use the|r |T133339:0|t[|cRXP_LOOT_Red Crystal Pendant|r] |cRXP_WARN_to start the quest|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Cruelfin|r |cRXP_WARN_patrols along the shoreline|r (NOT TRANSLATED IN :deDE YET)
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >> Schandflosses Anhänger annehmen
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	.use 23995 >>|cRXP_WARN_Use the|r |T135619:0|t[Murloc Tagger] |cRXP_WARN_on|r |cRXP_ENEMY_Blacksilt Scouts|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Do NOT kill the|r |cRXP_ENEMY_Blacksilt Scouts|r (NOT TRANSLATED IN :deDE YET)
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Impact Site Crystal|r (NOT TRANSLATED IN :deDE YET)
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Kill a |cRXP_ENEMY_Stinkhorn Striker|r. Loot it for the |cRXP_LOOT_Aquatic Stinkhorn|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_You may also loot the |cRXP_LOOT_Aquatic Stinkhorn|runterwasser|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #completewith next
    .subzone 3584 >> Lauf zum Teufelswald Watch
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >> Turn in Cruelfin's Necklace (NOT TRANSLATED IN :deDE YET)
    .turnin 9629 >> Turn in Catch and Release (NOT TRANSLATED IN :deDE YET)
    .accept 9574 >> Opfer der Verderbnis annehmen
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Kill |cRXP_ENEMY_Corrupted Treants|r. Loote sie für ihre |cRXP_LOOT_Crystallized Bark|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Turn in Victims of Corruption (NOT TRANSLATED IN :deDE YET)
    .accept 9578 >> Suche nach Galaen annehmen
    .target Morae
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9594 >> Turn in Signs of the Legion (NOT TRANSLATED IN :deDE YET)
    .turnin 9567 >> Turn in Know Thine Enemy (NOT TRANSLATED IN :deDE YET)
    .accept 9569 >> Die Bedrohung bekämpfen annehmen
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9567 >> Turn in Know Thine Enemy (NOT TRANSLATED IN :deDE YET)
    .accept 9569 >> Die Bedrohung bekämpfen annehmen
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .accept 9641 >> Bestrahlte Kristallsplitter annehmen
	.turnin 9641 >> Turn in Irradiated Crystal Shards (NOT TRANSLATED IN :deDE YET)
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >> Turn in Learning from the Crystals (NOT TRANSLATED IN :deDE YET)
    .accept 9620 >> Das vermisste Vermessungsteam annehmen
    .target Harbinger Mikolaas
step << !Dwarf/!Hunter
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Kill |cRXP_ENEMY_Sunhawk Spies|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step << !Dwarf/!Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9694 >> Turn in Blood Watch (NOT TRANSLATED IN :deDE YET)
    .accept 9779 >> Abfangen der Nachricht annehmen
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Kill |cRXP_ENEMY_Sunhawk Spies|r. Loote sie für den |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    #completewith next
    .subzone 3591 >> Travel to the Ruins of Loreth'Aran (NOT TRANSLATED IN :deDE YET)
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit Küchenchef Jessen |cRXP_FRIENDLY_Draenei Cartographer|r
    .turnin 9620 >> Turn in The Missing Survey Team (NOT TRANSLATED IN :deDE YET)
    .accept 9628 >> Bergung der Daten annehmen
    .target Draenei Cartographer
step
	#completewith next
	>>Loote a |cRXP_LOOT_Ruinous Polyspore|ron the ground
    >>|cRXP_WARN_It looks like a small blue mushroom found around the Naga ruins|r (NOT TRANSLATED IN :deDE YET)
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Kill |cRXP_ENEMY_Wrathscale Marauders|r und |cRXP_ENEMY_Wrathscale Sorceresses|r. Loote sie für den |cRXP_LOOT_Survey Data Crystal|r
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
	>>Loote a |cRXP_LOOT_Ruinous Polyspore|ron the ground
    >>|cRXP_WARN_It looks like a small blue mushroom found around the Naga ruins|r (NOT TRANSLATED IN :deDE YET)
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
	>>Loote a |cRXP_LOOT_Blood Mushroom|ron the ground
    >>|cRXP_WARN_These appear throughout Bloodmyst Isle|r (NOT TRANSLATED IN :deDE YET)
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith next
    .subzone 3598 >> Lauf nach Schlägereiland
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .accept 9687 >> Wiederherstellung der Heiligkeit annehmen
    .target Prince Toreth
step
    #completewith FlyExo
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >> Turn in Maatparm Mushroom Menagerie (NOT TRANSLATED IN :deDE YET)
    .accept 9649 >> Yseras Tränen annehmen
    .target Maatparm
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9779 >> Turn in Intercepting the Message (NOT TRANSLATED IN :deDE YET)
    .accept 9696 >> Übersetzungen... annehmen
step
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Interrogator Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >> Turn in Translations... (NOT TRANSLATED IN :deDE YET)
    .accept 9698 >> Audienz beim Propheten annehmen
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9628 >> Turn in Salvaging the Data (NOT TRANSLATED IN :deDE YET)
    .accept 9584 >> Die zweite Probe annehmen
    .target Harbinger Mikolaas
step
    #label FlyExo
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fliege nach Die Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Kopf down into Die Exodar
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .turnin 9698 >> Turn in Audience with the Prophet (NOT TRANSLATED IN :deDE YET)
    .accept 9699 >> Was ist wahr? annehmen
step
    .isQuestTurnedIn 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .accept 9699 >> Was ist wahr? annehmen
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
	.isOnQuest 9699,9584,9643,9580,10063
    .hs >> Hearth to Blutwacht
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
	.isOnQuest 9699,9584,9643,9580,10063
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Fliege nach Blutwacht
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9699 >> Turn in Truth or Fiction (NOT TRANSLATED IN :deDE YET)
    .accept 9700 >> Licht ins Dunkel bringen annehmen
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_at the|r |cRXP_PICK_Altered Bloodmyst Crystal|r (NOT TRANSLATED IN :deDE YET)
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9584 >> Turn in The Second Sample (NOT TRANSLATED IN :deDE YET)
    .accept 9585 >> Die letzte Probe annehmen
    .target Harbinger Mikolaas
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >> Travel to Axxarien (NOT TRANSLATED IN :deDE YET)
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loote sie für ihre |cRXP_LOOT_Thorny Constrictor Vines|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Kill any you see on the way to Axxarien|r (NOT TRANSLATED IN :deDE YET)
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Loote die |cRXP_LOOT_Corrupted Crystals|r auf dem Boden
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Kill |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Axxarien Shadowstalkers|r und |cRXP_ENEMY_Axxarien Hellcallers|r
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
	.use 23877 >>|cRXP_WARN_Use the|r |T134709:0|t[Crystal Mining Pick] |cRXP_WARN_on the|r |cRXP_PICK_Axxarien Crystal|r (NOT TRANSLATED IN :deDE YET)
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Loote die |cRXP_LOOT_Corrupted Crystals|r auf dem Boden
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Kill |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Axxarien Shadowstalkers|r und |cRXP_ENEMY_Axxarien Hellcallers|r
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
    >>Kill |cRXP_ENEMY_Axxarien Shadowstalkers|r und |cRXP_ENEMY_Axxarien Hellcallers|r
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
    >>Loote die |cRXP_LOOT_Corrupted Crystals|r auf dem Boden
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loote sie für ihre |cRXP_LOOT_Thorny Constrictor Vines|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Kill |cRXP_ENEMY_Deathclaw|r. Loot him for |cRXP_LOOT_Deathclaw's Paw|r (NOT TRANSLATED IN :deDE YET)
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 10063 >> Turn in Explorers' League, Is That Something for Gnomes? (NOT TRANSLATED IN :deDE YET)
    .accept 9548 >> Gestohlene Ausrüstung annehmen
    .accept 9549 >> Schwarzschlammartefakte annehmen
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Clopper Wizbang|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if he doesn't have one|r (NOT TRANSLATED IN :deDE YET)
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Kill |cRXP_ENEMY_Blacksilt Seers|r. Loote sie für ihre |cRXP_LOOT_Crude Murloc Idols|r
    >>Kill |cRXP_ENEMY_Blacksilt Warriors|r und |cRXP_ENEMY_Blacksilt Shorestrikers|r. Loote sie für ihre |cRXP_LOOT_Crude Murloc Knives|r
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
    >>Loote |cRXP_LOOT_Clopper's Equipment|r auf dem Boden
    >>|cRXP_WARN_It can spawn in any of the murloc camps|r (NOT TRANSLATED IN :deDE YET)
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
	>>Kill |cRXP_ENEMY_Blacksilt Seers|r. Loote sie für ihre |cRXP_LOOT_Crude Murloc Idols|r
    >>Kill |cRXP_ENEMY_Blacksilt Warriors|r und |cRXP_ENEMY_Blacksilt Shorestrikers|r. Loote sie für ihre |cRXP_LOOT_Crude Murloc Knives|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 9548 >> Turn in Pilfered Equipment (NOT TRANSLATED IN :deDE YET)
    .turnin 9549 >> Turn in Artifacts of the Blacksilt (NOT TRANSLATED IN :deDE YET)
    .target Clopper Wizbang
step
    .use 23837 >>|cRXP_WARN_Use the|r |T134269:0|t[Weathered Treasure Map] |cRXP_WARN_to start the quest|r (NOT TRANSLATED IN :deDE YET)
    .accept 9550 >> Wohin führt die Karte? annehmen
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Kill |cRXP_ENEMY_Void Anomalies|r and explore the Sun Portal Site (NOT TRANSLATED IN :deDE YET)
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
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loote sie für ihre |cRXP_LOOT_Thorny Constrictor Vines|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_Mutated Constrictors|r as you will have time later to finish the|r |cRXP_ENEMY_Elder Brown Bears|r (NOT TRANSLATED IN :deDE YET)
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
	>>Loote die |cRXP_LOOT_Dragon Bones|r auf dem Boden
    >>|cRXP_WARN_These can be difficult to see and are normally found around the small camps|r (NOT TRANSLATED IN :deDE YET)
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Klick auf das |cRXP_PICK_Battered Ancient Book|r auf dem Boden
    .turnin 9550 >> Turn in A Map to Where? (NOT TRANSLATED IN :deDE YET)
    .accept 9557 >> Entziffern des Buchs annehmen
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anchorite Paetheus|r
    .turnin 9557 >> Turn in Deciphering the Book (NOT TRANSLATED IN :deDE YET)
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9585 >> Turn in The Final Sample (NOT TRANSLATED IN :deDE YET)
    .accept 10064 >> Sprecht zu der Hand annehmen
    .turnin 9646 >> Turn in WANTED: Deathclaw (NOT TRANSLATED IN :deDE YET)
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anchorite Paetheus|r
    .accept 9561 >> Nolkais Worte annehmen
    .accept 9632 >> Neue Verbündete annehmen
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9700 >> Turn in I Shoot Magic Into the Darkness (NOT TRANSLATED IN :deDE YET)
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Kuros|r
    .accept 9703 >> Der Kryokern annehmen
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities (NOT TRANSLATED IN :deDE YET)
    .turnin 9643 >> Turn in Constrictor Vines (NOT TRANSLATED IN :deDE YET)
    .accept 9647 >> Ausmerzen der Falter annehmen
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9643 >> Turn in Constrictor Vines (NOT TRANSLATED IN :deDE YET)
    .accept 9647 >> Ausmerzen der Falter annehmen
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9569 >> Turn in Containing the Threat (NOT TRANSLATED IN :deDE YET)
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >> Forschungsreise in den Tod annehmen
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r (NOT TRANSLATED IN :deDE YET)
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you head to The Cyro-Core|r (NOT TRANSLATED IN :deDE YET)
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >> Travel to The Cyro-Core (NOT TRANSLATED IN :deDE YET)
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Klick auf |cRXP_FRIENDLY_Galaen's Corpse|r
    >>|cRXP_WARN_Avoid trying to kill many |cRXP_ENEMY_Sunhawk Reclaimers|r if possible while getting to|r |cRXP_FRIENDLY_Galaen's Corpse|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9578 >> Turn in Searching for Galaen (NOT TRANSLATED IN :deDE YET)
    .accept 9579 >> Galaens Schicksal annehmen
    .accept 9706 >> Galaens Tagebuch - Das Schicksal von Verteidiger Saruan annehmen
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Kill |cRXP_ENEMY_Sunhawk Reclaimers|r. Loot them for |cRXP_LOOT_Galaen's Amulet|r and their |cRXP_LOOT_Medical Supplies|r (NOT TRANSLATED IN :deDE YET)
    >>You can also loot the |cRXP_LOOT_Medical Supplies|r on the ground (NOT TRANSLATED IN :deDE YET)
	>>|cRXP_WARN_Use the pillars and structures to LoS if needed to avoid their|r |T135812:0|t[Fireball] |cRXP_WARN_wirkt|r
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.isOnQuest 9580
	#completewith GFate
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r (NOT TRANSLATED IN :deDE YET)
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you head to Blood Watch|r (NOT TRANSLATED IN :deDE YET)
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >> Lauf zum Teufelswald Watch
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >> Turn in Galaen's Fate (NOT TRANSLATED IN :deDE YET)
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9703 >> Turn in The Cryo-Core (NOT TRANSLATED IN :deDE YET)
    .turnin 9706 >> Turn in Galaen's Journal - The Fate of Vindicator Saruan (NOT TRANSLATED IN :deDE YET)
    .accept 9711 >> Matis der Grausame annehmen
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9748 >> Trinkt nicht das Wasser annehmen
    .accept 9753 >> Was wir wissen... annehmen << Draenei
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities (NOT TRANSLATED IN :deDE YET)
    .turnin 9647 >> Turn in Culling the Flutterers (NOT TRANSLATED IN :deDE YET)
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities (NOT TRANSLATED IN :deDE YET)
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >> Turn in Culling the Flutterers (NOT TRANSLATED IN :deDE YET)
    .target Tracker Lyceon
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9753 >> Turn in What We Know... (NOT TRANSLATED IN :deDE YET)
    .accept 9756 >> Accept What We Don't Know... (NOT TRANSLATED IN :deDE YET)
    .target Exarch Admetius
step << Draenei
    .goto Bloodmyst Isle,54.312,54.215
    >>Sprich mit the |cRXP_ENEMY_Captured Sunhawk Agent|rinside the |cRXP_PICK_Makeshift Prison|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9756 >> Turn in What We Don't Know... (NOT TRANSLATED IN :deDE YET)
    .accept 9760 >> Verteidigers Ruh annehmen
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r (NOT TRANSLATED IN :deDE YET)
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r (NOT TRANSLATED IN :deDE YET)
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Scout Jorli|r und |cRXP_FRIENDLY_Scout Loryi|r
    .turnin 10064 >> Turn in Talk to the Hand (NOT TRANSLATED IN :deDE YET)
    .accept 10065 >> Eine Schneise schlagen annehmen
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >> Geschöpfe aus der Leere annehmen
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 9760 >> Turn in Vindicator's Rest (NOT TRANSLATED IN :deDE YET) << Draenei
    .accept 10066 >> Alles im Griff annehmen
    .accept 10067 >> Besudelte Wassergeister annehmen
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
    .use 24278 >>|cRXP_WARN_Use the|r |T134536:0|t[Flare Gun] |cRXP_WARN_on|r |cRXP_ENEMY_Matis der Grausame|r
    >>|cRXP_WARN_This will summon a |cRXP_FRIENDLY_Tracker of the Hand|r which will capture him once his health reaches 50%. Try not to get aggro as |cRXP_ENEMY_Matis the Cruel|r hits very hard|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Matis der Grausame|r |cRXP_WARN_patrols a large section of the road. His patrol path is marked on your map|r
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Kill |cRXP_ENEMY_Void Critters|r
    >>|cRXP_WARN_You must kill the |cRXP_ENEMY_Void Anomalies|r to trigger |cRXP_ENEMY_Void Critters|r to spawn|r (NOT TRANSLATED IN :deDE YET)
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r (NOT TRANSLATED IN :deDE YET)
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
    >>|cRXP_WARN_Look out for these as you complete other objectives|r (NOT TRANSLATED IN :deDE YET)
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Kill |cRXP_ENEMY_Mutated Tanglers|r
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
    >>Kill |cRXP_ENEMY_Enraged Ravagers|r
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
	>>Kill |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
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
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loote sie für ihre |cRXP_LOOT_Elder Brown Bear Flank|r
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
	>>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10066 >> Turn in Oh, the Tangled Webs They Weave (NOT TRANSLATED IN :deDE YET)
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Scout Jorli|r
    .turnin 10065 >> Turn in Cutting a Path (NOT TRANSLATED IN :deDE YET)
    .target Scout Jorli
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Töte |cRXP_ENEMY_Besudelte Wassergeister|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10067 >> Turn in Fouled Water Spirits (NOT TRANSLATED IN :deDE YET)
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Researcher Cornelius|r
    .accept 9670 >> Sie leben! Vielleicht... annehmen
    .target Researcher Cornelius
step
	#completewith next
	>>Töte die |cRXP_ENEMY_Webbed Creatures|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't aggro you|r (NOT TRANSLATED IN :deDE YET)
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Kill |cRXP_ENEMY_Myst Leechers|r, |cRXP_ENEMY_Myst Spinners|r and |cRXP_ENEMY_Zarakh|r atop Amberweb Pass (NOT TRANSLATED IN :deDE YET)
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
	>>Töte die |cRXP_ENEMY_Webbed Creatures|r
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Webbed Creatures|r from range if possible incase a hostile mob pops out, it won't aggro you|r (NOT TRANSLATED IN :deDE YET)
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Researcher Cornelius|r
    .turnin 9670 >> Turn in They're Alive! Maybe... (NOT TRANSLATED IN :deDE YET)
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>|cRXP_WARN_Use the|r |T134870:0|t[Water Sample Flask] |cRXP_WARN_at the base of the waterfall|r (NOT TRANSLATED IN :deDE YET)
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step << Druid
    .isQuestAvailable 26,6121
	#completewith Lessons
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestAvailable 26,6121
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >> Fliegt nach Rut'theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    .isQuestAvailable 26,6121
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    #label Lessons
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .accept 26 >> Akzeptiert die Quest Eine wertvolle Lektion
    .accept 6121 >> Akzeptiert die Quest Neue Lektionen
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze|r oben
    .turnin 6121 >> Gebt die Quest Neue Lektionen ab
    .accept 6122 >> Akzeptiert die Quest Die eigentliche Ursache
    .turnin 26 >> Gebt die Quest Eine wertvolle Lektion ab
    .accept 29 >> Akzeptiert die Quest Prüfung des Sees
    .target Dendrite Starblaze
step << Druid
    #loop
    .goto Moonglade,54.2,55.6,0
    .goto Moonglade,53.1,48.4,60,0
    .goto Moonglade,54.2,55.6,60,0
    .goto Moonglade,60.5,58.5,60,0
    >>Open a |cRXP_PICK_Bauble Container|r in the lake. Loot it for the |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r] (NOT TRANSLATED IN :deDE YET)
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Use the|r |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r] |cRXP_WARN_at the Shrine of Remulos tree|r (NOT TRANSLATED IN :deDE YET)
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Gebt die Quest Prüfung des Sees ab
    .accept 272 >> Akzeptiert die Quest Prüfung des Seelöwen
    .target Tajarri
step
    .isOnQuest 9748,9669,9741,9711
    .hs >> Hearth to Blutwacht
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >> Turn in The Missing Expedition (NOT TRANSLATED IN :deDE YET)
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >> Turn in Critters of the Void (NOT TRANSLATED IN :deDE YET)
    .turnin 9748 >> Turn in Don't Drink the Water (NOT TRANSLATED IN :deDE YET)
    .accept 9746 >> Grenze der Erschöpfung annehmen << Hunter/Shaman/Mage/Warlock
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9711 >> Turn in Matis the Cruel (NOT TRANSLATED IN :deDE YET)
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities (NOT TRANSLATED IN :deDE YET)
    .turnin 9647 >> Turn in Culling the Flutterers (NOT TRANSLATED IN :deDE YET)
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >> Turn in The Bear Necessities (NOT TRANSLATED IN :deDE YET)
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >> Turn in Culling the Flutterers (NOT TRANSLATED IN :deDE YET)
    .target Tracker Lyceon
step
    #completewith next
    .subzone 3591 >> Travel to the Ruins of Loreth'Aran (NOT TRANSLATED IN :deDE YET)
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Klick auf das |cRXP_PICK_Mound of Dirt|r auf dem Boden
    .turnin 9561 >> Turn in Nolkai's Words (NOT TRANSLATED IN :deDE YET)
step
    #completewith next
    .subzone 3598 >> Lauf nach Schlägereiland
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9687 >> Turn in Restoring Sanctity (NOT TRANSLATED IN :deDE YET)
    .accept 9688 >> Im Traum annehmen
    .target Prince Toreth
step
	#completewith TurninRazormaw
	>>Loote |cRXP_LOOT_Yseras Tränen|r auf dem Boden
    >>|cRXP_WARN_These look like small green mushrooms|r (NOT TRANSLATED IN :deDE YET)
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
    >>Kill |cRXP_ENEMY_Veridian Whelps|r und |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9688 >> Turn in Into the Dream (NOT TRANSLATED IN :deDE YET)
    .accept 9689 >> Messerrachen annehmen
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Click the |cRXP_PICK_Ever-burning Pyre|r atop the mountain to summon |cRXP_ENEMY_Razormaw|r (NOT TRANSLATED IN :deDE YET)
    .timer 36,Razormaw RP (NOT TRANSLATED IN :deDE YET)
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Töte |cRXP_ENEMY_Messerrachen|r
    >>|cRXP_ENEMY_Messerrachen|r |cRXP_WARN_is a level 20 Elite. It takes roughly 35 seconds for him to land|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Findet bei Bedarf eine Gruppe dafür. Überspringt diesen Schritt, wenn ihr keine Gruppe finden oder ihn nicht allein besiegen könnt|r
    >>|cRXP_WARN_Remember to cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on yourself or a party member if required|r (NOT TRANSLATED IN :deDE YET) << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    #label TurninRazormaw
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9689 >> Turn in Razormaw (NOT TRANSLATED IN :deDE YET)
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
	>>Loote |cRXP_LOOT_Yseras Tränen|r auf dem Boden
    >>|cRXP_WARN_These look like small green mushrooms|r (NOT TRANSLATED IN :deDE YET)
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
    >>Kill |cRXP_ENEMY_Sunhawk Pyromancers|r und |cRXP_ENEMY_Sunhawk Defenders|r
    >>|cRXP_WARN_Complete this only if you are less than 90% through level 19. It is important you hit level 20 before leaving Bloodmyst Isle|r (NOT TRANSLATED IN :deDE YET)
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
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 3584
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >> Turn in Ysera's Tears (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .isQuestComplete 9746
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9746 >> Turn in Limits of Physical Exhaustion (NOT TRANSLATED IN :deDE YET)
    .target Vindicator Aesom
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vindicator Aesom
    .xp <20,1
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fliege nach Die Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Mage/Hunter/Warrior/Priest
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Kopf down into Die Exodar
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Behomat|r on the top floor (NOT TRANSLATED IN :deDE YET)
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behomat|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Behomat
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sulaa|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sulaa
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Edirah|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >> Train |T135756:0|t[Teleport: Exodar] (NOT TRANSLATED IN :deDE YET)
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Buy at least one|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vord|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Erlernt eure Begleiterfähigkeiten
    .target Ganaar
step << Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Equip it later once you've trained Bows|r (NOT TRANSLATED IN :deDE YET) << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Schwerer Doppelbogen]
    >>|cRXP_WARN_Equip it later once you've trained Bows|r (NOT TRANSLATED IN :deDE YET) << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
    .train 264,3
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from him or check the Auction House for a better one|r (NOT TRANSLATED IN :deDE YET)
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +|cRXP_WARN_Equip the|r |T135139:0|t[Burning Wand] (NOT TRANSLATED IN :deDE YET)
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Izmir|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Izmir
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    >>|cRXP_FRIENDLY_Huntress Kella Nightbow|r |cRXP_WARN_is located outside the back entrance of The Exodar|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9632 >> Turn in Newfound Allies (NOT TRANSLATED IN :deDE YET)
    .accept 9633 >> Der Weg nach Auberdine annehmen
    .target Huntress Kella Nightbow
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step << Druid
    .goto Moonglade,48.102,67.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine>>Fliegt zur Dunkelküste
    .target Sindrayl
step << !Druid
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step << !NightElf Hunter/!NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
step << !NightElf Hunter/Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
step << !NightElf Hunter
    >>|cRXP_WARN_Geht die Rampe auf der rechten Seite von|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Erlernt eure Begleiterfähigkeiten
    .target Silvaria
step << !NightElf Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Erlernen Bogen
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
step << !NightElf Hunter
    #ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r (NOT TRANSLATED IN :deDE YET)
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Schwerer Doppelbogen]
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #optional
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unterirdisch mit |cRXP_FRIENDLY_Syurna|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Syurna
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihr oder überprüft das Auktionshaus nach etwas Besserem/Günstigerem|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword]|cRXP_BUY_. Equip it at level 21|r (NOT TRANSLATED IN :deDE YET)
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darnassus,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Fliege nach Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shaussiy|r unten
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >> Reist zum Anlegestelle des Hafens von Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Ihr werdet nun zu den Todesminen reisen|r
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brak Durnad|r innerhalb
    .vendor 1441 >>|cRXP_BUY_Kauft ein|r |T135329:0|t[Henkerschwert] |cRXP_BUY_von ihm (falls vorhanden und ihr es euch leisten könnt)|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brak Durnad|r innerhalb
    .vendor 1441 >>|cRXP_BUY_Kauft ein|r |T135329:0|t[Henkerschwert] |cRXP_BUY_von ihm (falls vorhanden und ihr es euch leisten könnt)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Legt das|r |T135329:0|t[Henkerschwert] an
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << !NightElf !Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milstaff Sturmauge|r
    .train 3562 >> Lerne |T135757:0|t[Teleportieren: Ironforge]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Betretet |cRXP_FRIENDLY_Jubahl Corpseseekers|r Haus
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubaal Leichenfund|r
    .vendor 6382 >> |cRXP_BUY_Kauft|r |T133738:0|t[Grimoires] |cRXP_BUY_für eure Pets, falls ihr wollt|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Springt vom Ende des Docks und schwimmt zum Wegpunkt
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Nutzt die Selbstservice-Funktion zum Freigeben des Charakters, um nach Eisenschmiede zu teleportieren. Ihr müsst euch an dieser Stelle abmelden, geht dann dann zum Hilfemenü auf einem anderen Charakter (alternativ fügt den Unstuck-Link unten in den Browser von Euch ein), scrollt dann zum Self Service hinunter. Klickt auf den Charakter von Euch und bewegt euch. Falls ihr euch nicht freigeben könnt, überspringt diesen Schritt und schwimmt entlang der Berge nach Westfall
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> |cRXP_WARN_Click here for video reference|r (NOT TRANSLATED IN :deDE YET)
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> |cRXP_WARN_Click here for the unstuck link for US servers|r (NOT TRANSLATED IN :deDE YET)
    .link https://eu.battle.net/support/en/article/32275 >> |cRXP_WARN_Click here for the unstuck link for EU servers|r (NOT TRANSLATED IN :deDE YET)
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
    .zone Westfall >> Falls der Online-Unstuck nicht verfügbar ist, schwimmt nach Westfall
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Lauft die Küste hoch und macht euch auf den Weg zur Späherkuppe
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Lauft nach Sturmwind
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
	.xp <20,1
    .target Larimaine Purdue
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Mage/Rogue/Warlock
    .train 1180 >> Erlernen Dolche << Mage/Druid/Priest
    .train 202 >> Erlernt 2h Schwerter << Warrior/Paladin/Hunter
    .target Woo Ping
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind << !Human
    .fly Westfall >> Fliegt nach Westfall << Human/Dwarf Warrior/Gnome Warrior/Rogue/Warlock
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .target Thor
step << Rogue
.dungeon DM
    #label GryanAll
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .accept 65 >> Die Bruderschaft der Defias annehmen
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
    >>|cRXP_WARN_tötet Gegner |cRXP_ENEMY_Gnolls|r südlich von der Späherkuppe während ihr auf eine Todesminen-Gruppe wartet|r
    .subzone 20 >>Reist nach Mondbruch, sobald eure Gruppe voll ist
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Betretet das Defias-Versteck mit eurer Gruppe
step
.dungeon DM
    #completewith EnterDM
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    >>|cRXP_WARN_Ihr könnt dies auch in den Todesminen abschließen|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
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
    >>Tötet |cRXP_ENEMY_Großknecht Thistlenettle|r. Plündert ihn für |cRXP_LOOT_Thistlenettles Abzeichen|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
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
    .subzone 1581,2 >> Betretet die Instanz Die Todesminen 
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Sneed|r. Plündert Ihn für |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Edwin VanCleef|r. Plündert ihn für |cRXP_LOOT_Van Cleevs Kopf|r und |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] (NOT TRANSLATED IN :deDE YET)
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Verlasst die Todesminen über den hinteren Ausgang östlich von |cRXP_ENEMY_Edwin van Cleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .turnin 214 >> Gebt die Quest Rote Seidenkopftücher ab
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_Cast|r |T135763:0|t[Teleportieren: Sturmwind]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elsharin|r oben auf dem Turm
    .train 2138 >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith DevourerofSouls
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Betritt Zum Geschlachteten Lamm. Geht die Treppe hinunter
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .xp <22,1
step << Warlock
.dungeon DM
    #label DevourerofSouls
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Reist zu |cRXP_FRIENDLY_Duthorian Rall|r in die Kathedrale von Sturmwind
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 19835 >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Reist zu |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der Sturmwind-Kathedrale
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r innerhalb
    .train 8103 >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    .train 1856 >> Trainiere deine Klassenfähigkeiten
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
    .goto 1453,75.754,60.369,12 >> Reist zu |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r im SI:7 im oberen Stockwerk
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge Mountains >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
step << !Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Verlasst Sturmwind
step << !Human Rogue
.dungeon DM
    #optional
    .isOnQuest 2281,2360
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step << !Human
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    #label RedridgeRendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
    .target Lucius
step << Rogue
.dungeon DM
    .isOnQuest 65
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wiley der Schwarze|r oben
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
	.target Wiley the Black
step << Rogue
.dungeon DM
    #completewith next
    .subzone 97 >> Reist zu Althers Mühle
step << Rogue
.dungeon DM
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_Ihr MÜSST dies für eure|r |T132290:0|t[Gifte]|cRXP_WARN_ Quest später machen|r
    >>|cRXP_WARN_Steht auf dem Wegpunkt. Positioniert eure Kamera und euren Cursor, bis ihr 3 |cRXP_PICK_Übungsschließkisten|r gleichzeitig anklicken könnt, ohne das ihr euch bewegen müsst|r
    .skill lockpicking,80 >>|cRXP_WARN_Öffnet die |cRXP_PICK_Übungsschließkassette|r am Boden in Althers Mühle, bis euer|r |T136058:0|t[Schlossknacken] 80 erreicht|r
step << Rogue
.dungeon DM
	.goto Redridge Mountains,52.05,44.69
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step << Rogue
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
step << Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Sentinel Hill >> Fliegt nach Westfall
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
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
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Missgestaltete Drohne der Defias|r. Plündert es für |cRXP_LOOT_Turmschlüssel der Defias|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Die |cRXP_ENEMY_Missgestaltete Drohne der Defias|r taucht am Eingang des Turms auf und patrouilliert um das Äußere des Turms herum|r
    >>|cRXP_WARN_Passt auf, da er sehr viel Schaden verursacht. Falls von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_abbricht, nutzt schnell|r |T132307:0|t[Sprinten] |cRXP_WARN_und lauft weg|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Malformed Defias Drone
step << Rogue
.dungeon DM
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
step << Rogue
.dungeon DM
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Reist bis zum 2. Stockwerk des Turms hinauf. Während ihr in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_seid und die |cRXP_ENEMY_Turmwachposten der Defias|r nicht neben euch sind, springt auf den Stuhl, dann auf die Lampe, dann auf das Bücherregal oben auf dem Wegpunkt|r
    >>|cRXP_WARN_Stoppt manuell|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_, dann drückt von Euch "Interagieren mit Ziel" Taste, um das |cRXP_PICK_Dämmerwaldtruhe|r zu öffnen. Plündert sie für|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_NOTIZ: Eure|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_wird kurz nachdem ihr gelootet habt nicht funktionieren|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_Seid bereit zu laufen, wenn ihr nicht die |cRXP_ENEMY_Turmwachposten der Defias|r im 2. Stockwerk tötet. Sie werden euch wahrscheinlich permanent angreifen (aber nicht treffen), wenn ihr auf dem Bücherregal steht, da es ein Ausweich-Platz ist|r
    >>|cRXP_WARN_Wenn ihr einen|r |T135641:0|t[Dolch] |cRXP_WARN_in euren Taschen oder ausgerüstet habt, könnt ihr|r |T132282:0|t[Hinterhalt] |cRXP_WARN_auf die |cRXP_ENEMY_Turmpatrouille der Defias|r und |cRXP_ENEMY_Turmwachposten der Defias|r im Inneren wirken, um sie sofort zu töten. Seid bereit zu laufen, nachdem ihr den ersten |cRXP_ENEMY_Turmwachposten der Defias|r getötet habt und denkt daran, dass ihr von oben getroffen werden könnt. Das ist langsamer, aber VIEL sicherer|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Missgestaltete Drohne der Defias|r und |cRXP_ENEMY_Drohne der Defias|r am Eingang des Turms sein können, wenn ihr aus ihm laufen müsst|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
.dungeon DM
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Wirkt|T136225:0|t[Steingestalt],um|T136230:0|t[Berührung von Zanzil] Debuff zu entfernen|r
    .aura -9991
step << Rogue
.dungeon DM
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
.dungeon DM
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
.dungeon DM
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .target Master Mathias Shaw
step << Rogue
.dungeon DM
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jasper Fel|r im Erdgeschoss des Gebäudes
    >>Kauft Reagenzien zum Herstellen |T132273:0|t[|cRXP_FRIENDLY_Sofort wirkendes Gift|r] und |T132331:0|t[|cRXP_FRIENDLY_Verschwinden|r] von ihm
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
.dungeon DM
    >>Öffnet euer Zauberbuch und findet die |T136242:0|t[|cRXP_FRIENDLY_Gifte|r] Fähigkeit aus Allgemein Tab des Zauberbuchs. Öffnet es und stellt 20x Sofort wirkendes Gift her. |cRXP_WARN_Erinnert euch daran, sie während des Kampfes auf beide eurer Waffen zu benutzen|r
    .collect 6947,20 --Instant Poison (20)
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Lauf in Richtung |cRXP_FRIENDLY_Wu Shen|r im Kommandocenter
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Wu Shen|r auf der oberen Etage
    .train 6192 >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .use 2874 >>|cRXP_WARN_benutze |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r], um die Quest zu beginnen|r
    .accept 373 >> Der nie verschickte Brief annehmen
    .turnin 373 >> Gebt die Quest Ein nie abgeschickter Brief ab
    .accept 389 >> Bazil Thedd annehmen
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .turnin 389 >> Gebt die Quest Bazil Thredd ab
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r innerhalb
    .turnin 167 >> Gebt die Quest Oh Bruder... ab
    .turnin 168 >> Gebt die Quest Die Suche nach Andenken ab
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Enris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 2040 >> Gebt die Quest Unterirdischer Angriff ab
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor 5519 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >> Benutzt euren Ruhestein zum Dunkelküste
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
    >>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .zoneskip Darkshore
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step << NightElf
.dungeon BFD
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
step << !NightElf
.dungeon BFD
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nimm das Boot nach Theramore
    .zoneskip Darnassus
step
.dungeon BFD
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argentumwache Manados|r und |cRXP_FRIENDLY_Dämmerungsbehüter Shaedlass|r up stairs
    .accept 1199 >> Die Stunde der Finsternis annehmen
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Auf der Suche nach Thaelrid annehmen
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
    .zoneskip Darkshore
--
step << !Warlock
#xprate >1.49
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r (NOT TRANSLATED IN :deDE YET)
    .accept 1275 >> Erforschung der Verderbnis annehmen
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.turnin 9633 >> Turn in The Way to Auberdine (NOT TRANSLATED IN :deDE YET)
    .accept 10752 >> Auf ins Eschental! annehmen
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .accept 10752 >> Auf ins Eschental! annehmen
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step << !Warlock
#xprate >1.49
    #completewith next
    .goto 1439,35.724,83.696,50 >> Travel to Southern Darkshore (NOT TRANSLATED IN :deDE YET)
step << !Warlock
#xprate >1.49
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_This will begin an escort. You may have to wait for him to respawn or for others to finish the escort|r (NOT TRANSLATED IN :deDE YET)
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 731
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    .complete 731,1
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance !Warlock
#xprate <1.5
#name 20-21 Darkshore
#subgroup RestedXP Allianz 20-30
#defaultfor !Draenei
#next 27-30 Eschental

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
step
    .goto Darkshore,37.219,44.227
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r (NOT TRANSLATED IN :deDE YET)
    .accept 1275 >> Erforschung der Verderbnis annehmen
    .target Gershala Nightwhisper
step
	.isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
step
    .isQuestTurnedIn 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 986 >> Akzeptiert die Quest Ein verirrter Meister
    .target Terenthis
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Elissa Starbreeze|r oben
    .accept 965 >> Der Turm von Althalaxx annehmen
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.turnin 9633 >> Turn in The Way to Auberdine (NOT TRANSLATED IN :deDE YET)
    .accept 10752 >> Auf ins Eschental! annehmen
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .accept 10752 >> Auf ins Eschental! annehmen
    .target Thundris Windweaver
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Benutzt|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim|r |cRXP_PICK_Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #optional
    #completewith MistVeil
    +|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Drückt euren "Interagieren mit Ziel"-Hotkey am Ort mit dem Pfeil, um die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r von außerhalb des Bootes zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht wollt, schwimmt unter Wasser zum unteren Deck des Bootes, dann plündert die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r im Inneren|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Am Ort des Pfeils drückt eure Mit Ziel interagieren keybind, um die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von außen zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet, schwimmt unter Wasser in den unteren Teil des Bootes und plündert dann die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von innen|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #completewith BottomKey
    #optional
    >>Kill |cRXP_ENEMY_Reef Crawlers|r und |cRXP_ENEMY_Verkrusteter Gezeitenkrabbler|r. Loote sie für ihre |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isQuestTurnedIn 4681
    .goto Darkshore,44.18,20.60
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Schwimmt hinaus ins Wasser|r
    >>Öffnet die |cRXP_PICK_Merkwürdige Schließkassette|r. Plündert sie für den |cRXP_LOOT_Halber Anhänger der Wasser-Beweglichkeit|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Akzeptiert die Quest Gyromasts Rettung
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Tobender Riffkriecher|r'|r |T132152:0|t[Hauen] |cRXP_WARN_Fähigkeit. Ihr könnt bis zu 200 Schaden auf einmal durch ihre Nahkampfangriffe nehmen|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Tötet die |cRXP_ENEMY_Orakel der Grauflossen|r und die |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r. Plündert sie für den |cRXP_LOOT_Mitte von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden und sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>|cRXP_WARN_Ihr könnt aus dem Sichtfeld der |cRXP_ENEMY_Orakel der Grauflossen|r'|r|T136048:0|t[Blitzschlag]|cRXP_WARN_ gehen. Geht um das versunkene Schiff, um den Schaden auszuweichen|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    #label BottomKey
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Tobender Riffkriecher|r'|r |T132152:0|t[Hauen] |cRXP_WARN_Fähigkeit. Ihr könnt bis zu 200 Schaden auf einmal durch ihre Nahkampfangriffe nehmen|r
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
    >>Tötet die |cRXP_ENEMY_Riesiger Waldschreiter|r. Plündert sie für die |cRXP_LOOT_Spitze von Gelkaks Schlüssel|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #loop
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67,45,0
    .goto Darkshore,61.40,9.40,0
    .goto Darkshore,62.42,7.67,0
    >>Tötet |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Mondpirschermatriarchin|r. Plündert sie für ihre |cRXP_LOOT_Pelze|r
    >>|cRXP_WARN_Passt auf |cRXP_ENEMY_Mondpirscher Matriarchs|r auf. Sie greifen immer mit einem |cRXP_ENEMY_Mondpirscher Mondpirscherwicht|r an ihrer Seite an|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Gebt die Quest Gyromasts Rettung ab
    .accept 2078 >> Akzeptiert die Quest Gyromasts Rache
    .target Gelkak Gyromast
step
    .isOnQuest 2078
    #completewith next
    .goto 1439,55.802,18.290
    .gossip 6669,0 >> Sprecht mit |cRXP_FRIENDLY_Der Dreschonator 4100|r, um die Eskorte zu starten
    .skipgossip
    .target The Threshwackonator 4100
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>Escortier |cRXP_FRIENDLY_Der Dreschonator 4100|r bis zu |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tötet |cRXP_ENEMY_The Threshwackonator 4100|r sobald er feindselig ist
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob The Threshwackonator 4100
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Gebt die Quest Gyromasts Rache ab
    .target Gelkak Gyromast
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 965 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >> Der Turm von Althalaxx annehmen
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
    >>Tötet |cRXP_ENEMY_Fanatikerin des dunklen Strangs|r. Plündert sie für ihr |cRXP_LOOT_Abgenutztes Pergament|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 966 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Reist zur Klippenquell-Höhle
step << Druid
    .goto Darkshore,54.99,33.41
    >>|cRXP_WARN_Benutzt die|r |T134776:0|t[Leere Cliffspring Falls-Probe] |cRXP_WARN_im Wasser am Eingang der Klippenquell-Höhle|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Plündert |cRXP_LOOT_Schorfstängling|r und eine |cRXP_LOOT_Todeskappe|r auf dem Boden
    >>|cRXP_WARN_Bleibt im oberen Bereich. Wenn es keine |cRXP_LOOT_Todeskappe|r am Ende der Oberseite gibt, springt hinunter und holt eine aus dem südlichen Raum darunter|r
    >>|cRXP_WARN_Seid vorsichtig, denn |cRXP_ENEMY_Wellenreiter der Sturmschuppen|r wirken|r |T135836:0|t[Wasserstrahl] |cRXP_WARN_(Sofortiger Distanzangriff: Macht Schaden und stößt euch zurück) - stellt sicher, dass ihr nicht von oben nach unten gestoßen werdet|r
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
    >>Öffnet die |cRXP_PICK_Obstlager der Schwarzfelle|r. Plündert sie für die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
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
    >>Öffnet die |cRXP_PICK_Blackwood Nut Stores|r. Plündert sie für die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
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
    >>Öffnet die |cRXP_PICK_Getreidelager der Schwarzfelle|r. Plündert sie für die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
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
    .cast 16072 >> |cRXP_WARN_Benutzt die|r |T134712:0|t[Gefüllte Säuberungsschale] |cRXP_WARN_beim |cRXP_PICK_Feuer|r um|r |cRXP_ENEMY_Xabraxxis|r zu beschwören
    .timer 17,Die verderbten Schwarzfelle RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    >>Tötet |cRXP_ENEMY_Xabraxxis|r. Öffnet die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .isOnQuest 2139
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r (NOT TRANSLATED IN :deDE YET)
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Hunter/Rogue
	#completewith FOTS
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20 << NightElf Hunter -- not going to Darn if already have a better bow
step
    #completewith FOTS
    .subzone 442 >> Reist nach Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Gebt die Quest Ein verirrter Meister ab
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
    .target Terenthis
step
    .isQuestTurnedIn 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
    .target Terenthis
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Gebt die Quest Die eigentliche Ursache ab
    .target Alanndarian Nightsong
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Gebt die Quest Höhlenpilze ab
    .accept 948 >> Akzeptiert die Quest Onu
    .target Barithras Moonshade
step
    .isQuestTurnedIn 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
step
    #optional
    #label FOTS
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .target Gubber Blump
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
step << Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihr oder überprüft das Auktionshaus nach etwas Besserem/Günstigerem|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] (NOT TRANSLATED IN :deDE YET)
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unterirdisch mit |cRXP_FRIENDLY_Syurna|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Syurna
step << Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darnassus,1
step << Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Fliege nach Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    #optional
    #completewith next
    .isOnQuest 1138
    >>Tötet |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Stellt sicher, dass ihr überprüft, ob |cRXP_ENEMY_Gurgelbacke|r bereits im Wasser ist (wenn der Kampf zuvor fehlgeschlagen ist oder ihr den |cRXP_ENEMY_Jäger der Grauflossen|r in der Welle, in der er spawnt, am Leben gelassen habt)|r
    >>Tötet die |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Jäger der Grauflossen|r im Lager
    >>|cRXP_WARN_Bewegt euch zum Freudenfeuer in der Mitte des Lagers, um den |cRXP_ENEMY_Gurgelbacke|r-Kampf zu beginnen:|r
    >>|cRXP_WARN_3 Wellen spawnen aus dem Wasser, jede nach dem Töten der vorherigen Welle: Welle 1 hat 3 Level 12-13 |cRXP_ENEMY_Küstenläufer der Grauflossen|r, Welle 2 hat 2 Level 15-16 |cRXP_ENEMY_Krieger der Grauflossen|r, und Welle 3 hat ein Level 19 |cRXP_ENEMY_Gurgelbacke|r und einen Level 16-17 |cRXP_ENEMY_Jäger der Grauflossen|r. Ihr könnt euch vom Freudenfeuer entfernen, um nicht mit der nächste Welle in den Kampf zu geraten.|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .turnin -952 >> Gebt die Quest Der Hain der Uralten ab << NightElf
    .target Onu
step
    .goto Darkshore,38.54,86.05,100 >> Reist zur Meistergleve
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    >>|cRXP_WARN_This item has a very low drop chance and will most likely not drop. Skip this step once you've completed other objectives|r (NOT TRANSLATED IN :deDE YET)
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto Darkshore,38.54,86.05
    >>Entdeckt Die Meistergleve
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Benutzt die|r |T134715:0|t[Wahrsagephiole] |cRXP_WARN_und platziert sie auf dem Boden|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Klickt die |cRXP_PICK_Wahrsageschale|r auf dem Boden|r
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    .goto 1439,38.537,86.050
    >>Klickt den |cRXP_PICK_Twilight-Foliant|r auf dem nördlichen Sockel
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_This will begin an escort. Skip this step if she is not there|r (NOT TRANSLATED IN :deDE YET)
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #label TheryluneEnd
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_This will begin an escort. You may have to wait for him to respawn or for others to finish the escort|r (NOT TRANSLATED IN :deDE YET)
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
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
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    >>|cRXP_WARN_Skip this step and abandon "Fruit of the Sea" if you are unlucky with the drop rates|r (NOT TRANSLATED IN :deDE YET)
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isOnQuest 993
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_This will begin an escort. Clear the |cRXP_ENEMY_Furbolgs|r near the cave before talking to him|r (NOT TRANSLATED IN :deDE YET)
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 994,1 >> Akzeptiert die Quest Flucht durch Gewalt
    .target Volcor
step
    .isQuestTurnedIn 993
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_This will begin an escort. Clear the |cRXP_ENEMY_Furbolgs|r near the cave before talking to him|r (NOT TRANSLATED IN :deDE YET)
    .accept 994,1 >> Akzeptiert die Quest Flucht durch Gewalt
    .target Volcor
step
    .isOnQuest 994
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Eskortiert |cRXP_FRIENDLY_Volcor|r
    >>After crossing the 3rd torch once exiting the cave, a |cRXP_ENEMY_Furlbog|r will spawn from both sides and attack |cRXP_FRIENDLY_Volcor|r (NOT TRANSLATED IN :deDE YET)
    >>Auf halbem Weg zur Straße spawnen |cRXP_ENEMY_Furbolgs|r von beiden Seiten und greifen |cRXP_FRIENDLY_Volcor|r an
    .complete 994,1 --Help Volcor to the road (1)
    .target Volcor
step
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance !Warlock
#name 27-30 Eschental
#subgroup RestedXP Allianz 20-30
#defaultfor !Draenei
#next 23-24 Sumpfland;24-27 Redridge/Duskwood

step
#xprate <1.5
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 970 >> Der Turm von Althalaxx annehmen
    .target Delgren the Purifier
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
	.target Orendil Broadleaf
step
#xprate <1.5
    .isOnQuest 970
    .goto Ashenvale,31.25,30.70
    >>Tötet |cRXP_ENEMY_Kultist des dunklen Strangs|r, |cRXP_ENEMY_Adept des dunklen Strangs|r, |cRXP_ENEMY_Vollstrecker des dunklen Strangs|r und |cRXP_ENEMY_Ausgräber des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Leuchtender Seelenedelstein|r
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
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T134916:0|t[Kräutersuche] |cRXP_WARN_aktiviert habt, um sie auf der Minikarte zu sehen|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
step
#xprate <1.5
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 973 >> Der Turm von Althalaxx annehmen
	.target Delgren the Purifier
step
#xprate <1.5
    .isQuestTurnedIn 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .accept 973 >> Der Turm von Althalaxx annehmen
	.target Delgren the Purifier
step
    #optional
    #completewith TZS
    .subzone 415 >> Reist nach Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Erlernt die Flugroute nach Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
    .accept 1008 >> Akzeptiert die Quest Der Zoramstrand
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin -10752 >> Turn in Onward to Ashenvale (NOT TRANSLATED IN :deDE YET)
    .accept 991 >> Raenes Säuberung annehmen
    .accept 1054 >> Die Auswahl der Bedrohung annehmen
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
    .timer 24,Orendils Heilmittel Roleplay
    .accept 1033 >> Elunes Träne annehmen
step
.dungeon WC
    #completewith TravelRatchet
    +|cRXP_WARN_Begin looking for a Wailing Caverns group while you complete the next two steps. Very soon you'll be heading to The Barrens to run Wailing Caverns|r (NOT TRANSLATED IN :deDE YET)
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
    >>Töte |cRXP_ENEMY_Dal Blutklaue|r. Loote seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_ENEMY_Dal Blutklaue|r |cRXP_WARN_patrolliert im Lager der Distelfelle|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Loote |cRXP_LOOT_Elunes Träne|r auf dem Boden
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
    .subzone 392 >> Reist nach Ratschet im Brachland. Folgt dem Pfeil, um die |cRXP_ENEMY_Brachland-Wachen|r zu vermeiden
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Ratschet-Flugroute
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kranführer Moppelfuzz|r
    .accept 959 >> Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Reist zu den Höhlen des Wehklagens. Erklimmt den Berg und springt dann in die versteckte Höhle über dem Eingang der Höhlen des Wehklagens hinein. Folgt dem Pfeil, um zu |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r zu gelangen
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Deviatbälge annehmen
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Ausrottung der Deviat annehmen
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    >>|cRXP_WARN_Dies kann INNERHALB und AUSSERHALB der Höhlen des Wehklagens abgeschlossen werden|r
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
    >>Tötet |cRXP_ENEMY_Zausel der Verrückte|r. Plündert ihn für |cRXP_LOOT_99 Jahre alter Portwein|r
    >>|cRXP_ENEMY_Zausel der Verrückte|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Diese Quest wird AUSSERHALB der Höhlen des Wehklagens abgeschlossen|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Betretet die Höhlen des Wehklagens
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
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
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r-Kreaturen
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Töte |cRXP_ENEMY_Lord Kobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r und |cRXP_ENEMY_Lady Anacondra|r dann sprich mit dem |cRXP_FRIENDLY_Jünger von Naralex|r am Anfang der Instanz um die Escort zu starten
    >>Begleitet den |cRXP_FRIENDLY_Jünger von Naralex|r durch die Höhlen des Wehklagens und absolviert das Erwachungsritual
    >>Tötet |cRXP_ENEMY_Mutanus der Verschlinger|r. Plündert ihn für den |T135229:0|t[|cRXP_LOOT_Leuchtenden Splitter|r]
    >>|cRXP_WARN_Benutzt den |T135229:0|t[|cRXP_LOOT_Leuchtenden Splitter|r] um die Quest zu starten|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Der leuchtende Splitter annehmen
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    >>|cRXP_WARN_Dies kann INNERHALB und AUSSERHALB der Höhlen des Wehklagens abgeschlossen werden|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Reist nach Ratschet. Ihr werdet die oben genannten Quests bald abgeben
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kranführer Moppelfuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Erklimmt den steilen Berg über den Höhlen des Wehklagens. Folgt dem Pfeil
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Falla Weisenwind|r
    .turnin 6981 >> Gebt die Quest Der leuchtende Splitter ab
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Fallt hinab in die versteckte Höhle über dem Eingang der Höhlen des Wehklagens. Folgt dem Pfeil zu |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Ruhestein nach Astranaar
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
    .subzoneskip 415
step
    .goto Ashenvale,46.37,46.38
    >>Loote |cRXP_LOOT_Elunes Träne|r auf dem Boden
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
    >>Töte |cRXP_ENEMY_Dal Blutklaue|r. Loote seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_ENEMY_Dal Blutklaue|r |cRXP_WARN_patrolliert im Lager der Distelfelle|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >> Reist nach Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1054 >> Gebt die Quest Die Auswahl der Bedrohung ab
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Gebt die Quest Elunes Träne ab
    .timer 17,Elunes Träne RP
    .accept 1034 >> Die Sternenstaubruinen annehmen
step
    .goto Ashenvale,33.30,67.79
    >>Loote die |cRXP_PICK_Mit Sternenstaub bedeckter Busch|r für |cRXP_LOOT_Hand voll Sternenstaub|r
    >>|cRXP_WARN_Ihre Spawpunkte sind über die gesamte Insel verstreut|r
    .complete 1034,1
step
#xprate <1.5
    #completewith ToA973
    .goto Ashenvale,31.67,64.24,15 >> Lauft zum Fuß des Berges
    .goto Ashenvale,31.21,61.60,15 >>Lauft geradeaus nach Norden, während ihr den Berg erklimmt
step
#xprate <1.5
    .isOnQuest 973
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Tötet |cRXP_ENEMY_Ilkrud Magthrull|r. Plündert ihn für |cRXP_LOOT_Ilkrud Magthrulls Foliant|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 |cRXP_ENEMY_Voidwalkers|r. Stop this cast if you're able to|r (NOT TRANSLATED IN :deDE YET)
    .complete 973,1
    .mob Ilkrud Magthrull
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Gebt die Quest Therylunes Flucht ab
	.target Therysil
step
#xprate <1.5
    #label ToA973
    .isQuestComplete 973
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >> Gebt die Quest Der Turm von Althalaxx ab
    .target Delgren the Purifier
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Teronis' Leichnam|r
	.turnin 991 >> Gebt die Quest Raenes Säuberung ab
    .accept 1023 >> Raenes Säuberung annehmen
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Tötet |cRXP_ENEMY_Matschkrabbler der Salzflossen|r. Plündert sie für |cRXP_LOOT_Leuchtender Edelstein|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Orakels|r heilen können und alle paar Sek. einen Schockzauber mit 90 Schaden wirken|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Die antiken Statuetten annehmen
step
    #completewith nagas
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    >>Mach dir keine Umstände, dies jetzt abzuschließen
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Sammelt |cRXP_LOOT_Die antike Statuette|r vom Boden auf
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Gebt die Quest Die antiken Statuette ab
    .timer 22,Die antiken Statuetten RP
    .accept 1009 >> Ruuzel annehmen
step
    .goto Ashenvale,6.528,13.361
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_WARN_Wenn ihr irgendwelche|r |T133717:0|t[Bomben]|cRXP_WARN_/|r[Granaten] habt|cRXP_WARN_könnt ihr sie auch verwenden, um die Mobs zu trennen|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Teil pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_Begin looking for a Blackfathom Deeps group while you complete the next steps. Very soon you'll be running Blackfathom Deeps|r (NOT TRANSLATED IN :deDE YET)
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
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Gebt die Quest Ruuzel ab
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Grind |cRXP_ENEMY_Naga|r while you assemble a group for BFD. Head to BFD once you have a group (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Reist zur Blackfathom-Tiefe
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Tötet |cRXP_ENEMY_Schurke der Leidbringer|r, |cRXP_ENEMY_Satyr der Leidbringer|r, |cRXP_ENEMY_Orakel der Tiefschwarzen Grotte|r und |cRXP_ENEMY_Gezeitenpriesterin der Tiefschwarzen Grotte|r. Plündert sie für |cRXP_LOOT_Verderbter Hirnstamm|r
    >>|cRXP_WARN_Ihr könnt auch |cRXP_LOOT_Verderbter Hirnstamm|r im Inneren der Instanz plündern|r
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
    .subzone 2797,2 >> Macht euren Weg zur Tiefschwarzen Grotte. Betretet sie
    >>|cRXP_WARN_See if anyone in your group can share the quest "Knowledge in the Deeps" from Ironforge with you|r (NOT TRANSLATED IN :deDE YET)
step
.dungeon BFD
    #completewith Kelris
    >>Tötet |cRXP_ENEMY_Nagas|r und |cRXP_ENEMY_Satyre|r. Plündert sie für |cRXP_LOOT_Verderbter Hirnstamm|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Öffnet die |cRXP_PICK_Eingedellte Eisentruhe|r unter Wasser in der Nähe des Bereichs mit den Schildkröten. Plündert sie für|cRXP_LOOT_Lorgalis-Manuskript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späher Thaelrid|r
    .turnin -1198 >> Gebt die Quest Auf der Suche nach Thaelrid ab
    .accept 1200 >> Schurkerei in der Tiefschwarzen Grotte annehmen
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Tötet alle |cRXP_ENEMY_Hammer des Zwielichts|r. Plündert sie für ihre |cRXP_LOOT_Twilightanhänger|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Tötet |cRXP_ENEMY_Twilight-Lord Kelris|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Tötet alle |cRXP_ENEMY_Hammer des Zwielichts|r. Plündert sie für ihre |cRXP_LOOT_Twilightanhänger|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Tötet |cRXP_ENEMY_Nagas|r und |cRXP_ENEMY_Satyre|r. Plündert sie für |cRXP_LOOT_Verderbter Hirnstamm|r
    >>Falls ihr diese Quest noch nicht abgeschlossen habt, klickt auf den Altar am Ende der Instanz, um euch zum Eingang zu teleportieren. Die Gegner außerhalb der Instanz können es auch fallen lassen.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
    .hs >> Ruhestein nach Astranaar
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TZS2
    .subzone 415 >> Reist nach Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1023 >> Gebt die Quest Raenes Säuberung ab
    .target Raene Wolfrunner
step
    #optional
    #sticky
    .destroy 5505 >> Zerstört |T133741:0|t[Teronis' Tagebuch]. Du brauchst es nicht mehr
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Gebt die Quest Die Sternenstaubruinen ab
step
    #label TZS2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Der Zoramstrand abgeben
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Fliegt zur Dunkelküste
    .target Daelyshia
step
#xprate <1.5
    #optional
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4740 >> Gebt die Quest GESUCHT: Gurgelbacke! ab
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 1275 >> Gebt die Quest Erforschung der Verderbnis ab
    .target Gershala Nightwhisper
step
#xprate <1.5
    .isOnQuest 994
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Gebt die Quest Flucht durch Gewalt ab
    .target Terenthis
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step << !Hunter !NightElf !Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
    .zoneskip Darnassus
step << NightElf/Hunter/Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
    >>|cRXP_WARN_If you do not have the flight path yet for Teldrassil, take the boat from the dock there|r (NOT TRANSLATED IN :deDE YET) << !NightElf
	.target Caylais Moonfeather
step
.dungeon BFD
    .isOnQuest 1199,1200,741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .isOnQuest 1199,1200,741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step
    .isOnQuest 1199,1200,741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Argentumwache Manados|r
    .turnin 1199 >> Gebt die Quest Die Twilight fallen ab
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Dämmerungsbehüter Selgorm|r
    .turnin 1200 >> Gebt die Quest Schurkerei in der Tiefschwarzen Grotte ab
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darnassus,1
step
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Fliege nach Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +|cRXP_WARN_Begin looking for a Shadowfang Keep group. You will soon head to Silverpine Forest to run Shadowfang Keep|r (NOT TRANSLATED IN :deDE YET)
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Dewin Shimmerdawn|r keine hat|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .accept 288 >> Die Dritte Flotte annehmen
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    .home >> Setzt euren Ruhestein im Hafen von Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    >>|cRXP_BUY_kauf ein|r |T132792:0|t[Krug Zwergenhonigmet]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Gehe die Treppe hoch zu |cRXP_FRIENDLY_Archäologe Flagongut|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Archäologe Magenbitter|r
    .target Archaeologist Flagongut
    .turnin 942 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .turnin 288 >> Gebt die Quest Die Dritte Flotte ab
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Grinde |cRXP_ENEMY_Gnolle der Moosfelle|r während du eine Gruppe für Burg Schattenfang suchst
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Es gibt keine Quests für Burg Schattenfang. Du Wirst vom Sumpfland in den Silberwald rennen müssen. Bleib auf der Straße in Arathi, und halt Ausschau nach der |cRXP_ENEMY_Kurierin der Verlassenen|r
    >>|cRXP_WARN_Ihr braucht die Flugroute nach Arathihochland noch nicht zu erlernen|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Holt euch die Flugroute nach Süderstade
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
    .subzone 209,2 >> Betrete Burg Shadowfang
step
#xprate >1.49
.dungeon SFK
    +Es gibt keine Quests für Burg Shadowfang
    >>Burg Schattenfang säubern. Verlasst die Instanz, wenn ihr fertig seid
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Benutz den Ruhestein zum Hafen von Menethil
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step << !Draenei !NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Flieg nach Sturmwind
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
step << NightElf/Draenei
#xprate >1.49
    .goto Wetlands,53.74,70.33,30,0
    .goto Wetlands,48.17,67.49,30,0
    .goto Loch Modan,25.11,8.99,20 >>|cRXP_WARN_Travel through the Dun Algaz tunnel to Loch Modan|r (NOT TRANSLATED IN :deDE YET)
    .zoneskip Loch Modan --Completes if you run to Loch
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Geht zur Höhle am Fuß des Staudamms im östlichen Sumpfland
	.zone Loch Modan >> Loggt euch oben auf den Pilzen am hinteren Ende der Höhle aus.
    >>Wenn ihr euch wieder anmeldet, werdet ihr nach Thelsamar teleportiert
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_KLICKT HIER FÜR EINE REFERENZ|r
step << NightElf/Draenei
#xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .target Thorgrum Borrelson
step << NightElf/Draenei
#xprate >1.49
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_Begin taking off your gear as you run to Dun Morogh|r (NOT TRANSLATED IN :deDE YET)
    .deathskip >> aggro the |cRXP_ENEMY_Scarred Crag Boars|r to die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r once you are in Dun Morogh (NOT TRANSLATED IN :deDE YET)
    .mob Scarred Crag Boar
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	>>Betretet die südöstliche Trogg-Höhle. Führt einen Logout-Skip aus
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >> |cRXP_WARN_Klickt HIER als Referenz|r
	.zone Ironforge >> Logout Skip oder Lauf nach Ironforge
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Loslor Rudge|r doesn't have one|r (NOT TRANSLATED IN :deDE YET)
	.target Loslor Rudge
    .bronzetube
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >> Lauf nach Ironforge
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Nimm die Bahn Richtung Sturmwind
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance Warlock
#name 20-23 Darkshore/Ashenvale
#subgroup RestedXP Allianz 20-30
#next 23-24 Sumpfland;24-27 Redridge/Duskwood

step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaussiy|r
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind>> Fliege nach Sturmwind
    .target Shellei Brondir
step << Warlock
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Betritt Zum Geschlachteten Lamm. Geht die Treppe hinunter
step << Warlock
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    +Zone into The Stockades. You will now "Ghetto Hearth" to Darkshore (NOT TRANSLATED IN :deDE YET)
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>> Ghetto Hearth to Darkshore. To do this, enter The Stockades, then copy paste the link below into chat. Wait out the 1 minute countdown (NOT TRANSLATED IN :deDE YET)
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLICK HERE (NOT TRANSLATED IN :deDE YET)
step
#xprate <1.5
    .goto Darkshore,37.219,44.227
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.turnin 9633 >> Turn in The Way to Auberdine (NOT TRANSLATED IN :deDE YET)
    .accept 10752 >> Accept Onward to Ashenvale (NOT TRANSLATED IN :deDE YET)
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .accept 10752 >> Accept Onward to Ashenvale (NOT TRANSLATED IN :deDE YET)
    .target Thundris Windweaver
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    >>|cRXP_WARN_If you cannot accept this quest, skip this step|r (NOT TRANSLATED IN :deDE YET)
    .accept 1275 >> Erforschung der Verderbnis annehmen
    .target Gershala Nightwhisper
step
#xprate <1.5
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Stellt sicher, dass ihr überprüft, ob |cRXP_ENEMY_Gurgelbacke|r bereits im Wasser ist (wenn der Kampf zuvor fehlgeschlagen ist oder ihr den |cRXP_ENEMY_Jäger der Grauflossen|r in der Welle, in der er spawnt, am Leben gelassen habt)|r
    >>Tötet die |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Jäger der Grauflossen|r im Lager
    >>|cRXP_WARN_Bewegt euch zum Freudenfeuer in der Mitte des Lagers, um den |cRXP_ENEMY_Gurgelbacke|r-Kampf zu beginnen:|r
    >>|cRXP_WARN_3 Wellen spawnen aus dem Wasser, jede nach dem Töten der vorherigen Welle: Welle 1 hat 3 Level 12-13 |cRXP_ENEMY_Küstenläufer der Grauflossen|r, Welle 2 hat 2 Level 15-16 |cRXP_ENEMY_Krieger der Grauflossen|r, und Welle 3 hat ein Level 19 |cRXP_ENEMY_Gurgelbacke|r und einen Level 16-17 |cRXP_ENEMY_Jäger der Grauflossen|r. Ihr könnt euch vom Freudenfeuer entfernen, um nicht mit der nächste Welle in den Kampf zu geraten.|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_This will begin an escort. You may have to wait for him to respawn or for others to finish the escort|r (NOT TRANSLATED IN :deDE YET)
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    .complete 731,1
    .target Prospector Remtravel
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_This will begin an escort. Skip this step if she is not there|r (NOT TRANSLATED IN :deDE YET)
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .isOnQuest 10752,945,4740,731
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
	.target Orendil Broadleaf
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T134916:0|t[Kräutersuche] |cRXP_WARN_aktiviert habt, um sie auf der Minikarte zu sehen|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Reist nach Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Erlernt die Flugroute nach Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
    .accept 1008 >> Akzeptiert die Quest Der Zoramstrand
    .target Shindrell Swiftfire
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin -10752 >> Turn in Onward to Ashenvale (NOT TRANSLATED IN :deDE YET)
    .accept 991 >> Raenes Säuberung annehmen
    .accept 1054 >> Die Auswahl der Bedrohung annehmen
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
    .timer 24,Orendils Heilmittel Roleplay
    .accept 1033 >> Elunes Träne annehmen
step
    .goto Ashenvale,46.37,46.38
    >>Loote |cRXP_LOOT_Elunes Träne|r auf dem Boden
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Gebt die Quest Elunes Träne ab
    .timer 17,Elunes Träne RP
    .accept 1034 >> Die Sternenstaubruinen annehmen
step
    .goto Ashenvale,33.30,67.79
    >>Loote die |cRXP_PICK_Mit Sternenstaub bedeckter Busch|r für |cRXP_LOOT_Hand voll Sternenstaub|r
    >>|cRXP_WARN_Ihre Spawpunkte sind über die gesamte Insel verstreut|r
    .complete 1034,1
step
    #optional
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Lauft zum Fuß des Berges
    .goto Ashenvale,31.21,61.60,15 >>Lauft geradeaus nach Norden, während ihr den Berg erklimmt
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Gebt die Quest Therylunes Flucht ab
	.target Therysil
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Teronis' Leichnam|r
	.turnin 991 >> Gebt die Quest Raenes Säuberung ab
    .accept 1023 >> Raenes Säuberung annehmen
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Tötet |cRXP_ENEMY_Matschkrabbler der Salzflossen|r. Plündert sie für |cRXP_LOOT_Leuchtender Edelstein|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Orakels|r heilen können und alle paar Sek. einen Schockzauber mit 90 Schaden wirken|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Die antiken Statuetten annehmen
step
    #completewith nagas
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    >>Mach dir keine Umstände, dies jetzt abzuschließen
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Sammelt |cRXP_LOOT_Die antike Statuette|r vom Boden auf
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Gebt die Quest Die antiken Statuette ab
    .timer 22,Die antiken Statuetten RP
    .accept 1009 >> Ruuzel annehmen
step
    .goto Ashenvale,6.528,13.361
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_WARN_Wenn ihr irgendwelche|r |T133717:0|t[Bomben]|cRXP_WARN_/|r[Granaten] habt|cRXP_WARN_könnt ihr sie auch verwenden, um die Mobs zu trennen|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Teil pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +|cRXP_WARN_Begin looking for a Blackfathom Deeps group while you complete the next steps. Very soon you'll be running Blackfathom Deeps|r (NOT TRANSLATED IN :deDE YET)
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
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Gebt die Quest Ruuzel ab
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Grind |cRXP_ENEMY_Naga|r while you assemble a group for BFD. Head to BFD once you have a group (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Reist zur Blackfathom-Tiefe
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Tötet |cRXP_ENEMY_Schurke der Leidbringer|r, |cRXP_ENEMY_Satyr der Leidbringer|r, |cRXP_ENEMY_Orakel der Tiefschwarzen Grotte|r und |cRXP_ENEMY_Gezeitenpriesterin der Tiefschwarzen Grotte|r. Plündert sie für |cRXP_LOOT_Verderbter Hirnstamm|r
    >>|cRXP_WARN_Ihr könnt auch |cRXP_LOOT_Verderbter Hirnstamm|r im Inneren der Instanz plündern|r
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
    .subzone 2797,2 >> Macht euren Weg zur Tiefschwarzen Grotte. Betretet sie
    >>|cRXP_WARN_See if anyone in your group can share the quest "Knowledge in the Deeps" from Ironforge with you|r (NOT TRANSLATED IN :deDE YET)
step
.dungeon BFD
    #completewith Kelris
    >>Tötet |cRXP_ENEMY_Nagas|r und |cRXP_ENEMY_Satyre|r. Plündert sie für |cRXP_LOOT_Verderbter Hirnstamm|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Öffnet die |cRXP_PICK_Eingedellte Eisentruhe|r unter Wasser in der Nähe des Bereichs mit den Schildkröten. Plündert sie für|cRXP_LOOT_Lorgalis-Manuskript|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späher Thaelrid|r
    .turnin -1198 >> Gebt die Quest Auf der Suche nach Thaelrid ab
    .accept 1200 >> Schurkerei in der Tiefschwarzen Grotte annehmen
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Tötet alle |cRXP_ENEMY_Hammer des Zwielichts|r. Plündert sie für ihre |cRXP_LOOT_Twilightanhänger|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Tötet |cRXP_ENEMY_Twilight-Lord Kelris|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Tötet alle |cRXP_ENEMY_Hammer des Zwielichts|r. Plündert sie für ihre |cRXP_LOOT_Twilightanhänger|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Tötet |cRXP_ENEMY_Nagas|r und |cRXP_ENEMY_Satyre|r. Plündert sie für |cRXP_LOOT_Verderbter Hirnstamm|r
    >>Falls ihr diese Quest noch nicht abgeschlossen habt, klickt auf den Altar am Ende der Instanz, um euch zum Eingang zu teleportieren. Die Gegner außerhalb der Instanz können es auch fallen lassen.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >> Ruhestein nach Astranaar
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TRoS
    .subzone 415 >> Reist nach Astranaar
step
#xprate <1.5
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1023 >> Gebt die Quest Raenes Säuberung ab
    .accept 1025 >> Eine aggressive Verteidigung annehmen
    .target Raene Wolfrunner
step
#xprate >1.49
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1023 >> Gebt die Quest Raenes Säuberung ab
    .target Raene Wolfrunner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Der Zoramstrand abgeben
step
    #label TRoS
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >> Gebt die Quest Die Sternenstaubruinen ab
step
    #optional
    #sticky
    .destroy 5505 >> Zerstört |T133741:0|t[Teronis' Tagebuch]. Du brauchst es nicht mehr
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
    >>Töte |cRXP_ENEMY_Krieger der Fäulnisklauen|r, |cRXP_ENEMY_Totemiker der Fäulnisklauen|r, |cRXP_ENEMY_Ursa der Fäulnisklauen|r und a |cRXP_ENEMY_Höhlenbehüter der Fäulnisklauen|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Velene Sternenschlag|r
    .accept 1016 >> Die Rückeroberung des Mystralsees annehmen
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
    >>Töte |cRXP_ENEMY_Beschmutzter Wasserelementar|r. Loote sie für ihre |cRXP_LOOT_Intakte Elementararmschiene|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
#xprate <1.5
    .use 5456 >> |cRXP_WARN_Benutzt die|r |T134943:0|t[Rolle der Bestimmung] |cRXP_WARN_um die|r |T134938:0|t[Gefundene Rolle] herzustellen
    .complete 1016,1 -- Divined Scroll
step
#xprate <1.5
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Velene Sternenschlag|r
    .turnin 1016 >> Gebt die Quest Elementararmschienen ab
    .accept 1017 >> Magier-Beschwörer annehmen
    .target Sentinel Velene Starstrike
step
    .isOnQuest 1017,1716,1025,4740,731
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >> Travel to The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r (NOT TRANSLATED IN :deDE YET)
step
#xprate <1.5
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >> Ascend Dreadmist Peak. Follow the Arrow to the top (NOT TRANSLATED IN :deDE YET)
step
#xprate <1.5
    .goto The Barrens,48.22,19.15
    >>Kill |cRXP_ENEMY_Sarilus Foulborne|r. Loote ihn für seine |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_The surrounding |cRXP_ENEMY_Burning Blade|r are only level 10-12|r (NOT TRANSLATED IN :deDE YET)
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
step
#xprate <1.5
.dungeon !WC
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
.dungeon WC
    #completewith TroubleDocks
    +|cRXP_WARN_Begin looking for a Wailing Caverns group. You will shortly run Wailing Caverns|r (NOT TRANSLATED IN :deDE YET)
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Takar der Seher|r
    .turnin 1716 >> Gebt die Quest Verschlinger der Seelen ab
    .accept 1738 >> Herzholz annehmen
    .target Takar the Seer
step << Warlock
.dungeon !WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Ratschet-Flugroute
    .fly Astranaar>> Fliege nach Astranaar
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Ratschet-Flugroute
    .target Bragok
step
.dungeon WC
    #label TroubleDocks
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kranführer Moppelfuzz|r
    .accept 959 >> Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Reist zu den Höhlen des Wehklagens. Erklimmt den Berg und springt dann in die versteckte Höhle über dem Eingang der Höhlen des Wehklagens hinein. Folgt dem Pfeil, um zu |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r zu gelangen
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Deviatbälge annehmen
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >> Ausrottung der Deviat annehmen
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    >>|cRXP_WARN_Dies kann INNERHALB und AUSSERHALB der Höhlen des Wehklagens abgeschlossen werden|r
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
    >>Tötet |cRXP_ENEMY_Zausel der Verrückte|r. Plündert ihn für |cRXP_LOOT_99 Jahre alter Portwein|r
    >>|cRXP_ENEMY_Zausel der Verrückte|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Diese Quest wird AUSSERHALB der Höhlen des Wehklagens abgeschlossen|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Betretet die Höhlen des Wehklagens
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
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
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r-Kreaturen
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Töte |cRXP_ENEMY_Lord Kobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r und |cRXP_ENEMY_Lady Anacondra|r dann sprich mit dem |cRXP_FRIENDLY_Jünger von Naralex|r am Anfang der Instanz um die Escort zu starten
    >>Begleitet den |cRXP_FRIENDLY_Jünger von Naralex|r durch die Höhlen des Wehklagens und absolviert das Erwachungsritual
    >>Tötet |cRXP_ENEMY_Mutanus der Verschlinger|r. Plündert ihn für den |T135229:0|t[|cRXP_LOOT_Leuchtenden Splitter|r]
    >>|cRXP_WARN_Benutzt den |T135229:0|t[|cRXP_LOOT_Leuchtenden Splitter|r] um die Quest zu starten|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Der leuchtende Splitter annehmen
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    >>|cRXP_WARN_Dies kann INNERHALB und AUSSERHALB der Höhlen des Wehklagens abgeschlossen werden|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Reist nach Ratschet. Ihr werdet die oben genannten Quests bald abgeben
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kranführer Moppelfuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Erklimmt den steilen Berg über den Höhlen des Wehklagens. Folgt dem Pfeil
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Falla Weisenwind|r
    .turnin 6981 >> Gebt die Quest Der leuchtende Splitter ab
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >> Fallt hinab in die versteckte Höhle über dem Eingang der Höhlen des Wehklagens. Folgt dem Pfeil zu |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Ruhestein nach Astranaar
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1025 >> Gebt die Quest Eine aggressive Verteidigung ab
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
    >>Töte |cRXP_ENEMY_Dal Blutklaue|r. Loote seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_ENEMY_Dal Blutklaue|r |cRXP_WARN_patrolliert im Lager der Distelfelle|r
    .complete 1054,1
    .unitscan Dal Bloodclaw
step << Warlock
    #completewith next
    .goto Ashenvale,31.50,31.50,40 >> Reist zu den Ruinen von Ordil'Aran
step << Warlock
    .goto Ashenvale,31.50,31.50
    >>Plündert das |cRXP_LOOT_Herzholz|r am riesigen Baum
    .complete 1738,1
step
    #completewith next
    .goto Ashenvale,40.1,53.1,0
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    >>|cRXP_WARN_Ensure you die on the east side of the |cRXP_ENEMY_Murloc|r lake so you are sent to Astranaar|r (NOT TRANSLATED IN :deDE YET)
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Velene Sternenschlag|r
    .turnin 1017 >> Turn in Mage Summoner (NOT TRANSLATED IN :deDE YET)
	>>|cRXP_WARN_This quest will reward you with the|r |T134754:0|t[Light of Elune]
    >>|T134754:0|t[Light of Elune]|cRXP_WARN_- Grants immunity from all damage and spells for 10 sec.|r
    >>|cRXP_WARN_This is a ONE time use only. Use it in an emergency|r (NOT TRANSLATED IN :deDE YET)
    .target Sentinel Velene Starstrike
step
    #completewith FlyAuber
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
.dungeon !WC
#xprate <1.5
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1054 >> Gebt die Quest Die Auswahl der Bedrohung ab
    .turnin 1025 >> Gebt die Quest Eine aggressive Verteidigung ab
    .target Raene Wolfrunner
step
.dungeon !WC
#xprate >1.49
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1054 >> Gebt die Quest Die Auswahl der Bedrohung ab
    .target Raene Wolfrunner
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1054 >> Gebt die Quest Die Auswahl der Bedrohung ab
    .target Raene Wolfrunner
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Fliegt zur Dunkelküste
    .target Daelyshia
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4740 >> Gebt die Quest GESUCHT: Gurgelbacke! ab
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 1275 >> Gebt die Quest Erforschung der Verderbnis ab
    .target Gershala Nightwhisper
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nimm das Boot nach Theramore
    .zoneskip Darnassus
step
    #optional
    #completewith next
    .isOnQuest 741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Argentumwache Manados|r
    .turnin 1199 >> Gebt die Quest Die Twilight fallen ab
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Dämmerungsbehüter Selgorm|r
    .turnin 1200 >> Gebt die Quest Schurkerei in der Tiefschwarzen Grotte ab
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Erlernt die Flugroute nach Rut'theran
    .fly Auberdine >> Fliege nach Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +|cRXP_WARN_Begin looking for a Shadowfang Keep group. You will soon head to Silverpine Forest to run Shadowfang Keep|r (NOT TRANSLATED IN :deDE YET)
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Dewin Shimmerdawn|r keine hat|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .accept 288 >> Die Dritte Flotte annehmen
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    .home >> Setzt euren Ruhestein im Hafen von Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Helbrek|r
    >>|cRXP_BUY_kauf ein|r |T132792:0|t[Krug Zwergenhonigmet]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >> Gehe die Treppe hoch zu |cRXP_FRIENDLY_Archäologe Flagongut|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Archäologe Magenbitter|r
    .target Archaeologist Flagongut
    .turnin 942 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erster Maat Fitzsimmons|r
    .turnin 288 >> Gebt die Quest Die Dritte Flotte ab
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >> Grinde |cRXP_ENEMY_Gnolle der Moosfelle|r während du eine Gruppe für Burg Schattenfang suchst
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Es gibt keine Quests für Burg Schattenfang. Du Wirst vom Sumpfland in den Silberwald rennen müssen. Bleib auf der Straße in Arathi, und halt Ausschau nach der |cRXP_ENEMY_Kurierin der Verlassenen|r
    >>|cRXP_WARN_Ihr braucht die Flugroute nach Arathihochland noch nicht zu erlernen|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Holt euch die Flugroute nach Süderstade
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
    .subzone 209,2 >> Betrete Burg Shadowfang
step
#xprate >1.49
.dungeon SFK
    +Es gibt keine Quests für Burg Shadowfang
    >>Burg Schattenfang säubern. Verlasst die Instanz, wenn ihr fertig seid
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >> Benutz den Ruhestein zum Hafen von Menethil
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind >> Flieg nach Sturmwind
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
]])
