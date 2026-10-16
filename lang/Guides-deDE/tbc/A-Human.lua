if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance
#name 6-13 Wald von Elwynn
#subgroup RestedXP Allianz 1-20
#defaultfor Human
#next 12-14 Loch Modan;12-14 Darkshore << Warlock
#next 11-12 Loch Modan;12-14 Darkshore << !Warlock

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.2,42.9
    +Ihr habt einen Leitfaden für Menschen ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dane Winslow|r
    .vendor >> |cRXP_WARN_Verkauft eure Rüstung, euer Hemd, eure Hosen und eure Stiefel zusammen mit dem Essen und Wasser in euren Taschen. Ihr braucht insgesamt 10 Kupfer|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Akzeptiert die Quest Der gestohlene Foliant
    .train 348 >> Erlernt |T135817:0|t[Feuerbrand]
    .target Drusilla La Salle
step << Warlock
--  .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Lauft ins Zelt des Defias-Lagers|r
    >>Öffnet |cRXP_PICK_Gestohlene Bücher|r. Sammelt die |cRXP_LOOT_Macht der Leere|r
    >>|cRXP_WARN_Ihr könnt die |cRXP_LOOT_Macht der Leere|r sicher sammeln, während ihr im Zelt seid! Schaut euch das Video an, wie man das macht|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >> |cRXP_WARN_Klickt hier für Videoreferenz|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Gebt die Quest Der gestohlene Foliant ab
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith ATW
    .cast 688 >> |cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
    .usespell 688
step << Warlock
    #optional
    #completewith ATW
    .cast 687 >> |cRXP_WARN_wirkt|r |T136185:0|t[Demon Skin]
    .usespell 687
    .aura 687
step
    #completewith DeleteHS
	.destroy 6948 >> Destroy your |T134414:0|t[Hearthstone] from your bags, as you don't need it yet (NOT TRANSLATED IN :deDE YET)
step
    #label ATW
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >> Akzeptiert die Quest Die Bedrohung von innen
    .target Deputy Willem
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Tötet |cRXP_ENEMY_Junge Wölfe|r bis ihr 10 Kupfer+ Vendor-Schrott habt
    >>|cRXP_WARN_Ihr werdet|r |T132333:0|t[Schlachtruf] lernen|cRXP_WARN_was die Levelgeschwindigkeit am Anfrang erhöht|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r innerhalb unten
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >> Gebt die Quest Die Bedrohung von innen ab
    .accept 7 >> Akzeptiert die Quest Säuberung im Koboldlager
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >> Akzeptiert die Quest Eagan Peltskinner
    .target Deputy Willem
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >> Gebt die Quest Eagan Peltskinner ab
    .accept 33 >> Akzeptiert die Quest Wölfe an der Grenze
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_Bis ihr 50c Wert an Müll habt:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Tötet |cRXP_ENEMY_Junge Wölfe|r und |cRXP_ENEMY_Wilder Waldwolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step
    #label DeleteHS
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Tötet |cRXP_ENEMY_Koboldgezücht|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33,2 >> Gebt die Quest Wölfe an der Grenze ab << Warrior/Paladin/Rogue
    .turnin 33,1 >> Gebt die Quest Wölfe an der Grenze ab << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 10 weitere|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Behaltet 10c oder mehr für später|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Verkauft Müll
    .target Godric Rothgar
step << Rogue
    .goto Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Janos Hammerknuckle|r
    .vendor 78 >>|cRXP_BUY_Kauft einen|r |T135650:0|t[Langdolch] |cRXP_BUY_von ihm, falls ihr euch das leisten könnt|r
    .collect 2139,1 -- Dirk (1)
    .disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt den |T135650:0|t[Langdolch]|r an
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >> Gebt die Quest Säuberung im Koboldlager ab
    .accept 15 >> Akzeptiert die Quest Überprüfung der Echokammmine
    .accept 3100 >> Akzeptiert die Quest Einfacher Brief << Warrior
    .accept 3101 >> Akzeptiert die Quest Geweihter Brief << Paladin
    .accept 3102 >> Verschlüsselter Brief annehmen << Rogue
    .accept 3103 >> Akzeptiert die Quest Geheiligter Brief << Priest
    .accept 3104 >> Akzeptiert die Quest Glyphen-Brief << Mage
    .accept 3105 >> Akzeptiert die Quest Besudelter Brief << Warlock
    .target Marshal McBride
step
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Tötet |cRXP_ENEMY_Koboldtagelöhner|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step
    #sticky
    #label xp3
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .goto 1429,46.465,38.272,45,0
    .goto 1429,45.896,38.013,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,49.052,38.270,45,0
    .goto 1429,48.362,37.582,45,0
    .goto 1429,47.136,37.636,45,0
    .goto 1429,46.870,36.906,45,0
    .goto 1429,46.476,37.034,45,0
    .xp 3+1110 >>Farmt bis 1110+/1400 XP
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Godric Rothgar
step
    #requires xp3
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >> Gebt die Quest Überprüfung der Echokammmine ab
    .accept 21 >> Akzeptiert die Quest Scharmützel in der Echokammmine
    .target Marshal McBride
