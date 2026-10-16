if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 11-13 Dunkelküste (Nacht Elf)
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#next 13-13 Loch Modan (Nacht Elf)
#defaultfor NightElf

step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Gebt die Quest Nessa Shadowsong ab
    .accept 6341 >> Akzeptiert die Quest Die Beute von Teldrassil
    .target Nessa Shadowsong
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
	.goto Teldrassil,58.39,94.01
    .turnin 6341 >> Gebt die Quest Die Arten von Teldrassil ab
    .accept 6342 >> Akzeptiert die Quest Flug nach Auberdine
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >> Fliegt zur Dunkelküste
    .target Vesprystus
step << !NightElf
#map Darkshore
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    #label WashedA
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step << !NightElf
#map Darkshore
    #label WashedA
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Gebt die Quest Der Flug nach Auberdine ab
    .target Laird
step
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r
    .vendor >>|T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_ist sehr günstig|r
    .target Laird
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> Die Treppe hinauf in Richtung |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >> Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.120,43.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Kauft Wasser, falls nötig|r
    .target Allyndia
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaussiy|r
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.250,41.008
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kurdram Stonehammer|r
    .train 2581 >> Erlernen Bergbau, wirkt Mineraliensuche
    .skill mining,1,1
    .target Kurdram Stonehammer
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.191,40.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delfrum Flintbeard|r
    .train 2020 >> Erlernt Schmiedekunst. Dies ermöglicht es euch, Schärfsteine mit +2 Schaden für die Waffe von Euch herzustellen, die sehr stark sind. << Warrior/Rogue
    .train 2020 >> Dies ermöglicht es euch, Gewichtssteine mit +2 Schaden für die Waffe von Euch herzustellen, die sehr stark sind. << Paladin
    .skill blacksmithing,1,1
    .target Delfrum Flintbeard
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.225,41.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thelgrum Stonehammer|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei|r |cRXP_FRIENDLY_Thelgrum Steinhammer|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Thelgrum Stonehammer
step
    .goto Darkshore,38.844,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Akzeptiert die Quest Verseuchtes Land
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Tötet |cRXP_ENEMY_Pygmy Tide Crawlers|r und |cRXP_ENEMY_Young Reef Crawlers|r. Plündert sie für |cRXP_LOOT_Legs|r
    >>|cRXP_WARN_Ihr müsstet möglicherweise ins Wasser gehen, um sie zu finden|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Beute |cRXP_PICK_Gestrandete Meereskreatur|r für die |cRXP_LOOT_Meereskreatur-Knochen|r
    .complete 3524,1
step << Druid
    #completewith end
    >>|cRXP_WARN_St. |T136065:0|t[Kräuterkunde] auf 15. Sammelt 5 |T134187:0|t[Earthroot] für eine zukünftige Quest|r
    .collect 2449,5,6123,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Entdeckt das Furbolg Camp (Lauft zum Totem und dann weg)
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Distelbär|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Tötet |cRXP_ENEMY_Pygmy Tide Crawlers|r und |cRXP_ENEMY_Young Reef Crawlers|r. Plündert sie für |cRXP_LOOT_Legs|r
    >>|cRXP_WARN_Ihr müsstet möglicherweise ins Wasser gehen, um sie zu finden|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .xp 12-3550 >> Farmt, bis ihr 3550 XP von Stufe 12 entfernt seid (5250+/8800 XP)
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
step
#map Darkshore
    #era/som
	.goto Felwood,19.13,21.39
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .accept 1001 >> Akzeptiert die Quest Dröhnkiste 411
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .accept 4681 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .target Tharnariun Treetender
step
#map Darkshore
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target Terenthis
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >> |cRXP_WARN_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_WARN_, wie ihr braucht|r
    >>|cRXP_WARN_Buy|r |T132382:0|t[Scharfer Pfeils] |cRXP_WARN_or|r |T132384:0|t[Schweres Geschosss] << Hunter
    .target Dalmond
step
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 958 >> Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .target Thundris Windweaver
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
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Akzeptiert die Quest Rückkehr zu Nessa
    .target Laird
step << NightElf
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil --Train 12
    .target Caylais Moonfeather
