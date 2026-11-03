if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore


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
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
    .xp 3+1150 >> Farmt bis 1150+/1400 XP
    .mob Plainstrider
step
    #xprate >1.49
    #loop
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
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
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Akzeptiert die Quest Tötet Spitzhauer!
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .accept 77651 >>Akzeptiert die Quest In die Dornenranken
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .accept 77651 >>Akzeptiert die Quest In die Dornenranken
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Gebt die Quest Geätzte Notiz ab
    .accept 77649 >>Akzeptiert die Quest Die Stärke eines Jägers
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Gebt die Quest Geätzte Notiz ab
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Gebt die Quest Tiefgrüne Notiz ab
    .accept 77648 >>Akzeptiert die Quest Relikte der Tauren
    .train 8921 >> Erlernt |T136096:0|t[Mondfeuer]
    .target Gart Mistrunner
step << Druid
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Gebt die Quest Mit Runen beschriftete Notiz ab
    .train 8042 >>Erlernt |T136026:0|t[Erdschock]
    .target Meela Dawnstrider
step << Shaman
    #season 0
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
    .xp 5+880 >> Farmt bis 880+/2800 XP << !Shaman
    .xp 5 >> Farmt bis Stufe 5 << Shaman
step
    #xprate >1.49
    #loop
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
    .xp 5 >> Farmt bis Stufe 5 << !Shaman
    .xp 4+700 >> Farmt bis 700/2100xp << Shaman
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Gebt die Quest Symbole der Macht ab
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .turnin 77649 >>Gebt die Quest Die Stärke eines Jägers ab
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .turnin 77649 >>Gebt die Quest Die Stärke eines Jägers ab
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .turnin 77648 >>Gebt die Quest Relikte der Tauren ab
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .turnin 77648 >>Gebt die Quest Relikte der Tauren ab
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .turnin 77651 >>Gebt die Quest In die Dornenranken ab
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .turnin 77651 >>Gebt die Quest In die Dornenranken ab
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Akzeptiert die Quest Eine unvollendete Aufgabe
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-12 Mulgore
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 das Brachland


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_Wirkt|r |T136096:0|t[Mondfeuer] |cRXP_WARN_auf die drei|r |cRXP_ENEMY_Mondsteine|r|cRXP_WARN_. Eine Truhe wird zwischen den Steinen erscheinen|r
    >>Öffnet die |cRXP_PICK_Mondtruhe|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] |cRXP_WARN_zum Erlernen von|r |T236216:0|t[Sonnenfeuer]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >> Lauft zum Dorf der Bluthufe
    .subzoneskip 222
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r und |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 745 >>Akzeptiert die Quest Gemeinsame Nutzung des Landes
    .accept 767 >>Akzeptiert die Quest Ritus der Sicht
    .accept 746 >>Akzeptiert die Quest Zwergen-Buddelei
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .turnin 1656 >>Gebt die Quest Eine unvollendete Aufgabe ab
    .home >>Setzt den Ruhestein von Euch in Das Dorf der Bluthufe
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r und |cRXP_FRIENDLY_Mull|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Gebt die Quest Ritus der Sicht ab
    .accept 771 >>Akzeptiert die Quest Ritus der Sicht
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .accept 748 >>Akzeptiert die Quest Vergiftetes Wasser
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r und |cRXP_FRIENDLY_Harken|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Gebt die Quest Ritus der Sicht ab
    .accept 771 >>Akzeptiert die Quest Ritus der Sicht
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
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
    >>Tötet |cRXP_ENEMY_Präriewölfe|r und |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Pfoten|r und |cRXP_LOOT_Krallen|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>Wirkt |T132212:0|t[Mal des Jägers] auf den |cRXP_ENEMY_Raschelnden Busch|r
    >>Tötet die |cRXP_ENEMY_Wilderer der Venture Co.|r welche erscheinen. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Sammelt die |cRXP_PICK_Bernsteinkörner|r vom Boden unter den Bäumen
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
	.goto Mulgore,50.82,66.66,50,0
	.goto Mulgore,51.06,63.63,50,0
	.goto Mulgore,52.79,62.06,50,0
	.goto Mulgore,53.98,61.68,50,0
	.goto Mulgore,55.67,62.77,50,0
	.goto Mulgore,56.46,64.93,50,0
	.goto Mulgore,56.02,67.78,50,0
	.goto Mulgore,55.02,69.65,50,0
	.goto Mulgore,52.33,70.07,50,0
	.goto Mulgore,50.40,70.24,50,0
	.goto Mulgore,48.60,69.43,50,0
	.goto Mulgore,45.98,69.70,50,0
	.goto Mulgore,48.58,67.37,50,0
    >>Tötet |cRXP_ENEMY_Präriewölfe|r und |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Pfoten|r und |cRXP_LOOT_Krallen|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
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
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Sammelt die |cRXP_PICK_Quellsteine|r um den Brunnen ein
    .complete 771,1 --Well Stone (2)
step
    #completewith Gnolls
    >>|cRXP_WARN_Sammelt die Gegenstände für Mazzranache, während ihr in der Zone an Aufträgen arbeitet|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #season 2
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Geht hin und her zwischen den zwei Lagern. Tötet die |cRXP_ENEMY_Gerber der Bleichmähnen|r, die |cRXP_ENEMY_Kürschner der Bleichmähnen|r und die |cRXP_ENEMY_Wilderer der Bleichmähnen|r.Plündert sie für einen |cRXP_LOOT_Abgetrennter Gnollkopf|r
    >>|cRXP_WARN_Passt auf vor|r |cRXP_ENEMY_Stummelspeer|r |cRXP_WARN_(Lvl 9 Selten). Er ist zu schwer zu Töten.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .train 403475,1
step
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Geht hin und her zwischen den zwei Lagern. Tötet die |cRXP_ENEMY_Gerber der Bleichmähnen|r, die |cRXP_ENEMY_Kürschner der Bleichmähnen|r und die |cRXP_ENEMY_Wilderer der Bleichmähnen|r
    >>|cRXP_WARN_Passt auf vor|r |cRXP_ENEMY_Stummelspeer|r |cRXP_WARN_(Lvl 9 Selten). Er ist zu schwer zu Töten.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .vendor >> Verkauft Müll
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Gebt die Quest Säuberung von Winterhoof ab
    .accept 756 >>Akzeptiert die Quest Thunderhorn-Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Gebt die Quest Gemeinsame Nutzung des Landes ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << !Tauren
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Baine|r
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
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Folge nicht dem Wolf, der erscheint|r
    .turnin 771 >>Gebt die Quest Ritus der Sicht ab
    .accept 772 >>Akzeptiert die Quest Ritus der Sicht
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
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
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
step << Tauren
    #completewith RavagedCaravan1
    >>Tötet |cRXP_ENEMY_StalkersPräriepirscher|r und |cRXP_ENEMY_Pumas|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
	#completewith Clawsx
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #label RavagedCaravan1
    .goto Mulgore,53.74,48.17
    >>Klickt die |cRXP_PICK_Versiegelte Vorratskiste|r
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step << Tauren
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
step
    #optional
    #label Clawsx