step << Mage
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Reist Richtung |cRXP_FRIENDLY_Khelden Bremen|r oben
step << Mage
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r innerhalb oben
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Reist zu |cRXP_FRIENDLY_Priesterin Anetta|r drinnen unten
step << Priest
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin Anetta|r innerhalb unten
    .turnin 3103 >> Gebt die Quest Geheiligter Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Reist zu |cRXP_FRIENDLY_Llane Beshere|r innerhalb unten << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Reist zu |cRXP_FRIENDLY_Bruder Sammuel|r innerhalb unten << Paladin
step << Warrior
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r innerhalb unten
    .turnin 3100 >> Gebt die Quest Einfacher Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Llane Beshere
step << Paladin
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Sammuel|r
    .turnin 3101 >> Gebt die Quest Geweihter Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Sammuel
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r außerhalb
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe
    .target Deputy Willem
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Gebt die Quest Besudelter Brief ab
    .train 172 >>Erlernt |T136118:0|t[Verderbnis]
    .target Drusilla La Salle
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Sackleinenkopftuch|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18,1 >> Gebt die Quest Bruderschaft der Diebe ab << Rogue/Warlock
    .turnin 18,2 >> Gebt die Quest Bruderschaft der Diebe ab << Priest
    .turnin 18,3 >> Gebt die Quest Bruderschaft der Diebe ab << Warrior
    .turnin 18,4 >> Gebt die Quest Bruderschaft der Diebe ab << Paladin
    .turnin 18,5 >> Gebt die Quest Bruderschaft der Diebe ab << Mage
    .turnin 18 >> Gebt die Quest Bruderschaft der Diebe ab
    .accept 3903 >> Akzeptiert die Quest Milly Osworth
    .accept 6 >> Akzeptiert die Quest Kopfgeld auf Garrick Padfoot
    .target Deputy Willem
step << Paladin
    #completewith RestandR
    .equip 16,5579 >> |cRXP_WARN_Legt den|r |T133052:0|t[Miliz-Kriegshammer] an
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #completewith RestandR
    .equip 16,2224 >> Legt den |T135641:0|t[Milizdolch] an
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Legt das |T135274:0|t[Milizkurzschwert]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Godric Rothgar
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Betretet die Echokammmine
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Tötet |cRXP_ENEMY_Koboldhilfsarbeiter|r innerhalb der Echokammmine
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
    .xp 5 >> Farmt bis Stufe 5
step
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    >>|cRXP_WARN_Überspringt die Folgequests|r << !Priest !Mage
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
    .accept 3904 >> Akzeptiert die Quest Millys Ernte << Priest/Mage
    .target Milly Osworth
step << Rogue
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Gebt die Quest Verschlüsselter Brief ab
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .train 921 >>Erlernt |T133644:0|t[Taschendiebstahl]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Plündert |cRXP_PICK_Millys Ernte|r auf dem Boden
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>Tötet |cRXP_ENEMY_Garrick Padfoot|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Brecht die Quest Millys Ernte ab
step
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >> Farmt bis 1735+/2800xp << Paladin/Warrior/Rogue/Warlock
    .xp 5+1625 >> Grinde to 1195+/2800xp << Mage
    .xp 5+1085 >> Farmt bis 1085+/2800xp << Priest
    .mob Defias Thug
step << Priest/Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >>Gebt die Quest Millys Ernte ab
    .accept 3905 >>Akzeptiert die Quest Traubenliste
    .target Milly Osworth
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6,2 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab << Warrior/Rogue/Paladin
    .turnin 6,1 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r innerhalb
    .turnin 21,1 >> Gebt die Quest Scharmützel in der Echokammmine ab << Rogue
    .turnin 21,2 >> Gebt die Quest Scharmützel in der Echokammmine ab << Warrior/Paladin
    .turnin 21,3 >> Gebt die Quest Scharmützel in der Echokammmine ab << !Warrior !Paladin !Rogue
    .accept 54 >> Akzeptiert die Quest Meldung in Goldhain
    .target Marshal McBride
step << Priest/Mage
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Geht nach oben
step << Priest/Mage
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brother Neals|r oben
    .turnin 3905,1 >>Gebt die Quest Traubenliste ab
    .target Brother Neals
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >> Akzeptiert die Quest Ruhe und Entspannung
    .target Falkhaan Isenstrider
step
    #completewith Goldshire
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 87
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Das wird dir ermöglichen|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_herzustellen, die Nahkampfschäden von Euch um 2 erhöhen|r << Paladin
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Smith Argus
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft einen|r |T135321:0|t[Gladius] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_WARN_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Verkauft Müll
    .target Andrew Krighton
--  .money >1.0
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
    .accept 62 >> Die Fargodeep Mine annehmen
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Koboldkerzen annehmen
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .turnin 2158,1 >> Gebt die Quest Ruhe und Entspannung ab << Rogue/Warrior
    .turnin 2158,2 >> Gebt die Quest Ruhe und Entspannung ab << !Rogue !Warrior
    .home >> Setzt euren Ruhestein in Goldhain
    .target Innkeeper Farley
    --xx subzone not found. check ptr
