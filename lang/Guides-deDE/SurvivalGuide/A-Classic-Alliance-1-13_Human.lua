if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 1-6 Nordhain
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Human
#next 6-11 Wald von Elwynn; 6-13 Wald von Elwynn
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
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
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Lauft ins Zelt des Defias-Lagers|r
    >>Öffnet |cRXP_PICK_Gestohlene Bücher|r. Sammelt die |cRXP_LOOT_Macht der Leere|r
    >>|cRXP_WARN_Ihr könnt die |cRXP_LOOT_Macht der Leere|r sicher sammeln, während ihr im Zelt seid! Schaut euch das Video an, wie man das macht|r
    .link https://youtu.be/3qQwsJhAZIk >> |cRXP_WARN_Klickt hier als Videoreferenz|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_Bleibt im Zelt, damit die |cRXP_ENEMY_Rohling der Defias|r euch nicht treffen können|r
    .hs >> Benutzt euren Ruhestein zum Nordhaintal
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> Gebt die Quest Der gestohlene Foliant ab
    .target Drusilla La Salle
step << Warlock
    #completewith next
    .cast 688 >> |cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> Akzeptiert die Quest Die Bedrohung von innen
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Tötet |cRXP_ENEMY_Junge Wölfe|r bis ihr 10 Kupfer+ Vendor-Schrott habt
    >>|cRXP_WARN_Ihr werdet|r |T132333:0|t[Schlachtruf] lernen|cRXP_WARN_was die Levelgeschwindigkeit am Anfrang erhöht|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Gebt die Quest Die Bedrohung von innen ab
    .accept 7 >> Akzeptiert die Quest Säuberung im Koboldlager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> Akzeptiert die Quest Eagan Peltskinner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >> Gebt die Quest Eagan Peltskinner ab
    .accept 33 >> Akzeptiert die Quest Wölfe an der Grenze
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    .vendor >> |cRXP_WARN_Sobald ihr 50c an Verkäuferplunder habt, kauft 10|r |T132794:0|t[Erfrischendes Quellwasser]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Young Wolves|r und |cRXP_ENEMY_Timber Wolves|r. Plündert sie für |cRXP_LOOT_Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>Tötet |cRXP_ENEMY_Koboldgezücht|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>Tötet |cRXP_ENEMY_Young Wolves|r und |cRXP_ENEMY_Timber Wolves|r. Plündert sie für |cRXP_LOOT_Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .turnin 33,2 >> Gebt die Quest Wölfe an der Grenze ab << Warrior/Paladin/Rogue
    .turnin 33,1 >> Gebt die Quest Wölfe an der Grenze ab << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Danil|r
    .vendor >>|cRXP_WARN_verkauft Schrott|r
    >>|cRXP_WARN_Buy 10|r |T132794:0|t[Refreshing Federn Wasser]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.691,41.417
    .vendor >>|cRXP_WARN_verkauft Schrott|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Janos|r
    .goto Elwynn Forest,47.240,41.900
    .vendor >>|cRXP_BUY_Buy a|r |T135650:0|t[Langdolch]
    .target Janos Hammerknuckle
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt den |T135650:0|t[Langdolch]|r an
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >> Gebt die Quest Säuberung im Koboldlager ab
    .accept 15 >> Akzeptiert die Quest Überprüfung der Echokammmine
    .accept 3100 >> Akzeptiert die Quest Einfacher Brief << Warrior
    .accept 3101 >> Akzeptiert die Quest Geweihter Brief << Paladin
    .accept 3102 >> Verschlüsselter Brief annehmen << Rogue
    .accept 3103 >> Akzeptiert die Quest Geheiligter Brief << Priest
    .accept 3104 >> Akzeptiert die Quest Glyphen-Brief << Mage
    .accept 3105 >> Akzeptiert die Quest Besudelter Brief << Warlock
step
    .xp 3 >> Farmt bis Stufe 3
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>Tötet |cRXP_ENEMY_Koboldtagelöhner|r
	.mob Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Farmt auf dem Rückweg bis 1110+/1400xp
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .vendor >> |cRXP_WARN_verkauft Schrott|r
--N need SoM xp note
step
    #requires xp3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >> Gebt die Quest Überprüfung der Echokammmine ab
    .accept 21 >> Akzeptiert die Quest Scharmützel in der Echokammmine