step
    #softcore
	#completewith Thunderhorn
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >> Reist zurück zum Dorf der Bluthufe
    .subzoneskip 222
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
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
    .collect 2495,1,743,1 --Collect Walking Stick (1)
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
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
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
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith ThunderhornCleanse
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harant|r
    .vendor >> Verkauft trash und repariert
    .target Harant Ironbrace
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
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
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
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
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihm|r << Warrior
    .vendor >> Verkauft Müll << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #era/som
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Benutzt das|r |T135139:0|t[Säuberung von Thunderhorn] |cRXP_WARN_am Brunnen|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Artefaktlagertruhenschlüssel|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step
    .goto Mulgore,31.27,49.87
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Ausgrabungsleiterhacke|r
    .use 4702 >> |cRXP_WARN_Zerstört die|r |T134707:0|t[Spitzhacken] |cRXP_WARN_in der Schmiede|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,34.33,47.54,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Artefaktlagertruhenschlüssel|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>Öffnet die |cRXP_PICK_Artefaktlagertruhe|r Truhe. Plündert sie für das |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >> |cRXP_WARN_Legt das|r |T134918:0|t|cRXP_LOOT_[Schweflige Symbol]|r an
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies an Feinden tun, die Erfahrung gewähren können, um Stapel zu erhalten|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step << Warrior
    #season 2
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Tötet |cRXP_ENEMY_Windhexe der Windfurien|r und |cRXP_ENEMY_Harpyie der Windfurien|r. Plündert sie für |cRXP_LOOT_Windfurienkralle|r und einen |cRXP_LOOT_Abgetrennter Harpyienkopf|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Tötet |cRXP_ENEMY_Windhexe der Windfurien|r und |cRXP_ENEMY_Harpyie der Windfurien|r. Plündert sie für |cRXP_LOOT_Windfurienkralle|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >> Betretet die Höhle direkt nördlich von den Harpyien der Windfurien
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Gebt die Quest Ritus der Sicht ab
    .accept 773 >>Akzeptiert die Quest Ritus der Weisheit
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Benutzt das|r |T134918:0|t|cRXP_LOOT_[Schweflige Symbol]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] zu erlernen
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >> |cRXP_WARN_Ihr könnt|r |T134712:0|t[Wasser der Seher] |cRXP_WARN_zerstören, da es nicht mehr benötigt wird|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith SacredBurial
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r]. Benutzt es, um die Quest zu starten
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Geistheuler|r schwierig ist, weil er Stufe 12 ist|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Akzeptiert die Quest Der Dämonennarbenumhang
    .use 4854
    .unitscan Ghost Howl
step
	#completewith next
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Akzeptiert die Quest Eine heilige Bestattung
    .target Lorekeeper Raintotem
step << Warrior
    #season 2
    #completewith RiteofWisdom
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r. Plündert sie für |cRXP_LOOT_Abgetrennter Stacheleberkopf|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Vorfahrengeist|r
    .turnin 773 >>Gebt die Quest Ritus der Weisheit ab
    .accept 775 >>Akzeptiert die Quest Reise nach Donnerfels
    .target Ancestral Spirit
step << Warrior
    #season 2
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r. Plündert sie für |cRXP_LOOT_Abgetrennter Stacheleberkopf|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Gebt die Quest Eine heilige Bestattung ab
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #loop
	.goto Mulgore,51.00,18.40,0
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
	.goto Mulgore,59.52,23.36,60,0
	>>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
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
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3020 >> Farmt bis 3020+/6500 XP
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3720 >> Farmt bis 3720+/6500 XP
    .isQuestComplete 761
step
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3700 >> Farmt bis 3700+/6500 XP
    .isQuestComplete 766
step
    #xprate <1.5
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+4400 >> Farmt bis 4400+/6500 XP
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+1280 >> Farmt bis 1280+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+2330 >> Farmt bis 2330+/6500xp
    .isQuestComplete 761
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+2300 >> Farmt bis 2300+/6500xp
    .isQuestComplete 766
step
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
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3350 >> Farmt bis 3350+/6500xp
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
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .vendor >> Verkauft Müll
    .target Innkeeper Kauth
    .isQuestAvailable 870
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vateya|r im Dorf der Bluthufe
    >>Gebt die |cRXP_LOOT_Köpfe|r, die ihr gesammelt habt, im Austausch für die |T134455:0|t[Runenfragmente] ab
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>Benutzt die |T134455:0|t[Runenfragmente], um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] zu erschaffen
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    .timer 8,Säuberung von Thunderhorn RP
    .accept 759 >>Akzeptiert die Quest Wildmane-Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
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
    .accept 759 >>Akzeptiert die Quest Wildmane-Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << !Tauren
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r und |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step
    #completewith AlphaTeeth
    .destroy 4702 >> |cRXP_WARN_Ihr könnt|r |T134707:0|t[Ausgrabungsleiterhacke] |cRXP_WARN_zerstören, da sie nicht mehr benötigt werden|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Akzeptiert die Quest Ruf des Feuers
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 5928 >> Akzeptiert die Quest Dem Ruf folgen
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8924 >> Trainiere deine Klassenfähigkeiten
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
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Akzeptiert die Quest Der Weg der Jäger
    .target Skorn Whitecloud
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 751 >> Gebt die Quest Die Überfallene Karawane ab
    .accept 764 >> Akzeptiert die Quest Die Venture Company
    .accept 765 >> Akzeptiert die Quest Vorsteher Fizsprocket
	.unitscan Morin Cloudstalker
step
    #completewith AlphaTeeth
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Hunter
    #completewith next
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Präriewolfalpha|r
    >>|cRXP_WARN_Dies erlaubt es euch|r |T132278:0|t[Biss Rang 2] zu trainieren
    .mob Prairie Wolf Alpha
step << Tauren
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
step << Tauren
    #softcore
	#completewith Thunderhorn2
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Tauren
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >> Reist zurück zum Dorf der Bluthufe
    .subzoneskip 222
step << Tauren
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Gebt die Quest Wildmane-Totem ab
    .accept 760 >>Akzeptiert die Quest Säuberung von Wildmane
    .target Mull Thunderhorn
step
    #completewith CampTFP
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Reist nach Das Brachland
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
	.target Omusa Thunderhorn
    .isQuestAvailable 848
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Omusa Thunderhorn
    .isQuestAvailable 848
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
    #completewith next
    .goto Thunder Bluff,71.60,30.15,80 >>Reist zur Anhöhe der Ältesten
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Gebt die Quest Dem Ruf folgen ab
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Arch Druid Hamuul Runetotem
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
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
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
    .zoneskip The Barrens
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
    .isQuestAvailable 848
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Akzeptiert die Quest Ein Bündel Bälge
    .target Jahan Hawkwing
step
    #completewith next
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Haltet maximalen Abstand zu |cRXP_ENEMY_Kolkar|r |cRXP_WARN_während ihr die Pilze plündert. Sie sind Stufe 12-14|r
    >>|cRXP_WARN_Die Folgequest bietet den starken |cRXP_FRIENDLY_Kesselrührer|r |cRXP_WARN_als Belohnung. Ihr könnt diese Quest jetzt überspringen, wenn ihr ihn nicht verwenden wollt|r
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
    >>|cRXP_WARN_Die Folgequest bietet den starken |cRXP_FRIENDLY_Kesselrührer|r |cRXP_WARN_als Belohnung. Ihr könnt diese Quest jetzt überspringen, wenn ihr ihn nicht verwenden wollt|r
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
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 853
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    >>|cRXP_WARN_Dies startet eine 45-Minuten-Quest|r
    .turnin 848 >>Gebt die Quest Pilzsporen ab
    .timer 7,Pilzsporen RP
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Dies startet eine 45-Minuten-Quest|r
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Gebt die Quest Ein Bündel Bälge ab
    .accept 6362 >>Akzeptiert die Quest Flug nach Thunder Bluff
    .target Devrak
step
    #completewith RideToTB
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Devrak
    .zoneskip Thunder Bluff
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_Ihr seid in einer zeitlich begrenzten Quest, geht nicht offline. Sie wird etwa 5-10 Minuten nach der Annahme automatisch abgegeben|r
    .isOnQuest 853
step
    #label RideToTB
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Gebt die Quest Flug nach Donnerfels ab
    .accept 6363 >>Akzeptiert die Quest Tal der Windreitermeister
    .target Ahanu
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Gebt die Quest Der Weg der Jäger ab
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestComplete 861
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Gebt die Quest Die Ausbildung des Tiers ab
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith CauldronStirrer
    +|cRXP_WARN_Zieht|r |T132162:0|t[Wildtierausbildung] |cRXP_WARN_auf eure Aktionsleisten. Lehrt eurem Begleiter Fähigkeiten|r
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Erlernt Zweihandstreitkolben
    .target Ansekhwa
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Akzeptiert die Quest Vorbereitungen auf die Zeremonie
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .accept 76156 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
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
    .isOnQuest 853