step
    #optional
    .xp 6 >> Grinde bis 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor 151 >>|cRXP_BUY_Kauft die|r |T135641:0|t[Ausbalancierten Wurfdolche] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht nach unten
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor 6374 >> |cRXP_BUY_Kauft das|r |T133738:0|t[Zauberfoliant des Blutpakts (Rang 1)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen.|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin -5623 >> Gebt die Quest Dem Licht geneigt ab
    .accept 5624 >> Gewänder des Lichts annehmen
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .vendor 295 >> |cRXP_BUY_Kauft|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_von ihm, bis euch nur noch 1 Silber bleibt|r << Warrior
    .vendor 295 >> |cRXP_BUY_Kauft bis zu 20|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_von ihm|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
step
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen (Rang 2)] |cRXP_WARN_und|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Wache Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r und |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >> Verlorene Halskette annehmen
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Prinzessin muss sterben! annehmen
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Kobold Miners|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Kuchen für Billy annehmen
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Junge liebende annehmen
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalt Milk]|cRXP_WARN_wie ihr euch leisten könnt|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_verkauft Schrott|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Kobold Miners|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Gebt die Quest Junge Liebende ab
    .accept 111 >> Gespräch mit Oma annehmen
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .accept 84 >> Zurück zu Billy annehmen
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oma Stonefield|r innerhalb
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
    .accept 107 >> Nachricht an William annehmen
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Kobold Miners|r. Öffnen |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step
    #sticky
    #label KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
    .accept 87 >> Goldzahn annehmen
    .target Billy Maclure
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>BETRETET einen der größeren offenen Räume in der Tiefenschachtmine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto 1429,41.732,78.024
    >>Tötet |cRXP_ENEMY_Goldzahn|r. Plündert ihn für |cRXP_LOOT_Bernice's Halskette|r
    >>|cRXP_WARN_Seid vorsichtig, da er normalerweise den |cRXP_ENEMY_Koboldminenarbeiter|r neben ihm mit in den Kampf zieht|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_Versucht, einen|r |T134829:0|t[Schwacher Heiltrank] zu sparen |cRXP_WARN_da ihr es später für Rolfs Leiche brauchen werdet|r
    .subzoneskip 87 --Goldshire
step
    .isQuestTurnedIn 5624 << Priest
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1800 >>Farmt bis 1800+/4500 XP
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Priest
    .isOnQuest 5624
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1460 >>Farmt bis 1460+/4500 XP << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .turnin 87 >> Gebt die Quest Goldzahn ab
    .target "Auntie" Bernice Stonefield
step
    #completewith Exchange
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 70|r (NOT TRANSLATED IN :deDE YET)
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .accept 40 >> Gefahr aus dem Wasser annehmen
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor >>Verkauft Müll
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft einen|r |T135321:0|t[Gladius] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #optional
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
    .xp <8,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
    .xp <8,1
step
    #label CandlesEnd
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Akzeptiert die Quest Die Suche nach dem Tang
    .target William Pestle
step
    .xp 8 >> Grinde bis 8
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Gebt die Quest Gewänder des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht im Gasthaus nach unten
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Feuerblitzes (Rang 2)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> |cRXP_WARN_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_WARN_falls benötigt|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Kauft bis zu 10|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_und 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r << Paladin
    .target Innkeeper Farley
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
    .train 853,1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Tötet |cRXP_ENEMY_Murlocs|r und |cRXP_ENEMY_Murlocbachläufer|r. Plündert sie für |cRXP_LOOT_Kristalltangwedel|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >> BETRETET die Jaspismine
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Folgt dem Pfad durch die Mitte, um die Jaspismine zu erkunden
    .complete 76,1 --Scout through the Jasperlode Mine
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r << Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Koboltminenarbeiter|r. Öffnet |cRXP_PICK_Ramponierte Truhe|r. Plündert sie für |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r und |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|t[Schmiedet] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_zu|r |T135248:0|t[Rauer Wetzstein] << Warrior/Rogue
    +|T136241:0|t[Schmiede] |cRXP_WARN_den|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_und|r |T132889:0|t|cRXP_LOOT_[Leinenstoff]|r |cRXP_WARN_zu|r |T135255:0|t[Rauer Wetzstein] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_Benutzt den|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_auf der aktuellen Waffe von Euch|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Benutzt den|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_auf eurer aktuellen Waffe|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Verlasst die Jaspismine
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    +|cRXP_WARN_Zieht einen |cRXP_ENEMY_Junger Waldbär|r zu|r |cRXP_FRIENDLY_Wache Thomas|r
    >>|cRXP_WARN_Versucht, mit |cRXP_FRIENDLY_Wache Thomas|r zu sprechen, bevor der |cRXP_ENEMY_Junger Waldbär|r von den |cRXP_FRIENDLY_Wachen von Sturmwind|r getötet wird, um den Questfortschritt zu erhalten|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 51%+ Schaden verursacht, um Questfortschritt zu erhalten|r
    .mob Young Forest Bear
step
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
    .target Guard Thomas
step
    #completewith AcceptBundle
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,72.656,60.334
    >>Klickt |cRXP_PICK_Ein halb aufgefressener Körper|r auf dem Boden
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .accept 5545 >> Ein Bündel Probleme annehmen
    .target Supervisor Raelen
step
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Verkauft Müll
    .target Rallic Finn
    .subzoneskip 88,1
