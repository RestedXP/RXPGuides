if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance
#name 1-6 Dun Morogh
#subgroup RestedXP Allianz 1-20
#defaultfor Gnome/Dwarf
#next 6-11 Dun Morogh << !Hunter
#next 6-10 Dun Morogh (Hunter) << Hunter

step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet
step << !Warrior !Warlock
    #completewith WolfMeat
	.destroy 6948 >> Entfernt den |T134414:0|t[Ruhestein] aus den Taschen von Euch, da er nicht mehr benötigt wird
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Akzeptiert die Quest Zwergenausstatter
    .target Sten Stoutarm
step << Warrior/Warlock
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Tötet und plündert|cRXP_ENEMY_ Struppiger junger Wolf|r, bis ihr 10 Kupfermünzen oder mehr Händler-Schrott habt|r
    >>|cRXP_WARN_Legt|r |T132665:0|t[Akolythenrobe]|cRXP_WARN_,|r |T135005:0|t[Akolythenhemd]|cRXP_WARN_,|r |T134581:0|t[Akolythenhose]|cRXP_WARN_ und|r |T132535:0|t[Akolythenschuhe] |cRXP_WARN_ab, damit ihr sie beim Händler für 4 Kupfer verkaufen könnt|r << Warlock
    >>|cRXP_WARN_Legt|r |T135009:0|t[Rekrutenhemd]|cRXP_WARN_,|r |T134582:0|t[Rekrutenhose]|cRXP_WARN_ und|r |T132540:0|t[Rekrutenstiefel] |cRXP_WARN_ab, damit ihr sie beim Händler für 3 Kupfer verkaufen könnt|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar
step << Warrior/Warlock
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grundel Harkin|r innerhalb
    .vendor >> Verkauft Müll
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r innerhalb
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target Thran Khorman
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r innerhalb
    .train 348 >> Erlernt |T135817:0|t[Feuerbrand]
    .accept 1599 >> Akzeptiert die Quest Anfänge
    .target Alamar Grimm
step << Warrior/Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Benutzt euren Ruhestein in Das Eisklammtal
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Entfernt den |T134414:0|t[Ruhestein] aus den Taschen von Euch, da er nicht mehr benötigt wird
step << Warlock
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step
    #label WolfMeat
    #loop
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Tötet |cRXP_ENEMY_Ragged Young Wolves|r und |cRXP_ENEMY_Ragged Timber Wolves|r. Plündert sie für |cRXP_LOOT_Tough Wolf Fleisch|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >> Farmt bis Stufe 2
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >>|cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Kauft 600|r |T132384:0|t[Leichtes Geschoss] |cRXP_BUY_von ihm|r << Hunter
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r << Priest/Mage/Warlock
    >>Farmt|cRXP_WARN_ extra |cRXP_ENEMY_Struppiger junger Wolf|r wenn ihr nicht genug Geld habt|r << Priest/Mage/Warlock
    .collect 159,15 << Priest/Mage/Warlock --Collect Refreshing Spring Water (x15)
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Gebt die Quest Zwergenausstatter ab
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3106 >> Akzeptiert die Quest Einfache Rune << Dwarf Warrior
    .accept 3107 >> Akzeptiert die Quest Geweihte Rune << Dwarf Paladin
    .accept 3108 >> Akzeptiert die Quest Geätzte Rune << Dwarf Hunter
    .accept 3109 >> Akzeptiert die Quest Verschlüsselte Rune << Dwarf Rogue
    .accept 3110 >> Akzeptiert die Quest Geheiligte Rune << Dwarf Priest
    .accept 3112 >> Akzeptiert die Quest Einfaches Memorandum << Gnome Warrior
    .accept 3113 >> Akzeptiert die Quest Verschlüsseltes Memorandum << Gnome Rogue
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum << Gnome Mage
    .accept 3115 >> Akzeptiert die Quest Besudeltes Memorandum << Gnome Warlock
    .target Sten Stoutarm
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Akzeptiert die Quest Eine neue Bedrohung
    .target Balir Frosthammer
--Warlock Imp quest
step << Warlock
#xprate <1.5
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r, |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer |r, |cRXP_ENEMY_Struppiger junger Wolf|r, und |cRXP_ENEMY_Struppiger Waldwolf|r auf deiner Route
    >>|cRXP_WARN_Vermeidet|r |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step << Warlock
    #optional
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >> Betretet die Höhle der Frostmähnen
step << Warlock
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >> Reist zu den |cRXP_ENEMY_Novize der Frostmane|r im Inneren
step << Warlock
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Tötet |cRXP_ENEMY_Novize der Frostmane|r innerhalb. Plündert sie für ihren |cRXP_LOOT_Federglücksbringer|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << Warlock
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar
step << Warlock
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r oben
    .turnin 1599 >> Gebt die Quest Anfänge ab
    .turnin 3115 >> Gebt die Quest Besudeltes Memorandum ab
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step
#xprate <1.5
    #completewith Rockjaw << !Paladin !Warlock !Hunter
    #completewith Talin << Paladin/Warlock/Hunter
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 183 >> Akzeptiert die Quest Der Eberjäger
    .accept 234 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Tötet |cRXP_ENEMY_Kleiner Klippeneber|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Gebt die Quest Der Eberjäger ab
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
#xprate <1.5
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Warlock
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Farmt bis 1130+/1400 EP
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    >>|cRXP_WARN_Skip this step once you reach level 4. You'll complete it shortly|r (NOT TRANSLATED IN :deDE YET)
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Farmt bis Stufe 4
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Dies startet einen 5-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Ihr habt 5 Minuten Zeit, um nach Ambossar zurückzukehren, bevor|r |T132791:0|t[Durnans kochend heißes Morgengebräu] |cRXP_WARN_verfällt|r
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r innerhalb
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Gebt die Quest Geätzte Rune ab << Dwarf
    .train 1978 >>Erlernt |T132204:0|t[Schlangengift]
step << Paladin
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bromos Grummner|r innerhalb
    .turnin 3107 >> Gebt die Quest Geweihte Rune ab << Dwarf
    .train 19740 >> Erlernt |T135906:0|t[Segen der Macht]
    .train 20271 >> Erlernt |T135959:0|t[Richturteil]
    .target Bromos Grummner
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r oben
    .train 172 >>Erlernt |T136118:0|t[Verderbnis]
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Dies startet einen 5-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #completewith next
    +|cRXP_WARN_Ihr habt 5 Minuten, um |cRXP_LOOT_Grelin Whitebeards Tagebuch|r zu erhalten und zu Ambossar zurückzukehren, bevor|r |T132791:0|t[Durnans kochend heißes Morgengebräu] |cRXP_WARN_verfällt|r
    >>|cRXP_WARN_Falls ihr die Quest nicht schafft, macht euch keine Sorgen, da ihr sie später erneut bekommen könnt|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Betretet die Höhle der Frostmähnen
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Reist zu |cRXP_ENEMY_Grik'nir der Kalte|r drinnen
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Tötet |cRXP_ENEMY_Grik'nir der Kalte|r drinnen. Plündert ihn für |cRXP_LOOT_Grelin Whitebeards Tagebuch|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.298,79.836,20,0
    .goto 1426,27.098,80.707,20 >> Verlasst die Höhle der Frostmähnen
