if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 13-15 Silberwald
#version 1
#group RestedXP Überlebens-Guide (H)
#subgroup RXP Überlebens-Guide 1-20
#next 15-19 Das Brachland

step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_Falls ihr|r |cRXP_FRIENDLY_Astor|r seht|cRXP_WARN_, sprecht mit ihm und tötet ihn. Plündert ihn für den Brief. Er patrouilliert die Straße zwischen Brill und dem Grabmal|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>Tötet |cRXP_ENEMY_Worgen|r während ihr zu |cRXP_FRIENDLY_Erland|r reist. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erland|r
    >>|cRXP_WARN_Stellt sicher, dass eure Gesundheit und Mana voll sind, bevor ihr diese Quest beginnt!|r
    .accept 435 >>Akzeptiert die Quest Eskorte für Erland
    .target Deathstalker Erland
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Worgen|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>Eskortiert |cRXP_FRIENDLY_Erland|r sicher zu |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_WARN_Passt auf!|r |cRXP_ENEMY_Worgs|r |cRXP_WARN_können übereinander spawnen, esst und trinkt, wann immer ihr könnt|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Gebt die Quest Eskorte für Erland ab
    .accept 429 >>Akzeptiert die Quest Wilde Herzen
    .accept 449 >>Akzeptiert die Quest Der Bericht der Todespirscher
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>Tötet |cRXP_ENEMY_Worgen|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >> Lauf nach Das Grabmal
    .subzoneskip 228
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Akzeptiert die Quest Wertbeweis
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihm|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allister|r und |cRXP_FRIENDLY_Podrig|r
    .accept 477 >>Akzeptiert die Quest Grenzübergänge
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>Akzeptiert die Quest Nachschub für das Grabmal
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Allister|r
    .accept 477 >>Akzeptiert die Quest Grenzübergänge
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Betretet die Gruft
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadrec|r in der Gruft
    .turnin 449 >>Gebt die Quest Der Bericht der Todespirscher ab
    .accept 3221 >>Akzeptiert die Quest Sprecht mit Renferrel
    .accept 437 >>Akzeptiert die Quest Das Todesfeld
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Gebt die Quest Wilde Herzen ab
    .turnin 445 >>Gebt die Quest Lieferung in den Silberwald ab
    .turnin 3221 >>Gebt die Quest Sprecht mit Renferrel ab
    .accept 1359 >>Akzeptiert die Quest Zinges Lieferung
    .accept 447 >>Akzeptiert die Quest Rezept für den Tod
    .accept 430 >>Akzeptiert die Quest Rückkehr zu Quinn
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>Tötet |cRXP_ENEMY_Moonrage-Weißskalp|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Gebt die Quest Wertbeweis ab
    .accept 422 >>Akzeptiert die Quest Arugals Torheit
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >> Reist zu Valgans Feld
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>Betretet das Haus und geht in den zweiten Stock. Plündert die |cRXP_PICK_Staubige Zauberbücher|r vom Boden
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80 >> Reist zum Ivarfeld
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quinn Yorick|r im zweiten Stockwerk des Hauses
    .turnin 430 >>Gebt die Quest Rückkehr zu Quinn ab
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r außerhalb
    .accept 425 >>Akzeptiert die Quest Ivar der Verfaulte
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>Tötet |cRXP_ENEMY_Ivar der Verfaulte|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Passt auf! Löscht den gesamten vorderen Bereich der Scheune und zieht die|r |cRXP_ENEMY_Ravenclaw-Sklaven|r |cRXP_WARN_draußen einzeln heraus.|r
    >>|cRXP_WARN_Ivar ist durch zwei|r |cRXP_ENEMY_Sklave von Rabenklaue|r |cRXP_WARN_in der Scheune geschützt. Ihr könnt eine von ihnen solo pullen, wenn sie nach vorne patrouilliert|r
    >>|cRXP_WARN_Sie sind immun gegen Furcht!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Gebt die Quest Ivar der Verfaulte ab
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Passt auf! Es könnte ein|r |cRXP_ENEMY_Sohn des Arugal|r |cRXP_WARN_im Gebiet sein! Das ist ein Elitegegner der Stufe 25. Haltet euch von ihn fern!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Tötet |cRXP_ENEMY_Bären|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>Tötet |cRXP_ENEMY_Rotpelzige Gnolle|r rund um das Todesfeld, bis |cRXP_ENEMY_Nachtseele|r erscheint. Tötet sie und plündert ihre |cRXP_LOOT_Essenz|r
    >>|cRXP_WARN_Sie sind immun gegen Furcht!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Tötet |cRXP_ENEMY_Bären|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Spinnen|r. Plündert sie für ihr |cRXP_LOOT_Blut|r
    >>|cRXP_WARN_Passt auf, falls|r |cRXP_ENEMY_Krethis Schattennetz|r |cRXP_WARN_aktiv ist - SIE WIRD EUCH TÖTEN! Sie hat einen Schild mit 130 Schaden mit 15 Sekunden Abklingzeit und eine 110 Schaden sofortige Schockfähigkeit|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Killian|r
    .vendor >> Verkauft Müll
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>Tötet |cRXP_ENEMY_Spinnen|r. Plündert sie für ihr |cRXP_LOOT_Blut|r
    >>|cRXP_WARN_Seid vorsichtig wenn|r |cRXP_ENEMY_Krethis Schattennetz|r |cRXP_WARN_aktiv ist, WIRD SIE EUCH TÖTEN! Sie hat einen 130er Schadensschild mit 15s Abklingzeit und eine 110er Sofortschock-Fähigkeit|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>Beenden das töten von |cRXP_ENEMY_Bären|r. Plündert sie für ihre |cRXP_LOOT_Herzen|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> Reist zurück zum Grabmal
    .subzoneskip 228
