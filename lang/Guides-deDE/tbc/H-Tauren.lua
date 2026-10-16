if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 1-6 Mulgore
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Tauren
#next 6-10 Mulgore


step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_Ihr habt einen Leitfaden für Tauren ausgewählt. Diese Zone wird für euch NICHT gut funktionieren, da eine der Hauptquests fehlt, die nur für Tauren verfügbar ist. Es wird empfohlen, dass ihr die gleiche Startzone wählt, in der ihr startet|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r
    .accept 747 >>Akzeptiert die Quest Die Jagd beginnt
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Häuptling Hawkwind|r
    .accept 752 >>Akzeptiert die Quest Eine bescheidene Bitte
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie, bis ihr 10 Kupfer an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers]
    .target Meela Dawnstrider
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Fleisch|r und |cRXP_LOOT_Ebenenschreiter-Feder|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großmutter Hawkwind|r
    .turnin 752 >>Gebt die Quest Eine bescheidene Bitte ab
    .accept 753 >>Akzeptiert die Quest Eine bescheidene Bitte
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>Plündert die |cRXP_LOOT_Wasserkanne|r am Brunnen hinter |cRXP_FRIENDLY_Hawkwind|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto Mulgore,47.36,83.05,0
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05,50,0
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Fleisch|r und |cRXP_LOOT_Ebenenschreiter-Feder|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>Gebt die Quest Die Jagd beginnt ab << Druid
    .turnin 747 >>Gebt die Quest Die Jagd beginnt ab << !Druid
    .accept 3091 >>Akzeptiert die Quest Einfache Notiz << Warrior
    .accept 3092 >>Akzeptiert die Quest Geätzte Notiz << Hunter
    .accept 3093 >>Akzeptiert die Quest Mit Runen beschriftete Notiz << Shaman
    .accept 3094 >>Akzeptiert die Quest Tiefgrüne Notiz << Druid
    .accept 750 >>Akzeptiert die Quest Die Jagd geht weiter
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Leichtes Geschoss] |cRXP_BUY_von ihr|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
    .isQuestAvailable 750
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Häuptling Hawkwind|r
    .turnin 753 >>Gebt die Quest Eine bescheidene Bitte ab
    .accept 755 >>Akzeptiert die Quest Riten der Erdenmutter
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_. Kauft einen|r |T135139:0|t[Kurzstab] |cRXP_BUY_von ihm|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak Keenblade
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +|cRXP_WARN_Legt den|r |T135139:0|t[Kurzstab] an
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bergpumas|r. Plündert sie für ihre |cRXP_LOOT_Bergpumapelze|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seher Graytongue|r
    >>|cRXP_WARN_Farmt Mobs auf dem Weg|r
    .turnin 755 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 757 >>Akzeptiert die Quest Ritus der Kraft
    .target Seer Graytongue
step
    #loop
    .goto Mulgore,44.60,90.86,0
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86,50,0
    >>Tötet |cRXP_ENEMY_Bergpumas|r. Plündert sie für ihre |cRXP_LOOT_Bergpumapelze|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #xprate <1.5
    #loop
	.goto Mulgore,45.56,87.95,0
	.goto Mulgore,45.56,87.95,60,0
	.goto Mulgore,46.92,87.84,60,0
	.goto Mulgore,48.67,86.83,60,0
	.goto Mulgore,50.65,85.87,60,0
	.goto Mulgore,51.01,83.71,60,0
	.goto Mulgore,52.06,81.53,60,0
	.goto Mulgore,51.87,79.58,60,0
	.goto Mulgore,51.67,77.39,60,0
	.goto Mulgore,51.95,75.16,60,0
	.goto Mulgore,50.32,76.33,60,0
	.goto Mulgore,48.85,75.82,60,0
	.goto Mulgore,47.41,75.30,60,0
	.goto Mulgore,46.80,78.21,60,0
	.goto Mulgore,45.84,80.41,60,0
	.goto Mulgore,45.03,82.15,60,0
	.goto Mulgore,44.09,83.89,60,0
	.goto Mulgore,43.90,86.08,60,0
    .xp 3+1150 >> Farmt bis 1150+/1400 XP
    .mob Plainstrider