step << !Paladin !Warlock !Hunter
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_Falls ihr die Quest nicht geschafft habt, überspringt diesen Schritt|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
step << !Paladin !Warlock !Hunter
    #sticky
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery. You'll pick it up again now (NOT TRANSLATED IN :deDE YET)
step << !Paladin !Warlock !Hunter
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r und |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
step << Mage
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab << Gnome
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Marryk Nurribit
step << Rogue
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Gebt die Quest Verschlüsseltes Memorandum ab << Gnome
    .turnin 3109 >> Gebt die Quest Verschlüsselte Rune ab << Dwarf
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .target Solm Hargrin
step << Priest
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Erlernt|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_und|r |T135929:0|t[Geringes Heilen] (Rang 2) |cRXP_WARN_, da ihr sie bald für eine Klassquest braucht|r << Dwarf
    .turnin 3110 >> Gebt die Quest Geheiligte Rune ab << Dwarf
    .accept 5626 >> Akzeptiert die Quest Dem Licht geneigt << Dwarf
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2) << Dwarf
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Branstock Khalder
step << Warrior
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Gebt die Quest Einfache Rune ab << Dwarf
    .turnin 3112 >> Gebt die Quest Einfaches Memorandum ab << Gnome
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Thran Khorman
step << !Paladin !Warlock !Hunter
    #optional
    #completewith next
    .goto 1426,28.831,68.698,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
    .target Balir Frosthammer
step << Priest/Mage/Warlock
    #optional
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>|cRXP_BUY_Kauft 5|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Thalos|r und |cRXP_FRIENDLY_Hands Federspross|r
    .turnin 282 >> Gebt Senirs Beobachtungen ab
    .accept 420 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Akzeptiert die Quest Vorräte für Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Reist durch den Eisklamm Pass
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance !Hunter
#name 6-11 Dun Morogh << !Hunter
#displayname 6-12 Dun Morogh << Mage
#next 12-14 Darkshore << !Warlock
#next 11-14 Elwynn Forest/Loch Modan << Warlock
#subgroup RestedXP Allianz 1-20
#defaultfor Gnome/Dwarf

step
    #optional
    #completewith SenirEnd
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_die ihr für Vorräte für Jetsteam und dann zum Leveln eurer|r |T133971:0|t[Kochkunst] |cRXP_WARN_erhaltet|r
    >>|cRXP_WARN_Ihr braucht 10|r |T133971:0|t[Kochkunst] |cRXP_WARN_ später für eine Quest in Auberdine|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Reist nach Kharanos. Farmt bis 2145+/2800 Erfahrung, indem ihr unterwegs |cRXP_ENEMY_Klippeneber|r tötet << Priest
    .xp 5+2415 >> Reist nach Kharanos. Farmt bis 2415+/2800 XP, indem ihr unterwegs|cRXP_ENEMY_Klippeneber|r tötet << !Priest
    .mob Crag Boar
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #completewith next
    >>|cRXP_WARN_Stellt sicher, dass eure zone nicht Eisklamm ist|r
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 131
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Gebt Senirs Beobachtungen ab
    .target Senir Whitebeard
step
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >> Farmt bis 2690+/2800 XP << !Warlock !Priest
    .xp 5+2350 >> Farmt bis 2350+/2800XP << Priest
    .xp 6 << Warlock
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt (Rank 2)] (NOT TRANSLATED IN :deDE YET)
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts (Rang 1)] |cRXP_BUY_wenn ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen|r
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Betretet die Donnerbräus Metbrauerei
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Gebt die Quest Vorräte für Tannok ab << Warrior/Rogue
    .turnin 2160,2 >> Gebt die Quest Vorräte für Tannok ab << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Zerstört die |T135426:0|t [Kleinen Wurfmesser] aus den Taschen von Euch, da sie nicht mehr benötigt werden
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Hogral Bakkan
    .xp <6,1
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .turnin -5626 >> Turn In In Favor of the Light (NOT TRANSLATED IN :deDE YET) << Dwarf
    .accept 5625 >> Gewänder des Lichts annehmen
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen] (Rang 2) |cRXP_WARN_und dann|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf |cRXP_FRIENDLY_Gebirgsjäger Dolf|r draußen|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .turnin 5625 >> Gebt die Quest Gewänder des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .vendor >> |cRXP_BUY_Kaufe so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_wie ihr euch leisten könnt|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Betretet das Schmiedegebäude
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft eine|r |T132401:0|t[Große Axt]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tognus Flintfire|r
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Das wird dir ermöglichen|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_herzustellen, die Nahkampfschäden von Euch um 2 erhöhen|r << Paladin
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
    .target Tharek Blackstone
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r und |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Tötet keine |cRXP_ENEMY_Junger Schwarzbär|r auf dem weg|r
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r und |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, überspringt diesen Schritt|r
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r und |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yarr Hammerstone|r innerhalb unten
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, überspringt diesen Schritt|r
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith BearFur
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für |cRXP_LOOT_Dickes Bärenfell|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Warrior !Paladin !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für |cRXP_LOOT_Dickes Bärenfell|r
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step << !Paladin !Warrior !Rogue
    #optional
    #completewith EvershineEnd
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
    .target Pilot Bellowfiz
step << Paladin/Warrior/Rogue
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Betretet das Schmiedegebäude
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft eine|r |T132401:0|t[Große Axt]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #optional
    #completewith BBBR
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Betretet die Donnerbräus Metbrauerei
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Priest/Mage/Warlock
    #optional
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor 1247 >> |cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm, wie ihr euch leisten könnt|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #label BBBR
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
#xprate <1.5
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Reist zu Der altgediente Bau
    .isOnQuest 313
step
#xprate <1.5
    #optional << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Tötet |cRXP_ENEMY_Wendigos|r und |cRXP_ENEMY_Junger Wendigo|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    >>|cRXP_WARN_Denken Sie daran, die Augen offen zu halten für|r |T134566:0|t[Kupfervorkommen] |cRXP_WARN_welche dir|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r geben |cRXP_WARN_so dass ihr|r |T135248:0|t[Rauer Wetzstein] herstellen könnt << Warrior/Rogue
    >>|cRXP_WARN_Denken Sie daran, die Augen offen zu halten für|r |T134566:0|t[Kupfervorkommen] |cRXP_WARN_welche dir|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r geben |cRXP_WARN_so dass ihr|r |T135255:0|t[Rauer Gewichtsstein] herstellen könnt << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Tötet |cRXP_ENEMY_Wendigos|r und |cRXP_ENEMY_Junger Wendigo|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>Öffnet die |cRXP_PICK_Munitionskiste|r. Plündert sie für |cRXP_LOOT_Munition für Rumbleshot|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .target Hegnar Rumbleshot