step
    #completewith Prowlers
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden am Stamm der Bäume
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_Rennt auf |cRXP_PICK_Rolfs Leichnam|r, wirkt dann|r |T135954:0|t[Göttlicher Schutz] |cRXP_WARN_und klickt sofort|r |cRXP_PICK_Rolfs Leichnam|r
    >>|cRXP_WARN_Lauft weg und setzt die |cRXP_ENEMY_Murlocs|r zurück, nachdem ihr die Quest abgeschlossen habt|r
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Klickt auf |cRXP_PICK_Rolfs Leichnam|r auf dem Boden
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Murlocfutterwühler|r wirken|r |T135915:0|t[Schwachen Trank trinken] |cRXP_WARN_welches sie um 61-68 Leben heilt|r
    >>|cRXP_WARN_Wirkt|r |T135953:0|t[Erneuerung] |cRXP_WARN_und|r |T135940:0|t[Machtwort: Schild] |cRXP_WARN_dann füllt eure Mana. Zieht die 2|cRXP_ENEMY_ Murlocs|r vor den Hütten, bewegt euch weg, dann tötet einen. Lauft weg wenn ihr einen tötet, dann tötet den anderen|r << Priest
    >>|cRXP_WARN_Zieht die 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_vor den Hütten, bewegt euch weg und|r |T136071:0|t[Verwandlung] |cRXP_WARN_einen, während ihr den anderen tötet. Tötet den|r |T136071:0|t[Verwandelt]|cRXP_WARN_ danach|r << Mage
    >>|cRXP_WARN_Sammelt 100 Wut. Zieht die 2|r Murlocs|cRXP_ENEMY_ vor den Hütten, bewegt euch weg und haltet|r |T132316:0|t[Kniesehne] |cRXP_WARN_auf einem aktiv,während ihr den anderen tötet. Benutzt auch|r |T133581:0|t[Tasche mit Murmeln] |cRXP_WARN_auf den, den ihr tötet. Lauft weg und|r |cRXP_WARN_setzt den einen den ihr mit|r |T132316:0|t[Kniesehne] |cRXP_WARN_zurück gezogen habt zurück, nachdem ihr den anderern getötet habt|r << Warrior
    >>|cRXP_WARN_Zieht die 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_vor den Hütten, bewegt euch weg und konzentriert euch auf das Töten eines Murlocs. Benutzt|r |T136205:0|t[Entrinnen] |cRXP_WARN_sobald beide euch angreifen. Dies ist eine gute Gelegenheit,|r |T133581:0|t[Tasche mit Murmeln]|cRXP_WARN_zu benutzen. Lauft weg und setzt den Kampf zurück, sobald ihr einen getötet habt|r << Rogue
    >>|cRXP_WARN_Zieht die 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_vor den Hütten, bewegt euch weg und|r |T136183:0|t[Furcht] |cRXP_WARN_wirkt auf einen von ihnen ständig, und versucht, DoTs auf beide zu halten|r << Warlock
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
    #completewith BundleOT
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
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
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
    .target Supervisor Raelen
step
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
    .target Sara Timberlain
step
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
step
    #completewith Deed << !Warlock
    #completewith WarlockPrincess << Warlock
    >>Tötet |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r]
    .use 1972>>Benutzt die |T134939:0|t[|cRXP_WARN_Westfall-Urkunde|cRXP_LOOT_] |rum die Quest zu starten|r
    >>|cRXP_WARN_Die|r |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r] |cRXP_WARN_ist ein sehr seltener Drop. Überspringt diesen Schritt, falls ihr sie nicht bekommt|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Furlbrows Urkunde annehmen
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label WarlockPrincess << Warlock
    .goto Elwynn Forest,69.3,79.0
    >>Tötet |cRXP_ENEMY_Prinzessin|r. Plündert sie für |cRXP_LOOT_Meesinghalsband|r
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird mit beiden ihrer |r |cRXP_ENEMY_Gefolgsschwein|r angreifen
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird auch eine|r |T132368:0|t[Sturmattacke] machen|cRXP_WARN_was viel Schaden verursacht|r
    >>Sammelt 100 Wut, bevor ihr |cRXP_ENEMY_Prinzessin|r angreift << Warrior
    >>|cRXP_WARN_Stellt sicher, dass |T136205:0|t[Entrinnen] |cRXP_WARN_bereit ist. Wenn ihr Schwierigkeiten habt, könnt ihr den Zaun mit Wurfwaffen nutzen, um das pathing auszunutzen und Zeit zu gewinnen|r << Rogue
    >>|cRXP_WARN_Seid bereit, einen|r |T134830:0|t[Geringer Heiltrank] zu benutzen
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Klickt hier für eine Videoanleitung |r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #label Deed << !Warlock
    >>Tötet |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    >>|cRXP_WARN_You don't have to complete this step now. Skip this step if you wish as you will be back here again shortly|r (NOT TRANSLATED IN :deDE YET) << Warlock
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
step << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step << !Warlock
    .goto Redridge Mountains,10.76,77.64,0
    .goto Redridge Mountains,10.76,77.64,40,0
    .goto Redridge Mountains,15.79,64.37
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step
    #completewith ElmoresTask
    .hs >> Ruhestein nach Goldhain
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
    .timer 9,Tang einsammeln RP
    .accept 114 >> Akzeptiert die Quest Die Flucht
    .target William Pestle
step << Paladin/Warrior/Rogue
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
step << Rogue
    #optional
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Trainiert nur|r |T132147:0|t[Beidhändigkeit] |cRXP_WARN_und|r |T132307:0|t[Sprinten] |cRXP_WARN_. Trainiert keine anderen Zauber, um das Geld für später zu sparen|r
    >>|cRXP_WARN_Don't worry if you don't have a second weapon yet, you'll get one very soon|r (NOT TRANSLATED IN :deDE YET)
    .train 674 >> Erlernt |T132147:0|t[Beidhändigkeit]
    .train 2983 >> Erlernt |T132307:0|t[Sprinten]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
    .accept 239 >> Akzeptiert die Quest Hilfe für die Weststromgarnison!
    .accept 59 >> Cloth und Leather Armor annehmen << Warlock
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .target Marshal Dughan
step
    #label ElmoresTask
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >> Elmores Aufgabe annehmen
    .target Smith Argus