step << Priest/Mage
    #completewith next
    .goto Elwynn Forest,49.52,39.99,10 >> Geht nach oben << Mage
    .goto Elwynn Forest,49.3,40.7,15 >> Reisen toward |cRXP_FRIENDLY_Priestess Anetta|r << Priest
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >> Reist durch den Türdurchgang
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Gebt die Quest Geheiligter Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >> Reisen toward |cRXP_FRIENDLY_Llane Beshere|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Reisen toward |cRXP_FRIENDLY_Brother Sammuel|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Gebt die Quest Einfacher Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Gebt die Quest Geweihter Brief ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> Gebt die Quest Besudelter Brief ab
    .xp 4 >> Farmt bis 4
    .trainer >>Erlernt |T136118:0|t[Verderbnis]
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Tötet |cRXP_ENEMY_Defias Thugs|r. Plündert sie für |cRXP_LOOT_Bandanas|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Farmt bis 4
step
    #completewith next
    #softcore
    .deathskip >> Sterbt und respawnt beim Geistheiler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> Gebt die Quest Bruderschaft der Diebe ab << Paladin
    .turnin 18,1 >> Gebt die Quest Bruderschaft der Diebe ab << Rogue/Warlock
    .turnin 18,5 >> Gebt die Quest Bruderschaft der Diebe ab << Mage
    .turnin 18,2 >> Gebt die Quest Bruderschaft der Diebe ab << Priest
    .turnin 18,3 >> Gebt die Quest Bruderschaft der Diebe ab << Warrior
    .turnin 18 >> Gebt die Quest Bruderschaft der Diebe ab << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> Akzeptiert die Quest Kopfgeld auf Garrick Padfoot
    .accept 3903 >> Akzeptiert die Quest Milly Osworth
step << Paladin
    #completewith next
    +Legt den |T133052:0|t[Milizkriegshammer] an
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Händler trash, repair
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Betretet die Echokammmine
step
    .goto Elwynn Forest,48.61,27.63
    >>Tötet |cRXP_ENEMY_Koboldhilfsarbeiter|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Farmt bis Stufe 5
step << !Priest !Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
    >>|cRXP_WARN_Überspringt die Folgequests|r
    .target Milly Osworth
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
    .accept 3904 >> Akzeptiert die Quest Millys Ernte
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >> Gebt die Quest Verschlüsselter Brief ab
    >>|cRXP_WARN_Ihr müsst keine Zauber trainieren|r
step << Priest/Mage
    >>Plündert |cRXP_PICK_Millys Ernte|r auf dem Boden
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Tötet |cRXP_ENEMY_Garrick Padfoot|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
	.mob Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Brecht die Quest Millys Ernte ab
step << !Priest !Mage
    .xp 5+1715 >> Farmt auf dem Rückweg bis 1715+/2800xp
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >> Farmt auf dem Weg zurück bis 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #completewith next
    #softcore
    .deathskip >> Sterbt und respawnt beim Geistheiler
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3904 >> Gebt die Quest Millys Ernte ab
    .accept 3905 >>Akzeptiert die Quest Traubenliste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab << Warrior/Rogue/Paladin
    .turnin 6,1 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab << !Warrior !Rogue !Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marschall McBride|r in der Abtei
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >> Gebt die Quest Scharmützel in der Echokammmine ab << Rogue
    .turnin 21,2 >> Gebt die Quest Scharmützel in der Echokammmine ab << Warrior/Paladin
    .turnin 21,3 >> Gebt die Quest Scharmützel in der Echokammmine ab << !Warrior !Paladin
    .accept 54 >> Akzeptiert die Quest Meldung in Goldhain
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Geht nach oben
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brother Neals|r oben
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>Gebt die Quest Traubenliste ab
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >> Akzeptiert die Quest Dem Licht geneigt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.563,47.742
    .accept 2158 >> Akzeptiert die Quest Ruhe und Entspannung
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som
<< Alliance
#name 6-11 Wald von Elwynn
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Human
#next 11-13 Loch Modan
step
    #completewith next
    .subzone 87 >> Lauf nach Goldhain
step
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
    .accept 62 >> Die Fargodeep Mine annehmen
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >> Erlerne |T136241:0|t[Schmiedekunst]
    >>|cRXP_WARN_Dadurch könnt ihr |T135248:0|t[Rough Sharpening Stones] herstellen, die Nahkampftreffer um +2 Schaden erhöhen. Das ist am Anfang sehr bedeutend|r << Warrior/Rogue
    >>|cRXP_WARN_Dadurch könnt ihr |T135255:0|t[Rough Weightstones] herstellen, die Nahkampftreffer um +2 Schaden erhöhen. Das ist am Anfang sehr bedeutend|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy und equip a|r |T135321:0|t[Gladius]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy und equip a|r |T135641:0|t[Stilett]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy und equip a|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Mage/Priest/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andrew Krighton|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.706,65.786
    .vendor >> |cRXP_WARN_verkauft Schrott|r