step << Warrior/Paladin/Rogue
    #loop
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für ihr |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für ihr |cRXP_LOOT_Dickes Bärenfell|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Crag Boar
    .mob +Large Crag Boar
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Young Black Bear
step << Warrior/Paladin/Rogue
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Gebt die Quest Der altgediente Bau
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von ihm|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yarr Hammerstone|r innerhalb unten
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << !Warrior !Paladin !Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >> Farmt bis Stufe 7
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 7 >> Farmt bis Stufe 7
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Betretet das Schmiedegebäude
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith Tundra
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft eine|r |T132401:0|t[Große Axt]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith Tundra
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Tundra
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith Tundra
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Betretet die Donnerbräus Metbrauerei
step << Warrior/Rogue
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor 1247 > |cRXP_BUY_Buy up to 15|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if you can afford|r
    .target Innkeeper Belm
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >> Reist ins Frosthauchtal
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >> Reist in Richtung |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Reist nach Bräuhall
step << !Mage !Priest !Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r und |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .turnin 318 >> Gebt die Quest Immerschimmer ab
    .accept 319 >> Akzeptiert die Quest Ein Gefallen für etwas Immerschimmer
    .accept 315 >> Akzeptiert die Quest Das perfekte Starkbier
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 319 >> Gebt die Quest Ein Gefallen für etwas Immerschimmer ab
    .accept 320 >> Akzeptiert die Quest Rückkehr zu Bellowfiz
    .target Rejold Barleybrew
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3735 >>Farmt bis 3735+/4500 XP
    .isQuestAvailable 384
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4360 >>Farmt bis 4360+/4500 XP
    .isQuestTurnedIn 384
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_Führt den Dun Morogh -> Sumpfland Deathskip durch. Folgt dem Pfeil genau|r
    >>|cRXP_WARN_Springe noch nicht aus irgendeiner Höhe herunter|r
    .zone Wetlands >>|cRXP_WARN_Klettert den Berg hinauf, dann lauft hinunter vorbei an dem gezackten Muster bis sich eurezone zum Sumpfland ändert|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Springt vom Berg in Richtung Norden oder Nordwesten|r
    .deathskip >> Sterbt und respawnt an der Baradinbucht |cRXP_FRIENDLY_Geistheiler|r
    .isQuestAvailable 983
    .target Geistheiler
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Schwimmt zum Ufer zum Hafen von Menethil
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >> Ruhestein nach Theramore
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_und ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_bei ihm|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jarven Donnerbräu|r unten
    .turnin 308 >> Gebt die Quest Jarvens Ablenkung ab
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Öffnet das |cRXP_PICK_Unbewachtes Fass mit Donnerbier|r
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .train 980 >> Train |T136139:0|t[Curse of Agony] (NOT TRANSLATED IN :deDE YET)
    .train 5782 >> Train |T136183:0|t[Fear] (NOT TRANSLATED IN :deDE YET)
    .goto Dun Morogh,47.327,53.693
    .target +Gimrizz Shadowcog
    .xp <8,1
step << Warlock
    #optional
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_from her if you can afford it. If not, you can buy it later|r (NOT TRANSLATED IN :deDE YET)
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Feuerblitzes (Rang 2)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Kauft das|r |T133738:0|t[Zauberfoliant des Blutpakts (Rang 1)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen.|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .train 118 >> Erlernt |T136071:0|t[Verwandlung]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxan Anvol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135321:0|t[Gladius] aus
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet eine|r |T132401:0|t[Große Axt] aus
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135641:0|t[Stilett] aus
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet einen|r |T133053:0|t[Hölzerner Schlaghammer] aus
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor 1247 >> |cRXP_BUY_Buy up to 20|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if you can afford it|r (NOT TRANSLATED IN :deDE YET) << Warrior/Rogue
    .vendor 1247 >> |cRXP_BUY_Kauft 5|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor 1247 >> |cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Gebt die Quest Der altgediente Bau
    .target Pilot Stonegear
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Wählt das|r |T135637:0|t[Campingmesser]|cRXP_WARN_. Behaltet es für später|r << Rogue
    .turnin 320 >> Gebt die Quest Rückkehr zu Bellowfiz ab << !Rogue
    .turnin 320,3 >> Gebt die Quest Rückkehr zu Bellowfiz ab << Rogue
    .target Pilot Bellowfiz
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r innerhalb
    .accept 412 >> Akzeptiert die Quest Operation Rekombobulationsgerät
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Reist die Rampe hinauf zum Schimmergrat
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Tötet |cRXP_ENEMY_Kopfjäger der Frostmane|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |cRXP_LOOT_Schimmerkraut|r
    >>Öffnet die |cRXP_PICK_Schimmerkrautkorb|r auf dem Boden. Plündert sie für ihr |cRXP_LOOT_Schimmerkraut|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Wirkt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Mage
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Warlock
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Wartet bis |cRXP_ENEMY_Eisbart der Alte|r aus der Höhle patrouilliert. Sobald er aus der Höhle patrouilliert, könnt ihr hineingehen und|r |cRXP_PICK_MacGranns Fleisch-Spind|r plündern << !Mage !Warlock
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r << !Mage !Warlock
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r und |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .turnin 315 >> Gebt die Quest Das perfekte Starkbier ab
    .accept 413 >> Akzeptiert die Quest Schimmerstarkbier
    .goto Dun Morogh,30.189,45.725
    .target +Rejold Barleybrew
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
#xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |cRXP_LOOT_Gyromechanische Getriebeteile|r und |cRXP_LOOT_Restabilisationszahnrad|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r in der Höhle
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Lauft die Seite des Höhleneingangs hinauf. Springt in die Höhle der Frostmähnen
    .isOnQuest 287
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Lasst euch in den kleinen, als Sackgasse endenden Raum der Höhle fallen|r
    >>|cRXP_WARN_Keine Sorge wenn ihr sterbt, da ihr gleich nach Kharanos zurückkehrt|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Gebt die Quest Höhle der Frostmähnen ab
    .accept 291 >> Akzeptiert die Quest Die Berichte
    .target Senir Whitebeard
step << Rogue
    #optional
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .accept 2218 >> Akzeptiert die Quest Straße der Rettung
    .target Hogral Bakkan
    .xp <10,1
step
    #optional
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Thamner Pol
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r innerhalb
    .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Farmt, bis ihr 10s30c Wert an Verkaufswaren habt|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Lauf nach Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r oder |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Falls ihr in einer Gruppe seid oder jemanden habt, der euch hilft, |cRXP_ENEMY_Vagash|r jetzt zu töten, trainiert Zweihand-Streitkolben von |cRXP_FRIENDLY_Buliwyf Steinhand|r, ansonsonsten trainiert Wurfwaffen von |cRXP_FRIENDLY_Bixi Wobbelbonk|r. Falls ihr nicht sicher seid, trainiert einfach Wurfwaffen
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    .isQuestAvailable 1339
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >> Verlasst Eisenschmiede
    .zoneskip Ironforge,1
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Geht auf die Kante des Metallbodens über dem Wegpunkt-Pfeil|r
    .zone Dun Morogh >>|cRXP_WARN_Positioniert euren Charakter so, dass es aussieht, als würde er schweben, und führt dann einen Logout-Skip durch, indem ihr euch ausloggt und wieder einloggt|r
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .goto 1426,57.936,50.787,0
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Das wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später zu leveln|r
    >>|cRXP_WARN_Ihr braucht 10|r |T133971:0|t[Kochkunst] |cRXP_WARN_ später für eine Quest in Auberdine|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_KLICKT HIER Falls ihr Schwierigkeiten habt|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für seinen |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht|r
    >>|cRXP_WARN_Schaut das Video unten, bevor ihr versucht, |cRXP_ENEMY_Vagash|r zu töten. Es kann von jeder Klasse solo absolviert werden|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Klickt hier für eine Videoreferenz|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step << Warrior/Paladin
    #sticky
    #optional
    .equip 16,3103 >> |cRXP_WARN_Equip the|r |T133052:0|t[|cRXP_FRIENDLY_Coldridge Hammer|r] (NOT TRANSLATED IN :deDE YET)
    .use 3103
    .itemcount 3103,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.3
    .train 199,3
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Lauf zum Gol'Bolar Steinbruch
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
    .money <0.0100
step
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Kauft bis zu 10|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_bei ihm, falls benötigt|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Kauft bis zu 5|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_bei ihm, falls benötigt|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r und |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r in oder außerhalb der Mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Betretet die Steinbruch Gol'Bolar Mine
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Tötet |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r in der Mine
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r und |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
    #optional
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    .xp 10 >> Farmt bis Stufe 10
    .mob Rockjaw Skullthumper
step << Priest/Rogue
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 131
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxan Anvol
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .accept 2218 >> Akzeptiert die Quest Straße der Rettung
    .train 674 >> Erlernt |T132147:0|t[Beidhändigkeit]
    .train 2983 >> Erlernt |T132307:0|t[Sprinten]
    .target Hogral Bakkan
step
    #optional
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Vernarbter Klippeneber|r und |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    .collect 769,40,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<10,1 -- shows if cooking is >10
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Reisen zu |cRXP_FRIENDLY_Pilot Hammerfoot|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    .goto Dun Morogh,78.97,37.14
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    >>|cRXP_WARN_Wählt den|r |T135641:0|t[Handwerkerdolch] << Rogue
    .turnin 417 >> Gebt die Quest Pilotenrache ab << !Rogue
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_Legt den|r |T135641:0|t[Handwerkerdolch] |cRXP_WARN_in die Haupthand von Euch an|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >> Reise in Richtung |cRXP_FRIENDLY_Gebirgsjäger Gerstenbräu|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >> Gebt die Quest Schimmerstarkbier ab
    .accept 414 >> Akzeptiert die Quest Starkbier für Kadrell
    .target Mountaineer Barleybrew
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Reist durch den Südtorpass nach Loch Modan << !Rogue !Warrior
    .zone Loch Modan >> Travel through South Gate Pass into Loch Modan (NOT TRANSLATED IN :deDE YET) << Rogue/Warrior
step << !Rogue !Warrior
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step << !Rogue !Warrior
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step << !Rogue !Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,26.67,56.94
    >>Tötet |cRXP_ENEMY_Splittersteintrogg|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    >>|cRXP_WARN_Seid vorsichtig denn die |cRXP_ENEMY_Späher der Splittersteintroggs|r wirkt|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: verursacht 14-20 Schaden)|r
    >>|cRXP_WARN_Dies ist ein Hyperspawn-Gebiet. Ihr solltet nicht von hier weg müssen|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Mage
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 12-3675 >> Grind until you are 3675xp away from level 12 (NOT TRANSLATED IN :deDE YET)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << !Rogue !Warrior !Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Lauft den Schmutzpfad hinauf und springt dann in den Bunker hinunter
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
step
    #optional
    .isQuestAvailable 3524
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >> Reist nach Thelsamar
step
#xprate <1.5
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin 414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang << Mage/Warlock
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
#xprate >1.49
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin 414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang << Warlock
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe << Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #completewith Cooking1 << !Mage !Rogue !Warrior !Warlock
    #completewith Hearthstove << Mage/Rogue/Warrior/Warlock
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> BETRETET den Gasthof zum Starkbierlager
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << !Mage !Rogue !Warrior !Warlock
    #label Cooking1
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, wenn nötig|r << !Rogue
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Mage/Rogue/Warrior/Warlock
    #label Hearthstove
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Hearthstove|r innerhalb
    .home >> Setzt euren Ruhestein nach Thelsamar << Rogue/Warrior/Warlock
    .vendor >>|cRXP_BUY_Buy up to 40|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET) << !Rogue !Warrior
    .collect 1179,35 << Mage/Warlock
    .target Innkeeper Hearthstove
    .bindlocation 2101