step
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Gebt die Quest Arugals Torheit ab
    .accept 423 >> Akzeptiert die Quest Arugals Torheit
    .target Dalar Dawnweaver
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Betretet die Gruft
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadrec|r in der Gruft
    .turnin 437 >> Gebt die Quest Das Todesfeld ab
    .accept 438 >> Akzeptiert die Quest Die verfallene Fähre
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwyn|r
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r
    .vendor >> Verkauft Müll
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .collect 1179,20,421,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Andrea|r
    .vendor >> Kauft |T132491:0|t[|cRXP_FRIENDLY_Weisengürtel|r] von ihr, falls er oben ist
    .target Andrea Boynton
    .money <0.1400
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nadia|r
    >>Kauft einen |T135490:0|t[|cRXP_FRIENDLY_Feiner Langbogen|r] von ihr, falls er oben ist
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
step << Hunter/Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Kauft |T132539:0|t[|cRXP_FRIENDLY_Agile Stiefel|r] von ihr, falls sie verfügbar sind
    .target Alexandre Lefevre
    .money <0.2633
step << Shaman/Warrior/Druid
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Kauft |T132539:0|t[|cRXP_FRIENDLY_Agile Stiefel|r] oder |T132537:0|t[|cRXP_FRIENDLY_Standfeste Stiefel|r] von ihr, falls eines von ihnen verfügbar ist
    .target Alexandre Lefevre
    .money <0.2000
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Legt den|r |T132491:0|t[|cRXP_FRIENDLY_Weisengürtel|r] an
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Hunter
    #optional
    #completewith Shackles
    +|cRXP_WARN_Legt den|r |T135490:0|t[|cRXP_FRIENDLY_Feiner Langbogen|r] an
    .use 11304
    .itemcount 11304,1
    .xp <14,1
    .equip 18,11304