step
    #label Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
    .accept 62 >> Die Fargodeep Mine annehmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Koboldkerzen annehmen
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .target Innkeeper Farley
    .turnin 2158,1 >> Gebt die Quest Ruhe und Entspannung ab << Rogue/Warrior
    .turnin 2158,2 >> Gebt die Quest Ruhe und Entspannung ab << !Rogue !Warrior
    .home >> Setzt euren Ruhestein in Goldhain
step
    .xp 6 >> Grinde bis 6
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog Hamfist|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >>|cRXP_WARN_Kauft eine|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_WARN_und legt ihn an|r
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht nach unten
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_WARN_Kauft|r |T133738:0|t[Grimoire of Blutpakt (Rang 1)] |cRXP_WARN_falls ihr es euch leisten könnt. Falls nicht, werdet ihr es später kaufen|r
    .target Cylina Darkheart
step << Mage/Rogue/Priest
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
    .turnin 5623 >> Gebt die Quest Dem Licht geneigt ab
    .accept 5624 >> Gewänder des Lichts annehmen
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r oben
    .target Michelle Belle
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .vendor >> |cRXP_BUY_Kauft|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_BUY_bis ihr nur noch 1 Silber habt|r << Warrior
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T133995:0|t[Pikanter Dalarankäse] << Rogue
    .target Innkeeper Farley
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
step << Priest
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen (Rang 2)] |cRXP_WARN_und|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Wache Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mutter Stonefield|r und |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .accept 85 >> Verlorene Halskette annehmen
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Prinzessin muss sterben! annehmen
    .target +Ma Stonefield
	.goto Elwynn Forest,34.660,84.482
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Kuchen für Billy annehmen
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Junge liebende annehmen
    .target Maybell Maclure
step
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua Maclure|r
    .target Joshua Maclure
    .vendor >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalt Milk]|cRXP_WARN_wie ihr euch leisten könnt|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_verkauft Schrott|r << !Priest !Warlock !Mage
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Gebt die Quest Junge Liebende ab
    .accept 111 >> Gespräch mit Oma annehmen
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,32.5,85.5
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .accept 84 >> Zurück zu Billy annehmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Oma Stonefield|r
    .target Gramma Stonefield
    .goto 1429,34.945,83.855
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
    .accept 107 >> Nachricht an William annehmen
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
    .accept 87 >> Goldzahn annehmen
step
    #completewith KillGoldtooth
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>Explore Tiefenschachtmine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label KillGoldtooth
    >>Tötet |cRXP_ENEMY_Goldzahn|r. Plündert ihn für |cRXP_LOOT_Bernice's Halskette|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Explore Tiefenschachtmine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r |cRXP_WARN_als Beute bekommt, macht daraus|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Warrior
    #completewith Goldtooth
    +|cRXP_WARN_Versucht, einen|r |T134829:0|t[Schwacher Heiltrank] zu sparen |cRXP_WARN_da ihr es später für Rolfs Leiche brauchen werdet|r
step << Warrior/Rogue
    >>Erinnern: Stellt|cRXP_WARN_ |T135248:0|t[Rough Sharpening Stones] |rher, wenn ihr einen|cRXP_WARN_ |T135232:0|t|r[Rauer Stein]|cRXP_LOOT_ aufgehoben habt|r
    .xp 7+1600 >>Farmt bis 1600+/4500xp
step << Paladin
    >>Erinnern: Stellt|cRXP_WARN_ |T135255:0|t[Rough Weightstones] |rher, wenn ihr einen|cRXP_WARN_ |T135232:0|t|r[Rauer Stein]|cRXP_LOOT_ aufgehoben habt|r
    .xp 7+1600 >>Farmt bis 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>Farmt bis 1600+/4500xp
step << Priest
    .xp 7+1260 >>Schleifen until 1260+/4500xp
step
    #label Goldtooth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >> Gebt die Quest Goldzahn ab
step
    .xp 7+2690 >>Farmt bis 2690+/4500xp << !Priest
    .xp 7+2350 >>Schleifen until 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Lauf nach Goldhain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .accept 40 >> Gefahr aus dem Wasser annehmen
    >>|cRXP_WARN_Verkauft|r |T133581:0|t[Tasche of Marbles] NICHT an einen Händler|cRXP_WARN_Dies ist ein unglaublich wervoller Gegenstand bis Level 60|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    .goto Elwynn Forest,41.529,65.900
    .vendor >>|cRXP_WARN_verkauft Schrott|r
    .target Corina Steele
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy und equip a|r |T135321:0|t[Gladius]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy und equip a|r |T135641:0|t[Stilett]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy und equip a|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Akzeptiert die Quest Die Suche nach dem Tang
step
    .xp 8 >> Grinde bis 8
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
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
    .vendor >> |cRXP_WARN_Kauft|r |T133738:0|t[Grimoire of Feuerblitz (Rang 2)] |cRXP_WARN_, wenn ihr es euch leisten könnt. Falls nicht, werdet ihr es später kaufen|r
    .target Cylina Darkheart