step
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_Legt |r |T135145:0|t[Kesselrührer] an
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Netali|r und |cRXP_FRIENDLY_Mooart|r auf der Anhöhe der Geister
    +Tötet |cRXP_FRIENDLY_Mooart|r wenn er feindselig wird
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Netali|r
    >>Nehmt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] von ihr
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .accept 6364 >>Akzeptiert die Quest Rückkehr zu Jahan
    .target Tal
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .accept 776 >>Akzeptiert die Quest Riten der Erdenmutter
    .target Cairne Bloodhoof
step << Druid
    #completewith next
    .goto Thunder Bluff,71.60,30.15,80 >>Reist zur Anhöhe der Ältesten
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Gebt die Quest Körper und Herz ab
    .target Turak Runetotem
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Dies öffnet eine einfache Quest. Falls ihr bereits 2 Berufe habt, überspringt diesen Schritt|r
    .train 8613 >>Erlernt |T134366:0|t[Kürschnerei]
    .target Mooranta
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .accept 768 >> Akzeptiert die Quest Leder sammeln
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft zwölf|r |T134252:0|t[Leichtes Leder] |cRXP_BUY_aus dem Auktionshaus|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .turnin 768 >> Gebt die Quest Leder sammeln ab
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_Kauft|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihr, um euren Begleiter zu füttern|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #loop
    #completewith VentureCoKills
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
	#era/som
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >> Reist zur Mine der Venture Company
step << Shaman
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #season 2
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert ihn für |cRXP_LOOT_Fizsprockets Klemmbrett|r
    >>|cRXP_WARN_Lauft in die Mine und haltet euch an der rechten/östlichen Seite, um ihn zu erreichen|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step << Shaman
    #season 2
    #label VentureCoKills
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
    #season 2
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >> Reist nach Donnerfels
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76156 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76160 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #sticky
    #completewith ThunderBluff
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r]. Benutzt es, um die Quest zu starten
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr ihn nicht finden könnt|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Akzeptiert die Quest Der Dämonennarbenumhang
    .use 4854
    .unitscan Ghost Howl
step << Druid
    #season 2
    #completewith ProwlerClaws
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r und |cRXP_ENEMY_Präriewolfalpha|r. Plündert sie für |T134903:0|t[|cRXP_FRIENDLY_Idol of Bärenwut|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #completewith Arrachea
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Shaman
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Zauberhexerin der Windfurien|r. Plündert sie für ihre |cRXP_LOOT_Azurblaue Feder|r
    >>Tötet |cRXP_ENEMY_Matriarchin der Windfurien|r. Plündert sie für |cRXP_LOOT_Bronzene Feder|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,37.18,12.36,0
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Plündert|cRXP_LOOT_Windzornzapfen|r vom Boden
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step
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
step << Tauren
    .goto Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_Benutzt|r |T135139:0|t[Läuterungstotem der Wildmähnen] |cRXP_WARN_am Brunnen|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step << Warrior/Hunter
    #season 2
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>Tötet |cRXP_ENEMY_Arra'Chea|r (Großes schwarzes Kodo). Tötet und plündert ihn für sein |cRXP_LOOT_Horn|r << !Warrior !Hunter
    >>Tötet |cRXP_ENEMY_Arra'Chea|r (Großes schwarzes Kodo). Tötet und plündert ihn für sein |cRXP_LOOT_Horn|r und |T134419:0|t[|cRXP_FRIENDLY_Rune des wütenden Donners|r] << Warrior
    >>Tötet |cRXP_ENEMY_Arra'Chea|r (Großes schwarzes Kodo). Tötet und plündert ihn für sein |cRXP_LOOT_Horn|r und |T134419:0|t[|cRXP_FRIENDLY_Rune des Explosivschusses|r] << Hunter
    >>|cRXP_WARN_Er patrouilliert im Uhrzeigersinn um das nördliche-Mulgore|r
    .complete 776,1 --Horn of Arra'chea (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .unitscan Arra'chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
    --VV .line
step << Warrior
    #season 2
    .train 403476 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Wütenden Donners|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Explosivschusses|r]
    .use 206169
    .itemcount 206169,1
step
    #label Arrachea
    #loop
    .goto Mulgore,52.6,12.2,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    >>Tötet |cRXP_ENEMY_Arra'Chea|r (Großes schwarzes Kodo). Tötet und plündert ihn für sein |cRXP_LOOT_Horn|r
    >>|cRXP_WARN_Er patrouilliert im Uhrzeigersinn um das nördliche-Mulgore|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
    --VV .line
step
    #label ProwlerClaws
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
step << Druid
    #season 2
    #loop
    .goto Mulgore,43.78,10.96,0
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r und |cRXP_ENEMY_Präriewolfalpha|r. Plündert sie für |T134903:0|t[|cRXP_FRIENDLY_Idol of Bärenwut|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Legt die|r |T134903:0|t[|cRXP_FRIENDLY_Götze der Bärenwut|r] an
    .use 206954
    .train 410025,1
step << Druid
    #season 2
    #completewith next
    +Haltet 50+ Rage für mindestens 60 Sek. um|cRXP_WARN_ |T132135:0|t[Zerfleischen] erlernen zu können|r
step << Druid
    #season 2
    .train 410025 >> |cRXP_WARN_Benutzt die|r |T134903:0|t[|cRXP_FRIENDLY_Götze der Bärenwut|r] |cRXP_WARN_um|r |T132135:0|t[Zerfleischen] zu trainieren
    .use 206954
    .itemcount 206954,1
step
    #completewith next
    .zone Thunder Bluff >> Reist nach Donnerfels
step
    #label RFCPickups1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >> Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .target Rahauro
    .dungeon RFC
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>Gebt die Quest Riten der Erdenmutter ab
    .target Cairne Bloodhoof
    .isQuestComplete 776
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Gebt die Quest Vorbereitungen auf die Zeremonie ab
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76160 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76240 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft einen|r |T133894:0|t[Roher glänzender Kleinfisch] |cRXP_BUY_vom Auktionshaus|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Reist zu |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Erlernt |T136245:0|t[Angeln]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Kauft eine|r |T132932:0|t[Angelrute] |cRXP_BUY_und|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_von ihr|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Legt die|r |T132932:0|t[Angelrute] an
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Befestige das|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_WARN_an eurer|r |T132932:0|t[Angelrute]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Fischt im Teich, bis ihr einen |T133894:0|t[|cRXP_LOOT_Roher glänzender Kleinfisch|r] erhaltet
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>Benutzt das |T132147:0|t[Messer Set] um |T134007:0|t[Fischstücke] zu erstellen
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76240 >>Gebt die Quest Schleicht mit der Erdenmutter ab
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Gebt die Quest Der Weg der Jäger ab
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
step
    #completewith WildManeTurnIn
    .subzone 222 >>Reist zum Dorf der Bluthufe
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>Gebt die Quest Säuberung von Wildmane ab
    .target Mull Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <12,1
step
    #optional
    #label WildManeTurnIn
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> Reist zur Mine der Venture Company
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert ihn für |cRXP_LOOT_Fizsprockets Klemmbrett|r
    >>|cRXP_WARN_Lauft in die Mine und haltet euch an der rechten/östlichen Seite, um ihn zu erreichen|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step
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
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >> Farmt bis 7150+/8700 xp
step
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+6375 >> Farmt bis 6375+/8700 xp
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 764 >>Gebt die Quest Die Venture Company ab
    .turnin 765 >>Gebt die Quest Vorsteher Fizsprocket ab
	.unitscan Morin Cloudstalker
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 5242 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <12,1
step
    #completewith HidesTurnIn
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >> Reist nach Camp Taurajo
    .cooldown item,6948,<0,1
step
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Omusa Thunderhorn
    .cooldown item,6948,<0,1
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Gebt die Quest Rückkehr zu Jahan ab
    .target Jahan Hawkwing
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
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
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Gebt die Quest Sergra Darkthorn ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step << Shaman
    #completewith next
    >>Sucht nach |cRXP_PICK_Chens leeres Fässchen|r neben |cRXP_FRIENDLY_Kranal|r. Sammelt die Beute und startet die Quest
    >>|cRXP_WARN_Ihr könnt es später holen, falls es nicht da ist|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
    .use 4926
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
    .goto Durotar,39.34,28.25,40,0
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


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#name 1-7 Mulgore
#next 7-13 Mulgore
#defaultfor Tauren


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
    #season 2
    .goto Mulgore,44.35,76.68
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >> |cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >> |cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] |cRXP_BUY_und eines eurer|r |T133964:0|t[Zäher Brocken Brot] |cRXP_WARN_(sie können durch Umschalt-Klick aufgeteilt werden)|r |cRXP_BUY_und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r] und |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] von ihm|r << Warrior
    >> |cRXP_BUY_Verkauft eure|r |T135005:0|t[Hemd] |cRXP_BUY_und eines eurer|r |T134534:0|t[Waldpilzkappe] |cRXP_WARN_(sie können durch Umschalt-Klick aufgeteilt werden)|r |cRXP_BUY_und kauft das |T134920:0|t[|cRXP_FRIENDLY_Kajarisches Symbol|r] |cRXP_BUY_und|r |T134918:0|t[|cRXP_FRIENDLY_Dyadisches Symbol|r] |cRXP_BUY_von ihm|r << Shaman
    >> |cRXP_BUY_Verkauft euer|r |T135005:0|t[Hemd] |cRXP_BUY_und|r |T132794:0|t[Wasser] |cRXP_BUY_und kauft die folgenden Runen:|r  << Hunter
    >> |cRXP_BUY_Verkauft Eure|r |T133975:0|t[Äpfel] |cRXP_BUY_und kauft die folgenden Runen:|r << Druid
    >> |cRXP_BUY_Verkauft die Trashgegenstände und kauft alle der folgenden Runen:|r << Shaman
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    >>Ihr werdet den Rest eurer Runen sehr bald erhalten
    .target Rune Broker
    .skipgossip