step << Warlock
    #optional
    #completewith WarlockTraining
    .goto Elwynn Forest,44.1,66.0,10 >> Geht im Gasthaus nach unten
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r und |cRXP_FRIENDLY_Remen Marcot|r
    .train 980 >> |T136139:0|t[Curse of Agony] (NOT TRANSLATED IN :deDE YET)
    .train 5782 >> |T136183:0|t[Fear]
    .train 6201 >> |T135230:0|t[Create Healthstone (Minor)] (NOT TRANSLATED IN :deDE YET)
    .train 696 >> |T136185:0|t[Demon Skin (Rank 2)] (NOT TRANSLATED IN :deDE YET)
    .train 1120 >> |T136163:0|t[Drain Soul] (NOT TRANSLATED IN :deDE YET)
    .train 707 >> |T135817:0|t[Immolate (Rank 2)] (NOT TRANSLATED IN :deDE YET)
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >> Akzeptiert die Quest Gakins Beschwörung
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
    .xp <10,1
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 980 >> |T136139:0|t[Curse of Agony] (NOT TRANSLATED IN :deDE YET)
    .train 5782 >> |T136183:0|t[Fear]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .xp <8,1
step << Warlock
    #optional
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_from her if you can afford it. If not, you can buy it later|r (NOT TRANSLATED IN :deDE YET)
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Feuerblitzes (Rang 2)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    >>|cRXP_BUY_Kauft das|r |T133738:0|t[Zauberfoliant des Blutpakts (Rang 1)] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen.|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    #optional
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
    .accept 5635 >> Akzeptiert die Quest Verzweifeltes Gebet << Human/Dwarf
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Josetta
    .xp <10,1
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
	.target Priestess Josetta
    .trainer >> Trainiere deine Klassenfähigkeiten
    .xp >10,1
    .xp <9,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .money >1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_Do NOT train|r |T132277:0|t[Bloodrage] |cRXP_WARN_yet, you need to save some of your money for further training shortly|r (NOT TRANSLATED IN :deDE YET)
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1638 >> A Warrior's Training (NOT TRANSLATED IN :deDE YET)
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <10,1
step << Warrior
    #optional
    .money <1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1638 >> A Warrior's Training (NOT TRANSLATED IN :deDE YET)
    .target Lyria Du Lac
    .xp <10,1
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Gebt die Quest Die Flucht ab
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .turnin 88 >> Gebt die Quest Prinzessin muss sterben! ab
    .target Ma Stonefield
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto Elwynn Forest,24.548,74.672,-1
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .xp 9.65,1
step << Rogue/Warrior
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .money >0.2600
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
step << !Warlock
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto Elwynn Forest,24.548,74.672,-1
step
    #completewith GnollEnd
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für den|T134939:0|t[|cRXP_LOOT_Goldabholplan|r]
    .use 1307 >>|cRXP_WARN_Benutzt den |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] um die Quest zu starten|r
    >>|cRXP_WARN_Der |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] ist ein sehr seltener Drop. Ignoriert diesen Schritt, wenn ihr ihn nicht bekommt|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_ein seltener Spawn, hat aber eine 100% Dropchance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Akzeptiert die Quest Der Sammler
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    .isOnQuest 11
    #completewith next
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
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
    >>|cRXP_WARN_You can kite him back to the guard tower, ensure you deal at least 51% damage to him|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    .isOnQuest 11
    #completewith next
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
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
    .isOnQuest 11
    #label GnollEnd
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
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warrior/Rogue
    .money >0.2600
    +Tötet |cRXP_ENEMY_Riverpaw Schlaffi|r und |cRXP_ENEMY_Riverpaw Outrunners|r
    >>|cRXP_WARN_Grind until you have 26 silver of vendorables/money. This is for Thrown, 2h Mace and 2h Sword training. It's also for to buy a level 3 Throwing Weapon, and flying to Stormwind soon|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Manually skip this step once you have enough money|r (NOT TRANSLATED IN :deDE YET)
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
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Choose the|r |T134583:0|t[|cRXP_FRIENDLY_Stormwind Guard Leggings|r] |cRXP_WARN_as your reward. You will get a 2H Mace very soon|r (NOT TRANSLATED IN :deDE YET) << Warrior
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .isQuestComplete 176
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 11 >> Gebt die Quest Kopfgeld auf die Flusspfotengnolle ab
    .target Deputy Rainer
    .isQuestComplete 11
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    >>|cRXP_WARN_Akzeptiert die anderen Quests nicht|r
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verna Brauenwirbel|r
    >>|cRXP_WARN_Akzeptiert die anderen Quests nicht|r
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Salma Saldean|r innerhalb
    >>|cRXP_WARN_Akzeptiert die anderen Quests nicht|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .target Salma Saldean