step << Mage/Warlock
#xprate <1.5 << !Warlock
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Kauft|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, falls nötig|r
    .target Yanni Stoutheart
step << Rogue/Warrior/Warlock
    #optional
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, wenn nötig|r
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
    .money <1 -- don't want them buying etc, unless rich alts, money too tight later
step << skip
    #loop
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin 414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang << Mage/Warlock
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #requires StouttoKadrell
step << Mage/Warlock
#xprate <1.5 << !Warlock
    #optional
    #completewith Algaz
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zum späteren Leveln von |T133971:0|t[Kochkunst] |cRXP_WARN_|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Reist nach Station Algaz
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto Loch Modan,24.13,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gothor|r
    .vendor >>|cRXP_WARN_Vendor Trash|r (NOT TRANSLATED IN :deDE YET)
    .target Gothor Brumn
    .isOnQuest 1339
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r im Bunker
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung << Rogue/Warrior/Warlock
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten << Mage/Warlock
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    #optional
    #completewith ESSM
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step << Mage
#xprate <1.5
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
step << Mage
#xprate <1.5
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    .complete 307,1 -- Miners' Gear (4)
step << Mage
#xprate <1.5
    #optional
    #completewith FilthyMountaineer
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Mage
#xprate <1.5
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step << Mage
#xprate <1.5
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step << Rogue/Warrior
    #completewith FlytoIF
    +Grinde mobs until you have at least 30 Silver worth of money und vendorables << Rogue
    +Grinde mobs until you have at least 10 Silver worth of money und vendorables << Warrior
    .money >0.3000 << Rogue
    .money >0.1000 << Warrior
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #completewith FlytoIF
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 144
step << Mage
#xprate <1.5
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, wenn nötig|r << !Rogue
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Akzeptiert die Quest Ehrenstudenten
    .target Brock Stoneseeker
step << Mage
    .goto Loch Modan,26.67,56.94
    .xp 12 >> Farmt bis Stufe 12
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Gnome/Dwarf
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Gebt die Quest Ehrenstudenten ab
    .accept 6391 >> Akzeptiert die Quest Flug nach Eisenschmiede
    .target Thorgrum Borrelson
step
    #label FlytoIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Gebt die Quest Fahrt nach Eisenschmiede ab
    .accept 6388 >> Akzeptiert die Quest Gryth Thurden
step << Rogue
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hulfdan Blackbeard|r unten
    .turnin -2218 >> Gebt die Quest Straße der Rettung ab
    .target Hulfdan Blackbeard
step << Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Gebt die Quest Die Berichte ab
    .isOnQuest 291
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .accept 6392 >> Akzeptiert die Quest Rückkehr zu Brock
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Erlernt Wurfwaffen
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Erlernen 2h Streitkolben
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
-- Warrior training Def stance in SW. Really long/bad to do in Dun Morogh. Can also train Swords while in SW for potential early 2h swords
step << Warrior skip
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muren Stormpike|r
    .accept 1678 >>Accept Vejrek (NOT TRANSLATED IN :deDE YET)
    .target Muren Stormpike