step << Mage/Priest/Rogue/Warrior/Paladin
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
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
step
    .money <0.1250
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> |cRXP_WARN_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_WARN_falls benötigt|r
	.target Brog Hamfist
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .vendor >> |cRXP_WARN_Kauft bis zu 40|r |T132815:0|t[Eiskalte Milch] << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_WARN_Kauft bis zu 40|r |T133995:0|t[Pikanter Dalarankäse] << Warrior/Rogue
    .vendor >> |cRXP_WARN_Kauft bis zu 10|r |T133995:0|t[Pikanter Dalarankäse] |cRXP_WARN_und 10|r |T132815:0|t[Eiskalte Milch] << Paladin
    .target Innkeeper Farley
step
    >>Tötet |cRXP_ENEMY_Murlocs|r und |cRXP_ENEMY_Murloc Streamrunners|r. Plündert sie für |cRXP_LOOT_Kelp Fronds|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> BETRETET die Jaspismine
step
    >>|cRXP_WARN_Folgen: dem Weg durch die Mitte, um die Jaspismine zu erkunden|r
    >>|cRXP_WARN_Verlassen die Jaspismine, sobald das Ziel abgeschlossen ist|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
step
    #completewith AcceptBundle
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    >>Klickt |cRXP_PICK_Ein halb aufgefressener Körper|r auf dem Boden
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Ein Bündel Probleme annehmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rallic Finn|r
    .target Rallic Finn
    .goto Elwynn Forest,83.283,66.089
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #completewith Bundles
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden |cRXP_WARN_am Stamm der Bäume|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Klickt auf |cRXP_PICK_Rolfs Leichnam|r auf dem Boden
    >>|cRXP_ENEMY_Murlocfutterwühler|r |cRXP_WARN_werden|r |T135915:0|t[Schwachen Trank trinken] |cRXP_WARN_wirken, was sie selbst für 61-68 heilt|r
    >>|cRXP_WARN_Wirkt|r |T135953:0|t[Erneuerung] |cRXP_WARN_und|r |T135940:0|t[Machtwort: Schild] |cRXP_WARN_dann füllt eure Mana. Zieht die 2|cRXP_ENEMY_ Murlocs|r vor den Hütten, bewegt euch weg, dann tötet einen. Lauft weg wenn ihr einen tötet, dann tötet den anderen|r << Priest
    >>|cRXP_WARN_Ziehen die 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_vor den Hütten, entfernt euch und|r |T136071:0|t[Verwandlung] |cRXP_WARN_einen, während ihr den anderen tötet. Tötet den|r |T136071:0|tVerwandelt |cRXP_WARN_danach|r << Mage
    >>|cRXP_WARN_Sammelt 100 Wut. Zieht die 2|r Murlocs|cRXP_ENEMY_ vor den Hütten, bewegt euch weg und haltet|r |T132316:0|t[Kniesehne] |cRXP_WARN_auf einem aktiv,während ihr den anderen tötet. Benutzt auch|r |T133581:0|t[Tasche mit Murmeln] |cRXP_WARN_auf den, den ihr tötet. Lauft weg und|r |cRXP_WARN_setzt den einen den ihr mit|r |T132316:0|t[Kniesehne] |cRXP_WARN_zurück gezogen habt zurück, nachdem ihr den anderern getötet habt|r << Warrior
    >>|cRXP_WARN_Zieht die 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_vor den Hütten, bewegt euch weg und konzentriert euch auf das Töten eines Murlocs. Benutzt|r |T136205:0|t[Entrinnen] |cRXP_WARN_sobald beide euch angreifen. Dies ist eine gute Gelegenheit,|r |T133581:0|t[Tasche mit Murmeln]|cRXP_WARN_zu benutzen. Lauft weg und setzt den Kampf zurück, sobald ihr einen getötet habt|r << Rogue
    >>|cRXP_WARN_Zieht die 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_vor den Hütten, bewegt euch weg und|r |T136183:0|t[Furcht] |cRXP_WARN_wirkt auf einen von ihnen ständig, und versucht, DoTs auf beide zu halten|r << Warlock
    >>|cRXP_WARN_Zieht die 2|r Murlocs|cRXP_ENEMY_ vor den Hütten, bewegt euch weg und tötet einen sehr schnell. Benutzt|r |T135954:0|t[Göttlicher Schutz] |cRXP_WARN_und eure Heilungen wie erforderlich. Dies ist eine gute Gelegenheit|r |T133581:0|t[Tasche mit Murmeln] zu benutzen|cRXP_WARN_. Lauft weg und|r |cRXP_WARN_setzt den einen den ihr kitet zurück nachdem ihr einen getötet habt|r << Paladin
    >>|cRXP_WARN_Denkt daran, während|r |T135954:0|t[Göttlicher Schutz] |cRXP_WARN_aktiv ist,könnt ihr nicht angreifen|r << Paladin
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden |cRXP_WARN_am Stamm der Bäume|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
step
	.goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >> Grinde bis 9
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
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
    #era
    #completewith next
    >>Tötet die |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>Tötet |cRXP_ENEMY_Prinzessin|r. Plündert sie für |cRXP_LOOT_Meesinghalsband|r
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird mit beiden ihrer |r |cRXP_ENEMY_Gefolgsschwein|r angreifen
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird auch eine|r |T132368:0|t[Sturmattacke] machen|cRXP_WARN_was viel Schaden verursacht|r
    >>Sammelt 100 Wut, bevor ihr |cRXP_ENEMY_Prinzessin|r angreift << Warrior
    >>|cRXP_WARN_Stellt sicher, dass |T136205:0|t[Entrinnen] |cRXP_WARN_bereit ist. Wenn ihr Schwierigkeiten habt, könnt ihr den Zaun mit Wurfwaffen nutzen, um das pathing auszunutzen und Zeit zu gewinnen|r << Rogue
    >>|cRXP_WARN_Seid bereit, einen|r |T134830:0|t[Geringer Heiltrank] zu benutzen
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Klickt hier für eine Videoanleitung |r << !Warrior
    .complete 88,1
    .mob Princess