step << NightElf
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .target Nessa Shadowsong
step << NightElf
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .turnin 6001 >> Gebt die Quest Körper und Herz ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arias'ta Klingenlied|r
    .goto Darnassus,58.72,34.92
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arias'ta Bladesinger
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 2567 >> Erlernt Wurfwaffen
    .target Ilyenia Moonfire
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    .goto Darnassus,58.765,44.494
    >>|cRXP_WARN_Kauft einen Stapel von|r |T135425:0|t[Keen Werfen Knives]
    .collect 3107,200
    .target Ariyell Skyshadow
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jandria|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jandria
step << NightElf Rogue
    >>Betretet die Enklave des Cenarius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,30,0
    .goto Darnassus,37.00,21.92
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Syurna
step << NightElf Hunter
    #completewith start
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jocaste
step
    #completewith next
    .hs >> Ruhestein nach Auberdine
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Reist zu |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Steg
step
    .goto Darkshore,35.743,43.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Reist bis zum Ende des Docks und springt dann ins Wasser
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Beute |cRXP_PICK_Skelettartig Meeresschildkröte|r für die |cRXP_LOOT_Sea Schildkröte Remains|r
    .complete 4681,1 -- Turtle Remains
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step << Warrior/Rogue
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .vendor >>|cRXP_WARN_Buy 40|r |T133918:0|t[Langzahniger Matschschnapper]
    .target Laird
step
    .goto Darkshore,37.708,43.431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    #label Bashal1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Folgen der Straße nach Bashal'Aran|r
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
step
    #completewith Tysha
    >>|cRXP_WARN_Folgen der Straße nach Süden und haltet nach|r Waldschreiter Fledglings|cRXP_ENEMY_ Ausschau|r
    >>Tötet |cRXP_ENEMY_Foreststrider Fledgling|r. Plündert sie für |cRXP_LOOT_Strider Fleisch|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    #label Tysha
    .goto Darkshore,40.30,59.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith TheLay
    >>Tötet |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r, und |cRXP_ENEMY_Wailing Highbornes|r. Plündert sie für |cRXP_LOOT_Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,43.30,58.70
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    .complete 957,1 -- Ancient Moonstone Destroyed
step
#map Darkshore
    #label TheLay
    .goto Felwood,25.98,40.62
    >>Klickt |cRXP_PICK_Der Untergang von Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
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
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
step
    #completewith BashalFinal
    >>|cRXP_WARN_Folgen der Straße nach Norden und haltet nach|r Waldschreiter Fledglings|cRXP_ENEMY_ Ausschau|r
    >>Tötet |cRXP_ENEMY_Foreststrider Fledgling|r. Plündert sie für |cRXP_LOOT_Strider Fleisch|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
#map Darkshore
    #completewith BashalFinal
    .goto Felwood,27.70,10.03,60 >> Reist nach Bashal'Aran
step
#map Darkshore
    #label BashalFinal
    .goto Felwood,27.70,10.03
    .target Asterion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Tötet |cRXP_ENEMY_Moonkins|r. Plündert sie für |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>Ihr werdet später mit |T133971:0|t[Kochkunst] |cRXP_WARN_Stufe 10 erreichen, indem ihr|r |T132832:0|t[|cRXP_WARN_Klein Eggs|r] |cRXP_LOOT_benutzt|r
    .collect 6889,10,2178 -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    .goto Darkshore,42.014,33.796,80,0
    .goto Darkshore,38.717,33.659,100,0
    .goto Darkshore,46.254,42.955,100,0
    .goto Darkshore,41.216,50.191,100,0
    .goto Darkshore,37.662,49.162,100,0
    .goto Darkshore,46.254,42.955
    >>|cRXP_WARN_Passt auf |cRXP_ENEMY_Thistle Bären|r auf, sie betäuben|r
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    +Kauft |T134059:0|t[Milde Gewürze]
    >>Benutzt die |T134059:0|t[Milde Gewürze] |cRXP_WARN_und|r |T132832:0|t[Klein Eggs] |cRXP_WARN_von Euch, um Herb Baked Eggs herzustellen. Macht das, bis|r |T133971:0|t[Kochkunst] |cRXP_WARN_von Euch Stufe 10 erreicht hat|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .target Alanndarian Nightsong
step
    #label ToolsTurnin
    #map Darkshore
    .goto Felwood,19.98,14.40
    .target Thundris Windweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >> Gebt die Quest Werkzeuge der Hochgeborenen ab
step
    #label end
    .goto Darkshore,32.417,43.809,15,0
    .goto Darkshore,32.417,43.809,0
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    >>|cRXP_WARN_St. von Euch|r |T135966:0|t[Erste Hilfe]|cRXP_WARN_, während ihr auf das Boot nach Hafen von Menethil wartet|r
step
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
step
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Springt vom Ende des Docks und schwimmt zum Wegpunkt
step
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Benutzt die Selbstbedienungsfunktion zum Befreien feststeckender Charaktere, um nach Eisenschmiede zu gelangen. Ihr müsst euch an dieser Stelle ausloggen und dann auf einem anderen Charakter zum Hilfemenü gehen und anschließend nach unten zu Selbstbedienung scrollen. Klickt auf den Charakter von Euch und bewegt ihn. Falls ihr euch nicht befreien könnt, hakt diesen Schritt ab und schwimmt an den Bergen entlang nach Westfall
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Klickt hier für eine Videoanleitung
    --*Please note that the unstuck feature doesn't work on the PTR
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 13-13 Loch Modan (Nacht Elf)
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#next 13-15 Westfall
#defaultfor NightElf

