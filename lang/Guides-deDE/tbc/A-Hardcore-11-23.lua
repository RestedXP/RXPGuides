if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 12-14 Darkshore
#displayname 11-14 Darkshore << NightElf
#next 14-20 Bloodmyst Isle

step
#optional
    .isOnQuest 291
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Gebt die Quest Die Berichte ab
step << !NightElf !Draenei
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
    .xp <12,1
    .zoneskip Darkshore
    .zoneskip Wetlands
    .train 705,1 << Warlock-- shadowbolt r3
    .train 1766,1 << Rogue -- kick
    .train 1244,1 << Priest -- fortitude r2
    .train 145,1 << Mage -- fireball r3
    .train 19834,1 << Paladin -- blessing of might r2
    .train 14281,1 << Hunter -- arcane shot r2
    .train 7384,1 << Warrior -- overpower
step << Warlock
    .goto 1455/0,-857.000,-4840.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Feuerbräu|r
    .home >>Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
    .bindlocation 1537
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände in Kürze für schnellere Abgaben in Dunkelküste:|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände in Kürze für schnellere Abgaben in Dunkelküste:|r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Verlasst Eisenschmiede
    .zoneskip Wetlands
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Reist zum Dun Morogh -> Sumpfland Skip-Spot
    .zoneskip Wetlands
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_Schaut das Video-Handbuch zuerst als Referenz!|r
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Weicht den |cRXP_ENEMY_Sumpflandkrokilisks|r und den |cRXP_ENEMY_Murlocs|r beim Durchqueren des Wassers aus|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clickt hier für die Videoanleitung|r
    .goto Wetlands,12.1,60.3,80 >> Laufe zum Hafen von Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .zoneskip Darkshore
step << !NightElf !Draenei
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Samor Festivus|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Samor Festivus|r keine hat|r
    .target Samor Festivus
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Dewin Shimmerdawn|r keine hat|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the dock für boat to Auberdine
    .zoneskip Darkshore
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
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
step << !NightElf !Draenei
    #optional
    .goto 1437,4.370,56.762
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    >>Level dein [Erste Hilfe] während du auf das Boot zur Dunkelküste wartest
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf !Draenei
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step << Gnome/Dwarf
    #optional
    #sticky
    .abandon 6392 >> Abandon Return to Brock. You won't turn this in (NOT TRANSLATED IN :deDE YET)
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
step << !Draenei !Warlock
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
    #label Auber1
    #completewith next
    .subzone 442 >> Reist nach Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >> Akzeptiert die Quest Dröhnkiste 411
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .accept 4681 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Reist bis zum Ende des Docks und springt dann ins Wasser
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Tötet |cRXP_ENEMY_Darkshore Threshers|r. Plündert sie für |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Beute |cRXP_PICK_Skelettartig Meeresschildkröte|r für die |cRXP_LOOT_Sea Schildkröte Remains|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step
    .xp 12
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
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
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .accept 958 >> Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .target Thundris Windweaver
step
    #loop
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Tötet |cRXP_ENEMY_Darkshore Threshers|r. Plündert sie für |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
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
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
#map Darkshore
    .goto Felwood,25.19,1.29
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 411|r auf dem Boden
    .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323 << NightElf
step << NightElf
    #completewith bears1
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith bears1
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    >>|cRXP_WARN_Don't go out of your way to complete this quest now. You will finish it later|r (NOT TRANSLATED IN :deDE YET)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >> Reist nach Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Vermeidet |cRXP_ENEMY_Wilder Grell|r und |cRXP_ENEMY_Übler Grimmling|r auf dem weg zu töten|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Tötet |cRXP_ENEMY_Wild Grells|r und |cRXP_ENEMY_Vile Sprites|r. Plündert sie für |cRXP_LOOT_Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Tötet |cRXP_ENEMY_Deth'ryll Satyr|r. Plündert sie für |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step << NightElf
    #completewith CliffspringRiverSample
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
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
    .skill cooking,<1,1 -- shows if cooking is >1

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

step << !Draenei !Warlock
    #completewith CliffspringRiverSample
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    >>|cRXP_WARN_Don't go out of your way to complete this quest now. You will finish it later|r (NOT TRANSLATED IN :deDE YET)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Draenei !Warlock
#map Darkshore
    #optional
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
step << !Draenei !Warlock
    #label CliffspringRiverSample
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << !Draenei !Warlock
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
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
step << !Draenei !Warlock
    #label HSAuber
    .hs >> Ruhestein nach Auberdine
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #label HSAuber << Draenei/Warlock
    #completewith ReturnAuber
    .subzone 442 >> Kehrt nach Auberdine zurück
step << Draenei/Warlock
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .target Tharnariun Treetender
step << Draenei/Warlock
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leer Wasser Tube] |cRXP_WARN_am Auberdine Mondbrunnen|r
    .complete 4812,1
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab << !Draenei !Warlock
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leer Wasser Tube] |cRXP_WARN_am Auberdine Mondbrunnen|r
    .complete 4812,1
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
    .isQuestComplete 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .target Thundris Windweaver
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
    #label ReturnAuber
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .target Tharnariun Treetender
step << NightElf
    #completewith Ameth
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #optional
    #completewith FurbolgsComplete
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r und |cRXP_ENEMY_Waldschreiter|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig|r |cRXP_ENEMY_Waldschreiterjunges|r |T132307:0|t[Fliehen] |cRXP_WARN_bei unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1 -- only collecting if leveled cooking to 10
step
    .goto 1439,47.314,48.676
    >>Klickt den |cRXP_PICK_Geheimnisvoller roter Kristall|r
    >>|cRXP_WARN_Be careful of the two groups of |cRXP_ENEMY_Raging Moonkins|r west of the |cRXP_PICK_Mysterious Red Crystal|r when you click it as they can aggro together|r (NOT TRANSLATED IN :deDE YET)
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
step
    #completewith Ameth
    .goto Darkshore,40.30,59.70,70 >> Reist nach Süden zu |cRXP_FRIENDLY_Wächtereule Tysha Mondklinge|r in Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