step
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .accept 6181 >> Akzeptiert die Quest Eine eilige Nachricht
    .target Quartermaster Lewis
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .collect 4592,20 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
    .zoneskip Westfall,1
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Gebt die Quest Eine eilige Nachricht ab
    .accept 6281 >> Akzeptiert die Quest Weiter nach Sturmwind
    .target Thor
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step << Rogue
    #optional
    .abandon 123 >>Brecht die Quest Der Sammler ab
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    >>|cRXP_WARN_Wir wählen die|r |T132383:0|t[Explosiv Raketen] |cRXP_WARN_als Belohnung. Sie verursachen ordentlichen Schaden und können für "Split-Pulls" genutzt werden, was unglaublich nützlich ist|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Split-Pulling". Es ist ein kurzes Video und äußerst lehrreich|r
    .target Morgan Pestle
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Erlerne 1h Schwerter und Stäbe << Warlock/Mage
    .trainer >>Erlernt 1h Schwerter << Rogue
    .trainer >>Erlernt Stäbe << Priest
    .trainer >>Erlernt 2h Schwerter << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 6s für späteres Training spart|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
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
    .train 2983,3 --Sprint Trained
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 6s für späteres Training spart|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
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
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    .equip 16,851 >> |cRXP_WARN_Rüstet den|r |T135346:0|t[Entersäbel] |cRXP_WARN_in der Haupthand aus|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2494 >> |cRXP_WARN_Legt|r |T135641:0|t[Stilett] |cRXP_WARN_in der Nebenhand von Euch an|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .isOnQuest 1685
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1685 >> Gebt die Quest Gakins Beschwörung ab
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #completewith WLHoggerEnd
    .deathskip >> Sterbt und spawnt  beim |cRXP_FRIENDLY_Geistheiler|r, indem ihr |T136126:0|t[Aderlass] benutzt und ihr euch ins Feuer neben euch stellt
    .zoneskip Stormwind City,1
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Lauf nach Goldhain
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Wählt den|r |T135145:0|t[Ausbalancierter Kampfstecken]
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    >>|cRXP_WARN_Wählt den|r |T135145:0|t[Ausbalancierter Kampfstecken]
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .target Marshal Dughan
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_Legt den|r |T135145:0|t[Ausbalancierter Kampfstecken] an
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    .subzone 62 >> Reist zu Brackbrunns Kürbisbeet
    .isOnQuest 1688
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .waypoint Elwynn Forest,70.5,77.6,60,0
    .waypoint Elwynn Forest,68.1,77.5,60,0
    .waypoint Elwynn Forest,68.2,81.4,60,0
    .waypoint Elwynn Forest,70.8,80.9,60,0
    >>Tötet |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .turnin 59 >> Gebt die Quest Rüstung aus Tuch und aus Leder ab
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .turnin 59 >> Gebt die Quest Rüstung aus Tuch und aus Leder ab
    .target Sara Timberlain
step << Warlock
    #optional
    #completewith TheBinding
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    >>Farmt unterwegs. Stellt sicher, dass ihr mindestens 2 |T134075:0|t[Seelensplitter] |cRXP_WARN_mithilfe von|r |T136163:0|t[Seelendieb] |cRXP_WARN_habt|r
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_Be careful of mobs en-route|r (NOT TRANSLATED IN :deDE YET)
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Gebt die Quest Die Bindung ab
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilsa Corbin|r up stairs
    >>|cRXP_WARN_You must save 20s for 2H Mace training and Thrown training in Ironforge!|r (NOT TRANSLATED IN :deDE YET)
    .trainer >> Trainiere deine Klassenfähigkeiten
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .accept 1638 >> Akzeptiert die Quest Die Ausbildung eines Kriegers
    .target Ilsa Corbin
    .train 6546,1
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cFF00FF25Osric Strang|r
    .turnin 6281 >> Gebt die Quest Weiter nach Sturmwind ab
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1638 >> Gebt die Quest Die Ausbildung eines Kriegers ab
    .accept 1639 >> Akzeptiert die Quest Bartleby der Trunkenbold
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Gebt die Quest Bartleby der Trunkenbold ab
    .accept 1640 >> Akzeptiert die Quest Besiegt Bartleby
    .target Bartleby
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
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >> Betretet die Kathedrale von Sturmwind
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .turnin 5635 >> Gebt die Quest Verzweifeltes Gebet ab
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .isOnQuest 5635
step << Human Priest/Dwarf Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .turnin 5634 >> Gebt die Quest Verzweifeltes Gebet ab
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .train 13908,3
step << Warrior/Paladin/Rogue
    .goto Stormwind City,51.192,17.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelman Stonehand|r
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    >>|cRXP_WARN_Dies wird zusammen mit|r |T136241:0|t[Schmiedekunst] |cRXP_WARN_verwendet, um|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_und|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_herzustellen und den Waffenschaden von Euch zu erhöhen|r
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .target Gelman Stonehand
    .train 2018,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step << Warrior/Paladin/Rogue
    #optional
    #completewith EnterIF
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << Warrior/Paladin/Rogue
    #optional
    .goto Stormwind City,51.021,16.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brooke Stonebraid|r
    .collect 2901,1 >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei ihr|r
    .target Brooke Stonebraid
    .train 2575,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Gebt die Quest Elmores Aufgabe ab
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
    .target Grimand Elmore
step
    #completewith EnterIF
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
step
    #optional
    >>|cRXP_WARN_Nehmt die Tiefenbahn nach Eisenschmiede|r
    >>|cRXP_WARN_Verbessert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf die Tiefenbahn wartet, falls erforderlich|r
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Wirkt|r |T136221:0|t[Leerwandler beschwören] |cRXP_WARN_und|r |T135230:0|t[Gesundheitsstein herstellen] |cRXP_WARN_während ihr auf die Tiefenbahn nach Eisenschmiede wartet falls nötig|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform auf der Eisenschmiede-Seite der Tiefenbahn
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
    .skill firstaid,<1,1