step
    #completewith Level9Grind
    >>Tötet |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r]
    .use 1972>>Benutzt die |T134939:0|t[|cRXP_WARN_Westfall-Urkunde|cRXP_LOOT_] |rum die Quest zu starten|r
    >>|cRXP_WARN_Die|r |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r] |cRXP_WARN_ist ein sehr seltener Drop. Überspringt diesen Schritt, falls ihr sie nicht bekommt|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Furlbrows Urkunde annehmen
step
    #era
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
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >> Farmt bis 3400+/6500 XP
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .isQuestComplete 83
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> Schleifen until 4475+/6500xp
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step << !Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410
    >>|cRXP_WARN_BLEIBT AUF DER HAUPTSTRASSE UND VERMEIDET ALLE NAHEGELEGENEN MOBS AUF DEM WEG|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Ruhestein nach Goldhain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
    .accept 114 >> Akzeptiert die Quest Die Flucht
    .target William Pestle
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
    .accept 239 >> Akzeptiert die Quest Hilfe für die Weststromgarnison!
    .accept 59 >> Cloth und Leather Armor annehmen << Warlock
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >> Elmores Aufgabe annehmen
step
    .xp 10 >> Farmt bis Stufe 10
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Verkauft Müll und repariert
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .target Ilsa Corbin
    .target Lyria Du Lac
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .accept 1638 >> Akzeptiert die Quest Die Ausbildung eines Kriegers
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Geht im Gasthaus nach unten
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    .goto Elwynn Forest,44.485,66.268
    .target Remen Marcot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remen Marcot|r
    .accept 1685 >> Akzeptiert die Quest Gakins Beschwörung
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Geht nach oben
step << Priest
    .goto Elwynn Forest,43.283,65.721
    .target Priestess Josetta
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
    .accept 5635 >> Akzeptiert die Quest Verzweifeltes Gebet
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
    >>|cRXP_WARN_Zug|r |T132147:0|t[Beidhändigkeit] |cRXP_WARN_und|r |T132307:0|t[Sprinten] |cRXP_WARN_als Minimum. Erlernt keine zusätzlichen Fähigkeiten. Spart von Euch Geld|r
    .train 674 >> Erlernt |T132147:0|t[Beidhändigkeit]
    .train 2983 >> Erlernt |T132307:0|t[Sprinten]
step << Rogue
    #som
    .goto Elwynn Forest,41.7,65.9
    .money >0.3197
    .vendor >>Ihr habt nicht genug Geld, also kauft ein Stilett für eure Aus-Hand