step << Warrior skip
    #optional
    #completewith next
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >> |cRXP_WARN_Exit Ironforge|r (NOT TRANSLATED IN :deDE YET)
step << Warrior skip
    .goto Dun Morogh,27.8,58.0
    >>Kill |cRXP_ENEMY_Vejrek|r. Loote ihn für seine |cRXP_LOOT_Kopf|r
    .complete 1678,1 --Vejrek's Head (1)
    .mob Vejrek
step << Warrior skip
    #optional
    #completewith next
    .zone Ironforge >> Lauf nach Ironforge
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muren Stormpike|r
    .turnin 1678 >>Turn in Vejrek (NOT TRANSLATED IN :deDE YET)
    .accept 1680 >>Akzeptiert die Quest Tormus Tiefenschmied
    .target Muren Stormpike
step << Warrior skip
    .goto Ironforge,48.650,42.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tormus Deepforge|r
    .turnin 1680 >> Gebt die Quest Tormus Tiefenschmied ab
    .target Tormus Deepforge
--
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Darkshore shortly|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Darkshore shortly:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
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
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << !Rogue !Warrior !Warlock
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .fly Menethil >> Fliege zum Hafen von Menethil
    .target Gryth Thurden
step << Rogue/Warrior/Warlock
    #completewith EnterSW
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Betretet die Tiefenbahn
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform
    .target Monty
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
step << Rogue/Warrior/Warlock
    .use 17117 >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_auf die|r |cRXP_ENEMY_Tiefenbahn-Ratten|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .timer 11,Tiefenbahn-Ratteten-Razzia RP
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
step << Rogue/Warrior/Warlock
    #completewith next
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
    >>|cRXP_WARN_Level eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls benötigt, während ihr auf die Tram wartet|r
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nipsy|r, wenn ihr die Tram verlasst
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_ist auf der mittleren Plattform|r
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
    .target Nipsy
step << Rogue/Warrior/Warlock
    #label EnterSW
    .zone Stormwind City >> Betretet Sturmwind
step << Warlock
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
    .target Grimand Elmore
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
step << Warrior
    #optional
    #sticky
    .abandon 1678 >> Abandon Vejrek. You will complete the quest for Defensive Stance in Stormwind instead (NOT TRANSLATED IN :deDE YET)
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1638 >> Akzeptiert die Quest Die Ausbildung eines Kriegers
    .target Ilsa Corbin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> Gebt die Quest Die Ausbildung eines Kriegers ab
    .accept 1639 >> Akzeptiert die Quest Bartleby der Trunkenbold
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> Gebt die Quest Bartleby der Trunkenbold ab
    .accept 1640 >> Akzeptiert die Quest Besiegt Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Greift |cRXP_ENEMY_Bartleby|r an. Er wird sich bei 1% ergeben
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Gebt die Quest Besiegt Bartleby ab
    .accept 1665 >> Akzeptiert die Quest Bartlebys Becher
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1665 >> Gebt die Quest Bartlebys Becher ab
    .target Harry Burlguard
step << Rogue/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Erlernt 1h Schwerter << Rogue
    .trainer >>Erlernt 2h Schwerter << Warrior
    .target Woo Ping
    .money <0.1000 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 16,851 >> |cRXP_WARN_Rüstet den|r |T135346:0|t[Entersäbel] |cRXP_WARN_in der Haupthand aus|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2218 >> |cRXP_WARN_Equip the|r |T135641:0|t[|cRXP_FRIENDLY_Craftsman's Dagger|r] |cRXP_WARN_in your offhand|r (NOT TRANSLATED IN :deDE YET)
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T133477:0|t[Giant Mace] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T133477:0|t[Giant Mace] |cRXP_BUY_from him|r (NOT TRANSLATED IN :deDE YET)
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
    #optional
    +Equip the |T133477:0|t[Giant Mace] (NOT TRANSLATED IN :deDE YET)
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Darkshore shortly|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Loch Modan and Darkshore shortly|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    >>|T133912:0|t[Dunkelküstenbarsch]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Darkshore shortly:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
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
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Loch Modan and Darkshore shortly:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    >>|T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
    #completewith FlyMene
    .hs >> Benutzt euren Ruhestein nach Thelsamar
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step << Rogue/Warrior
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Rogue/Warrior
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, wenn nötig|r << !Rogue
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Rogue/Warrior
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step << Rogue/Warrior
    #label FlyMene
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Menethil >> Fliege zum Hafen von Menethil
    .target Thorgrum Borrelson
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance Warlock
#name 11-14 Elwynn Forest/Loch Modan
#next 14-20 Bloodmyst
#subgroup RestedXP Allianz 1-20
#defaultfor Gnome Warlock

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind
    .target Dungar Longdrink
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Erlernt Stäbe
    .train 201 >>Erlernt 1h Schwerter
    .target Woo Ping
    .money <0.3040
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Erlernt Stäbe
    .target Woo Ping
    .money <0.2090
step
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .train 1120 >> Train |T136163:0|t[Drain Soul] (NOT TRANSLATED IN :deDE YET)
    .train 6201 >> Train |T135230:0|t[Create Healthstone (Minor)] (NOT TRANSLATED IN :deDE YET)
    .train 696 >> Train |T136185:0|t[Demon Skin (Rank 2)] (NOT TRANSLATED IN :deDE YET)
    .train 707 >> Train |T135817:0|t[Immolate (Rank 2)] (NOT TRANSLATED IN :deDE YET)
    .target Ursula Deline
step
    #completewith GoldshireQuests
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >> Sterbt und spawnt  beim |cRXP_FRIENDLY_Geistheiler|r, indem ihr |T136126:0|t[Aderlass] benutzt und ihr euch ins Feuer neben euch stellt
    .zoneskip Stormwind City,1
step
    #completewith GoldshireQuests
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Lauf nach Goldhain
step
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .accept 62 >> Die Fargodeep Mine annehmen
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Koboldkerzen annehmen
    .target William Pestle
step
#xprate <1.5
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
    .accept 40 >> Gefahr aus dem Wasser annehmen
    .target Remy "Two Times"
step
#xprate >1.49
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .accept 40 >> Gefahr aus dem Wasser annehmen
    .target Remy "Two Times"
step
    #optional
    #sticky
    .abandon 109 >> Abandon Report to Gryan Stoutmantle (NOT TRANSLATED IN :deDE YET)
step
#xprate <1.5
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Some mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r (NOT TRANSLATED IN :deDE YET)
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
#xprate <1.5
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Betretet und erforscht die Tiefenschachtmine|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
#xprate <1.5
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Some mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r (NOT TRANSLATED IN :deDE YET)
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .accept 88 >> Prinzessin muss sterben! annehmen
	.goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
step
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto Elwynn Forest,24.548,74.672
step
    .isOnQuest 176
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
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert ihn für |cRXP_LOOT_Gewaltige Gnollklaue|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Wirkt |T136183:0|t[Furcht] |cRXP_WARN_auf |cRXP_ENEMY_Hogger|r kontinuierlich und benutzt von Euch reguläre DoTs, um ihn zu töten|r
    >>|cRXP_WARN_You can kite him back to the guard tower, ensure you deal at least 51% damage to him|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #optional
    .use 1307 >>|cRXP_WARN_Benutzt den |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] um die Quest zu starten|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Akzeptiert die Quest Der Sammler
    .itemcount 1307,1