step
    #xprate >1.49
    #loop
	.goto Mulgore,45.56,87.95,0
	.goto Mulgore,45.56,87.95,60,0
	.goto Mulgore,46.92,87.84,60,0
	.goto Mulgore,48.67,86.83,60,0
	.goto Mulgore,50.65,85.87,60,0
	.goto Mulgore,51.01,83.71,60,0
	.goto Mulgore,52.06,81.53,60,0
	.goto Mulgore,51.87,79.58,60,0
	.goto Mulgore,51.67,77.39,60,0
	.goto Mulgore,51.95,75.16,60,0
	.goto Mulgore,50.32,76.33,60,0
	.goto Mulgore,48.85,75.82,60,0
	.goto Mulgore,47.41,75.30,60,0
	.goto Mulgore,46.80,78.21,60,0
	.goto Mulgore,45.84,80.41,60,0
	.goto Mulgore,45.03,82.15,60,0
	.goto Mulgore,44.09,83.89,60,0
	.goto Mulgore,43.90,86.08,60,0
    .xp 3+1025 >> Farmt bis 1025+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Farmt |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie, bis ihr einen Wert von 2 Silber an Verkaufsgegenständen habt|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Farmt |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie, bis ihr einen Wert von 1 Silber an Verkaufsgegenständen habt|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>Gebt die Quest Die Jagd geht weiter ab
    .accept 780 >>Akzeptiert die Quest Die Kampfeber
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
    .isQuestAvailable 3376
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Akzeptiert die Quest Tötet Spitzhauer!
    .target Brave Windfeather
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 100 >>Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >>Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 772 >>Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Gebt die Quest Geätzte Notiz ab
    .train 1978 >>Erlernt |T132204:0|t[Schlangengift]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Gebt die Quest Tiefgrüne Notiz ab
    .train 8921 >> Erlernt |T136096:0|t[Mondfeuer]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ravenfeather|r
    .accept 1519 >>Akzeptiert die Quest Ruf der Erde
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Gebt die Quest Mit Runen beschriftete Notiz ab
    .train 8042 >>Erlernt |T136026:0|t[Erdschock]
    .target Meela Dawnstrider
step
    #loop
    .goto Mulgore,55.99,85.46,0
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46,50,0
    >>Tötet |cRXP_ENEMY_Kampfeber|r. Plündert sie für ihre |cRXP_LOOT_Kampfeberflanke|r und |cRXP_LOOT_Kampfeberschnauze|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto Mulgore,59.67,83.33,30 >>Reist durch die Höhle
step
    #completewith DirtyMap
    >>Tötet |cRXP_ENEMY_Stacheleber der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Tötet |cRXP_ENEMY_Schamane der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Ritualsalbe|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>Tötet |cRXP_ENEMY_Häuptling Spitzhauer Dornenmantel|r in der großen Hütte. Plündert seinen |cRXP_LOOT_Kopf|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto Mulgore,63.24,82.70,40 >>BETRETET die Höhle
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>Plündert die |T134269:0|t[|cRXP_LOOT_Schmutzbefleckte Karte|r] vom Boden. Benutzt es, um die Quest zu starten
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Akzeptiert die Quest Angriff auf Camp Narache
    .use 4851
step << Shaman
    #completewith next
    >>Tötet |cRXP_ENEMY_Schamane der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Ritualsalbe|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    #loop
    .goto Mulgore,63.93,78.34,0
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34,40,0
    >>Tötet |cRXP_ENEMY_Stacheleber der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto Mulgore,63.86,80.14,0
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14,40,0
    >>Tötet |cRXP_ENEMY_Schamane der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Ritualsalbe|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #xprate <1.5
    #loop
    .goto Mulgore,62.27,82.03,0
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03,40,0
    .xp 5+870 >> Farmt bis 880+/2800 XP << !Shaman
    .xp 5 >> Farmt bis Stufe 5 << Shaman
    --1930
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Camp Narache
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r und |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r und |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>Gebt die Quest Die Kampfeber ab
    .target +Grull Hawkwind
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>Gebt die Quest Tötet Spitzhauer! ab
    .target +Brave Windfeather
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>Gebt die Quest Ruf der Erde ab << Shaman
    .accept 1520 >>Akzeptiert die Quest Ruf der Erde << Shaman
    .target +Seer Ravenfeather << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>Gebt die Quest Angriff auf Camp Narache ab
    .turnin 757 >>Gebt die Quest Ritus der Kraft ab
    .accept 763 >>Akzeptiert die Quest Riten der Erdenmutter
    .target +Chief Hawkwind
    .goto Mulgore,44.18,76.07
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >> Reist zum Felsen
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Benutzt den|r |T134743:0|t[Erdsapta]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit der |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>Gebt die Quest Ruf der Erde ab
    .accept 1521 >>Akzeptiert die Quest Ruf der Erde
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 1521 >>Gebt die Quest Ruf der Erde ab
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
    .money <0.01
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #optional
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
    .money <0.01
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #optional
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
    .money <0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #optional
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Harutt Thunderhorn
    .money <0.01
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Akzeptiert die Quest Eine unvollendete Aufgabe
    .target Antur Fallow

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 6-10 Mulgore
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Tauren
#next 10-12 Eversong Woods << !Shaman
#next 10-13 Mulgore << Shaman

step
    #softcore
	#completewith BloodhoofHome
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
	#hardcore
	#completewith BloodhoofHome
    .subzone 222 >> Lauft zum Dorf der Bluthufe
step
    #softcore
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Akzeptiert die Quest Kyle wird vermisst!
    .target Ahab Wheathoof
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step
    #xprate <1.5 << !Shaman
    #hardcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target Ruul Eagletalon
step
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .turnin 763 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 745 >>Akzeptiert die Quest Gemeinsame Nutzung des Landes
    .accept 767 >>Akzeptiert die Quest Ritus der Sicht
    .accept 746 >>Akzeptiert die Quest Zwergen-Buddelei
    .target Baine Bloodhoof