step
    #season 2
    #sticky
    #optional
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 204806 << Warrior --Rune of Victory Rush
    .use 209852 << Hunter --Rune of Kill Command
    .use 206168 << Hunter --Rune of the Chimera
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 206387 << Shaman --Kajaric Icon
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .equip 18 >> Legt das |T134920:0|t |cRXP_FRIENDLY_Kajarisches Symbol|r an. Ihr könnt es nach 30 Sek. benutzen, um |T237582:0|t[Lavaeruption] zu erlernen << Shaman
    .equip 18 >> Legt die |T134903:0|t[|cRXP_FRIENDLY_Mondgötze|r] an, ihr könnt es nach 30 Sek. benutzen um |T237472:0|t[Furor von Sturmgrimm] zu trainieren << Druid
    .train 425447 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r] << Warrior
    .train 403470 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] um |T132342:0|t[Siegesrausch] zu trainieren, ihr werdet sie bald eingravieren << Warrior
    .train 410111 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Tötungsbefehls|r], um |T236174:0|t[Tödlicher Schuss] zu erlernen << Hunter
    .train 410121 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Chimäre|r] um |T236176:0|t[Schimärenschuss] zu trainieren << Hunter
    .train 409580 >> Benutzt die |T133739:0|t[|cRXP_FRIENDLY_Abhandlung über das Löwenherz|r] um |T132185:0|t[Löwenherz] zu trainieren << Hunter
    .train 415423 >> Benutzt die |T133739:0|t[Abhandlung zum Aspekt der Viper|cRXP_FRIENDLY_] um |T132160:0|t[Aspekt der Viper]|r zu trainieren << Hunter
    .train 424718 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sterne|r] um |T135730:0|t[Sternensog] zu trainieren << Druid
    .train 416044 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] um |T236216:0|t[Sonnenfeuer] zu trainieren << Druid
    .train 439770 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sternschnuppe|r] um |T236168:0|t[Sternenregen] zu trainieren << Druid
    .engrave 7 >> Graviert |T236174:0|t[Tödlicher Schuss] auf eure Hosen << Hunter
    .engrave 7 >> Graviert |T236317:0|t[Rasender Angriff] auf eure Hosen << Warrior
    .engrave 7 >> Graviert |T135730:0|t[Sternensog] auf eure Beine << Druid
step << Hunter
    #season 2
    #optional
    #sticky
    .aura 409583 >> Denkt daran, Euer |T132185:0|t[Herz des Löwen] zu aktivieren
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >> Benutzt |T134920:0|t[|cRXP_FRIENDLY_Kajarisches Symbol|r] aus eurem Charakterfenster, um |T237582:0|t[Lavaeruption] zu erlernen
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >> Benutzt die |T134903:0|t[|cRXP_FRIENDLY_Mondgötze|r] aus Eurem Charakterpanel um |T237472:0|t[Furor von Sturmgrimm] zu trainieren
    .engrave 5 >> Graviert Euren Brustpanzer mit |T237472:0|t[Furor von Sturmgrimm]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >> Legt das |T134918:0|t[|cRXP_FRIENDLY_Dyadisches Symbol|r] an
    .train 410094 >> Benutzt es nach 30 Sek., um |T136050:0|t[Überladung] zu erlernen
    .use 206381
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Häuptling Hawkwind|r
    .accept 752 >>Akzeptiert die Quest Eine bescheidene Bitte
    .target Chief Hawkwind
step << Warrior/Shaman
    #season 0
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie, bis ihr 10 Kupfer an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step
    #season 2
    .goto Mulgore,46.05,75.32
    .xp 2 >>|cRXP_WARN_Tötet 4 |cRXP_ENEMY_Ebenenschreiter|r, um Stufe 2 zu erreichen. Sammelt Beute, bis ihr Gegenstände im Wert von 10 Kupfer habt|r << !Shaman !Druid
    .xp 2 >>|cRXP_WARN_Tötet 4 |cRXP_ENEMY_Ebenenschreiter|r, um Stufe 2 zu erreichen. Sammelt Beute, bis ihr Gegenstände im Wert von 42 Kupfer habt|r << Shaman
    .xp 2 >>|cRXP_WARN_Tötet 4 |cRXP_ENEMY_Ebenenschreiter|r, um Stufe 2 zu erreichen. Sammelt Beute, bis ihr Gegenstände im Wert von 20 Kupfer habt|r << Druid
    .mob Plainstrider
step << Shaman/Druid
    #season 2
    .goto Mulgore,46.36,75.89,50,0
    #completewith next
    +|cRXP_WARN_Tötet weiter |cRXP_ENEMY_Ebenenschreiter|r, bis ihr Gegenstände im Wert von 42 Kupfer habt|r << Shaman
    +|cRXP_WARN_Tötet weiter |cRXP_ENEMY_Ebenenschreiter|r, bis ihr Gegenstände im Wert von 20 Kupfer habt|r << Druid
    .money >0.0042 << Shaman
    .money >0.002 << Druid
step << Druid
    #season 2
    .goto Mulgore,45.08,75.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Akzeptiert die Quest Relikte der Tauren
    .turnin 77648 >>Gebt die Quest Relikte der Tauren ab
    .target Gart Mistrunner
step << Warrior/Shaman
    #season 0
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior/Shaman
    #season 2
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target Harutt Thunderhorn
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .accept 77651 >>Akzeptiert die Quest In die Dornenranken
    .turnin 77651 >>Gebt die Quest In die Dornenranken ab
    .target Harutt Thunderhorn
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers]
    .target Meela Dawnstrider
step << Shaman
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers]
    .accept 77652 >>Akzeptiert die Symbole der Macht
    .turnin 77652 >>Gebt die Quest Symbole der Macht ab
    .target Meela Dawnstrider