step << Hunter/Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Legt|r |T132539:0|t[|cRXP_FRIENDLY_Agile Stiefel|r] an
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Legt|r |T132539:0|t[|cRXP_FRIENDLY_Agile Stiefel|r] an
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Legt die|r |T132537:0|t[|cRXP_FRIENDLY_Standfeste Stiefel|r] an
    .use 4789
    .itemcount 4789,1
    .equip 8,4789
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >> Reist den Hügel hinunter
step
    #completewith DecrepitFerry
    +|cRXP_WARN_Passt auf! Es könnte ein|r |cRXP_ENEMY_Sohn des Arugal|r |cRXP_WARN_im Gebiet sein! Das ist ein Elitegegner der Stufe 25. Haltet euch von ihn fern!|r
    .unitscan Son of Arugal
step
    #label Shackles
    #loop
	.goto Silverpine Forest,43.83,31.00,0
	.goto Silverpine Forest,44.22,31.55,50,0
	.goto Silverpine Forest,43.51,32.38,50,0
	.goto Silverpine Forest,42.61,31.12,50,0
	.goto Silverpine Forest,41.28,30.25,50,0
	.goto Silverpine Forest,39.70,30.24,50,0
	.goto Silverpine Forest,38.96,29.15,50,0
	.goto Silverpine Forest,38.28,27.10,50,0
	.goto Silverpine Forest,37.60,24.16,50,0
	.goto Silverpine Forest,38.07,23.13,50,0
	.goto Silverpine Forest,38.56,21.93,50,0
	.goto Silverpine Forest,39.73,23.26,50,0
	.goto Silverpine Forest,41.49,23.51,50,0
	.goto Silverpine Forest,41.14,25.50,50,0
	.goto Silverpine Forest,41.17,28.26,50,0
	.goto Silverpine Forest,42.01,29.27,50,0
	.goto Silverpine Forest,43.83,31.00,50,0
    >>Tötet |cRXP_ENEMY_Moonrage-Nimmersatt|r und |cRXP_ENEMY_Moonrage-Dunkelseele|r. Plündert sie für |cRXP_LOOT_Dunkelseelenfessel|r
    >>|cRXP_WARN_Passt auf!|r |cRXP_ENEMY_Moonrage-Dunkelseele|r |cRXP_WARN_werden rasend, wenn ihre Gesundheit unter 25% fällt. Tötet sie schnell, wenn sie wenig Leben haben.|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>Klickt das |cRXP_PICK_Boot|r am Rand der Docks
    >>|cRXP_WARN_Passt auf!|r |cRXP_ENEMY_Hands of Ravenclaw|r |cRXP_WARN_sind bis Stufe 16 und haben eine 5 Sekunden Nahkampfbereichs-Betäubungsfähigkeit|r
    .turnin 438 >>Gebt die Quest Die verfallene Fähre ab
    .accept 439 >>Akzeptiert die Quest Auf den Spuren der Moderfelle
step
    .goto Silverpine Forest,49.89,60.33
    >>Klickt die |cRXP_PICK_Kiste|r im Lager
    >>|cRXP_WARN_Passt auf! Diese Mobs wirken|r |T135846:0|t[Frostblitz] |cRXP_WARN_und fliehen bei niedriger Gesundheit. Zieht sie zurück und tötet sie einzeln, bis ihr sicher auf die Kiste klicken könnt.|r
    .turnin 477 >>Gebt die Quest Grenzübergänge ab
    .accept 478 >>Akzeptiert die Quest Karten und Runen
    .mob Dalaran Apprentice
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> Reist zurück zum Grabmal
    .subzoneskip 228
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allister|r und |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Gebt die Quest Karten und Runen ab
    .accept 481 >>Akzeptiert die Quest Dalars Analyse
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Gebt die Quest Arugals Torheit ab
    .turnin 481 >>Gebt die Quest Dalars Analyse ab
    .accept 482 >>Akzeptiert die Quest Dalaran Absichten
    .accept 424 >>Akzeptiert die Quest Arugals Torheit
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allister|r und |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Gebt die Quest Karten und Runen ab
    .accept 481 >>Akzeptiert die Quest Dalars Analyse
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Gebt die Quest Arugals Torheit ab
    .turnin 481 >>Gebt die Quest Dalars Analyse ab
    .accept 482 >>Akzeptiert die Quest Dalaran Absichten
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Gebt die Quest Dalaran Absichten ab
    .target Shadow Priest Allister
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Allister|r
    .accept 479 >>Akzeptiert die Quest Nachforschungen in Mühlenbern
    .target Shadow Priest Allister
    .group
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Gebt die Quest Dalaran Absichten ab
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Betretet die Gruft
step
    #label RotHideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hadrec|r in der Gruft
    .turnin 439 >>Gebt die Quest Auf den Spuren der Moderfelle ab
    .accept 440 >>Akzeptiert die Quest Der gravierte Läuten
    .target High Executor Hadrec
step << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Gebt die Quest Nachschub für das Grabmal ab
    .accept 6323 >>Akzeptiert die Quest Flug nach Unterstadt
    .target Karos Razok
step
    #completewith ZingeAndFaranell
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Erlernt die Flugroute am Grabmal << !Undead
    .fly Undercity >> Fliegt nach Unterstadt
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Gebt die Quest Flug nach Unterstadt ab
    .accept 6322 >> Akzeptiert die Quest Michael Garrett
    .target Gordon Wendham
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith PyrewoodAmbush
    +Rüstet den |T135147:0|t[Knorriger Stab] aus
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Kauft|r |T132394:0|t[Hakenaxt] |cRXP_BUY_von ihm|r
    .collect 2025,1,479,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith PyrewoodAmbush
    +Rüstet den |T132394:0|t[Hakenaxt] aus
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Kauft|r |T133046:0|t[Felshammer] |cRXP_BUY_von ihm|r
    .collect 2026,1,479,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Legt den|r |T133046:0|t[Felshammer] an |cRXP_WARN_, wenn ihr Stufe 16 seid|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprechen mit|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Kauft einen|r |T135147:0|t[Knorriger Stab] |cRXP_BUY_von ihm|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Legt den|r |T135147:0|t[Knorriger Stab] an
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Kauft|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihm.|r
    .collect 2027,1,479,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #completewith ZingeAndFaranell
    .goto Undercity,47.20,59.69,0
    .goto Undercity,47.20,59.69,12,0
    .goto Undercity,43.55,68.11,12,0
    .goto Undercity,45.20,71.67,12 >>Reisen toward |cRXP_FRIENDLY_Zinge|r und |cRXP_FRIENDLY_Faranell|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faranell|r und |cRXP_FRIENDLY_Zinge|r im Apothekarium
    .turnin 447 >>Gebt die Quest Rezept für den Tod ab
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Gebt die Quest Zinges Lieferung ab
    .accept 1358 >>Akzeptiert die Quest Probe für Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .solo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faranell|r und |cRXP_FRIENDLY_Zinge|r im Apothekarium
    .turnin 447 >>Gebt die Quest Rezept für den Tod ab
    .accept 450 >>Akzeptiert die Quest Rezept für den Tod
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Gebt die Quest Zinges Lieferung ab
    .accept 1358 >>Akzeptiert die Quest Probe für Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .group
step
    #optional
    #label ZingeAndFaranell
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Trainiere deine Klassenfähigkeiten
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Mage
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Trainiere deine Klassenfähigkeiten
    .target Anastasia Hartwell
    .xp <16,1
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Trainiere deine Klassenfähigkeiten
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Trainiere deine Klassenfähigkeiten
    .target Carolyn Ward
    .xp <16,1
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Trainiere deine Klassenfähigkeiten
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
    .group
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Trainiere deine Klassenfähigkeiten
    .target Richard Kerwin
    .xp <16,1
    .group