step
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
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
step
    .goto Westfall,54.28,9.26,50,0
    .goto Westfall,55.12,14.64,40,0
    .goto Westfall,56.36,17.81,65,0
    .goto Elwynn Forest,23.24,77.80
    .zone Elwynn Forest >> Lauft die Küste hinauf und macht den Weg von Euch zum Wald von Elwynn. Vermeidet viele |cRXP_ENEMY_Murlocs|r an der Küste, da einige patrouillieren.
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Lauft nach Sturmwind
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keldric Boucher|r
    .vendor >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_falls vorrätig|r
    .target Keldric Boucher
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind
    .target Dungar Longdrink
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Geh zur Tiefeneisenbahn. Nehme sie in Richtung Ironforge
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|cRXP_WARN_Steigt in die Bahn ein, sobald sie ankommt. Steigt auf der anderen Seite aus und sucht auf der mittleren Plattform nach |cRXP_FRIENDLY_Monty|r|r
    >>|cRXP_WARN_Wirkt|r |T136221:0|t[Leerwandler beschwören] |cRXP_WARN_und|r |T135230:0|t[Gesundheitsstein herstellen] |cRXP_WARN_während ihr wartet|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .use 17117 >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_auf die|r |cRXP_ENEMY_Tiefenbahn-Ratten|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .timer 11,Tiefenbahn-Ratteten-Razzia RP
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    #completewith next
    .goto Ironforge,77.0,51.0
    .zone Ironforge >> Betretet Eisenschmiede
step << Warrior
    .goto Ironforge,70.774,90.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muren Stormpike|r
    .accept 1680 >> Akzeptiert die Quest Tormus Tiefenschmied
    .target Muren Stormpike
step
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step << Warrior
    .goto Ironforge,48.640,42.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tormus Deepforge|r
    .turnin 1680 >> Gebt die Quest Tormus Tiefenschmied ab
    .target Tormus Deepforge
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>Kauft die folgenden Gegenstände für eine schnellere Questabgabe in Loch Modan in Kürze
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    .goto Dun Morogh,53.305,35.112,10,0
    .zone Dun Morogh >> Verlasst Eisenschmiede
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .target Rudra Amberstill
    .goto Dun Morogh,56.503,47.923,100,0
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Lauft diesen Teil des Berges hinauf
step
    .goto Dun Morogh,62.6,46.1
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für seinen |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    >>|cRXP_WARN_Schaut das Video unten, bevor ihr versucht, |cRXP_ENEMY_Vagash|r zu töten. Es kann von jeder Klasse solo absolviert werden|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
step
    #completewith next
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_falls nötig|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_falls nötig|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r und |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dank Drizzlecut|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Tötet |cRXP_ENEMY_Rockjaw Skullthumpers|r und |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r und |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
step
    >>Klickt |cRXP_PICK_Eine Zwergenleiche|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Wählt den Dolch und benutzt ihn als Off-Hand von Euch, bis ihr ein Schwert beim Händler bekommt << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .turnin 417 >> Gebt die Quest Pilotenrache ab
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    >>|cRXP_WARN_Wählen die|r |T135641:0|t[|cRXP_FRIENDLY_Handwerkerdolch|r] |cRXP_WARN_als Belohnung von Euch. Legt ihn in die Aus-Hand von Euch|r << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Gebt die Quest Pilotenrache ab
step
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >> Reist nach Loch Modan
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .target Mountaineer Stormpike
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    >>|cRXP_WARN_Nehmt Sturmlanze's Order noch nicht an|r
step
    #completewith ThelsamarFirst
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zum späteren Leveln von |T133971:0|t[Kochkunst] |cRXP_WARN_|r
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >> Reist nach Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
step
    #completewith StormpikeO
    .abandon 1338 >> Brecht die Quest Sturmlanzes Bestellung ab. Dies schaltet die Quest Gebirgsjäger Sturmlanzes Aufgabe frei, die eine kostenlose 550XP Abgabe ermöglicht
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor >> |cRXP_WARN_Buy 1 oder 2|r |T133634:0|t[Klein Brown Pouches] |cRXP_WARN_if needed|r
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Ofenglut|r
    .vendor >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot]|cRXP_BUY_. Zielt auf etwa 40 ab|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_. Zielt auf etwa 20|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und 40|r |T132815:0|t[Eiskalte Milch] << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
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
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    .group
    #completewith BraveSoul
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
    .solo
    #completewith StormpikeStop
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
    .group
    #completewith MinerGear
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    >>|cRXP_WARN_Ihr könnt diese Quest später machen, falls ihr sie jetzt überspringen möchtet|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nillen Andemar|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r |cRXP_WARN_verkauft|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Aufgespießt Streitkolben|r] |cRXP_WARN_das ein Gegenstand mit begrenztem Vorrat ist|r
    >>|cRXP_WARN_Überprüfen, ob es verfügbar ist, und kauft es, wenn ihr könnt. Falls ihr es euch nicht leisten könnt, farmt Geld von den |cRXP_ENEMY_Tunnel Ratten|r in der Nähe, bis ihr genug habt|r
    >>|cRXP_WARN_Tut dies schnell, da ein anderer Spieler es vor euch kaufen könnte|r
    .target Nillen Andemar
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
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure bevorstehende Die Bruderschaft der Defias-Klassenquest habt|r << Paladin
    >>|cRXP_ENEMY_Tunnel Ratten|r |cRXP_WARN_können überall in Loch Modan spawnen. Überprüft eure Weltkarte für ihre Standorte|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
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
    .mob +Forest Lurker