step << Shaman/Druid
    #season 2
    .goto Mulgore,44.15,77.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Varia|r
    >>|cRXP_BUY_Verkauft Müll|r |cRXP_WARN_VERKAUFT KEINE AUSRÜSTUNG, DIE IHR TRAGEN KÖNNT|r << Druid
    >>|cRXP_BUY_Kauft ein Paar|r |T132952:0|t[Schmutzige Lederhandschuhe] |cRXP_BUY_zum Gravieren einer Rune|r
    .collect 714,1 -- Dirty Leather Gloves
    .target Varia Hardhide
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Akzeptiert die Quest Die Stärke eines Jägers
    .turnin 77649 >>Gebt die Quest Die Stärke eines Jägers ab
    .target Lanka Farshot
step << Warrior/Shaman/Druid
    #season 2
    .equip 10 >> Legt die |T132938:0|t[Befleckte Kettenhandschuhe] an << Warrior
    .equip 10 >> Legt |T132952:0|t[Schmutzige Lederhandschuhe] an << Shaman/Druid
    .engrave 10 >> Graviert |T132342:0|t[Siegesrausch] auf eure Handschuhe << Warrior
    .equip 5 >> Legt die |T135010:0|t[Gesprungene Lederweste] an << Shaman
    .engrave 5 >> Graviert |T136050:0|t[Überladung] auf eurer Brust << Shaman
    .engrave 10 >> Graviert |T237582:0|t[Lavaeruption] auf euren Handschuhen << Shaman
    .engrave 10 >> Graviert |T236216:0|t[Sonnenfeuer] auf euren Handschuhen << Druid
    .use 2127 << Shaman/Druid --Cracked Leather Vest
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 714 << Shaman --Dirty Leather Gloves
step << Hunter
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >>|cRXP_BUY_Verkauft die Trashgegenstände und kauft alle der folgenden Runen:|r << Hunter
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    >>|cRXP_WARN_Ihr bekommt den Rest eurer Runen später|r
    .target Rune Broker
    .skipgossip
step << Hunter
    #season 2
    .train 410122 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des einsamen Wolfs|r] um |T132266:0|t[Einsamer Wolf] zu trainieren << Hunter
    .train 416086 >> Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Nahkampfs|r], um |T132394:0|t[Nahkampfspezialist] zu trainieren << Hunter
    .train 440563 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Guerrillas|r] um |T132171:0|t[Drauf und weg] zu trainieren << Hunter
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
step << Hunter
    .equip 10 >> Legt die |T132952:0|t[Gesprungenen Lederhandschuhe] an
    .engrave 10 >> Graviet |T236176:0|t[Schimärenschuss] auf eure Handschuhe
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Haltet Ausschau nach|r Brust/Gürtel/Umhang |cRXP_WARN_drops|r|cRXP_WARN_. Legt sie an und graviert die jeweiligen Runen|r
    .engrave 5 >> Graviert |T132266:0|t[Einsamer Wolf] auf eure |T132724:0|t[Brust]
    .engrave 6 >> Graviert |T132394:0|t[Nahkampfspezialist] auf euren |T132513:0|t[Gürtel]
    .engrave 15 >> Graviert |T132171:0|t[Drauf und weg] auf euren |T133771:0|t[Umhang]
step << Druid
    #sticky
    #optional
    >> |cRXP_WARN_Haltet Ausschau nach|r Umhang |cRXP_WARN_drops|r|cRXP_WARN_. Legt ihn an und graviert|r |T236168:0|t[Sternenregen] |cRXP_WARN_darauf|r
    .engrave 15 >> Graviert |T236168:0|t[Sternenregen] auf euren |T133771:0|t[Umhang]
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
    -->>|cRXP_WARN_Grind mobs on the way|r
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
    #optional
    #loop
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
    .xp 3+850 >> Farmt bis 850+/1400 xp
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
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Akzeptiert die Quest Tötet Spitzhauer!
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Gebt die Quest Geätzte Notiz ab
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Gebt die Quest Geätzte Notiz ab
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Gebt die Quest Tiefgrüne Notiz ab
    .train 8921 >> Erlernt |T136096:0|t[Mondfeuer]
    .target Gart Mistrunner
step << Druid
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Gebt die Quest Mit Runen beschriftete Notiz ab
    .train 8042 >>Erlernt |T136026:0|t[Erdschock]
    .target Meela Dawnstrider
step << Shaman
    #season 0
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
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Gebt die Quest Symbole der Macht ab
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,44.35,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> |cRXP_BUY_Verkauft-Schrott und kauft alle |T134419:0|t|cRXP_WARN_[Runen]|r, die ihr braucht, von ihm|r
    .target Rune Broker
    .skipgossip
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Akzeptiert die Quest Eine unvollendete Aufgabe
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate >1.99
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#name 7-13 Mulgore
#next 13-20 Das Brachland
#defaultfor Tauren


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_Wirkt|r |T136096:0|t[Mondfeuer] |cRXP_WARN_auf die drei|r |cRXP_ENEMY_Mondsteine|r|cRXP_WARN_. Eine Truhe wird zwischen den Steinen erscheinen|r
    >>Öffnet die |cRXP_PICK_Mondtruhe|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] |cRXP_WARN_zum Erlernen von|r |T236216:0|t[Sonnenfeuer]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >> Lauft zum Dorf der Bluthufe
    .subzoneskip 222
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r und |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 745 >>Akzeptiert die Quest Gemeinsame Nutzung des Landes
    .accept 767 >>Akzeptiert die Quest Ritus der Sicht
    .accept 746 >>Akzeptiert die Quest Zwergen-Buddelei
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r und |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 767 >>Akzeptiert die Quest Ritus der Sicht
    .accept 746 >>Akzeptiert die Quest Zwergen-Buddelei
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .turnin 1656 >>Gebt die Quest Eine unvollendete Aufgabe ab
    .home >>Setzt den Ruhestein von Euch in Das Dorf der Bluthufe
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
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
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r und |cRXP_FRIENDLY_Mull|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Gebt die Quest Ritus der Sicht ab
    .accept 771 >>Akzeptiert die Quest Ritus der Sicht
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .accept 748 >>Akzeptiert die Quest Vergiftetes Wasser
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r und |cRXP_FRIENDLY_Harken|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Gebt die Quest Ritus der Sicht ab
    .accept 771 >>Akzeptiert die Quest Ritus der Sicht
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
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
    >>Tötet |cRXP_ENEMY_Präriewölfe|r und |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Pfoten|r und |cRXP_LOOT_Krallen|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>Wirkt |T132212:0|t[Mal des Jägers] auf den |cRXP_ENEMY_Raschelnden Busch|r
    >>Tötet die |cRXP_ENEMY_Wilderer der Venture Co.|r welche erscheinen. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Sammelt die |cRXP_PICK_Bernsteinkörner|r vom Boden unter den Bäumen
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
	.goto Mulgore,50.82,66.66,50,0
	.goto Mulgore,51.06,63.63,50,0
	.goto Mulgore,52.79,62.06,50,0
	.goto Mulgore,53.98,61.68,50,0
	.goto Mulgore,55.67,62.77,50,0
	.goto Mulgore,56.46,64.93,50,0
	.goto Mulgore,56.02,67.78,50,0
	.goto Mulgore,55.02,69.65,50,0
	.goto Mulgore,52.33,70.07,50,0
	.goto Mulgore,50.40,70.24,50,0
	.goto Mulgore,48.60,69.43,50,0
	.goto Mulgore,45.98,69.70,50,0
	.goto Mulgore,48.58,67.37,50,0
    >>Tötet |cRXP_ENEMY_Präriewölfe|r und |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Pfoten|r und |cRXP_LOOT_Krallen|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
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
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Sammelt die |cRXP_PICK_Quellsteine|r um den Brunnen ein
    .complete 771,1 --Well Stone (2)