step
    #completewith HoggerTurnin
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick] |cRXP_WARN_reward from Hogger|r (NOT TRANSLATED IN :deDE YET)
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate <1.5
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick] |cRXP_WARN_reward from Hogger|r (NOT TRANSLATED IN :deDE YET)
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
    .target Marshal Dughan
step
#xprate >1.49
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick] |cRXP_WARN_reward from Hogger|r (NOT TRANSLATED IN :deDE YET)
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate >1.49
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick] |cRXP_WARN_reward from Hogger|r (NOT TRANSLATED IN :deDE YET)
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .target Marshal Dughan
step
#xprate <1.5
    #optional
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .accept 147 >> Akzeptiert die Quest Menschenjagd
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 70|r (NOT TRANSLATED IN :deDE YET)
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .target Remy "Two Times"
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .target William Pestle
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht im Gasthaus nach unten
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Erlernt |T136168:0|t[Lebenslinie]
    .train 705 >>Train |T136197:0|t[Shadow Bolt (Rank 3)] (NOT TRANSLATED IN :deDE YET)
    .target Maximillian Crowe
    .xp <12,1
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    >>|cRXP_BUY_Buy up to 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him if you can afford it|r (NOT TRANSLATED IN :deDE YET)
    .collect 1179,10
    .target Innkeeper Farley
    .subzoneskip 87,1
step
#xprate <1.5
    #optional
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> BETRETET die Jaspismine
step
#xprate <1.5
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Folgt dem Pfad durch die Mitte, um die Jaspismine zu erkunden
    .complete 76,1 --Scout through the Jasperlode Mine
step
#xprate <1.5
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Verlasst die Jaspismine
    .subzoneskip 54,1
step
#xprate <1.5
    #optional
    #completewith Find
    +|cRXP_WARN_Zieht einen |cRXP_ENEMY_Junger Waldbär|r zu|r |cRXP_FRIENDLY_Wache Thomas|r
    >>|cRXP_WARN_Versucht, mit |cRXP_FRIENDLY_Wache Thomas|r zu sprechen, bevor der |cRXP_ENEMY_Junger Waldbär|r von den |cRXP_FRIENDLY_Wachen von Sturmwind|r getötet wird, um den Questfortschritt zu erhalten|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 51%+ Schaden verursacht, um Questfortschritt zu erhalten|r
    .mob Young Forest Bear
step
#xprate <1.5
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
    .target Guard Thomas
step
#xprate >1.49
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
    .target Guard Thomas
step
#xprate <1.5
    #completewith AcceptBundle
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    .goto Elwynn Forest,72.656,60.334
    >>Klickt |cRXP_PICK_Ein halb aufgefressener Körper|r auf dem Boden
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
#xprate <1.5
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .accept 5545 >> Ein Bündel Probleme annehmen
    .target Supervisor Raelen
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Verkauft Müll
    .target Rallic Finn
    .subzoneskip 88,1
step
#xprate <1.5
    #completewith Prowlers
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden am Stamm der Bäume
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Klickt auf |cRXP_PICK_Rolfs Leichnam|r auf dem Boden
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Murlocfutterwühler|r wirken|r |T135915:0|t[Schwachen Trank trinken] |cRXP_WARN_welches sie um 61-68 Leben heilt|r
    >>|cRXP_WARN_Zieht die 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_vor den Hütten, bewegt euch weg und|r |T136183:0|t[Furcht] |cRXP_WARN_wirkt auf einen von ihnen ständig, und versucht, DoTs auf beide zu halten|r << Warlock
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
#xprate <1.5
    #completewith BundleOT
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden am Stamm der Bäume
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
    .target Supervisor Raelen
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
    .target Sara Timberlain
step
#xprate <1.5
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
step
#xprate <1.5
    #completewith PrincessCollar
    >>Tötet die |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
#xprate <1.5
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>Tötet |cRXP_ENEMY_Morgan der Sammler|r. Plündert ihn für |cRXP_LOOT_Der Ring des Sammlers|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #label PrincessCollar
    .goto Elwynn Forest,69.3,79.0
    >>Tötet |cRXP_ENEMY_Prinzessin|r. Plündert sie für |cRXP_LOOT_Meesinghalsband|r
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird mit beiden ihrer |r |cRXP_ENEMY_Gefolgsschwein|r angreifen
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird auch eine|r |T132368:0|t[Sturmattacke] machen|cRXP_WARN_was viel Schaden verursacht|r
    .complete 88,1
    .mob Princess
step
#xprate <1.5
    >>Tötet die |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #sticky
    .abandon 109 >> Abandon Report to Gryan Stoutmantle. You won't turn this in (NOT TRANSLATED IN :deDE YET)
step
    #optional
    #sticky
    .abandon 184 >> Abandon Furlbrow's Deed. You won't turn this in (NOT TRANSLATED IN :deDE YET)
step
    #optional
    #label SoulShards
    #completewith EncroachingGnolls
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .disablecheckbox
    >>|cRXP_WARN_Ensure you have at least 2|r |T136163:0|t[Soul Shards] |cRXP_WARN_before you get to Redridge Mountains|r (NOT TRANSLATED IN :deDE YET)
    .collect 6265,2
step
    #completewith EncroachingGnolls
    #requires SoulShards
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_Achtet unterwegs auf hochstufige mobs|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
step
#xprate <1.5
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    >>|cRXP_WARN_Wir wählen die|r |T132383:0|t[Explosiv Raketen] |cRXP_WARN_als Belohnung. Sie verursachen ordentlichen Schaden und können für "Split-Pulls" genutzt werden, was unglaublich nützlich ist|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Split-Pulling". Es ist ein kurzes Video und äußerst lehrreich|r
    .target Morgan Pestle
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Darkshore shortly|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Loch Modan and Darkshore shortly|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    >>|T133912:0|t[Dunkelküstenbarsch]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Loch Modan and Darkshore shortly:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände in Kürze für schnellere Abgaben in Dunkelküste:|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
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
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Warlock
    #completewith SurenaCaledon
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .train 755 >>Erlernt |T136168:0|t[Lebenslinie]
    .train 705 >>Train |T136197:0|t[Shadow Bolt (Rank 3)] (NOT TRANSLATED IN :deDE YET)
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label SurenaCaledon
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1688 >> Gebt die Quest Surena Caledon ab
    .accept 1689 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Reist zur untersten Ebene des Geschlachteten Lammes|r
    .cast 7728 >> |cRXP_WARN_Benutzt|r |T133292:0|t[Blutsteinhalsreif] |cRXP_WARN_um einen|r |cRXP_ENEMY_Beschworenen Leerwandler|r herbeizurufen
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #completewith next
    +|cRXP_WARN_Wirkt|r |T136126:0|t[Aderlass] |cRXP_WARN_auf eurem Weg zurück nach oben zu |cRXP_FRIENDLY_Gakin der Dunkelbinder|r da ihr in Kürze einen Deathskip machen werdet|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Gebt die Quest Die Bindung ab