step
    #xprate >1.49
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .turnin 763 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 767 >>Akzeptiert die Quest Ritus der Sicht
    .accept 746 >>Akzeptiert die Quest Zwergen-Buddelei << Shaman
    .target Baine Bloodhoof
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .turnin 1656 >>Gebt die Quest Eine unvollendete Aufgabe ab
    .home >>Setzt den Ruhestein von Euch in Das Dorf der Bluthufe
    .target Innkeeper Kauth
    .isQuestAvailable 771
    .bindlocation 222
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkaufttrash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (7s 1c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn diese euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (4s 14c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cRXP_BUY_von ihm|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Leichte Geschosse] |cRXP_BUY_von ihm|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #optional
    #completewith Well
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Well
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Well
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #hardcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Gebt die Quest Ritus der Sicht ab
    .accept 771 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step
    #hardcore
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Akzeptiert die Quest Kyle wird vermisst!
    .target Ahab Wheathoof
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target Harken Windtotem
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .accept 748 >>Akzeptiert die Quest Vergiftetes Wasser
    .target Mull Thunderhorn
step
    #xprate <1.5 << !Shaman
    #softcore
    .goto Mulgore,47.35,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target Ruul Eagletalon
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Sammelt die Gegenstände für Mazzranache, während ihr in der Zone an Aufträgen arbeitet|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Tötet |cRXP_ENEMY_Präriewolf|r. Plündert sie für ihre |cRXP_LOOT_Präriewolftatze|r
    >>Tötet |cRXP_ENEMY_Erwachsener Ebenenschreiter|r. Plündert sie für ihr |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r] und |cRXP_LOOT_Ebenenschreiterkralle|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << !Tauren
    #completewith Ambercorns
    >>Tötet |cRXP_ENEMY_Erwachsener Ebenenschreiter|r. Plündert sie für |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    >>Sammelt die |cRXP_PICK_Bernsteinkorn|r ein
    >>|cRXP_WARN_Sie können unter den Bäumen auf dem Boden gefunden werden|r
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>Tötet |cRXP_ENEMY_Präriewolf|r. Plündert sie für ihre |cRXP_LOOT_Präriewolftatze|r
    >>Loote |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r. Loot them for their |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r] and |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << !Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,60,0
	.goto Mulgore,51.06,63.63,60,0
	.goto Mulgore,52.79,62.06,60,0
	.goto Mulgore,53.98,61.68,60,0
	.goto Mulgore,55.67,62.77,60,0
	.goto Mulgore,56.46,64.93,60,0
	.goto Mulgore,56.02,67.78,60,0
	.goto Mulgore,55.02,69.65,60,0
	.goto Mulgore,52.33,70.07,60,0
	.goto Mulgore,50.40,70.24,60,0
	.goto Mulgore,48.60,69.43,60,0
	.goto Mulgore,45.98,69.70,60,0
	.goto Mulgore,48.58,67.37,60,0
    >>Tötet |cRXP_ENEMY_Erwachsener Ebenenschreiter|r. Plündert sie für |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step << Tauren
    #completewith next
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt das |T134028:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r], um ihn zu füttern
    >>|cRXP_WARN_Er läuft im Uhrzeigersinn in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>Gebt die Quest Vergiftetes Wasser ab
    .timer 8,Vergiftetes Wasser RP
    .accept 754 >>Akzeptiert die Quest Säuberung von Winterhoof
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Sammelt die |cRXP_PICK_Quellsteine|r um den Brunnen ein
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_Benutzt das|r |T135139:0|t[Säuberungstotem von Winterhoof] |cRXP_WARN_beim Brunnen|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Sammelt die |cRXP_PICK_Quellsteine|r um den Brunnen ein
    .complete 771,1 --Well Stone (2)
step
    #xprate <1.5
    #completewith Gnolls
    >>|cRXP_WARN_Sammelt die Gegenstände für Mazzranache, während ihr in der Zone an Aufträgen arbeitet|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Geht hin und her zwischen den zwei Lagern. Tötet die |cRXP_ENEMY_Gerber der Bleichmähnen|r, die |cRXP_ENEMY_Kürschner der Bleichmähnen|r und die |cRXP_ENEMY_Wilderer der Bleichmähnen|r
    >>|cRXP_WARN_Passt auf vor|r |cRXP_ENEMY_Stummelspeer|r |cRXP_WARN_(Lvl 9 Selten). Er ist zu schwer zu Töten.|r
    .unitscan Snagglespear
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
step
    #completewith KyleFed
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt das |T134028:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r], um ihn zu füttern
    >>|cRXP_WARN_Er läuft im Uhrzeigersinn in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .vendor >> Verkauft Müll
    .collect 1179,10,749,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,749,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
    .isQuestAvailable 756
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Gebt die Quest Säuberung von Winterhoof ab
    .accept 756 >>Akzeptiert die Quest Thunderhorn-Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Gebt die Quest Gemeinsame Nutzung des Landes ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << Tauren
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>Gebt die Quest Säuberung von Winterhoof ab
    .accept 756 >>Akzeptiert die Quest Thunderhorn-Totem
    .target Mull Thunderhorn