step
    #completewith TheLay
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_ENEMY_Anaya Dämmerflucht|r |cRXP_WARN_patrouilliert in Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r, |cRXP_ENEMY_Zuckender Hochgeborener|r und |cRXP_ENEMY_Klagende Hochgeborene|r. Plündert sie für ihre |cRXP_LOOT_Relikte|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Klickt |cRXP_PICK_Der Untergang von Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_ENEMY_Anaya Dämmerflucht|r |cRXP_WARN_patrouilliert in Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r, |cRXP_ENEMY_Zuckender Hochgeborener|r und |cRXP_ENEMY_Klagende Hochgeborene|r. Plündert sie für ihre |cRXP_LOOT_Relikte|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_ENEMY_Anaya Dämmerflucht|r |cRXP_WARN_patrouilliert in Ameth'Aran. Sie hat eine lange Wiederspawnzeit, und wenn sie gerade nicht da ist, könnt ihr diesen Schritt überspringen|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
step << NightElf
    #completewith NEFangs
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #sticky
    #label bears1A
    #loop
    .waypoint Darkshore,39.03,67.32,0
    .waypoint Darkshore,42.54,67.76,0
    .waypoint Darkshore,39.99,78.46,0
    .waypoint Darkshore,39.03,67.32,70,0
    .waypoint Darkshore,42.54,67.76,70,0
    .waypoint Darkshore,39.99,78.46,70,0
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r im südlichen Dunkelküste
    >>|cRXP_WARN_Seid vorsichtig, denn sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Reduziert alle Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439/1,579.500,5240.300
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    #requires bears1A
    #label FurbolgsComplete
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
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Tötet |cRXP_ENEMY_Foreststriders|r und |cRXP_ENEMY_Foreststrider Fledglings|r. Plündert sie für |cRXP_LOOT_Strider Fleisch|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1 -- only collecting if leveled cooking to 10
step << !Draenei !Warlock
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,80 >> Return to Bashal'Aran (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 446 -- bashal'aran
step << !Draenei !Warlock
    #label NEFangs
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
    .target Asterion
step << NightElf
    #loop
    .goto 1439,40.0,39.6,0
    .goto 1439,45.0,32.2,0
    .goto 1439,47.6,23.0,0
    .goto 1439,40.0,39.6,60,0
    .goto 1439,40.4,35.0,60,0
    .goto 1439,45.0,32.2,60,0
    .goto 1439,45.4,26.0,60,0
    .goto 1439,47.6,23.0,60,0
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step << NightElf
#map Darkshore
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
step
    #completewith DarkshoreEnd
    .subzone 442 >> Kehrt nach Auberdine zurück
step << !Draenei !Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << !Draenei !Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .target Terenthis
step << !Draenei !Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !Draenei !Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >> Gebt die Quest Werkzeuge der Hochgeborenen ab
    .target Thundris Windweaver
step << Draenei/Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4728 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
step << Draenei/Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis sein Rollenspiel vorbei ist, falls jemand anderes gerade abgegeben hat|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4813 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << Draenei/Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .target Terenthis
step << Draenei/Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << Draenei/Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >> Gebt die Quest Werkzeuge der Hochgeborenen ab
    .target Thundris Windweaver
step << !Draenei !Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4728 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
step << !Draenei !Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis sein Rollenspiel vorbei ist, falls jemand anderes gerade abgegeben hat|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
step
    #sticky
    .abandon 963 >> Brecht die Quest In ewiger Liebe ab
step << !NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
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
step << Draenei/Warlock
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,80 >> Return to Bashal'Aran (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 446 -- bashal'aran
step << Draenei/Warlock
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
    .target Asterion
step << Draenei/Warlock
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei/Warlock
    .hs >> Hearth to Die Exodar << Draenei
    .hs >> Ruhestein nach Eisenschmiede << Warlock
    .zoneskip The Exodar << Draenei
    .zoneskip Ironforge << Warlock
    .bindlocation 3557,1 << Draenei
    .bindlocation 1537,1 << Warlock
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fliegt ins Sumpfland
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    #optional
    .goto 1437,4.370,56.762
    >>Level dein [Erste Hilfe] während du auf das Boot zur Dunkelküste wartest
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto 1437,4.370,56.762
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid]|cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Bloodmyst Isle
step << !Draenei
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 14-20 Bloodmyst Isle
#next 20-21 Darkshore

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shalannius|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Shalannius
step << !Draenei
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Betretet Die Exodar über die hintere Rampe
step << Warrior/Paladin/Hunter/Rogue/Shaman
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Behomat|r on the top floor (NOT TRANSLATED IN :deDE YET) << Warrior
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Handiir|r on the top floor (NOT TRANSLATED IN :deDE YET) << Paladin/Hunter/Rogue/Shaman
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behomat|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue/Shaman
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Erlernt 2h Schwerter << Paladin/Warrior
    .train 199 >> Erlernen 2h Streitkolben << Paladin/Warrior/Shaman
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
    >>|T135144:0|t[Greater Magic Wand] (NOT TRANSLATED IN :deDE YET) << Warlock/Priest/Mage
    .collect 23984,10,9641,1 -- Irradiated Crystal Shard (10)
    .collect 11288,1 << Warlock/Priest/Mage --Greater Magic Wand (1)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Verlassen Die Exodar
    .zoneskip The Exodar,1
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >> Get the The Exodar flight path (NOT TRANSLATED IN :deDE YET) << !Draenei
    .fly Blood Watch >> Fliege nach Blutwacht << Draenei
    .target Stephanos
step << !Draenei
    #completewith next
    .subzone 3573 >> Travel to Odesyus' Landing (NOT TRANSLATED IN :deDE YET)
step << !Draenei
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Admiral Odesyus|r
    >>|cRXP_WARN_This quest will be gray. It is required to unlock a quest chain in Bloodmyst Isle|r (NOT TRANSLATED IN :deDE YET)
    .accept 9506 >> Ein kleiner Anfang annehmen
    .target Admiral Odesyus