step
    #xprate <2.1
    #completewith Gnolls
    >>|cRXP_WARN_Sammelt die Gegenstände für Mazzranache, während ihr in der Zone an Aufträgen arbeitet|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Geht hin und her zwischen den zwei Lagern. Tötet die |cRXP_ENEMY_Gerber der Bleichmähnen|r, die |cRXP_ENEMY_Kürschner der Bleichmähnen|r und die |cRXP_ENEMY_Wilderer der Bleichmähnen|r.Plündert sie für einen |cRXP_LOOT_Abgetrennter Gnollkopf|r
    >>|cRXP_WARN_Passt auf vor|r |cRXP_ENEMY_Stummelspeer|r |cRXP_WARN_(Lvl 9 Selten). Er ist zu schwer zu Töten.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .train 403475,1
step
    #xprate <2.1
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Geht hin und her zwischen den zwei Lagern. Tötet die |cRXP_ENEMY_Gerber der Bleichmähnen|r, die |cRXP_ENEMY_Kürschner der Bleichmähnen|r und die |cRXP_ENEMY_Wilderer der Bleichmähnen|r
    >>|cRXP_WARN_Passt auf vor|r |cRXP_ENEMY_Stummelspeer|r |cRXP_WARN_(Lvl 9 Selten). Er ist zu schwer zu Töten.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .vendor >> Verkauft Müll
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Gebt die Quest Säuberung von Winterhoof ab
    .accept 756 >>Akzeptiert die Quest Thunderhorn-Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Gebt die Quest Gemeinsame Nutzung des Landes ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << !Tauren
    #xprate <2.1
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Gebt die Quest Gemeinsame Nutzung des Landes ab
    .target Baine Bloodhoof
step << Tauren
    #xprate >2.09
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>Gebt die Quest Säuberung von Winterhoof ab
    .target Mull Thunderhorn
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
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Folge nicht dem Wolf, der erscheint|r
    .turnin 771 >>Gebt die Quest Ritus der Sicht ab
    .accept 772 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step << Hunter
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    #xprate <2.1
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    #xprate <2.1
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    #xprate <2.1
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <8,1
step
    #xprate <2.1
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .accept 749 >>Akzeptiert die Quest Die Überfallene Karawane
	.unitscan Morin Cloudstalker
step
    #xprate <2.1
    #completewith Clawsx
    >>|cRXP_WARN_Sammelt die Gegenstände für Mazzranache, während ihr in der Zone an Aufträgen arbeitet|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
	#completewith Clawsx
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <2.1
    #completewith next
    >>Tötet |cRXP_ENEMY_StalkersPräriepirscher|r und |cRXP_ENEMY_Pumas|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    #xprate <2.1
    .goto Mulgore,53.74,48.17
    >>Klickt die |cRXP_PICK_Versiegelte Vorratskiste|r
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step << Tauren
    #xprate <2.1
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
step
    #xprate <2.1
    #softcore
	#completewith Thunderhorn
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #xprate <2.1
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >> Reist zurück zum Dorf der Bluthufe
    .subzoneskip 222
step << Hunter
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <2.1
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkaufttrash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (7s 1c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn diese euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (4s 14c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cRXP_BUY_von ihm|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <2.1
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harant|r
    .vendor >> Verkauft trash und repariert
    .target Harant Ironbrace
step
    #xprate <2.1
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    #xprate <2.1
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
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <8,1
    .xp >10,1
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Akzeptiert die Quest Ruf des Feuers
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <10,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <8,1
    .xp >10,1
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 5928 >> Akzeptiert die Quest Dem Ruf folgen
    .target Gennia Runetotem
    .isQuestAvailable 5928
    .xp <10,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .target Krang Stonehoof
    .xp <10,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
    .xp >10,1
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <10,1
step << Hunter
    #optional
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r |cRXP_WARN_auf maximaler Reichweite|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
    .isOnQuest 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6087 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Yaw Sharpmane
    .isQuestComplete 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .accept 6087 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Präriepirscher|r |cRXP_WARN_bei maximaler Reichweite|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6088 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Sturzflieger|r |cRXP_WARN_bei maximaler Reichweite und wirkt es sofort erneut, falls sie euch zu Boden werfen|r
    >>|cRXP_WARN_Falls ihr fehlschlagt und eure Zähmerruten-Aufladungen aufgebraucht sind, brecht die Quest ab, nehmt sie wieder an und kommt zurück|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6089 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihm|r << Warrior
    .vendor >> Verkauft Müll << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <2.1
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Benutzt das|r |T135139:0|t[Säuberung von Thunderhorn] |cRXP_WARN_am Brunnen|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Artefaktlagertruhenschlüssel|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step
    .goto Mulgore,31.27,49.87
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Ausgrabungsleiterhacke|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .use 4702 >> Benutzt die |T134707:0|t[Spitzhacken] bei der Schmiede
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,34.33,47.54,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Artefaktlagertruhenschlüssel|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>Öffnet die |cRXP_PICK_Artefaktlagertruhe|r Truhe. Plündert sie für das |T134918:0|t|cRXP_LOOT_[Schwefliges Symbol]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    .equip 18,206388 >> |cRXP_WARN_Legt das|r |T134918:0|t|cRXP_LOOT_[Schweflige Symbol]|r an
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies an Feinden tun, die Erfahrung gewähren können, um Stapel zu erhalten|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior
    #xprate <2.1
    #season 2
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Tötet |cRXP_ENEMY_Windhexe der Windfurien|r und |cRXP_ENEMY_Harpyie der Windfurien|r. Plündert sie für |cRXP_LOOT_Windfurienkralle|r und einen |cRXP_LOOT_Abgetrennter Harpyienkopf|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #loop
	.goto Mulgore,31.74,40.31,0
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Tötet |cRXP_ENEMY_Windhexe der Windfurien|r und |cRXP_ENEMY_Harpyie der Windfurien|r. Plündert sie für |cRXP_LOOT_Windfurienkralle|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >> Betretet die Höhle direkt nördlich von den Harpyien der Windfurien
step
    #xprate <2.1
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Gebt die Quest Ritus der Sicht ab
    .accept 773 >>Akzeptiert die Quest Ritus der Weisheit
    .target Seer Wiserunner
step
    #xprate >2.09
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Gebt die Quest Ritus der Sicht ab
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Benutzt das|r |T134918:0|t|cRXP_LOOT_[Schweflige Symbol]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] zu erlernen
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >> |cRXP_WARN_Ihr könnt|r |T134712:0|t[Wasser der Seher] |cRXP_WARN_zerstören, da es nicht mehr benötigt wird|r
step << Druid/Hunter/Shaman
    #completewith next
    .goto Thunder Bluff,32.00,66.69
    .zone Thunder Bluff >>Reist nach Donnerfels
    .isOnQuest 6089 << Hunter
    .xp <10,1 << Druid
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .accept 76156 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
    .xp <10,1
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Akzeptiert die Quest Die Oasen des Brachlandes
    .target Arch Druid Hamuul Runetotem
    .xp <10,1
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
    .xp <10,1
step << Druid
    #completewith GreatBearS
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Gebt die Quest Mondlichtung ab
    .accept 5930 >>Akzeptiert die Quest Großer Bärengeist
    .target Dendrite Starblaze
    .isOnQuest 5922
step << Druid
    #label GreatBearS
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .accept 5930 >>Akzeptiert die Quest Großer Bärengeist
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großer Bärengeist|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Gebt die Quest Großer Bärengeist ab
    .accept 5932 >>Akzeptiert die Quest Zurück nach Donnerfels
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    #completewith DruidBearForm
    .hs >> Ruhestein nach Donnerfels
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Gebt die Quest Zurück nach Donnerfels ab
    .accept 6002 >>Akzeptiert die Quest Körper und Herz
    .target Turak Runetotem
    .isQuestTurnedIn 5922
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Gebt die Quest Die Ausbildung des Tiers ab
    .target Holt Thunderhorn
    .isOnQuest 6089
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
    .isQuestTurnedIn 6089
step << Hunter
    #completewith SacredBurial
    +|cRXP_WARN_Zieht|r |T132162:0|t[Wildtierausbildung] |cRXP_WARN_auf eure Aktionsleisten. Lehrt eurem Begleiter Fähigkeiten|r
    .isQuestTurnedIn 6089
step << Druid/Hunter/Shaman
    #xprate <2.1
    .goto Thunder Bluff,53.81,27.82,30,0
    .goto Mulgore,59.85,25.62
    .zone Mulgore >>Verlasst Donnerfels beim nördlichen Aufzug
    .zoneskip Thunder Bluff,1
    .isQuestTurnedIn 6089 << Hunter
    .isQuestTurnedIn 5932 << Druid
step << Hunter
    #xprate <2.1
    #completewith SacredBurial
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Präriewolfalpha|r
    >>|cRXP_WARN_Dies erlaubt es euch|r |T132278:0|t[Biss Rang 2] zu trainieren
    .mob Prairie Wolf Alpha
step
    #xprate <2.1
    #completewith SacredBurial
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #completewith SacredBurial
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r]. Benutzt es, um die Quest zu starten
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Geistheuler|r schwierig ist, weil er Stufe 12 ist|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Akzeptiert die Quest Der Dämonennarbenumhang
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <2.1
	#completewith next
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Akzeptiert die Quest Eine heilige Bestattung
    .target Lorekeeper Raintotem