step << !Tauren
    #xprate <1.5
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Gebt die Quest Gemeinsame Nutzung des Landes ab
    .target Baine Bloodhoof
step << Warrior
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkaufttrash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (7s 1c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn diese euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (4s 14c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cRXP_BUY_von ihm|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Clawsx
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Clawsx
    |cRXP_WARN_+Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <1.5 << !Shaman
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Folge nicht dem Wolf, der erscheint|r
    .turnin 771 >>Gebt die Quest Ritus der Sicht ab
    .accept 772 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step << !Shaman
    #xprate >1.49
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Folge nicht dem Wolf, der erscheint|r
    .turnin 771 >>Gebt die Quest Ritus der Sicht ab
    .target Zarlman Two-Moons
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <8,1
step
    #optional
    #label KyleFed
step
    #loop
    .goto Mulgore,47.3,56.9,0
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt das |T134028:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r], um ihn zu füttern
    >>|cRXP_WARN_Er läuft im Uhrzeigersinn in Kreisen um Das Dorf der Bluthufe|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahab|r (NOT TRANSLATED IN :deDE YET)
    .turnin 11129 >>Gebt die Quest Kyle wird vermisst! ab
    .target Ahab Wheathoof
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .accept 749 >>Akzeptiert die Quest Die Überfallene Karawane
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_Sammelt die Gegenstände für Mazzranache, während ihr in der Zone an Aufträgen arbeitet|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Clawsx
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #completewith next
    >>Tötet |cRXP_ENEMY_StalkersPräriepirscher|r und |cRXP_ENEMY_Pumas|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    .goto Mulgore,53.74,48.17
    >>Klickt die |cRXP_PICK_Versiegelte Vorratskiste|r
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step << Tauren
	#label Clawsx
    #loop
    .goto Mulgore,58.1,48.6,0
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    >>Tötet |cRXP_ENEMY_StalkersPräriepirscher|r und |cRXP_ENEMY_Pumas|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step << !Shaman
    #xprate >1.49
    #loop
	.goto Mulgore,59.52,23.36,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	>>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step << !Shaman
    #xprate >1.49
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step << !Shaman
    #xprate >1.49
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3485 >> Grind to 3485+/6500xp (NOT TRANSLATED IN :deDE YET)
step
    #xprate <1.5 << !Shaman
    #softcore
	#completewith Thunderhorn
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #xprate <1.5 << !Shaman
    #hardcore
    #completewith Thunderhorn
    .subzone 222 >> Reist zurück zum Dorf der Bluthufe
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <1.5
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .target Mahnott Roughwound
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkaufttrash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (7s 1c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <1.5
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .target Mahnott Roughwound
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn diese euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (4s 14c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cRXP_BUY_von ihm|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <1.5
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <1.5 << !Shaman
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harant|r
    .vendor >> Verkauft trash und repariert
    .target Harant Ironbrace
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    #xprate <1.5 << !Shaman
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Gebt die Quest Thunderhorn-Totem ab
    .timer 8,Thunderhorn Totem RP
    .accept 758 >>Akzeptiert die Quest Säuberung von Thunderhorn
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <8,1
step << Shaman
    #xprate >1.49
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Akzeptiert die Quest Ruf des Feuers
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <10,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihm|r << Warrior
    .vendor >> Verkauft Müll << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
    .isQuestAvailable 746
step
    #xprate <1.5 << !Shaman
    #completewith Burial
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
	#completewith Burial
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <1.5 << !Shaman
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Benutzt das|r |T135139:0|t[Säuberung von Thunderhorn] |cRXP_WARN_am Brunnen|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,31.27,49.87
    >>Töte |cRXP_ENEMY_Buddler von Bael'dun|r and |cRXP_ENEMY_Gutachter von Bael'dun|r. Loot them for their |T134707:0|t[|cRXP_LOOT_Prospector's Picks|r]
    .use 4702 >> |cRXP_WARN_Smash the|r |T134707:0|t[|cRXP_LOOT_Prospector's Picks|r] |cRXP_WARN_at the|r |cRXP_PICK_Forge|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .collect 4702,5,746,7,3
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,34.08,43.71,0
	.goto Mulgore,34.08,43.71,40,0
	.goto Mulgore,32.98,42.96,40,0
	.goto Mulgore,31.72,43.08,40,0
	.goto Mulgore,31.08,42.09,40,0
	.goto Mulgore,31.12,40.87,40,0
	.goto Mulgore,31.74,40.31,40,0
	.goto Mulgore,32.44,41.17,40,0
	.goto Mulgore,33.57,41.30,40,0
	.goto Mulgore,33.82,40.26,40,0
	.goto Mulgore,34.48,41.21,40,0
	.goto Mulgore,34.50,42.29,40,0
    >>Tötet |cRXP_ENEMY_Windhexe der Windfurien|r und |cRXP_ENEMY_Harpyie der Windfurien|r. Plündert sie für |cRXP_LOOT_Windfurienkralle|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #xprate <1.5 << !Shaman
    #completewith next
    .goto Mulgore,33.37,36.52,50 >> Betretet die Höhle direkt nördlich von den Harpyien der Windfurien
step
    #xprate <1.5 << !Shaman
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Gebt die Quest Ritus der Sicht ab
    .accept 773 >>Akzeptiert die Quest Ritus der Weisheit
    .target Seer Wiserunner
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith SacredBurial
    .destroy 4823 >> |cRXP_WARN_LÖSCHEN|r |T134712:0|t[Water of the Seers] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
    #completewith SacredBurial
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r]. Benutzt es, um die Quest zu starten
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Geistheuler|r schwierig ist, weil er Stufe 12 ist|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Akzeptiert die Quest Der Dämonennarbenumhang
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <1.5 << !Shaman
	#completewith next
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <1.5 << !Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Akzeptiert die Quest Eine heilige Bestattung
    .target Lorekeeper Raintotem
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <1.5 << !Shaman
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Vorfahrengeist|r
    .turnin 773 >>Gebt die Quest Ritus der Weisheit ab
    .accept 775 >>Akzeptiert die Quest Reise nach Donnerfels
    .target Ancestral Spirit
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,35,0
	.goto Mulgore,61.14,22.93,35,0
	.goto Mulgore,61.77,22.49,35,0
	.goto Mulgore,62.18,22.05,35,0
	.goto Mulgore,62.32,20.89,35,0
	.goto Mulgore,61.62,19.50,35,0
	.goto Mulgore,60.44,19.50,35,0
	.goto Mulgore,60.16,21.06,35,0
	.goto Mulgore,60.41,21.96,35,0
	.goto Mulgore,61.12,22.88,35,0
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Gebt die Quest Eine heilige Bestattung ab
    .target Lorekeeper Raintotem
step
    #xprate <1.5 << !Shaman
    #completewith next
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5 << !Shaman
    #loop
	.goto Mulgore,59.52,23.36,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	>>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <1.5 << !Shaman
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3020 >> Farmt bis 3020+/6500 XP
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3720 >> Farmt bis 3720+/6500 XP
    .isQuestComplete 761
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+3700 >> Farmt bis 3700+/6500 XP
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
    .xp 9+4400 >> Farmt bis 4400+/6500 XP
step << !Druid
    #completewith Bloodhoofturnins1
    .hs >>Benutzt euren Ruhestein zum Dorf der Bluthufe
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #sofcore
    #completewith Bloodhoofturnins1
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Druid
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >> Reist zurück zum Dorf der Bluthufe
    .subzoneskip 222
step << Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step
    #xprate <1.5 << !Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    .timer 8,Säuberung von Thunderhorn RP
    .accept 759 >>Akzeptiert die Quest Wildmane-Totem << Shaman
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #xprate <1.5
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, und |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    .timer 8,Säuberung von Thunderhorn RP
    .accept 759 >>Akzeptiert die Quest Wildmane-Totem << Shaman
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << Tauren Shaman
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren Shaman
    #xprate >1.49
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, und |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << Tauren !Shaman
    #xprate >1.49
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Gebt die Quest Thunderhorn-Totem ab
    .target Mull Thunderhorn
step << !Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r und |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r und |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step << !Shaman
    #xprate >1.49
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
    .isQuestComplete 761
step
    #optional
    #label Bloodhoofturnins1
step
    #xprate <1.5 << !Shaman
    #optional
    #completewith AlphaTeeth
    .destroy 4702 >> |cRXP_WARN_Delete the|r |T134707:0|t[Prospector's Picks] |cRXP_WARN_from your bags, as they're no longer needed|r (NOT TRANSLATED IN :deDE YET)
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Akzeptiert die Quest Ruf des Feuers
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
step << !Druid
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    --.accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 5928 >>Akzeptiert die Quest Dem Ruf folgen
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8924 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
step << Hunter
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r |cRXP_WARN_auf maximaler Reichweite|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6087 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Präriepirscher|r |cRXP_WARN_bei maximaler Reichweite|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6088 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Sturzflieger|r |cRXP_WARN_bei maximaler Reichweite und wirkt es sofort erneut, falls sie euch zu Boden werfen|r
    >>|cRXP_WARN_Falls ihr fehlschlagt und eure Zähmerruten-Aufladungen aufgebraucht sind, brecht die Quest ab, nehmt sie wieder an und kommt zurück|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6089 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Yaw Sharpmane
step << !Hunter
    #xprate <1.5
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    .vendor >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    .vendor >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
    .isQuestAvailable 765
step << Shaman
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Akzeptiert die Quest Der Weg der Jäger
    .target Skorn Whitecloud
step << Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 751 >> Gebt die Quest Die Überfallene Karawane ab
    .accept 764 >> Akzeptiert die Quest Die Venture Company
    .accept 765 >> Akzeptiert die Quest Vorsteher Fizsprocket
	.unitscan Morin Cloudstalker
step << !Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 751 >> Gebt die Quest Die Überfallene Karawane ab
	.unitscan Morin Cloudstalker
step << Shaman
    #xprate >1.49
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Reist zur Mine der Venture Company
step << Shaman
    #xprate >1.49
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #xprate >1.49
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Lauft in die Mine und haltet euch auf der rechten/östlichen Seite. Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert |cRXP_LOOT_Fizsprockets Klemmbrett|r von ihm
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step << Shaman
    #xprate >1.49
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Lauft in die Mine und haltet euch auf der rechten/östlichen Seite. Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert |cRXP_LOOT_Fizsprockets Klemmbrett|r von ihm
    >>|cRXP_WARN_Be very careful! It is easy too overpull in this mine and escape is difficult|r (NOT TRANSLATED IN :deDE YET)
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step << Shaman
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #xprate >1.49
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 764 >>Gebt die Quest Die Venture Company ab
    .turnin 765 >>Gebt die Quest Vorsteher Fizsprocket ab
	.unitscan Morin Cloudstalker
step << Shaman
    #xprate <1.5
    #completewith AlphaTeeth
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Hunter
    #xprate <1.5
    #completewith next
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Präriewolfalpha|r
    >>|cRXP_WARN_Dies erlaubt es euch|r |T132278:0|t[Biss Rang 2] zu trainieren
    .mob Prairie Wolf Alpha
step << Shaman
    #xprate <1.5
    #label AlphaTeeth
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    >>Tötet die |cRXP_ENEMY_Präriewolfalphas|r in der Gegend. Plündert sie für ihre |cRXP_LOOT_Zähne|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << Hunter
    #xprate >1.49
    #loop
    .goto Mulgore,66.34,67.01,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Präriewolfalpha|r
    >>|cRXP_WARN_Dies erlaubt es euch|r |T132278:0|t[Biss Rang 2] zu trainieren
    .mob Prairie Wolf Alpha
step << Shaman
    #xprate <1.5
    #softcore
	#completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Shaman
    #xprate <1.5
    #hardcore
	#completewith next
    .goto Mulgore,46.5,55.5,150 >> Reist zurück zum Dorf der Bluthufe
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Gebt die Quest Wildmane-Totem ab
    .accept 760 >>Akzeptiert die Quest Säuberung von Wildmane
    .target Mull Thunderhorn
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 765 >>Abandon Supervisor Fizsprocket (NOT TRANSLATED IN :deDE YET)
step << !Shaman
    #optional
    #completewith CampTFP
    .abandon 764 >>Brecht die Quest Die Venture Company ab
step
    #completewith CampTFP
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Reist nach Das Brachland
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
	.target Omusa Thunderhorn
    .isQuestAvailable 854
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
    .isQuestAvailable 5932
step
    #optional
    #label CampTFP
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Akzeptiert die Quest Die Oasen des Brachlandes
    .target Arch Druid Hamuul Runetotem
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Gebt die Quest Dem Ruf folgen ab
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Gebt die Quest Mondlichtung ab
    .accept 5930 >>Akzeptiert die Quest Großer Bärengeist
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großer Bärengeist|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Gebt die Quest Großer Bärengeist ab
    .accept 5932 >>Akzeptiert die Quest Zurück nach Donnerfels
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >> Ruhestein nach Donnerfels
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Thunder Bluff
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Gebt die Quest Zurück nach Donnerfels ab
    .accept 6002 >>Akzeptiert die Quest Körper und Herz
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Tal
    .subzoneskip 378
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_Benutzt das|r |T132857:0|t[Lunarstaub des Cenarius] |cRXP_WARN_beim|r |cRXP_PICK_Mondkinstein|r
    >>Tötet |cRXP_ENEMY_Mondklaue|r, wenn er spawnt. Sprecht mit dem |cRXP_FRIENDLY_Geist von Mondklaue|r danach.
    >>|cRXP_WARN_Be careful! |cRXP_ENEMY_Mondklaue|r wirkt|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    >>|cRXP_WARN_Vermeidet|r |cRXP_ENEMY_Donnerköpfe|r |cRXP_WARN_in der Gegend|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kirge Sternhorn|r
    .accept 854 >>Akzeptiert die Quest Reise nach Crossroads
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Reisen nördlichen in Richtung Das Wegekreuz
    >>|cRXP_WARN_Bleibt auf der Straße. Sonst könntet ihr hochstufige Gegner anlocken|r
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Gebt die Quest Die Oasen des Brachlandes ab << Druid
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Gebt die Quest Reise zum Wegekreuz ab
    .target Thork
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Erlernt die Flugroute beim Wegekreuz
    .target Devrak
    .isQuestAvailable 848,870
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Akzeptiert die Quest Ein Bündel Bälge
    .target Jahan Hawkwing
step
    #completewith next
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Haltet maximalen Abstand zu |cRXP_ENEMY_Kolkar|r |cRXP_WARN_während ihr die Pilze plündert. Sie sind Stufe 12-14|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Haltet maximalen Abstand zu |cRXP_ENEMY_Kolkar|r |cRXP_WARN_während ihr die Pilze plündert. Sie sind Stufe 12-14|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
	#completewith ZamahPickup
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >> Reist zurück zum Wegekreuz
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase << Shaman
    .target Tonga Runetotem
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
step
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    >>|cRXP_WARN_Dies startet eine 45-Minuten-Quest|r
    .turnin 848 >>Gebt die Quest Pilzsporen ab
    .timer 7,Pilzsporen RP
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_Ihr seid in einer zeitlich begrenzten Quest, geht nicht offline. Sie wird etwa 5-10 Minuten nach der Annahme automatisch abgegeben|r
    .isOnQuest 853
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Gebt die Quest Ein Bündel Bälge ab
    .accept 6362 >>Akzeptiert die Quest Flug nach Thunder Bluff
    .target Devrak
step
    #completewith CauldronStirrer
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Devrak
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Gebt die Quest Flug nach Donnerfels ab
    .accept 6363 >>Akzeptiert die Quest Tal der Windreitermeister
    .target Ahanu
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Akzeptiert die Quest Vorbereitungen auf die Zeremonie
    .target Eyahn Eagletalon
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Erlernt Zweihandstreitkolben
    .target Ansekhwa
    .money <0.100
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
    .money <0.100
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Gebt die Quest Apothekerin Zamah ab
    .target Apothecary Zamah
step
    #completewith EndGuide
    +|cRXP_WARN_Legt |r |T135145:0|t[Kesselrührer] an
    .use 5340
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Gebt die Quest Körper und Herz ab
    .target Turak Runetotem
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >>Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .target Rahauro
    .dungeon RFC
step << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .accept 6364 >>Akzeptiert die Quest Rückkehr zu Jahan
    .target Tal
step << !Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .target Cairne Bloodhoof
step << Shaman
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .accept 776 >>Akzeptiert die Quest Riten der Erdenmutter
    .target Cairne Bloodhoof
step << Shaman
    #xprate >1.49
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .target Cairne Bloodhoof
step << !Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .accept 6364 >>Akzeptiert die Quest Rückkehr zu Jahan
    .target Tal
step << !Shaman
    #completewith HidesTurnIn
    .hs >> Ruhestein nach Das Wegekreuz
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Shaman
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step << !Shaman
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Gebt die Quest Rückkehr zu Jahan ab
    .target Jahan Hawkwing
step << !Shaman
    #completewith ZeptoUC1
    +|cRXP_WARN_Abandon any leftover quests you have|r (NOT TRANSLATED IN :deDE YET)
step << !Shaman
    #completewith next
    .subzone 392 >>Reist nach Ratschet
step << !Shaman
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Flugroute nach Ratschet
    .target Bragok
step << !Shaman
    #completewith next
    .zone Durotar >>Reist nach Durotar
step << !Shaman
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Tirisfal Glades
step << Warrior
    #optional
    .abandon 1505 >>Brecht die Quest Veteran Uzzek ab
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Brecht die Quest Weg der Verteidigung ab
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1818 >> Akzeptiert die Quest Gespräch mit Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .home >> Setzt euren Ruhestein in Brill
    .target Innkeeper Renee
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Gebt die Quest Gespräch mit Dillinger ab
    .accept 1819 >> Akzeptiert die Quest Ulag der Spalter
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Klickt auf den Schädel auf dem Boden. Dies wird|r |cRXP_ENEMY_Ulag.|r beschwören |cRXP_WARN_Tötet ihn|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isOnQuest 1819
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Gebt die Quest Ulag der Spalter ab
    .accept 1820 >> Akzeptiert die Quest Gespräch mit Coleman
    .target Deathguard Dillinger
    .isQuestComplete 1819
step << Warrior
    #label WarriorClassQ
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Gebt die Quest Gespräch mit Coleman ab
    .target Coleman Farthing
    .isOnQuest 1820
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step << !Shaman
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Go up the stairs here (NOT TRANSLATED IN :deDE YET)
step << !Shaman
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Benutz the |cRXP_PICK_Translokationskugel|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r
    .trainer >>Trainiere deine Klassenfähigkeiten
	.target Ithelis
	.target Osselan
step
    #optional
    #label EndGuide
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 10-13 Mulgore
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Tauren Shaman
#next 13-18 The Barrens

step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .accept 776 >>Akzeptiert die Quest Riten der Erdenmutter
    .isQuestTurnedIn 775
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Akzeptiert die Quest Vorbereitungen auf die Zeremonie
    .target Eyahn Eagletalon
step
    #xprate <1.5
    #sticky
    #completewith ThunderBluff
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r]. Benutzt es, um die Quest zu starten
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Akzeptiert die Quest Der Dämonennarbenumhang
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <1.5
    #loop
    .goto Mulgore,31.7,28.2,0
    .goto Mulgore,30.2,19.5,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>Tötet |cRXP_ENEMY_Zauberhexerin der Windfurien|r. Plündert sie für ihre |cRXP_LOOT_Azurblaue Feder|r
    >>Tötet |cRXP_ENEMY_Matriarchin der Windfurien|r. Plündert sie für |cRXP_LOOT_Bronzene Feder|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
step
    #xprate <1.5
    #completewith Arrachea
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
    .isOnQuest 861
step << Tauren Shaman
    #xprate <1.5
    .goto Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_Benutzt|r |T135139:0|t[Läuterungstotem der Wildmähnen] |cRXP_WARN_am Brunnen|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    #xprate <1.5
    #label Arrachea
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>Tötet |cRXP_ENEMY_Arra'Chea|r (Großes schwarzes Kodo). Tötet und plündert ihn für sein |cRXP_LOOT_Horn|r
    >>|cRXP_WARN_He patrols clockwise around northern Mulgore|r (NOT TRANSLATED IN :deDE YET)
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
step
    #xprate <1.5
    #loop
    .goto Mulgore,43.78,10.96,0
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
    .isOnQuest 861
step
    #xprate <1.5
    #completewith next
    .zone Thunder Bluff >> Reist nach Donnerfels
step
    #xprate <1.5
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>Gebt die Quest Riten der Erdenmutter ab
    .target Cairne Bloodhoof
step
    #xprate <1.5
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Gebt die Quest Vorbereitungen auf die Zeremonie ab
    .target Eyahn Eagletalon
step
    #xprate <1.5
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Gebt die Quest Der Weg der Jäger ab
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestComplete 861
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step
    #xprate <1.5
    #completewith WildManeTurnIn
    .subzone 222 >>Reist zum Dorf der Bluthufe
step
    #xprate <1.5
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    #xprate <1.5
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>Gebt die Quest Säuberung von Wildmane ab
    .target Mull Thunderhorn
step << Shaman
    #xprate <1.5
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <12,1
step << Druid
    #xprate <1.5
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    #xprate <1.5
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <12,1
step << Hunter
    #xprate <1.5
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r << Hunter
    .collect 2519,1000,764,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
    .itemcount 764,<800
step
    #xprate <1.5
    #optional
    #label WildManeTurnIn
step
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .accept 764 >>Accept The Venture Co. (NOT TRANSLATED IN :deDE YET)
    .accept 765 >>Akzeptiert die Quest Vorsteher Fizsprocket
	.unitscan Morin Cloudstalker
step
    #xprate <1.5
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Reist zur Mine der Venture Company
step
    #xprate <1.5
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #softcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Lauft in die Mine und haltet euch auf der rechten/östlichen Seite. Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert |cRXP_LOOT_Fizsprockets Klemmbrett|r von ihm
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step
    #xprate <1.5
    #hardcore
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Lauft in die Mine und haltet euch auf der rechten/östlichen Seite. Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert |cRXP_LOOT_Fizsprockets Klemmbrett|r von ihm
    >>|cRXP_WARN_Be very careful! It is easy too overpull in this mine and escape is difficult|r (NOT TRANSLATED IN :deDE YET)
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >> Farmt bis 7150+/8700 xp
step
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 764 >>Gebt die Quest Die Venture Company ab
    .turnin 765 >>Gebt die Quest Vorsteher Fizsprocket ab
	.unitscan Morin Cloudstalker
step
    #xprate <1.5
    #completewith next
    .subzone 378 >> Reist nach Camp Taurajo
step
    #xprate <1.5
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Omusa Thunderhorn
    .cooldown item,6948,<0,1
    .subzoneskip 380
step
    #xprate >1.49
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith HidesTurnIn
    .hs >> Ruhestein nach Das Wegekreuz
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Gebt die Quest Rückkehr zu Jahan ab
    .target Jahan Hawkwing
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .accept 867 >>Akzeptiert die Quest Räuberische Harpyien
    .target Darsok Swiftdagger
step
    #xprate <1.5
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Gebt die Quest Sergra Darkthorn ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
    .isOnQuest 860
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step << Shaman
    #completewith next
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Falls es nicht da ist, werdet ihr es später bekommen|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Reist den Weg den Berg hinauf zu |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Seid vorsichtig und fallt nicht vom Berg. Der Weg ist sehr schmal. Ihr könntet sterben, wenn ihr fallt|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Gebt die Quest Ruf des Feuers ab
    .accept 1525 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Gebt die Quest Veteran Uzzek ab
    .accept 1498 >>Akzeptiert die Quest Weg der Verteidigung
    .target Uzzek
step << Warrior
    #loop
    .goto Durotar,39.34,28.25,0
    .goto Durotar,39.11,30.76,40,0
    .goto Durotar,39.34,28.25,40,0
    .goto Durotar,39.11,26.46,40,0
    .goto Durotar,39.39,25.05,40,0
    .goto Durotar,40.00,24.06,40,0
    .goto Durotar,42.51,24.29,40,0
    >>Tötet |cRXP_ENEMY_Blitzechse|r. Plündert sie für ihre |cRXP_ENEMY_Schuppen|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Gebt die Quest Weg der Verteidigung ab
    .accept 1502 >>Akzeptiert die Quest Thun'grim Firegaze
    .target Uzzek

]])