step << !Draenei
    .goto Azuremyst Isle,58.607,66.372
	>>Loot the |cRXP_LOOT_Nautical Map|r on the small cage (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Avoid wasting time killing the |cRXP_ENEMY_Goblins|r if you can|r (NOT TRANSLATED IN :deDE YET)
    .complete 9506,2 --Collect Nautical Map (x1)
step << !Draenei
    .goto Azuremyst Isle,59.578,67.648
	>>Loot the |cRXP_LOOT_Nautical Compass|r on the small box (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Avoid wasting time killing the |cRXP_ENEMY_Goblins|r if you can|r (NOT TRANSLATED IN :deDE YET)
    .complete 9506,1 --Collect Nautical Compass (x1)
step << !Draenei
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Admiral Odesyus|r
    >>|cRXP_WARN_This quest will be gray. It is required to unlock a quest chain in Bloodmyst Isle|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9506 >> Turn in A Small Start (NOT TRANSLATED IN :deDE YET)
    .target Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
step << !Draenei
    #completewith next
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >> Travel north to Bloodmyst Isle (NOT TRANSLATED IN :deDE YET)
step << !Draenei
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >> Der Korsallauf annehmen
    .target Kessel
step << !Draenei
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Travel north to Blood Watch (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Follow the arrow closely! Ensure you do not cross the bridge otherwise you will be dismounted!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Do not engage any mobs, attack, or cast any spells as doing so will dismount you! You will also be dismounted if dazed by an attack from behind!|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_If you become dismounted, abandon the quest "The Kessel Run"|r (NOT TRANSLATED IN :deDE YET)
step << !Draenei
    #completewith SetHSBW
    .subzone 3584 >> Lauf zum Teufelswald Watch
step
    .isQuestTurnedIn 9506 -- compass quest
	#completewith CatchandRelease
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Messenger Hermesius|r |cRXP_WARN_patrols throughout Blood Watch|r (NOT TRANSLATED IN :deDE YET)
    .accept 9671 >> Dringende Nachricht annehmen
    .turnin 9671 >> Turn in Urgent Delivery (NOT TRANSLATED IN :deDE YET)
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 9646 >> GESUCHT: Todespranke annehmen
step
    #label SetHSBW
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >> Set your Hearthstone to Blood Watch (NOT TRANSLATED IN :deDE YET)
    .zoneskip Bloodmyst Isle,1
    .bindlocation 3584
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
step << !Draenei
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>> Get the Blood Watch flight path (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 3584,1
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
step << !Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >> Von den Kristallen lernen annehmen
    .target Harbinger Mikolaas
step << Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >> Turn in Learning from the Crystals (NOT TRANSLATED IN :deDE YET)
    .accept 9620 >> Das vermisste Vermessungsteam annehmen
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .turnin 9693 >> Turn in What Argus Means to Me (NOT TRANSLATED IN :deDE YET)
    .accept 9694 >> Blutwacht annehmen
step
    #optional
    .isQuestTurnedIn 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    .target Vindicator Boros
    .accept 9779 >> Abfangen der Nachricht annehmen
step
    #label CatchandRelease
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >> Kurz geschnappt annehmen
step
    .isQuestTurnedIn 9506 -- compass quest
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Messenger Hermesius|r |cRXP_WARN_patrols throughout Blood Watch|r (NOT TRANSLATED IN :deDE YET)
    .accept 9671 >> Dringende Nachricht annehmen
    .turnin 9671 >> Turn in Urgent Delivery (NOT TRANSLATED IN :deDE YET)
	.target Messenger Hermesius
step
    #optional
    #sticky
    .abandon 9663 >> Abandon The Kessel Run (NOT TRANSLATED IN :deDE YET)
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
	>>Click the |cRXP_PICK_Nazzivus Monument Glyphs|r on the altar wall. Loot it for the |cRXP_LOOT_Nazzivus Monument Glyph|r (NOT TRANSLATED IN :deDE YET)
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
    .xp <15,1
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >> Turn in Victims of Corruption (NOT TRANSLATED IN :deDE YET)
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
step
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
step
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
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-4380 >>Grinde until you are 4380xp away from level 16 (9220/13600+)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
    --3230 from quests at blood watch
    --1150 from velen turnin at exodar
step
    .goto 1950/1,5679.200,8434.200,30,0 -- arrow leading from naga camp
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
    #optional
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-1150 >>Grinde, bis dir nur noch 15k EXP bis Level 30 fehlen
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fliege nach Die Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >> Kopf down into Die Exodar
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
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Izmir|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Izmir
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prophet Velen|r
    .target Prophet Velen
    .turnin 9698 >> Turn in Audience with the Prophet (NOT TRANSLATED IN :deDE YET)
    .accept 9699 >> Was ist wahr? annehmen
step
    #optional
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
step << Warrior/Paladin/Rogue/Shaman
    #completewith next << Paladin/Hunter/Rogue/Shaman
    #completewith ClassTraining << Warrior
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >> Head up the ramps toward |cRXP_FRIENDLY_Handiir|r on the top floor (NOT TRANSLATED IN :deDE YET)
step << Warrior/Paladin/Rogue/Shaman
    #optional
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Erlernt 2h Schwerter << Paladin/Warrior
    .train 199 >> Erlernen 2h Streitkolben << Paladin/Warrior/Shaman
    .train 198 >> Erlernen 1h Maces << Rogue
    .train 201 >> Erlernt 1h Schwerter << Rogue
    .target Handiir
step << Warrior
    #label ClassTraining
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Behomat|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Behomat
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
step << Rogue
#ah
    #loop
    .goto The Exodar,73.625,84.814,0
    .goto The Exodar,69.945,90.749,0
    .goto The Exodar,73.625,84.814,10,0
    .goto The Exodar,69.945,90.749,10,0
    .goto The Exodar,63.363,58.999,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ellomin|r und |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Depending how much money you have, buy any of the following items:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_2 x|r |T133052:0|t[Hammer] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ellomin|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_oder|r
    >>|cRXP_WARN_2 x|r |T135343:0|t[Scimitar] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ven|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Ideally run 2 x|r |T133052:0|t[Hammer] (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternatively, check the Auction House for better/cheaper weapons|r (NOT TRANSLATED IN :deDE YET)
    .collect 2028,1 --Hammer (1)
    .target Ellomin
    .target Ven
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.58
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Rogue
#ssf
    #loop
    .goto The Exodar,73.625,84.814,0
    .goto The Exodar,69.945,90.749,0
    .goto The Exodar,73.625,84.814,10,0
    .goto The Exodar,69.945,90.749,10,0
    .goto The Exodar,63.363,58.999,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ellomin|r und |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Depending how much money you have, buy any of the following items:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_2 x|r |T133052:0|t[Hammer] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ellomin|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_oder|r
    >>|cRXP_WARN_2 x|r |T135343:0|t[Scimitar] |cRXP_WARN_from|r |cRXP_FRIENDLY_Ven|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Ideally run 2 x|r |T133052:0|t[Hammer] (NOT TRANSLATED IN :deDE YET)
    .collect 2028,1 --Hammer (1)
    .target Ellomin
    .target Ven
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.58
step << Warrior/Paladin/Shaman
#ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from her or check the Auction House for a better/cheaper weapon|r (NOT TRANSLATED IN :deDE YET)
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin/Shaman
#ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin/Shaman
    #optional
    +|cRXP_WARN_Legt den|r |T133046:0|t[Felshammer] an
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
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
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morae|r
    .accept 9578 >> Suche nach Galaen annehmen
    .target Morae
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
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
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
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vindicator Aesom
    .subzoneskip 3584,1
    .xp <18,1
    .train 20288,1 -- seal of righteousness r3
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
    .isQuestTurnedIn 9671 -- Urgent Delivery
    .goto Bloodmyst Isle,55.210,59.207
	>>Open your |cRXP_PICK_Briefkasten|r.Loote |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r]
    .use 24132 >>|cRXP_WARN_Benutzen|r |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r] |cRXP_WARN_to start the quest|r
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >> Das Vermächtnis des Blutfluchs annehmen
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
    .accept 9746 >> Grenze der Erschöpfung annehmen
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

 -- skipping this section if they are already level 20
step
    #completewith next
    .subzone 3598 >> Lauf nach Schlägereiland
    .xp >20,1
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .accept 9687 >> Wiederherstellung der Heiligkeit annehmen
    .target Prince Toreth
    .xp >20,1
step
    .isOnQuest 9687
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
    #completewith next
    .subzone 3598 >> Return to Wyrmscar Island (NOT TRANSLATED IN :deDE YET)
step
    .isOnQuest 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9687 >> Turn in Restoring Sanctity (NOT TRANSLATED IN :deDE YET)
    .target Prince Toreth
step
    .isQuestTurnedIn 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .accept 9688 >> Im Traum annehmen
    .target Prince Toreth
    .xp >20,1
step
    .isOnQuest 9688
    #completewith next
    >>Kill |cRXP_ENEMY_Veridian Whelps|r und |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9672 >> Turn in The Bloodcurse Legacy (NOT TRANSLATED IN :deDE YET)
    .accept 9674 >> Die Naga des Blutfluchs annehmen
    .target Captain Edward Hanes
    .xp >20,1
step
    .isOnQuest 9674
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>Kill |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .isOnQuest 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9674 >> Turn in The Bloodcursed Naga (NOT TRANSLATED IN :deDE YET)
    .target Captain Edward Hanes
step
    .isQuestTurnedIn 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    .accept 9682 >> Die Hoffnungslosen... annehmen
    .target Captain Edward Hanes
    .xp >20,1
step
    .isOnQuest 9682
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>Kill |cRXP_ENEMY_Bloodcursed Voyagers|r. Loote sie für ihre |cRXP_LOOT_Bloodcursed Souls|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .isOnQuest 9682
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9682 >> Turn in The Hopeless Ones... (NOT TRANSLATED IN :deDE YET)
    .target Captain Edward Hanes
step
    .isOnQuest 9649
    #sticky
    #label YserasTear
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .waypoint Bloodmyst Isle,76.8,21.5,35,0
    .waypoint Bloodmyst Isle,75.7,28.5,35,0
    .waypoint Bloodmyst Isle,71.5,28.6,35,0
    .waypoint Bloodmyst Isle,68.5,21.6,35,0
    .waypoint Bloodmyst Isle,70.6,16.5,35,0
    .waypoint Bloodmyst Isle,71.5,11.5,35,0
    .waypoint Bloodmyst Isle,75.1,8.4,35,0
    .waypoint Bloodmyst Isle,74.9,16.3,35,0
	>>Loote |cRXP_LOOT_Yseras Tränen|r auf dem Boden
    >>|cRXP_WARN_These look like small green mushrooms|r (NOT TRANSLATED IN :deDE YET)
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .isOnQuest 9688
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
    .solo
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9688 >> Turn in Into the Dream (NOT TRANSLATED IN :deDE YET)
    .target Prince Toreth
step
    .group
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9688 >> Turn in Into the Dream (NOT TRANSLATED IN :deDE YET)
    .accept 9689 >> Messerrachen annehmen
    .target Prince Toreth
step
    .group
    .isQuestTurnedIn 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .accept 9689 >> Messerrachen annehmen
    .target Prince Toreth
step
    .group 3
    .isOnQuest 9689
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Click the |cRXP_PICK_Ever-burning Pyre|r atop the mountain to summon |cRXP_ENEMY_Razormaw|r (NOT TRANSLATED IN :deDE YET)
    .timer 36,Razormaw RP (NOT TRANSLATED IN :deDE YET)
step
    .group 3
    .isOnQuest 9689
    .goto Bloodmyst Isle,73.129,20.587
    >>Töte |cRXP_ENEMY_Messerrachen|r
    >>|cRXP_ENEMY_Messerrachen|r |cRXP_WARN_is a level 20 Elite. It takes roughly 35 seconds for him to land|r
    >>|cRXP_WARN_He casts|r |T135805:0|t[Flame Breath] |cRXP_WARN_(Frontal cone) and|r |T132111:0|t[Terrifying Roar] |cRXP_WARN_(5 second duration fear)|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Do NOT attempt this quest unless you also have a healer in your group|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Remember to cast|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on yourself or a party member if required|r (NOT TRANSLATED IN :deDE YET) << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .group
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Prince Toreth|r
    >>|cRXP_FRIENDLY_Prince Toreth|r |cRXP_WARN_walks around slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9689 >> Turn in Razormaw (NOT TRANSLATED IN :deDE YET)
    .target Prince Toreth
step
    #requires YserasTear
step
    #optional
    #sticky
    #label level20
	.xp 20-2700
step
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    >>Kill |cRXP_ENEMY_Sunhawk Pyromancers|r und |cRXP_ENEMY_Sunhawk Defenders|r
    >>|cRXP_WARN_Skip this step if you are already level 20|r (NOT TRANSLATED IN :deDE YET)
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
    .xp >20,1
step
    #requires level20
step
    #completewith next
    .subzone 3584 >> Return to Blutwacht
step
    .isQuestComplete 9649
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
step
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .xp 20
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Vindicator Aesom
    .xp <20,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vindicator Boros|r
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132775:0|t[Crystal of Insight] |cRXP_WARN_consumable buff (Increases Intellect by 5. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << !Warrior !Paladin !Shaman !Rogue
    +|cRXP_WARN_Remember to turn in your|r |T134082:0|t[Irradiated Crystal Shards] |cRXP_WARN_for the|r |T132786:0|t[Crystal of Ferocity] |cRXP_WARN_consumable buff (Increases attack power by 10. Lasts 30 mins.)|r (NOT TRANSLATED IN :deDE YET) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fliege nach Die Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step
    #optional
    #sticky
    .abandon 9746 >> Abandon Limits of Physical Exhaustion (NOT TRANSLATED IN :deDE YET)
step << NightElf Hunter/Shaman/Mage/Warrior/Priest
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
    .accept 9502 >> Akzeptiert die Quest Ruf des Wassers
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sulaa
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >> Travel toward |cRXP_FRIENDLY_Farseer Nobundo|r up the ramp (NOT TRANSLATED IN :deDE YET)
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r (NOT TRANSLATED IN :deDE YET)
    .turnin 9502 >> Gebt die Quest Ruf des Wassers ab
    .accept 9501 >> Akzeptiert die Quest Ruf des Wassers
    .target Farseer Nobundo
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
step << NightElf Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vord|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Vord
step << NightElf Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ganaar|r
	.trainer >> Erlernt eure Begleiterfähigkeiten
    .target Ganaar
step << NightElf Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her or check the Auction House for something better/cheaper|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Equip it later once you've trained Bows|r (NOT TRANSLATED IN :deDE YET) << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << NightElf Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Buy a|r |T135489:0|t[Schwerer Doppelbogen]
    >>|cRXP_WARN_Equip it later once you've trained Bows|r (NOT TRANSLATED IN :deDE YET) << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << NightElf Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from him or check the Auction House for a better/cheaper one|r (NOT TRANSLATED IN :deDE YET)
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
step << Dwarf Warrior
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r |cRXP_BUY_from him or check the Auction House for a better/cheaper weapon|r (NOT TRANSLATED IN :deDE YET)
    .collect 926,1 -- Battle Axe (1)
    .money <0.8806
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.26
    .target Ven
step << Dwarf Warrior
    #optional
    .equip 16,926 >> Legt die |T135423:0|t[Streitaxt] |cRXP_WARN_an|r
    .use 926
    .itemcount 926,1
step << Shaman
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from her or check the Auction House for a better/cheaper weapon|r (NOT TRANSLATED IN :deDE YET)
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 928,1 --Long Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.17
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 928,1 --Long Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.17
    .money <0.2871
step << Shaman
    #optional
    .equip 16,928 >> |cRXP_WARN_Legt|r |T135157:0|t[Langstab] an
    .use 928
    .itemcount 928,1
step << Shaman
    .isOnQuest 9501
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >> Verlassen Die Exodar
    .zoneskip The Exodar,1
step << Shaman
    .isOnQuest 9501
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >> Fliege nach Blutwacht
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >> Travel to the Hidden Reef (NOT TRANSLATED IN :deDE YET)
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aqueous|r unterwasser
    .turnin 9501 >> Gebt die Quest Ruf des Wassers ab
    .accept 9503 >> Akzeptiert die Quest Ruf des Wassers
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Kill |cRXP_ENEMY_Besudelte Wassergeister|r. Loote sie für ihre |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aqueous|r unterwasser
    .turnin 9503 >> Gebt die Quest Ruf des Wassers ab
    .accept 9504 >> Akzeptiert die Quest Ruf des Wassers
    .target Aqueous
step << Shaman
    .isOnQuest 9504
    .hs >> Hearth to Blutwacht
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step << Shaman
    #completewith next
    .subzone 3584 >> Return to Blutwacht
step << Shaman
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>> Fliege nach Die Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << NightElf Hunter/Mage/Warrior/Priest
    #completewith next
    .goto 1947/1,6179.200,6216.100,20 >> Verlassen Die Exodar
    .zoneskip The Exodar,1
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
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << !NightElf Hunter
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nimm das Boot nach Theramore
    .zoneskip Darnassus
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
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argentumwache Manados|r und |cRXP_FRIENDLY_Dämmerungsbehüter Shaedlass|r up stairs
    .accept 1199 >> Die Stunde der Finsternis annehmen
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >> Auf der Suche nach Thaelrid annehmen
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
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
]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 20-21 Darkshore
#next 27-30 Eschental

step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaussiy|r
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Stormwind>> Fliege nach Sturmwind
    .target Shellei Brondir
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Betritt Zum Geschlachteten Lamm. Geht die Treppe hinunter
step << Warlock
.dungeon !DM
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
step << Warlock
.dungeon !DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .zoneskip Stormwind City,1
step << Warlock
#optional
.dungeon !DM
    .goto StormwindClassic,39.834,54.360
    +Zone into The Stockades. You will now "Ghetto Hearth" to Darkshore (NOT TRANSLATED IN :deDE YET)
    .zoneskip Stormwind City,1
step << Warlock
#optional
.dungeon !DM
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>> Ghetto Hearth to Darkshore. To do this, enter The Stockades, then copy paste the link below into chat. Wait out the 1 minute countdown (NOT TRANSLATED IN :deDE YET)
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLICK HERE (NOT TRANSLATED IN :deDE YET)

--Continued below is .dungeon DM only
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
    .train 201 >> Erlernt 1h Schwerter << Mage/Warlock
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
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind << NightElf/Draenei
    .fly Westfall >> Fliegt nach Westfall << !NightElf !Draenei
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >> Lauf nach Westfall
step << NightElf/Draenei
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
step << NightElf/Draenei
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


--accepting BFD quests in Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nimm das Boot nach Theramore
    .zoneskip Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
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
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
    .zoneskip Teldrassil,1

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
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
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
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab << Draenei/Warlock
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .accept 10752 >> Auf ins Eschental! annehmen
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab << Draenei/Warlock
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .isOnQuest 4763
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Benutzt|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim|r |cRXP_PICK_Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1
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
    #loop
    .goto Darkshore,52.6,20.6,60,0
    .goto Darkshore,51.0,22.6,60,0
    .goto Darkshore,47.6,21.6,60,0
    .goto Darkshore,44.8,21.6,60,0
    .goto Darkshore,47.6,21.6,60,0
    .goto Darkshore,51.0,22.6,60,0
    .goto Darkshore,52.6,20.6,60,0
    >>Kill |cRXP_ENEMY_Reef Crawlers|r und |cRXP_ENEMY_Verkrusteter Gezeitenkrabbler|r. Loote sie für ihre |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
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
    #optional
    #sticky
    .destroy 7442 >> Entfernt Gyromast's Schlüssel aus dem Inventar von Euch
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
    .accept 6123 >> Akzeptiert die Quest Das Heilmittel sammeln
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
    #optional
    #sticky
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Druid
    .isOnQuest 6123
    #optional
    #sticky
    #label earthroot
    >>Sammelt 5 |T134187:0|t[Erdwurzel] über |cRXP_WARN_über |T136065:0|t[Kräuterkunde] und selten in |cRXP_PICK_Ramponierte Truhe|r für eine zukünftige Klassenquest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Druid
    .isOnQuest 6123
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Beute |cRXP_LOOT_Lunarfungus|r auf dem Boden in der Höhle
    .complete 6123,2
step << Druid
    .isOnQuest 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Gebt die Quest Das Heilmittel sammeln ab
    .accept 6124 >> Akzeptiert die Quest Heilung der Kranken
    .target Alanndarian Nightsong
step << Druid
    .isQuestTurnedIn 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6124 >> Akzeptiert die Quest Heilung der Kranken
    .target Alanndarian Nightsong
step << Druid
    .isOnQuest 6124
    .goto Darkshore,41.0,79.6
    .use 15826 >>|cRXP_WARN_Head south while using the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_FRIENDLY_Sickly Deer|r (NOT TRANSLATED IN :deDE YET)
    .complete 6124,1 -- Sickly Deer cured (10)
    .target Sickly Deer
step
    #completewith next
    .goto 1439,35.429,76.566,120 >> Travel to southern Darkshore (NOT TRANSLATED IN :deDE YET)
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
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
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
    .goto Ashenvale,13.97,4.10
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    .goto Ashenvale,13.93,2.01
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
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
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Reist zu |cRXP_FRIENDLY_Volcor|r in der Höhle
step
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .timer 20,Flucht durch Verstohlenheit RP
    .target Volcor
    .isQuestTurnedIn 986
step
    .goto Darkshore,44.44,84.69
    >>Warte auf das RP
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
	.target Kerlonian Evershade
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Begleitet |cRXP_FRIENDLY_Kerlonian|r zu Maestras Posten im Eschental|r
    .use 13536 >> |cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kerlonian|r neben euch einschläft|r
    >>|cRXP_WARN_Vermeidet es so weit wie möglich, auf der Hauptstraße zu laufen. Feinde spawnen nur, wenn ihr auf der Straße seid|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Gebt die Quest Der Schläfer ist erwacht ab
    .isQuestComplete 5321
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
	.target Orendil Broadleaf
step
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 970 >> Der Turm von Althalaxx annehmen
    .target Delgren the Purifier
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Überlebenskunst Dungeonführer (A)
#subgroup RXP Überlebens-Guide 1-20
#name 27-30 Eschental
#next 23-24 Sumpfland

step
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
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Wache halten im Steinkrallengebirge annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Akzeptiert die Quest Reise zum Steinkrallengipfel
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
	.collect 922,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .money <1.1000
step << Warrior/Paladin
    #optional
    #sticky
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Rogue
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
	.collect 923,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .money <0.8000
step << Rogue
    #optional
    #sticky
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin -10752 >> Turn in Onward to Ashenvale (NOT TRANSLATED IN :deDE YET)
    .accept 991 >> Raenes Säuberung annehmen
    .accept 1054 >> Die Auswahl der Bedrohung annehmen
    .target Raene Wolfrunner
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
    +|cRXP_WARN_Begin looking for a Wailing Caverns group while you complete the next step. Very soon you'll be heading to The Barrens to run Wailing Caverns|r (NOT TRANSLATED IN :deDE YET)
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
    .hs >> Ruhestein nach Auberdine
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
.dungeon WC
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Astranaar >> Fliege nach Astranaar
	.target Caylais Moonfeather
    .zoneskip Ashenvale
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
step << Shaman
    #completewith next
    >>Loote die |cRXP_PICK_Mit Sternenstaub bedeckter Busch|r für |cRXP_LOOT_Hand voll Sternenstaub|r
    >>|cRXP_WARN_Ihre Spawpunkte sind über die gesamte Insel verstreut|r
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >> |cRXP_WARN_Use the|r |T132825:0|t[Empty Bota Bag] |cRXP_WARN_at the Ruins of Stardust small fountain|r (NOT TRANSLATED IN :deDE YET)
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>Loote die |cRXP_PICK_Mit Sternenstaub bedeckter Busch|r für |cRXP_LOOT_Hand voll Sternenstaub|r
    >>|cRXP_WARN_Ihre Spawpunkte sind über die gesamte Insel verstreut|r
    .complete 1034,1
step
    #optional
    .isQuestComplete 945
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >> Gebt die Quest Therylunes Flucht ab
	.target Therysil
step
    #completewith next
    .goto 1440/1,238.100,3163.500,80 >>Lauf in Richtung |cRXP_FRIENDLY_Teronis' Leichnam|r
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
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Teil pulling"|r
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
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
.dungeon !BFD
    #completewith next
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >> Travel to Blackfathom Deeps. You will complete the quest outside the instance (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 2797--BFD
step
.dungeon !BFD
    #loop
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334,25,0
    >>Tötet |cRXP_ENEMY_Schurke der Leidbringer|r, |cRXP_ENEMY_Satyr der Leidbringer|r, |cRXP_ENEMY_Orakel der Tiefschwarzen Grotte|r und |cRXP_ENEMY_Gezeitenpriesterin der Tiefschwarzen Grotte|r. Plündert sie für |cRXP_LOOT_Verderbter Hirnstamm|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275

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
    .isOnQuest 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .turnin 6124 >> Gebt die Quest Heilung der Kranken ab
    .accept 6125 >> Akzeptiert die Quest Macht über Gift
    .target Dendrite Starblaze
step << Druid
    .isQuestTurnedIn 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .accept 6125 >> Akzeptiert die Quest Macht über Gift
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
    .hs >> Ruhestein nach Auberdine
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 442
    .bindlocation 442,1
step << !Druid
#optional
    .goto 1414/1,749.5636,4252.5334
    .zone Darkshore>> Ghetto Hearth to Darkshore. To do this, enter Blackfathom Deeps, then copy paste the link below into chat. Wait out the 1 minute countdown (NOT TRANSLATED IN :deDE YET)
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLICK HERE (NOT TRANSLATED IN :deDE YET)
    .subzoneskip 2797,1 -- BFD (inside and outside instance)

step
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4740 >> Gebt die Quest GESUCHT: Gurgelbacke! ab
step
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 1275 >> Gebt die Quest Erforschung der Verderbnis ab
    .target Gershala Nightwhisper
step
    .isOnQuest 995
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Gebt die Quest Flucht durch Verstohlenheit ab
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
step
    .goto Darkshore,36.62,45.59
    .target Gwennyth Bly'Leggonde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4733 >> Gebt die Quest Gestrandete Meereskreatur ab
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Syurna
step << Druid
    .goto Darnassus,34.768,7.374
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Denatharion|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Denatharion
step << Druid
    .isOnQuest 6125
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r in der oberen Etage
    .turnin 6125 >> Gebt die Quest Macht über Gift ab
step << Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Jocaste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Argentumwache Manados|r
    .turnin 1199 >> Gebt die Quest Die Twilight fallen ab
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Dämmerungsbehüter Selgorm|r
    .turnin 1200 >> Gebt die Quest Schurkerei in der Tiefschwarzen Grotte ab
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
    .isOnQuest 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
step
    .isQuestTurnedIn 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
step << Priest
    .goto Darnassus,37.901,82.742
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jandria|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Jandria
step
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Astranaar >> Fliege nach Astranaar
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Astranaar >> Fliege nach Astranaar
	.target Caylais Moonfeather
    .zoneskip Darkshore,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >> Der Zoramstrand abgeben
    .accept 1134 >> Prachtschwingen des Steinkrallengebirges annehmen
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1023 >> Gebt die Quest Raenes Säuberung ab
    .accept 1025 >> Eine aggressive Verteidigung annehmen
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


--Stonetalon section. skipping if 24 or not already in Stonetalon Mountains
step
    .goto Ashenvale,42.50,71.70
    .zone Stonetalon Mountains >> Reist ins Steinkrallengebirge
    >>|cRXP_WARN_Skip the Stonetalon Mountains section if you are already level 24|r (NOT TRANSLATED IN :deDE YET)
    .xp >24,1
step
    #completewith wyv1
    >>Töte |cRXP_ENEMY_Junge Prachtschwinge|r. Loote sie für ihre |cRXP_LOOT_Prachtschwingengiftbeutel|r
	.unitscan Young Pridewing
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kaela Schattenspeer|r
	.target Kaela Shadowspear
    .goto Stonetalon Mountains,59.899,66.844
    .turnin 1070 >> Gebt die Quest Wache halten im Steinkrallengebirge ab
    .accept 1085 >> Wache halten im Steinkrallengebirge annehmen
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gaxim Rostknirsch|r
	.target Gaxim Rustfizzle
    .goto Stonetalon Mountains,59.516,67.146
    .turnin 1085 >> Gebt die Quest Wache halten im Steinkrallengebirge ab
    .accept 1071 >> Der Aufschub des Gnoms annehmen
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz Fizziks|r
	.target Ziz Fizziks
    .goto Stonetalon Mountains,58.989,62.601
    .accept 1093 >> Superschnitter 6000 annehmen
    .zoneskip Stonetalon Mountains,1
step
    #sticky
    #label sr6000
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
    >>Tötet |cRXP_ENEMY_Maschinenführer der Venture Co.|r. Plündert sie für ihre |cRXP_LOOT_Blaupause|r
    .complete 1093,1
    .unitscan Venture Co. Operator
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
	>>Töte |cRXP_ENEMY_Roder der Venture Co.|r und |cRXP_ENEMY_Holzarbeiter der Venture Co.|r
    .complete 1071,1
    .mob +Venture Co. Logger
    .complete 1071,2
    .mob +Venture Co. Deforester
    .zoneskip Stonetalon Mountains,1
step
    #requires sr6000
    .goto Stonetalon Mountains,58.989,62.601
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ziz Fizziks|r
	.target Ziz Fizziks
    .turnin 1093 >> Gebt die Quest Superschnitter 6000 ab
	.accept 1094 >> Weitere Instruktionen annehmen << Warlock
    .zoneskip Stonetalon Mountains,1
step
    #label wyv1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gaxim Rostknirsch|r
	.goto Stonetalon Mountains,59.516,67.146
    .turnin 1071 >> Gebt die Quest Der Aufschub des Gnoms ab
    .accept 1072 >> Ein alter Kollege annehmen
    .accept 1075 >> Eine Rolle von Mauren annehmen
    .target Gaxim Rustfizzle
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,54.04,40.09,60,0
    .goto Stonetalon Mountains,53.26,36.83,40,0
    .goto Stonetalon Mountains,54.56,38.12
    >>Töte |cRXP_ENEMY_Prachtschwingenflügeldrache|r und |cRXP_ENEMY_Prachtschwingenkonsort|r. Loote sie für ihre |cRXP_LOOT_Prachtschwingengiftbeutel|r
    >>|cRXP_WARN_Skip this step if you are already level 24|r (NOT TRANSLATED IN :deDE YET)
    .xp >24,1
	.mob Pridewing Wyvern
	.mob Pridewing Consort
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
    #completewith next
    .goto Stonetalon Mountains,37.103,8.100,100 >> Lauf nach Steinkrallenpeak
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,37.103,8.100
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bewahrer Albagorm|r
	.target Keeper Albagorm
    .turnin 1056 >> Gebt die Quest Reise zum Steinkrallengipfel ab
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Teloren|r
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
    .fp Stonetalon >> Erlernt die Steinkrallengebirge-Flugroute
	.fly Astranaar >> Fliege nach Astranaar << !Warlock
    .zoneskip Stonetalon Mountains,1
step << Warlock
.dungeon WC
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Teloren|r
    >>|cRXP_WARN_Skip this step if you didn't do WC earlier|r (NOT TRANSLATED IN :deDE YET)
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
	.fly Ratchet >> Fliege nach Ratschet
    .zoneskip Stonetalon Mountains,1
step << Warlock
    .goto Stonetalon Mountains,75.466,91.422,0
    .goto Stonetalon Mountains,81.292,96.118,0
    .goto The Barrens,35.052,27.025
    .zone The Barrens >> Reist nach Das Brachland
    .zoneskip Stonetalon Mountains,1
step << Warlock
    #completewith next
    .goto The Barrens,40.358,24.780,150 >> |cRXP_WARN_FOLGT DEM PFEIL UND VERMEIDET DIE |cRXP_ENEMY_BRACHLAND WACHEN|r!|r
    .zoneskip The Barrens,1
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Takar der Seher|r
    .turnin 1716 >> Gebt die Quest Verschlinger der Seelen ab
    .target Takar the Seer
    .accept 1738 >> Herzholz annehmen
    .accept 65602 >> Akzeptiert die Quest Alles aus Liebe
step << Warlock
    #completewith RatchetFP
    .goto The Barrens,62.98,37.21,100 >> Reist nach Ratschet
step << Warlock
    .isOnQuest 1094
    .goto The Barrens,62.984,37.218
    .target Sputtervalve
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 1094 >> Gebt die Quest Weitere Instruktionen ab
step << Warlock
    #label RatchetFP
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fly Astranaar >> Fliege nach Astranaar
    .target Bragok
    .zoneskip Ashenvale
step
    .isQuestComplete 1134
    .goto Ashenvale,34.67,48.83
    .target Shindrell Swiftfire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
    .turnin 1134 >> Gebt die Quest Prachtschwingen des Steinkrallengebirges ab
step
    #sticky
    #optional
    .abandon 1134 >> Abandon Pridewings of Stonetalon (NOT TRANSLATED IN :deDE YET)
step
    #sticky
    #optional
    .abandon 1070 >> Abandon On Guard in Stonetalon (NOT TRANSLATED IN :deDE YET)
step
    #sticky
    #optional
    .abandon 1056 >> Abandon Journey to Stonetalon Peak (NOT TRANSLATED IN :deDE YET)
step << Warlock
    .isOnQuest 65602
    .goto Ashenvale,34.849,50.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Haljan Eichenherz|r
    >>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_and|r |T135435:0|t[Simple Wood] (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_You'll need this for your Incubus quest shortly|r (NOT TRANSLATED IN :deDE YET)
    .collect 4471,1 --Flint and Tinder (1)
    .collect 4470,1 --Simple Wood (1)
    .target Haljan Oakheart
step
    #optional
    #completewith next
    .goto 1440,34.786,44.885,20,0
    .goto 1440,34.869,43.443,30,0
    .goto 1440,38.023,38.727,60 >> Nehmt die Bergabkürzung zum Osteingang des Lagers der Distelfelle
step
    #optional
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.31,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,39.595,36.309
    >>Töte |cRXP_ENEMY_Dal Blutklaue|r. Loote seinen |cRXP_LOOT_Schädel|r
    >>|cRXP_WARN_He patrols around the northern parts of Thistlefur Village|r (NOT TRANSLATED IN :deDE YET)
    .complete 1054,1 --Dal Bloodclaw's Skull (1)
    .unitscan Dal Bloodclaw
step << Warlock
    .isOnQuest 1738
    #completewith next
    .goto Ashenvale,26.73,44.95,100,0
    .goto Ashenvale,31.50,31.50,40 >> Reist zu den Ruinen von Ordil'Aran
step << Warlock
    .isOnQuest 1738
    .goto Ashenvale,31.50,31.50
    >>Plündert das |cRXP_LOOT_Herzholz|r am riesigen Baum
    .complete 1738,1
step << Warlock
    .isOnQuest 65602
    .goto Ashenvale,26.78,22.42
	>>Loote die |T135434:0|t[|cRXP_LOOT_Gegenstände|r]on the table
	.collect 190307,1 --Collect Unlit Torch (x1)
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .use 190307 >> |cRXP_WARN_Use the|r |T135434:0|t[|cRXP_LOOT_Gegenstände|r] |cRXP_WARN_to create a|r |T135432:0|t[|cRXP_LOOT_Brennende Fackel|r]
    >>|cRXP_WARN_If you are unable to do this here, head west to |cRXP_FRIENDLY_Talen|r and light it at the Campfire beside him|r (NOT TRANSLATED IN :deDE YET)
    .collect 190308,1 --Collect Burning Torch
    .usespell 818
    .skill cooking,<1,1 -- shows if cooking is >1
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    .use 190307 >>|cRXP_WARN_Head west to |cRXP_FRIENDLY_Talen|r and use the |T135434:0|t[|cRXP_LOOT_Gegenstände|r] at the Campfire beside him to create a|r |T135432:0|t[|cRXP_LOOT_Brennende Fackel|r]
    .collect 190308,1 --Collect Burning Torch
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,160.600,3806.100
    .cast 367062 >> |cRXP_WARN_Use the|r |T135432:0|t[|cRXP_LOOT_Brennende Fackel|r] |cRXP_WARN_on the|r |cRXP_PICK_Archaeologist's Cart|r
    .use 190308
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,183.700,3819.500,8,0
    .goto 1440/1,164.900,3826.200
    >>Head eine Etage drüber in the house und loot the |cRXP_PICK_Wooden Figurine|ron the table
    .complete 65602,1 --Wooden Figurine

step
    #completewith next
    >>Töte ein paar |cRXP_ENEMY_Krieger der Fäulnisklauen|r und |cRXP_ENEMY_Totemiker der Fäulnisklauen|r bevor ihr euch in Richtung Süden zu den |cRXP_ENEMY_Wasserelementare|r begebt
    >>|cRXP_WARN_Seid vorsichtig denn die|r |cRXP_ENEMY_Ursa der Fäulnisklauen|r |cRXP_WARN_können|r |T132152:0|t[Hauen] |cRXP_WARN_treffen dich 3x auf einmal|r
    >>|cRXP_WARN_Ihr werdet den Rest töten, nachdem ihr die quest Elementararmschienen abgeschlossen habt|r
    .complete 1025,4,5 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,50.08,59.94
    .complete 1025,3,4 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,50.08,59.94
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .disablecheckbox
    .complete 1025,1 -- Foulweald Den Watcher slain
    .disablecheckbox
    .mob Foulweald Ursa
    .mob Foulweald Den Watcher
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Velene Sternenschlag|r
    .accept 1016 >> Die Rückeroberung des Mystralsees annehmen
    .target Sentinel Velene Starstrike
step
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    .goto Ashenvale,48.90,70.05
    >>Töte |cRXP_ENEMY_Beschmutzter Wasserelementar|r. Loote sie für ihre |cRXP_LOOT_Intakte Elementararmschiene|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
    .use 5456 >> |cRXP_WARN_Benutzt die|r |T134943:0|t[Rolle der Bestimmung] |cRXP_WARN_um die|r |T134938:0|t[Gefundene Rolle] herzustellen
    .complete 1016,1 -- Divined Scroll
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Velene Sternenschlag|r
    .turnin 1016 >> Gebt die Quest Elementararmschienen ab
    .accept 1017 >> Magier-Beschwörer annehmen
    .target Sentinel Velene Starstrike
step
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
    >>|cRXP_WARN_Seid vorsichtig denn die|r |cRXP_ENEMY_Ursa der Fäulnisklauen|r |cRXP_WARN_können|r |T132152:0|t[Hauen] |cRXP_WARN_treffen dich 3x auf einmal|r
    >>The |cRXP_ENEMY_Totemiker der Fäulnisklauen|r teilen sich den spawn mit |cRXP_ENEMY_Krieger der Fäulnisklauen|r. Möglicherweise musst du ein Stück zurückgehen und neu erschienene Gegner erledigen, falls du bei den Spawns kein Glück hattest
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob +Foulweald Ursa
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob +Foulweald Den Watcher
step
    #completewith next
    .goto 1440/1,-1922.800,2018.800,80,0
    .goto 1440/1,-2566.600,2647.400,80,0
    .goto 1440/1,-2857.300,2542.600,80,0
    .goto 1440/1,-3294.800,2797.000,80 >> |cRXP_WARN_Follow the arrow to get to Forest Song. You will run around |cRXP_ENEMY_Splitterholzposten|r to ensure you don't run into any|r |cRXP_ENEMY_Wache des Splitterholzpostens|r
    .subzoneskip 2358 -- forest song
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Suralais Windstreif|r
    .target Suralais Farwind
    .goto 1440/1,-3206.800,3003.000
    .fp Forest Song >>Get the Forest Song Flight Path (NOT TRANSLATED IN :deDE YET)
    .fly Astranaar >> Fliege nach Astranaar
    .zoneskip Ashenvale,1
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .turnin 1025 >>Gebt die Quest Eine aggressive Verteidigung ab
    .turnin 1054 >>Gebt die Quest Die Auswahl der Bedrohung ab
    .target Raene Wolfrunner
step
    #label end
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Fliege nach Auberdine
    .target Daelyshia
    .zoneskip Ashenvale,1
step
    #completewith MeneBoat
    .goto 1439,32.432,43.744,15 >> Reist zu den Auberdine Docks. Wartet auf das Hafen von Menethil boat
    .zoneskip Wetlands
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_während ihr auf das Boot nach Hafen von Menethil wartet|r
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .skill cooking,<1,1 -- shows if firstaid is >1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    >>|cRXP_WARN_Level your|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r (NOT TRANSLATED IN :deDE YET)
    .skill cooking,<1,1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid]|cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill firstaid,<1,1
step
    #label MeneBoat
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
]])