step
    #optional
    #label SacredBurial
step << Warrior
    #xprate <2.1
    #season 2
    #completewith RiteofWisdom
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r. Plündert sie für |cRXP_LOOT_Abgetrennter Stacheleberkopf|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <2.1
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Vorfahrengeist|r
    .turnin 773 >>Gebt die Quest Ritus der Weisheit ab
    .accept 775 >>Akzeptiert die Quest Reise nach Donnerfels
    .target Ancestral Spirit
step << Warrior
    #xprate <2.1
    #season 2
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r. Plündert sie für |cRXP_LOOT_Abgetrennter Stacheleberkopf|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Gebt die Quest Eine heilige Bestattung ab
    .target Lorekeeper Raintotem
step
    #xprate <2.1
    #completewith next
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #loop
	.goto Mulgore,51.00,18.40,0
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
	.goto Mulgore,59.52,23.36,60,0
	>>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
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
step << skip --Cannon removed from game
    #season 2
    #softcore
    #completewith Bloodhoofturnins1
    .goto Thunder Bluff,41.17,67.66
    +Klickt die |cRXP_PICK_Ultra-Kanone|r, um euch in Das Dorf der Bluthufe zurückzubringen
    >>|cRXP_WARN_Ihr werdet bei Ankunft sterben, könnt aber sofort wiederbelebt werden|r
    >>Entfernt euren|cRXP_WARN_ |T135992:0|t[Magische Flügel] |rBuff, wenn noch 2 Sek. übrig sind, um zu versuchen, im Fluss zu landen und den Tod zu vermeiden|cRXP_WARN_
    .zoneskip Thunder Bluff,1
step
    #completewith Bloodhoofturnins1
    .zone Mulgore >>Verlasst Donnerfels
    .zoneskip Thunder Bluff,1
step
    #softcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,48.22,38.85
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    >>|cRXP_WARN_Stellt sicher, dass ihr beim Wegpunkt-Pfeil oder weiter südlich davon sterbt|r
    .zoneskip Thunder Bluff
step
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >> Reist zurück zum Dorf der Bluthufe
    .subzoneskip 222
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #xprate <2.1
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vateya|r im Dorf der Bluthufe
    >>Gebt die |cRXP_LOOT_Köpfe|r, die ihr gesammelt habt, im Austausch für die |T134455:0|t[Runenfragmente] ab
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>Benutzt die |T134455:0|t[Runenfragmente], um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r] zu erschaffen
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Verwüstung|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    --.accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    #xprate <2.1
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
step << Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r und |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    --.accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << !Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r und |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #xprate >2.09
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
step
    #xprate >2.09
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r und |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #completewith AlphaTeeth
    .destroy 4702 >> |cRXP_WARN_Ihr könnt|r |T134707:0|t[Ausgrabungsleiterhacke] |cRXP_WARN_zerstören, da sie nicht mehr benötigt werden|r
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 2687 >>Trainiere deine Klassenfähigkeiten
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .target Krang Stonehoof
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 7384 >>Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <12,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8050 >>Trainiere deine Klassenfähigkeiten
    .accept 2984 >>Akzeptiert die Quest Ruf des Feuers
    .target Narm Skychaser
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 547 >>Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Akzeptiert die Quest Die Zähmung der Bestie
    .train 13165 >>Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .isQuestAvailable 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8924 >> Trainiere deine Klassenfähigkeiten
    .accept 5928 >> Akzeptiert die Quest Dem Ruf folgen
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8936 >> Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <12,1
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
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step << skip
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Akzeptiert die Quest Der Weg der Jäger
    .target Skorn Whitecloud
step
    #xprate >2.09
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .accept 749 >>Akzeptiert die Quest Die Überfallene Karawane
	.unitscan Morin Cloudstalker
step << Hunter
    #xprate >2.09
    #loop
    .goto Mulgore,67.19,63.78,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01,50,0
    .train 16828 >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einen |cRXP_ENEMY_Präriewolfalpha|r. Greift mit ihm Gegner an, um |r |T132140:0|t[Klaue (Rang 3)] zu erlernen
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
    .mob Prairie Wolf Alpha
step
    #xprate >2.09
    .goto Mulgore,53.74,48.17
    >>Klickt die |cRXP_PICK_Versiegelte Vorratskiste|r
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 751 >> Gebt die Quest Die Überfallene Karawane ab
    .accept 764 >> Akzeptiert die Quest Die Venture Company
    .accept 765 >> Akzeptiert die Quest Vorsteher Fizsprocket
	.unitscan Morin Cloudstalker
step
    #season 2
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >> Reist zur Mine der Venture Company
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert ihn für |cRXP_LOOT_Fizsprockets Klemmbrett|r
    >>|cRXP_WARN_Lauft in die Mine und haltet euch an der rechten/östlichen Seite, um ihn zu erreichen|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step
    #label VentureCoKills
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
    #season 2
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 764 >>Gebt die Quest Die Venture Company ab
    .turnin 765 >>Gebt die Quest Vorsteher Fizsprocket ab
	.unitscan Morin Cloudstalker