step
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_WARN_Kauft einen|r |T135237:0|t[Feuerstein und Zunder] |cRXP_WARN_zusammen mit 1|r |T135435:0|t[Simple Holz]|cRXP_WARN_. Kauft beliebige|r|T133634:0|t[Kleiner brauner Beutel] |cRXP_WARN_falls nötig|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .target Thorgrum Borrelson
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r im Bunker
    .target Captain Rugelfuss
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
step
    #completewith next
    .goto Loch Modan,29.9,68.2,45,0
    .goto Loch Modan,30.76,69.97,20 >> Reist nach Splittersteintal
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58,45,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58
    >>Tötet |cRXP_ENEMY_Splittersteintroggs|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure bevorstehende Die Bruderschaft der Defias-Klassenquest habt|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harick Boulderdrum|r
    >>|cRXP_BUY_Kauft einen|r |T135468:0|t[Glimmender Zauberstab]|cRXP_BUY_. Rüstet ihn aus, wenn ihr Stufe 15 seid, falls ihr das nicht bereits getan habt|r
    .goto Ironforge,23.141,15.922
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r
    .goto Ironforge,25.204,10.749
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Toldren Deepiron
step << Rogue
    .goto Ironforge,51.494,15.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Fenthwick
step << Rogue
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 198 >> Erlernen 1h Maces
    .target Buliwyf Stonehand
step << Hunter
    .goto Ironforge,69.865,82.886
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Regnus Thundergranite|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.907,88.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
step << Warrior
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 199 >> Erlernen 2h Streitkolben
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.551,88.699
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kelomir Ironhand|r
    .vendor >>|cRXP_BUY_Buy|r |T133046:0|t[Felshammer] |cRXP_BUY_if ihr könnt afford it|r
    .target Kelomir Ironhand
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_Betretet die Tiefenbahn|r
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
    .timer 11,Tiefenbahn-Ratteten-Razzia RP
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
step
    #completewith next
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
    >>|cRXP_WARN_Level eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls benötigt, während ihr auf die Tram wartet|r
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nipsy|r, wenn ihr die Tram verlasst
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_ist auf der mittleren Plattform|r
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
step
    #completewith next
    .zone Stormwind City >> Betretet Sturmwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sheldras Mistelmond|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sheldras Moontree
step << Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Falls ihr nicht vorhabt, |T136065:0|t[Kräuterkunde] als Hauptberuf zu wählen, kauft 5 |T134187:0|t[Earthroot] für eine zukünftige Quest
    >>Kauft die folgenden Gegenstände für schnellere Questabgaben in Westfall in Kürze
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T133972:0|t[Sehniges Geierfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T135997:0|t[Geiferzahnschnauze]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Geiferzahnleber]
    >>|T132794:0|t[Fläschchen Öl]
    .collect 2449,5,6123,1 -- Earthroot (5)
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step << !Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft die folgenden Gegenstände für schnellere Questabgaben in Westfall in Kürze
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T133972:0|t[Sehniges Geierfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T135997:0|t[Geiferzahnschnauze]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Geiferzahnleber]
    >>|T132794:0|t[Fläschchen Öl]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keldric Boucher|r
    .vendor >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_falls vorrätig|r
    .target Keldric Boucher
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind
    .target Dungar Longdrink
]])