step << Rogue
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Kauft und rüstet ein|r |T135641:0|t[Stilett] |cRXP_WARN_für die Aus-Hand von Euch aus|r
    .target Corina Steele
    .money >0.3152
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Reist zu den Weinbergen der Maclures
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Gebt die Quest Die Flucht ab
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .turnin 88,1 >> Gebt die Quest Prinzessin muss sterben! ab << Rogue/Hunter
    .turnin 88,2 >> Gebt die Quest Prinzessin muss sterben! ab << Warrior/Paladin
    .turnin 88,3 >> Gebt die Quest Prinzessin muss sterben! ab << !Rogue !Hunter !Warrior !Paladin
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> Reist zur Weststromgarnison
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .target Deputy Rainer
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
    #completewith next
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
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
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #completewith next
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
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
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert ihn für |cRXP_LOOT_Gewaltige Gnollklaue|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Wirkt |T136183:0|t[Furcht] |cRXP_WARN_auf |cRXP_ENEMY_Hogger|r kontinuierlich und benutzt von Euch reguläre DoTs, um ihn zu töten|r
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
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
step << Warrior
    .money >0.3129
    #era
    >>Tötet |cRXP_ENEMY_Riverpaw Schlaffi|r und |cRXP_ENEMY_Riverpaw Outrunners|r
    >>|cRXP_WARN_Farmt, bis ihr 31s 29c oder mehr an verkaufbaren Gegenständen/Geld habt. Das ist für Wurfwaffen-, 2h-Streitkolben- und 2h-Schwert-Training. Es ist auch dafür, bald eine Wurfwaffe der Stufe 3 zu kaufen und nach Sturmwind zu fliegen|r
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
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Lauf nach Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauer Brauenwirbel|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .target Salma Saldean
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
    .accept 22 >>Akzeptiert die Quest Pastete aus Geiferzahnleber
step
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .target Gryan Stoutmantle
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    #era
    .goto Westfall,56.421,47.623
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
step << Human
    .goto Westfall,57.002,47.169
    .target Quartermaster Lewis
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .accept 6181 >> Akzeptiert die Quest Eine eilige Nachricht
    .vendor >>|cRXP_WARN_verkauft Schrott|r
step << Rogue
    #era
    .money >0.3152
    +|cRXP_WARN_Farmt, bis ihr 31s 52c an verkaufbaren Gegenständen/Geld habt|r
step << Rogue
    #som
    .money >0.3197
    +Farmt, bis ihr 31s 97c an verkaufbaren Gegenständen/Geld habt
    --Not taking into account Shipment q turnin money so its insurance money
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
    #som
    >>Geht ins Gebäude
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Kauft die Wurfwaffe der Stufe 11 bei Thurman. Rüstet sie auf Stufe 11 aus
step << Rogue
    #era
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thurman Mullby|r
    .vendor >> |cRXP_WARN_Buy a|r |T135641:0|t[Ausbalancierter Wurfdolch]|cRXP_WARN_. Anlegen it|r
    .target Thurman Mullby
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    >>|cRXP_WARN_Wir wählen die|r |T132383:0|t[Explosiv Raketen] |cRXP_WARN_als Belohnung. Sie verursachen ordentlichen Schaden und können für "Split-Pulls" genutzt werden, was unglaublich nützlich ist|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Split-Pulling". Es ist ein kurzes Video und äußerst lehrreich|r
    .target Morgan Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Erlernt 1h Schwerter << Rogue
    .trainer >>Erlernt Stäbe << Warlock/Priest
    .trainer >>Erlernt 2h Schwerter << Warrior/Paladin
    >>|cRXP_WARN_Erlernt 2h-Schwerter, falls ihr genug Geld habt. Ihr müsst 20s für später sparen|r << Warrior
    >>|cRXP_WARN_Erlernt auch 1h-Schwerter, falls ihr noch Geld habt|r << Mage/Warlock
step << Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    .target Gunther Weller
    .vendor >> |cRXP_WARN_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_WARN_und rüstet ihn in Eurer Waffenhand aus|r
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1685 >> Gebt die Quest Gakins Beschwörung ab
    .target Gakin the Darkbinder
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
step << Warlock
    #softcore
    .deathskip >> Sterbt und erscheint beim Geistheiler wieder, indem ihr Aderlass benutzt und auf dem Freudenfeuer neben euch stehen bleibt
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Verlasst Sturmwind. Reist nach Goldhain
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    >>|cRXP_WARN_Wählt|r |T135145:0|t[|cRXP_FRIENDLY_Ausbalancierter Kampfstecken|r] |cRXP_WARN_als Eure Belohnung. Rüstet ihn aus|r
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .accept 147 >> Akzeptiert die Quest Menschenjagd
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    >>|cRXP_WARN_Wählt|r |T135145:0|t[|cRXP_FRIENDLY_Ausbalancierter Kampfstecken|r] |cRXP_WARN_als Eure Belohnung. Rüstet ihn aus|r
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .accept 147 >> Akzeptiert die Quest Menschenjagd
step << Warlock
    .xp 11 >> Grinde bis 11