step << Druid
    #season 2
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
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r und |cRXP_ENEMY_Präriewolfalpha|r. Plündert sie für |T134903:0|t[|cRXP_FRIENDLY_Idol of Bärenwut|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Legt die|r |T134903:0|t[|cRXP_FRIENDLY_Götze der Bärenwut|r] an
    .use 206954
    .train 410025,1
    .itemcount 206954,1
step << Druid
    #season 2
    #completewith next
    +Haltet 50+ Rage für mindestens 60 Sek. um|cRXP_WARN_ |T132135:0|t[Zerfleischen] erlernen zu können|r
step << Druid
    #season 2
    .train 410025 >> |cRXP_WARN_Benutzt die|r |T134903:0|t[|cRXP_FRIENDLY_Götze der Bärenwut|r] |cRXP_WARN_um|r |T132135:0|t[Zerfleischen] zu trainieren
    .use 206954
    .itemcount 206954,1
step << skip
    #label AlphaTeeth
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01
    >>Tötet die |cRXP_ENEMY_Präriewolfalphas|r in der Gegend. Plündert sie für ihre |cRXP_LOOT_Zähne|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << skip
    #softcore
	#completewith Thunderhorn2
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << skip
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >> Reist zurück zum Dorf der Bluthufe
step << skip
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Gebt die Quest Wildmane-Totem ab
    .accept 760 >>Akzeptiert die Quest Säuberung von Wildmane
    .target Mull Thunderhorn
step
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Reist nach Das Brachland
    .isQuestAvailable 5922
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Akzeptiert die Quest Die Oasen des Brachlandes
    .target Arch Druid Hamuul Runetotem
    .isQuestAvailable 5922
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Gebt die Quest Dem Ruf folgen ab
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
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
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
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
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
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
    .zoneskip Thunder Bluff,1
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>Lauft zum Mondkinstein und benutzt |T132857:0|t[Lunarstaub des Cenarius]. Tötet |cRXP_ENEMY_Mondklaue|r
    >>|cRXP_WARN_Vermeidet|r |cRXP_ENEMY_Donnerköpfe|r |cRXP_WARN_in der Gegend|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob Lunaclaw
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
	.target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kirge Sternhorn|r
    .accept 854 >>Akzeptiert die Quest Reise nach Crossroads
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Reisen nördlichen in Richtung Das Wegekreuz
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Gebt die Quest Die Oasen des Brachlandes ab << Druid
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380,1
    .subzoneskip 380
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Gebt die Quest Reise zum Wegekreuz ab
    .target Thork
step
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Akzeptiert die Quest Ein Bündel Bälge
    .target Jahan Hawkwing
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
step
    #xprate <2.1
    #completewith next
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Haltet maximalen Abstand zu |cRXP_ENEMY_Kolkar|r |cRXP_WARN_während ihr die Pilze plündert. Sie sind Stufe 12-14|r
    >>|cRXP_WARN_Die Folgequest bietet den starken |cRXP_FRIENDLY_Kesselrührer|r |cRXP_WARN_als Belohnung. Ihr könnt diese Quest jetzt überspringen, wenn ihr ihn nicht verwenden wollt|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    .goto The Barrens,45.06,22.54
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #xprate <2.1
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Haltet maximalen Abstand zu |cRXP_ENEMY_Kolkar|r |cRXP_WARN_während ihr die Pilze plündert. Sie sind Stufe 12-14|r
    >>|cRXP_WARN_Die Folgequest bietet den starken |cRXP_FRIENDLY_Kesselrührer|r |cRXP_WARN_als Belohnung. Ihr könnt diese Quest jetzt überspringen, wenn ihr ihn nicht verwenden wollt|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    #softcore
	#completewith ZamahPickup
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #xprate <2.1
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >> Reist zurück zum Wegekreuz
step
    #xprate <2.1
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #xprate <2.1
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    >>|cRXP_WARN_Dies startet eine 45-Minuten-Quest|r
    .turnin 848 >>Gebt die Quest Pilzsporen ab
    .timer 7,Pilzsporen RP
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Dies startet eine 45-Minuten-Quest|r
    .accept 853 >>Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    #xprate <2.1
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
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Gebt die Quest Der Weg der Jäger ab
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestComplete 861
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Gebt die Quest Die Ausbildung des Tiers ab
    .target Holt Thunderhorn
step << Hunter
    #optional
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holt|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Holt Thunderhorn
    .xp <12,1
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    >>|cRXP_WARN_Zieht|r |T132162:0|t[Wildtierausbildung] |cRXP_WARN_auf eure Aktionsleisten. Lehrt eurem Begleiter Fähigkeiten|r
    .train 24547 >>Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ker|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Ker Ragetotem
    .xp <12,1
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Erlernt Zweihandstreitkolben
    .target Ansekhwa
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Akzeptiert die Quest Vorbereitungen auf die Zeremonie
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76156 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76160 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
step
    #xprate <2.1
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step
    #xprate <2.1
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Gebt die Quest Apothekerin Zamah ab
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <2.1
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_Legt |r |T135145:0|t[Kesselrührer] an
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tigor|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Tigor Skychaser
    .xp <12,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Netali|r und |cRXP_FRIENDLY_Mooart|r auf der Anhöhe der Geister
    +Tötet |cRXP_FRIENDLY_Mooart|r wenn er feindselig wird
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Netali|r
    >>Nehmt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] von ihr
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .accept 6364 >>Akzeptiert die Quest Rückkehr zu Jahan
    .target Tal
step
    #xprate <2.1
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    --.accept 776 >>Accept Rites of the Earthmother
    .target Cairne Bloodhoof
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Gebt die Quest Körper und Herz ab
    .target Turak Runetotem
step << Druid
    #optional
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .train 8936 >> Trainiere deine Klassenfähigkeiten
    .target Turak Runetotem
    .xp <12,1
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >> Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .target Rahauro
    .dungeon RFC
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Dies öffnet eine einfache Quest. Falls ihr bereits 2 Berufe habt, überspringt diesen Schritt|r
    .train 8613 >>Erlernt |T134366:0|t[Kürschnerei]
    .target Mooranta
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .accept 768 >> Akzeptiert die Quest Leder sammeln
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft zwölf|r |T134252:0|t[Leichtes Leder] |cRXP_BUY_aus dem Auktionshaus|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .turnin 768 >> Gebt die Quest Leder sammeln ab
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_Kauft|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihr, um euren Begleiter zu füttern|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Zauberhexerin der Windfurien|r. Plündert sie für ihre |cRXP_LOOT_Azurblaue Feder|r
    >>Tötet |cRXP_ENEMY_Matriarchin der Windfurien|r. Plündert sie für |cRXP_LOOT_Bronzene Feder|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,37.18,12.36,0
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Plündert|cRXP_LOOT_Windzornzapfen|r vom Boden
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step << Shaman
    #season 2
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
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >> Reist nach Donnerfels
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Gebt die Quest Vorbereitungen auf die Zeremonie ab
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76160 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76240 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft einen|r |T133894:0|t[Roher glänzender Kleinfisch] |cRXP_BUY_vom Auktionshaus|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Reist zu |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Erlernt |T136245:0|t[Angeln]
    .target Kah Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Kauft eine|r |T132932:0|t[Angelrute] |cRXP_BUY_und|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_von ihr|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Legt die|r |T132932:0|t[Angelrute] an
    .use 6256
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Befestige das|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_WARN_an eurer|r |T132932:0|t[Angelrute]
    .use 6529
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Fischt im Teich, bis ihr einen |T133894:0|t[|cRXP_LOOT_Roher glänzender Kleinfisch|r] erhaltet
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
step << Shaman
    #season 2
    >>Benutzt das |T132147:0|t[Messer Set] um |T134007:0|t[Fischstücke] zu erstellen
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76240 >>Gebt die Quest Schleicht mit der Erdenmutter ab
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
step
    #completewith HidesTurnIn
    .hs >> Ruhestein nach Das Wegekreuz
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
step
    #label HidesTurnIn
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Gebt die Quest Rückkehr zu Jahan ab
    .target Jahan Hawkwing
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .accept 867 >>Akzeptiert die Quest Räuberische Harpyien
    .target Darsok Swiftdagger
step
    #optional
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
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Kauft|r |T135613:0|t[Jägerschießeisen] |cRXP_BUY_von ihm|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Legt das|r |T135613:0|t[Jägerschießeisen] an
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Shaman
    #completewith next
    >>Sucht nach |cRXP_PICK_Chens leeres Fässchen|r neben |cRXP_FRIENDLY_Kranal|r. Sammelt die Beute und startet die Quest
    >>|cRXP_WARN_Ihr könnt es später holen, falls es nicht da ist|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
    .use 4926
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
step << Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step << Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >> Geht in die Staubwindhöhle
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Tötet |cRXP_ENEMY_Kultisten|r. Plündert sie für |cRXP_LOOT_Reagenzienbeutel|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
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
    .goto Durotar,39.34,28.25,40,0
    >>Tötet |cRXP_ENEMY_Blitzechse|r. Plündert sie für ihre |cRXP_ENEMY_Schuppen|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Gebt die Quest Weg der Verteidigung ab
    .accept 1502 >>Akzeptiert die Quest Thun'grim Firegaze
    .target Uzzek
step
    #optional
    .abandon 761 >>Brecht die Quest Sturzfliegerjagd ab
step
    #optional
    .abandon 766 >>Brecht die Quest Mazzranache ab
]])