step
    #completewith GoldshireTurnins
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >> Sterbt und spawnt  beim |cRXP_FRIENDLY_Geistheiler|r, indem ihr |T136126:0|t[Aderlass] benutzt und ihr euch ins Feuer neben euch stellt
    .zoneskip Stormwind City,1
step
    #completewith GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Lauf nach Goldhain
step << Warlock
#xprate <1.5
    #optional
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 147 >> Gebt die Quest Menschenjagd ab
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
step << Warlock
#xprate <1.5
    #label GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht im Gasthaus nach unten
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Erlernt |T136168:0|t[Lebenslinie]
    .train 705 >>Train |T136197:0|t[Shadow Bolt (Rank 3)] (NOT TRANSLATED IN :deDE YET)
    .target Maximillian Crowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Gebt die Quest Prinzessin muss sterben! ab
    .goto Elwynn Forest,34.660,84.483
step
    #optional
    #sticky
    .abandon 59 >> Abandon Cloth und Leather Armor.You won't complete this quest
step
    #completewith FlyIF
    .hs >> Benutzt euren Ruhestein nach Loch Modan
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, wenn nötig|r
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .isQuestComplete 418
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step
    #optional
    #completewith ESSM
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<1,1 -- shows if cooking is >1
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith ESSM
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
step
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    .complete 307,1 -- Miners' Gear (4)
step
    #optional
    #completewith FilthyMountaineer
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab
    .target Mountaineer Stormpike
step
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step
    #sticky
    #label RatCatching
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step
    #optional
    #requires RatCatching
step
    .goto Loch Modan,26.67,56.94
    >>Tötet |cRXP_ENEMY_Splittersteintrogg|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    >>|cRXP_WARN_Seid vorsichtig denn die |cRXP_ENEMY_Späher der Splittersteintroggs|r wirkt|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: verursacht 14-20 Schaden)|r
    >>|cRXP_WARN_Dies ist ein Hyperspawn-Gebiet. Ihr solltet nicht von hier weg müssen|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
#xprate <1.5
    .goto Loch Modan,26.67,56.94
    .xp 14-1800 >>Grinde until you are 1800xp away from level 14 (9200/11000)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 14-2700 >>Grind until you are 2700xp away from level 14 (8300/11000) (NOT TRANSLATED IN :deDE YET)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Lauft den Schmutzpfad hinauf und springt dann in den Bunker hinunter
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
step
    #completewith FlyIF
    .goto Loch Modan,26.67,56.94
    +Grinde until you have 45s worth of vendorables+money,then skip this step
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .money >0.4500
step
    .goto Loch Modan,26.67,56.94
    .xp 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step << Warlock
#ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Kauft einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_wenn er weniger al 33s 40c kostet|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7900
--Drain Life r1 - 9s
--Corruption r2 - 9s
--Grimoire of Consume Shadows -- 15s
--Grimoire of Sacrifice -- 12s
--burning wand 33s 40c
step << Warlock
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unten mit |cRXP_FRIENDLY_Harick Felstrommel|r
    >>|cRXP_BUY_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_BUY_von ihm|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7900
step << Warlock
    #optional
    +|cRXP_WARN_Legt den|r |T135468:0|t[Glimmender Zauberstab] an
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r
    .train 6222 >>Train |T136118:0|t[Corruption (Rank 2)] (NOT TRANSLATED IN :deDE YET)
    .train 689 >>Train |T136169:0|t[Drain Life] (NOT TRANSLATED IN :deDE YET)
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubaal Leichenfund|r
    .vendor >> |cRXP_BUY_Kauft|r |T133738:0|t[Zauberfoliant des Schattenverzehrens (Rang 1)] |cRXP_BUY_und|r |T133738:0|t[Zauberfoliant der Opferung (Rang 1)] |cRXP_BUY_falls ihr es euch leisten könnt|r
    .target Jubahl Corpseseeker
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .fly Menethil >> Fliege zum Hafen von Menethil
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neal Allen|r auf dem unteren Stockwerk der Kaserne
    .vendor 1448 >> |cRXP_WARN_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_von ihm (falls verfügbar)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r innerhalb
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the dock für boat to Auberdine
    .zoneskip Darkshore
step
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
step
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
step
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
step
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
step
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
step
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
step
    #optional
    .goto 1437,4.370,56.762
    >>Level dein [Erste Hilfe] während du auf das Boot zur Dunkelküste wartest
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
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
    #optional
    #completewith BuzzBox1
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_from him|r (NOT TRANSLATED IN :deDE YET)
    .collect 4592,15 --Longjaw Mud Snapper (40)
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
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
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
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step
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
    #optional
    #sticky
    .abandon 1001 >> Abandon Buzzbox 411. You won't complete this quest (NOT TRANSLATED IN :deDE YET)
step
    #optional
    #sticky
    .abandon 4681 >> Abandon Washed Ashore. You won't complete this quest (NOT TRANSLATED IN :deDE YET)
step
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid]|cRXP_WARN_while waiting for the boat to Azuremyst Isle|r
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance Hunter
#name 6-10 Dun Morogh (Hunter)
#next 12-14 Darkshore
#subgroup RestedXP Allianz 1-20
#defaultfor Dwarf Hunter

step
    #optional
    #completewith SenirEnd
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_die ihr für Vorräte für Jetsteam und dann zum Leveln eurer|r |T133971:0|t[Kochkunst] |cRXP_WARN_erhaltet|r
    >>|cRXP_WARN_Ihr braucht 10|r |T133971:0|t[Kochkunst] |cRXP_WARN_ später für eine Quest in Auberdine|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #completewith next
    >>|cRXP_WARN_Stellt sicher, dass eure zone nicht Eisklamm ist|r
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 131
step
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >> Lauf nach Kharanos
    .mob Crag Boar
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Gebt Senirs Beobachtungen ab
    .target Senir Whitebeard
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Gebt die Quest Vorräte für Tannok ab
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
    .target Tharek Blackstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r und |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Tötet keine |cRXP_ENEMY_Junger Schwarzbär|r auf dem weg|r
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r und |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << !Paladin !Warrior !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für ihr |cRXP_LOOT_Dickes Bärenfell|r
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für ihr |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    #completewith Level8
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .xp 5+2125 >> Grinde to 2125+/2800xp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>Öffnet die |cRXP_PICK_Munitionskiste|r. Plündert sie für |cRXP_LOOT_Munition für Rumbleshot|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Kauft und rüstet|r |T135611:0|t[Verschnörkelte Donnerbüchse]|cRXP_BUY_aus. Überspringt diesen Schritt, wenn ihr es euch nicht leisten könnt|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Tötet |cRXP_ENEMY_Wendigos|r und |cRXP_ENEMY_Junger Wendigo|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .xp 7
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Wartet bis |cRXP_ENEMY_Eisbart der Alte|r aus der Höhle patrouilliert. Sobald er aus der Höhle patrouilliert, könnt ihr hineingehen und|r |cRXP_PICK_MacGranns Fleisch-Spind|r plündern
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r und |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .turnin 318 >> Gebt die Quest Immerschimmer ab
    .accept 319 >> Akzeptiert die Quest Ein Gefallen für etwas Immerschimmer
    .accept 315 >> Akzeptiert die Quest Das perfekte Starkbier
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #completewith Level8
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    >>|cRXP_WARN_Skip this step once you've met the XP threshold. You'll complete it later|r (NOT TRANSLATED IN :deDE YET)
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 7+3020 >>Grinde to 3020+/4500xp
    .isQuestAvailable 384