step << Warlock
    #completewith LockVW
    .goto Elwynn Forest,71.0,80.8,150 >> Reist zu Brackbrunns Kürbisbeet
    >>|cRXP_WARN_Farmt unterwegs. Versucht, Eure Stabfertigkeit für später zu verbessern|r
step << Warlock
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
    #label LockVW
    .goto Elwynn Forest,71.10,80.66
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    .goto Elwynn Forest,79.457,68.789
    .target Sara Timberlain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .turnin 59 >> Gebt die Quest Rüstung aus Tuch und aus Leder ab
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    >>Farmt unterwegs. Stellt sicher, dass ihr mindestens 2 |T134075:0|t[Seelensplitter] |cRXP_WARN_mithilfe von|r |T136163:0|t[Seelendieb] |cRXP_WARN_habt|r
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step << Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_BLEIBT AUF DER HAUPTSTRASSE UND VERMEIDET ALLE NAHEGELEGENEN MOBS AUF DEM WEG|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
step << Warlock
    .isQuestComplete 147
    #completewith next
    .goto Elwynn Forest,42.105,65.927,100 >> Verlasst Sturmwind. Reist nach Goldhain
step << Warlock
    .isQuestComplete 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 147 >> Gebt die Quest Menschenjagd ab
step << Warlock
    #completewith TravelIF
    .isQuestTurnedIn 147
    .goto StormwindClassic,70.07,86.82
    .zone Stormwind City >> Lauf nach Sturmwind
    .zoneskip Elwynn Forest,1
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
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Gebt die Quest Weiter nach Sturmwind ab
    .target Osric Strang
    .accept 6261 >> Akzeptiert die Quest Dungar Longdrink
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Gebt die Quest Bartlebys Becher ab
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Trainiere deine Klassenfähigkeiten
    .turnin 5635 >> Gebt die Quest Verzweifeltes Gebet ab
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .train 13908 >> Erlernen |T135954:0|t[Verzweifeltes Gebet]
    .target High Priestess Laurena
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Gebt die Quest Elmores Aufgabe ab
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
step << Warrior
    #completewith next
    +|cRXP_WARN_Legt|r |T132363:0|t[Rüstung zerreißen] |cRXP_WARN_auf die Aktionsleiste von Euch und stellt sicher, dass ihr es ständig benutzt. Es ist effektiver als die Verwendung von|r |T132282:0|t[Heldenhafter Stoß]
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaita Deepforge|r
    .vendor >>|cRXP_WARN_Kauft eine|r |T134708:0|t[Spitzhacke]|cRXP_WARN_. Erlernt|r |T134708:0|t[Bergbau] |cRXP_WARN_sehr bald|r
    .target Kaita Deepforge
step
    #label TravelIF
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Geh zur Tiefeneisenbahn. Nehme sie in Richtung Ironforge
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_falls erforderlich, während ihr auf die Straßenbahn wartet|r
step
    >>|cRXP_WARN_Steigt in die Bahn ein, sobald sie ankommt. Steigt auf der anderen Seite aus und sucht auf der mittleren Plattform nach |cRXP_FRIENDLY_Monty|r|r
    >>|cRXP_WARN_Wirkt|r |T136221:0|t[Leerwandler beschwören] |cRXP_WARN_und|r |T135230:0|t[Gesundheitsstein herstellen] |cRXP_WARN_während ihr wartet|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_auf die|r |cRXP_ENEMY_Tiefenbahn-Ratten|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    .target Monty
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
step
    .zone Ironforge >>Betretet Eisenschmiede
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Erlernt Wurfwaffen
    .target +Bixi Wobblebonk
    .goto Ironforge,62.237,89.628
    .train 199 >> Erlernen 2h Streitkolben
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    .vendor >>|cRXP_WARN_Kauft eine|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_WARN_und legt ihn an|r
    .target Brenwyn Wintersteel
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

step << skip
    #sticky
    #som
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Lauft aus Eisenschmiede
    >>Rüstet von Euch level 11 thrown aus << Warrior
step << skip
    #sticky
    #era
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Lauft aus Eisenschmiede
    >>Rüstet von Euch level 3 thrown aus << Warrior