step << Priest/Mage/Warlock
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zane|r|cRXP_BUY_. Kauft|r |T133718:0|t[Glimmender Zauberstab] |cRXP_BUY_von ihm|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
 step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Gebt die Quest Die Todespirscher ab
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Gebt die Quest Die Todespirscher ab
    .accept 1899 >>Akzeptiert die Quest Die Todespirscher
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>Plündert |cRXP_PICK_Andron's Bücherregal|r hinter |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Gebt die Quest Die Todespirscher ab
    .accept 1978 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Gebt die Quest Die Todespirscher ab
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Mary|r
    .train 3276 >> Erlernt |T133688:0|t[Schwerer Leinenverband]
    .target Mary Edras
    .skill firstaid,<40,1
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Mary|r
    .train 3274 >> Erlernt Geselle für Erste Hilfe
    .target Mary Edras
    .skill firstaid,<50,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Angela|r
    .train 1160 >> Trainiere deine Klassenfähigkeiten
    .target Angela Curthas
    .xp <14,1
    .xp >16,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Angela|r
    .train 285 >> Trainiere deine Klassenfähigkeiten
    .target Angela Curthas
    .xp <16,1
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lazarus|r
	.train 6074 >> Trainiere deine Klassenfähigkeiten
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .group
step << Priest
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lazarus|r
	.train 8102 >> Trainiere deine Klassenfähigkeiten
    .target Father Lazarus
    .xp <16,1
    .group
step << Undead Rogue
    #optional
    #completewith GrimsonthePale
    .abandon 1886 >>Brecht die Quest Die Todespirscher ab, es gibt keine Gelegenheit mehr, sie abzuschließen
    .isOnQuest 1886
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Akzeptiert die Quest Die Macht zu Zerstören...
    .target Varimathras
    .dungeon RFC
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Gebt die Quest Michael Garrett ab
    .accept 6324 >>Akzeptiert die Quest Zurückkehren zu Podrig
    .target Michael Garrett
step
    #completewith GrimsonthePale
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fly The Supulcher >> Fliege nach Das Grabmal
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .group
step << Undead
    #completewith next
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fly The Supulcher >> Fliege nach Das Grabmal
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .solo
step << Undead
    .goto Silverpine Forest,43.43,41.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Podrig|r
    .turnin 6324 >>Gebt die Quest Zurückkehren zu Podrig ab
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .target Edwin Harly
    .group
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >> Betretet die Mine
    .group
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>Tötet |cRXP_ENEMY_Grimson der Blasse|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
    .group 2
step << skip
    .goto Silverpine Forest,58.12,45.50
    .goto Silverpine Forest,44.29,41.09,30 >>|cRXP_WARN_Springt auf das hölzerne Rad. Überspringt, indem ihr euch abmeldet und wieder anmeldet. Falls ihr das nicht schafft, lauft zurück zum Grabmal|r
    .link https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .turnin 424 >>Gebt die Quest Arugals Torheit ab
    .accept 99 >> Arugals Torheit
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .group
step
    #completewith next
    .goto Silverpine Forest,57.90,63.10,120,0
    .subzone 233 >> Lauf in Richtung Ambermill
    .group
step
    #loop
	.goto Silverpine Forest,57.12,63.39,0
	.goto Silverpine Forest,57.91,62.48,50,0
	.goto Silverpine Forest,59.10,61.88,50,0
	.goto Silverpine Forest,59.79,63.08,50,0
	.goto Silverpine Forest,60.79,62.55,50,0
	.goto Silverpine Forest,61.98,62.56,50,0
	.goto Silverpine Forest,61.00,64.89,50,0
	.goto Silverpine Forest,60.10,65.93,50,0
	.goto Silverpine Forest,59.02,67.10,50,0
	.goto Silverpine Forest,57.56,67.57,50,0
	.goto Silverpine Forest,57.62,65.17,50,0
	.goto Silverpine Forest,57.12,63.39,50,0
    >>Tötet |cRXP_ENEMY_Dalaran Protectors|r und |cRXP_ENEMY_Dalaran Mages|r. Plündert sie für |cRXP_LOOT_Pendants|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Mage
    .mob Dalaran Protector
    .group 2
step
    #completewith BerardsJournal
    .goto Silverpine Forest,48.20,71.94,50 >> Reist nach Lohenscheit
    .isOnQuest 99
    .group