step
    #optional
    >>|cRXP_WARN_Nehmt die Tiefenbahn nach Eisenschmiede|r
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Wirkt|r |T136221:0|t[Leerwandler beschwören] |cRXP_WARN_und|r |T135230:0|t[Gesundheitsstein herstellen] |cRXP_WARN_während ihr auf die Tiefenbahn nach Eisenschmiede wartet falls nötig|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform auf der Eisenschmiede-Seite der Tiefenbahn
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_gegen |cRXP_ENEMY_Untergrundratte|r in der Tiefenbahn|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r in der Tiefenbahn
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .target Monty
step
    #label EnterIF
    .zone Ironforge >>Betretet Eisenschmiede
step << skip
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Click here for a logout skip inside the tram (NOT TRANSLATED IN :deDE YET)
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Betretet Eisenschmiede
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Betretet das Gebäude der Timberline Waffen
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Erlernt Wurfwaffen
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Erlernen 2h Streitkolben
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    .goto 1455,61.356,88.398,6 >> Verlasst das Gebäude der Timberline Waffen
step << Warrior
    .money <0.06
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_If you don't have enough money it's not a big deal|r (NOT TRANSLATED IN :deDE YET)
    .train 6546 >> Train |T132155:0|t[Rend (Rank 2)] (NOT TRANSLATED IN :deDE YET)
    .train 2687 >> Train |T132277:0|t[Bloodrage] (NOT TRANSLATED IN :deDE YET)
    .target Bilban Tosslespanner
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step
#xprate <1.5
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Loch Modan shortly:|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .isQuestAvailable 418
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step
#xprate >1.49
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
step << Warrior/Paladin/Rogue
#xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geofram Bouldertoe|r downstairs in the building (NOT TRANSLATED IN :deDE YET)
    .goto Ironforge,51.8,29.5,15,0
    .goto Ironforge,49.6,28.2,12,0
    .goto Ironforge,49.9,26.3
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Geofram Bouldertoe
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate >1.49
    #optional
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate >1.49
#ah
    #sticky
    #optional
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
step
#xprate >1.49
#ah
    #sticky
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände in Kürze für schnellere Abgaben in Dunkelküste:|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)

--
--

step
#xprate <1.5
    .goto Ironforge,18.14,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Feuerbräu|r
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
    .bindlocation 1537
step
#xprate <1.5
    #optional
    #completewith Dirt
    .goto 1426,53.47,35.02
    >>Verlasst Eisenschmiede
    .zone Dun Morogh >> Reist nach Dun Morogh
step
#xprate <1.5
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
#xprate <1.5
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .mob Vagash
step << Warrior/Rogue
#xprate <1.5
    #optional
    #requires Dirt
    #completewith VagashEnd
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
#xprate <1.5
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step
#xprate <1.5
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für seinen |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht|r
    >>|cRXP_WARN_Schaut das Video unten, bevor ihr versucht, |cRXP_ENEMY_Vagash|r zu töten. Es kann von jeder Klasse solo absolviert werden|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Klickt hier für eine Videoreferenz|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
#xprate <1.5
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cFF00FF25Senator Mehr Steingunst|r und |cFF00FF25Großknecht Steinbraue|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cFF00FF25Dank Drizzlecut|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate <1.5
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate <1.5
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r und |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r in der Höhle
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
#xprate <1.5
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r und |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin
#xprate <1.5
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .target Kazan Mogosh
    .xp >15,1
step
#xprate <1.5
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cFF00FF25Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
#xprate <1.5
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,79.672,36.171
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
#xprate <1.5
    .goto Dun Morogh,78.97,37.14
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
#xprate <1.5
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab << Rogue
    .turnin 417 >> Gebt die Quest Pilotenrache ab << !Rogue
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,84.4,31.1,25 >>Geht durch den Tunnel nach Loch Modan
    .zoneskip Loch Modan

--
--

step
#xprate >1.49
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Verlasst Eisenschmiede
step
#xprate >1.49
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Reist zum Dun Morogh → Sumpfland Deathskip-Spot
step
#xprate >1.49
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >> Geht weiter durch den Berg zur Deathskip-Stelle
step
#xprate >1.49
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Lauft geradeaus von der Kante nach Norden ab und fallt hinunter. Stirb und erscheine beim |cRXP_FRIENDLY_Geistheiler|r wieder
step
#xprate >1.49
    #completewith next
    .goto Wetlands,11.95,50.24,80 >> Schwimmt zum Ufer zum Hafen von Menethil
    .subzoneskip 150 --Menethil Harbor
step
#xprate >1.49
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
#xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Verlasst die Burg Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
#xprate >1.49
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shellei|r außerhalb
    .fp Wetlands >> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r innerhalb
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
step
#xprate >1.49
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the dock für boat to Auberdine
    .zoneskip Darkshore
step
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
    #optional
    .goto 1437,4.370,56.762
    >>Level dein [Erste Hilfe] während du auf das Boot zur Dunkelküste wartest
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
#xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance
#xprate <1.5
#name 13-14 Loch Modan << !Warlock
#name 13-14 Loch Modan << Warlock
#subgroup RestedXP Allianz 1-20
#defaultfor Human
#next 14-14 Darkshore << Warlock
#next 12-14 Darkshore << !Warlock

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten << Warlock/Mage/Rogue
    .target Mountaineer Stormpike