step
    #optional
    #label Level8
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 7+3645 >>Grinde bis du bei 29845+/34000 EXP bist
    .isQuestTurnedIn 384
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r und |cRXP_ENEMY_Schneeleopard|r
    >>|cRXP_WARN_Prioritize |cRXP_ENEMY_Boars|r for their|r |cRXP_LOOT_Ribs|r (NOT TRANSLATED IN :deDE YET)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .mob +Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .disablecheckbox
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .disablecheckbox
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .disablecheckbox
    .mob +Snow Leopard
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_Führt den Dun Morogh -> Sumpfland Deathskip durch. Folgt dem Pfeil genau|r
    >>|cRXP_WARN_Springe noch nicht aus irgendeiner Höhe herunter|r
    .zone Wetlands >>|cRXP_WARN_Klettert den Berg hinauf, dann lauft hinunter vorbei an dem gezackten Muster bis sich eurezone zum Sumpfland ändert|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Springt vom Berg in Richtung Norden oder Nordwesten|r
    .deathskip >> Sterbt und respawnt an der Baradinbucht |cRXP_FRIENDLY_Geistheiler|r
    .isQuestAvailable 983
    .target Geistheiler
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Schwimmt zum Ufer zum Hafen von Menethil
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >> Ruhestein nach Theramore
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102,1
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_und ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_bei ihm|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jarven Donnerbräu|r unten
    .turnin 308 >> Gebt die Quest Jarvens Ablenkung ab
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Öffnet das |cRXP_PICK_Unbewachtes Fass mit Donnerbier|r
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step << Hunter
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Buy 5 stacks of|r |T132384:0|t[Light Shots] (NOT TRANSLATED IN :deDE YET)
    .collect 2516,800 --Light Shot
    .target Kreg Bilmn
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Gebt die Quest Der altgediente Bau
    .target Pilot Stonegear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Grif Wildheart
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_KLICKT HIER Falls ihr Schwierigkeiten habt|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für seinen |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht|r
    >>|cRXP_WARN_Schaut das Video unten, bevor ihr versucht, |cRXP_ENEMY_Vagash|r zu töten. Es kann von jeder Klasse solo absolviert werden|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Klickt hier für eine Videoreferenz|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith QuarryStart
    .goto Dun Morogh,68.379,54.492,60 >> Lauf zum Gol'Bolar Steinbruch
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
    .money <0.0100
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Steinbraue|r
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r in oder außerhalb der Mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Steinbraue|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #optional
    .isQuestComplete 433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senator Mehr Steingunst|r
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Reisen zu |cRXP_FRIENDLY_Pilot Hammerfoot|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    .goto Dun Morogh,78.97,37.14
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .turnin 417 >> Gebt die Quest Pilotenrache ab
    .target Pilot Hammerfoot
step
    #completewith ShimmerweedCollect
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Akzeptiert die Quest Operation Rekombobulationsgerät
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Reist die Rampe hinauf zum Schimmergrat
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Tötet |cRXP_ENEMY_Kopfjäger der Frostmane|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |cRXP_LOOT_Schimmerkraut|r
    >>Öffnet die |cRXP_PICK_Schimmerkrautkorb|r auf dem Boden. Plündert sie für ihr |cRXP_LOOT_Schimmerkraut|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r, |cRXP_ENEMY_Ice Claw Bears|r und |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Gebt die Quest Ein Gefallen für etwas Immerschimmer ab
    .accept 320 >> Akzeptiert die Quest Rückkehr zu Bellowfiz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Gebt die Quest Das perfekte Starkbier ab
    --.accept 413 >> Accept Shimmer Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
step
#xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |cRXP_LOOT_Gyromechanische Getriebeteile|r und |cRXP_LOOT_Restabilisationszahnrad|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label xp10
    .xp 9+4175 >>Grinde to 4175+/6500xp
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r in der Höhle
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Lauft die Seite des Höhleneingangs hinauf. Springt in die Höhle der Frostmähnen
    .isOnQuest 287
step
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Lasst euch in den kleinen, als Sackgasse endenden Raum der Höhle fallen|r
    >>|cRXP_WARN_Keine Sorge wenn ihr sterbt, da ihr gleich nach Kharanos zurückkehrt|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #requires xp10
step
    #optional
    #requires Headhunters
step
    #completewith AcceptTaming
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Gebt die Quest Höhle der Frostmähnen ab
    .accept 291 >> Akzeptiert die Quest Die Berichte
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r innerhalb
    .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
    .target Razzle Sprysprocket
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Gebt die Quest Rückkehr zu Bellowfiz ab
    .target Pilot Bellowfiz
step
    .xp 10
step << Hunter
    #label AcceptTaming
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 6064 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto Dun Morogh,48.3,56.9
    .use 15911 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Großen Klippeneber|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6084 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto Dun Morogh,49.4,59.4
    .use 15913 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Schneeleoparden|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6085 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto Dun Morogh,50.4,59.7
    .use 15908 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Eisklauenbär|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6086 >>Akzeptiert die Quest Die Ausbildung des Tiers
step << Hunter
    #completewith next
    .goto Dun Morogh,49.0,44.6,30,0
    .goto Dun Morogh,45.7,42.2,30,0
    +|cRXP_WARN_wirkt|r |T132164:0|t[Tame Beast] |cRXP_WARN_on an |cRXP_ENEMY_Ice Claw Bear|r or |cRXP_ENEMY_Winter Wolf|r to tame it on the way to Ironforge|r
    >>|cRXP_WARN_It isn't important which one you tame as you'll tame a new pet shortly in Darkshore. Skip this step once you've tamed a pet|r (NOT TRANSLATED IN :deDE YET)
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
	.unitscan Ice Claw Bear
    .unitscan Winter Wolf
    .subzoneskip 809 --gates of IF
    .usespell 1515
step << Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Lauf nach Ironforge
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unten mit |cRXP_FRIENDLY_Thalgus Donnerfaust|r
    >>|cRXP_BUY_Kauft ein|r |T135613:0|t[Jägerschießeisen] |cRXP_BUY_wenn ihr euch es leisten könnt|r
    .collect 2511,1
    .money <0.1324
    .target Thalgus Thunderfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt das|r |T135613:0|t[Jägerschießeisen] an
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .trainer >> Erlernt eure Begleiterfähigkeiten
    .turnin 6086 >> Gebt die Quest Die Ausbildung des Tiers ab
    .target Belia Thundergranite
step
    #completewith next
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Betretet die Tiefenbahn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform
    .target Monty
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
step
    .use 17117 >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_auf die|r |cRXP_ENEMY_Tiefenbahn-Ratten|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
step
    .zone Ironforge >> Head back into Ironforge (NOT TRANSLATED IN :deDE YET)
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Darkshore shortly|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Darkshore shortly:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
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
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .turnin 291 >> Gebt die Quest Die Berichte ab
step
    #label FlyMenethil
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Menethil >> Fliege zum Hafen von Menethil
    .target Gryth Thurden
]])