step
    #completewith PyrewoodAmbush
    >>Tötet die |cRXP_ENEMY_Pyrewood|r mobs. Plündert sie für |cRXP_LOOT_Shackles|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith BerardsJournal
    .goto Silverpine Forest,43.97,73.23,10 >>Betretet die Taverne und geht zum zweiten Stock
    .isOnQuest 450
    .group
step
    #label BerardsJournal
    .goto Silverpine Forest,42.98,73.22
    >>Tötet |cRXP_ENEMY_Apotheker Berard|r. Beute seinen |cRXP_LOOT_Buch|r im Bücherschrank
    .complete 450,1 --Berard's Journal (1)
    .mob Apothecary Berard
    .isOnQuest 450
    .group 4
step
    #completewith next
    .goto Silverpine Forest,45.89,74.17,10 >> Betretet die Kapelle
    .isOnQuest 99
    .group
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faerleia|r
    .accept 452 >>Akzeptiert die Quest Hinterhalt in Lohenscheit
    .mob Deathstalker Faerleia
    .isOnQuest 99
    .group 4
step
    #label PyrewoodAmbush
    .goto Silverpine Forest,46.48,74.10
    >>Tötet die |cRXP_ENEMY_Councilman|r und |cRXP_ENEMY_Lord Mayor Morrison|r that show up
    .complete 452,1 --Aid Faerleia in killing the Pyrewood Council
    .mob Councilman Smithers
    .mob Councilman Hendricks
    .mob Councilman Thatcher
    .mob Councilman Wilhelm
    .mob Councilman Hartin
    .mob Councilman Higarth
    .mob Councilman Brunswick
    .mob Councilman Cooper
    .mob Lord Mayor Morrison
    .isOnQuest 452
    .group 4
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faerleia|r
    .turnin 452 >>Gebt die Quest Hinterhalt in Lohenscheit ab
    .mob Deathstalker Faerleia
    .isQuestComplete 452
    .group
step
    #loop
    .goto Silverpine Forest,45.48,73.43,0
    .goto Silverpine Forest,45.66,74.90,40,0
    .goto Silverpine Forest,44.11,73.50,40,0
    .goto Silverpine Forest,45.41,72.42,40,0
    .goto Silverpine Forest,46.61,73.00,40,0
    .goto Silverpine Forest,45.48,73.43,40,0
    >>Tötet alle |cRXP_ENEMY_Pyrewood|r-Gegner. Beute sie für ihre |cRXP_LOOT_Fesseln|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith AmbermillTurnin
    .goto Silverpine Forest,45.51,41.26,100 >> Reist zurück zum Grabmal
    .subzoneskip 228
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dalar|r
    .turnin 99 >> Gebt die Quest Arugals Torheit ab
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .isQuestComplete 99
    .group
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Renferrel|r
    .turnin 450 >> Gebt die Quest Rezept für den Tod ab
    .target Apothecary Renferrel
    .isQuestComplete 450
    .group
step
    #label AmbermillTurnin
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Allister|r
    .turnin 479 >>Gebt die Quest Nachforschungen in Mühlenbern ab
    .target Shadow Priest Allister
    .isQuestComplete 479
    .group
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nadia|r
    >>Kauft einen |T135490:0|t[|cRXP_FRIENDLY_Feiner Langbogen|r] von ihr falls es verfügbar ist
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
    .group
step << Druid
    #completewith next
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
    #optional
    .abandon 424 >> Brecht die Quest Arugals Torheit ab
    .isOnQuest 424
step
    #optional
    .abandon 479 >> Brecht die Quest Nachforschungen in Mühlenbern ab
    .isOnQuest 479
step
    #optional
    .abandon 99 >> Brecht die Quest Arugals Torheit ab
    .isOnQuest 99
step
    #optional
    .abandon 450 >> Brecht die Quest Rezept für den Tod ab
    .isOnQuest 450
step
    #optional
    .abandon 452 >> Brecht die Quest Hinterhalt in Lohenscheit ab
    .isOnQuest 452
step << Tauren/Shaman/Hunter
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Tauren !Shaman !Hunter
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .use 6948
    .bindlocation 362,1
    .subzoneskip 362

    ]])