step << !Warlock !Mage !Rogue
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Warlock/Mage/Rogue
    #optional
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
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
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Brecht die Quest Sturmlanzes Bestellung ab. Dies schaltet die Quest Gebirgsjäger Sturmlanzes Aufgabe frei, die eine kostenlose 550XP Abgabe ermöglicht
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Save any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_to use for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_Später|r
    .subzoneskip 144
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    .subzone 144 >> Reist nach Thelsamar
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Kauft bis zu 2|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, wenn nötig|r
    .target Yanni Stoutheart
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Ofenglut|r
    .vendor 6734 >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot]|cRXP_BUY_. Versucht, etwa 20 zu haben|r << Rogue
    .vendor 6734 >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_. Versucht, etwa 10|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und 20|r |T132815:0|t[Eiskalte Milch] << Mage/Warlock
    .target Innkeeper Hearthstove
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    #label StormpikeO
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
step << Warlock/Mage/Rogue
    #optional
    #completewith SilverStream
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
step << Warlock/Mage/Rogue
    #completewith SilverStream
    >>Tötet |cRXP_ENEMY_Tunnelratten|r. Plündert sie für |cRXP_LOOT_Tunnelrattenohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #label SilverStream
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
step << Warlock/Mage/Rogue
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    .complete 307,1 -- Miners' Gear (4)
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step << Warlock/Mage/Rogue
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .target Mountaineer Stormpike
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgrum Borrelson|r außerhalb
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .target Thorgrum Borrelson
step << !Warlock
    .hs >> Ruhestein nach Eisenschmiede
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << !Warlock
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgrum Borrelson|r außerhalb
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Lauft den Schmutzpfad hinauf und springt dann in den Bunker hinunter
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r im Bunker
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step << Warlock
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step << Warlock
    .goto Loch Modan,27.33,56.70
    >>Tötet |cRXP_ENEMY_Splittersteintroggs|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7150
    .goto Loch Modan,27.33,56.70
    +Grind |cRXP_ENEMY_Troggs|r until you have 71s 50c worth of vendor trash/money, then turnin the quests (NOT TRANSLATED IN :deDE YET)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>Grinded bis 9600+/11400xp
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Lauft den Schmutzpfad hinauf und springt dann in den Bunker hinunter
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
    .isQuestComplete 267
step << Warlock
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 14 >> Farmt bis Stufe 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .hs >> Ruhestein nach Eisenschmiede
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << Warlock
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgrum Borrelson|r außerhalb
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Paladin
    #optional
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brandur Ironhammer|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brandur Ironhammer
    .xp <12,1
step << Rogue
    #optional
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Fenthwick
    .xp <12,1
step << Warrior
    #optional
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
    .xp <12,1
step << Mage/Priest/Warlock
#ah
    #sticky
    #label AH1
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Buy a|r |T135144:0|t[Greater Magic Wand] |cRXP_BUY_if it costs less than 30s 6c|r (NOT TRANSLATED IN :deDE YET)
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step
#ah
    #sticky
    #label AH2
    #optional
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
step
#ah
    #sticky
    #label AH3
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände in Kürze für schnellere Abgaben in Dunkelküste:|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #requires AH1
step
    #requires AH2
step
    #requires AH3
step << Mage/Priest/Warlock
    #optional
    +|cRXP_WARN_Legt den|r |T135144:0|t[den Großen Magiezauberstab] an
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp <13,1
step << Priest/Warlock/Mage
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unten mit |cRXP_FRIENDLY_Harick Felstrommel|r
    >>|cRXP_BUY_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_BUY_von ihm|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Legt den|r |T135468:0|t[Glimmender Zauberstab] an
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Vergesst nicht, den|r |T135468:0|t[Glimmender Zauberstab] |cRXP_WARN_später auszurüsten, wenn ihr Stufe 15 erreicht|r
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubaal Leichenfund|r
    .vendor >> |cRXP_BUY_Kauft|r |T133738:0|t[Zauberfoliant des Schattenverzehrens (Rang 1)] |cRXP_BUY_und|r |T133738:0|t[Zauberfoliant der Opferung (Rang 1)] |cRXP_BUY_falls ihr es euch leisten könnt|r
    .target Jubahl Corpseseeker
step << Priest
    #optional
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Toldren Deepiron
    .xp <12,1
step << Mage
    #optional
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
    .xp <12,1
step
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Verlasst Eisenschmiede
step
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Reist zum Dun Morogh → Sumpfland Deathskip-Spot
step
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >> Geht weiter durch den Berg zur Deathskip-Stelle
step
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Lauft geradeaus von der Kante nach Norden ab und fallt hinunter. Stirb und erscheine beim |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #completewith next
    .goto Wetlands,11.95,50.24,80 >> Schwimmt zum Ufer zum Hafen von Menethil
    .subzoneskip 150 --Menethil Harbor
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
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Verlasst die Burg Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shellei|r außerhalb
    .fp Wetlands >> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r innerhalb
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the dock for the boat to Auberdine (NOT TRANSLATED IN :deDE YET)
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
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance Warlock
#xprate <1.5
#name 14-14 Darkshore
#subgroup RestedXP Allianz 1-20
#defaultfor Human Warlock
#next 14-20 Bloodmyst

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