step
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.251,37.592,150 >> Verlasst Eisenschmiede
step
    #completewith next
    .goto Dun Morogh,46.005,48.637,50 >> Lauf nach Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Akzeptiert die Quest Operation Rekombobulationsgerät
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.578,57.732,100,0
    .goto Dun Morogh,36.654,51.906,40,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Wartet bis |cRXP_ENEMY_Eisbart der Alte|r aus der Höhle patrouilliert. Sobald er aus der Höhle patrouilliert, könnt ihr hineingehen und|r |cRXP_PICK_MacGranns Fleisch-Spind|r plündern
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Wirkt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Mage
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Warlock
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
step
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |cRXP_LOOT_Gyromechanische Getriebeteile|r und |cRXP_LOOT_Restabilisationszahnrad|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Betretet die Höhle der Frostmane
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Kopfjäger der Frostmane|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    >>|cRXP_WARN_Fallt herunter zu diesem Ort, um die Höhle der Frostmane zu erkunden. Falls Mobs darunter sind, cleared den Bereich Normal und fallt NICHT herunter|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Tötet |cRXP_ENEMY_Kopfjäger der Frostmane|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #completewith next
    .goto Dun Morogh,45.846,49.365,150 >> Lauf nach Kharanos
step
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Gebt die Quest Höhle der Frostmähnen ab
    .accept 291 >> Akzeptiert die Quest Die Berichte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .target Rudra Amberstill
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
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
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
step << !Warlock
    .xp 10+6350 >>Farmt bis 6350+/7600
step << Warlock
    .xp 12
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r und |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r << !Priest !Warlock !Mage
    .vendor >> |cRXP_BUY_Buy 20|r |T132815:0|t[Eiskalt Milk] << Priest/Warlock/Mage
    .target Kazan Mogosh
step << !Warlock
    .xp 11
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
    .goto Dun Morogh,84.4,31.1,25 >> Reist nach Loch Modan
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Alliance
#name 11-13 Loch Modan
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Human
#next 13-15 Westfall

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
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab
    .target Mountaineer Stormpike
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    >>|cRXP_WARN_Nehmt Sturmlanze's Order noch nicht an|r
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab
    .target Mountaineer Stormpike
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
    .vendor 6734 >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot]|cRXP_BUY_. Versucht, etwa 20 zu haben|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_. Versucht, etwa 10|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und 20|r |T132815:0|t[Eiskalte Milch] << !Warrior !Rogue
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
    >>|cRXP_WARN_Kauft einen|r |T135237:0|t[Feuerstein und Zunder] |cRXP_WARN_zusammen mit 2|r |T135435:0|t[Simple Holz]|cRXP_WARN_. Kauft irgendeinen|r|T133634:0|t[Kleiner brauner Beutel] |cRXP_WARN_wenn nötig|r
    .collect 4470,2 --Simple Wood (2)
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
step << Warlock
    #completewith TroggT
    .money >0.7579
    .goto Loch Modan,32.7,76.5,0
    +Farmt |cRXP_ENEMY_Troggs|r bis ihr 75s 79c Verkaufsgerümpel/Geld habt
step << Warlock
    #era
    .goto Loch Modan,32.7,76.5,0
    .xp 13+9600 >>Grinded bis 9600+/11400xp
step << Warlock
    #som--xpgate
    .xp 14-2520 >> Farmt, bis ihr 8880 XP in Stufe 13 habt
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
step << Warlock
    .xp 14 >> Farmt bis Stufe 14
step
    #completewith next
    .hs >> Ruhestein nach Sturmwind
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Kauft einen|r |T135468:0|t[Glimmender Zauberstab]|cRXP_BUY_. Legt ihn an, wenn ihr Level 15 seid|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
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
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Spackle Dornbeere|r
    .vendor >> |cRXP_BUY_Kauft|r |T133738:0|t[Zauberfoliant des Schattenverzehrens (Rang 1)] |cRXP_BUY_und|r |T133738:0|t[Zauberfoliant der Opferung (Rang 1)] |cRXP_BUY_falls ihr es euch leisten könnt|r
    .target Spackle Thornberry
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Reist zum Magierturm
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1641 >> Gebt die Quest Der Foliant der Offenbarung ab
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    .use 6775>>|cRXP_WARN_Benutzt |T133739:0|t[|cRXP_LOOT_Der Foliant der Offenbarung|r] um die Quest zu starten|r
    .accept 1642 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1643 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step
    .goto StormwindClassic,58.091,16.552
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Gebt die Quest Der Foliant der Offenbarung ab
    .target Stephanie Turner
    .accept 1644 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1644 >> Gebt die Quest Der Foliant der Offenbarung ab
    --.accept 1780 >> Accept The Tome of Divinity
step
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .turnin 6261 >> Gebt die Quest Dungar Longdrink ab
    .target Dungar Longdrink
    .accept 6285 >> Akzeptiert die Quest Zurück zu Lewis
step
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
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
]])
