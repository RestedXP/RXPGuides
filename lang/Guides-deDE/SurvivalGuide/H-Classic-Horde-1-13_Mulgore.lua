if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Horde
#name 1-6 Tauren
#version 1
#group RestedXP Überlebens-Guide (H)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Tauren
#next Lauft zum Dorf der Bluthufe

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
    .target Marjak
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
    .train 8921 >>Erlernt |T136096:0|t[Mondfeuer]
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
    #completewith next
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
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>Reist in die Höhle. Plündert die |T134269:0|t[|cRXP_PICK_Verschmutzte Karte|r] vom Boden und benutzt sie, um die Quest zu beginnen
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Akzeptiert die Quest Angriff auf Camp Narache
    .use 4851
step << Shaman
    #completewith next
    >>Tötet |cRXP_ENEMY_Schamane der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Ritualsalbe|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
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
    .xp 5+880 >> Farmt bis 880+/2800 XP << !Shaman
    .xp 5 >> Farmt bis Stufe 5 << Shaman
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Canaga|r
    .turnin 1521 >>Gebt die Quest Ruf der Erde ab
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
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
#hardcore
#classic
#tbc
#era/som--h
<< Horde
#name Lauft zum Dorf der Bluthufe
#version 1
#group RestedXP Überlebens-Guide (H)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Tauren
#next 13-15 Silberwald


step
	#completewith next
    .goto Mulgore,47.35,60.70,120 >> Lauft zum Dorf der Bluthufe
    .subzoneskip 222
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
    #completewith next
    >>Tötet |cRXP_ENEMY_Präriewölfe|r und |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Pfoten|r und |cRXP_LOOT_Krallen|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Sammelt die |cRXP_PICK_Bernsteinkörner|r vom Boden unter den Bäumen
    .complete 771,2 --Ambercorn (2)
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
    #completewith next
    >>|cRXP_WARN_Sammelt die Gegenstände für Mazzranache, während ihr in der Zone an Aufträgen arbeitet|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
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
step
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
    .target Zarlman Two-Moons
    .accept 772 >>Akzeptiert die Quest Ritus der Sicht
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Moorat|r
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
    .vendor >> Verkauft Müll
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
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Benutzt das|r |T135139:0|t[Säuberung von Thunderhorn] |cRXP_WARN_am Brunnen|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto Mulgore,31.27,49.87
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Ausgrabungsleiterhacke|r
    .use 4702 >> |cRXP_WARN_Zerstört die|r |T134707:0|t[Spitzhacken] |cRXP_WARN_in der Schmiede|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
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
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_Zerstört|r |T134712:0|t[Wasser der Seher] |cRXP_WARN_, da ihr es nicht braucht|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_Beendet das Sammeln der Gegenstände für Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
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
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Vorfahrengeist|r
    .turnin 773 >>Gebt die Quest Ritus der Weisheit ab
    .accept 775 >>Akzeptiert die Quest Reise nach Donnerfels
    .target Ancestral Spirit
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
step << !Druid
    #completewith Bloodhooffinalturnins1
    .hs >>Benutzt euren Ruhestein zum Dorf der Bluthufe
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #completewith Bloodhooffinalturnins1
    .goto Mulgore,47.33,57.17,120 >> Reist zurück zum Dorf der Bluthufe
    .subzoneskip 222
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .vendor >> Verkauft Müll
    .target Innkeeper Kauth
    .isQuestAvailable 870
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
    .train 6546 >>Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Akzeptiert die Quest Ruf des Feuers
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .accept 5928 >>Akzeptiert die Quest Dem Ruf folgen
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
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
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
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
    .group
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
	.unitscan Morin Cloudstalker
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> Reist zur Mine der Venture Company
    .group
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
    .group 2
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert ihn für |cRXP_LOOT_Fizsprockets Klemmbrett|r
    >>|cRXP_WARN_Lauft in die Mine und haltet euch an der rechten/östlichen Seite, um ihn zu erreichen|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
    .group 2
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
    .group 2
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
    .group
step << Hunter
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
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Präriewolfalpha|r
    >>|cRXP_WARN_Dies erlaubt es euch|r |T132278:0|t[Biss Rang 2] zu trainieren
    .mob Prairie Wolf Alpha
step
    #completewith next
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Lauft ins Brachland
step
    .goto The Barrens,44.45,59.16
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
    >>|cRXP_WARN_Bleibt auf der Straße. Sonst könntet ihr hochstufige Mobs anziehen.|r
 step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Gazrog|r |cRXP_FRIENDLY_Thork|r und |cRXP_FRIENDLY_Jahan|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.00
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 854 >>Gebt die Quest Reise zum Wegekreuz ab << Tauren
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target +Thork
    .goto The Barrens,51.50,30.87
    .accept 6361 >>Akzeptiert die Quest Ein Bündel Bälge
    .target +Jahan Hawkwing
    .goto The Barrens,51.21,29.05
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Gebt die Quest Ein Bündel Bälge ab
    .accept 6362 >>Akzeptiert die Quest Flug nach Thunder Bluff
    .target Devrak
step << Hunter/Druid
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .target Devrak
    .zoneskip Thunder Bluff
step << Hunter/Druid
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Gebt die Quest Flug nach Donnerfels ab
    .accept 6363 >>Akzeptiert die Quest Tal der Windreitermeister
    .target Ahanu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
step << Hunter/Druid
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .target Cairne Bloodhoof
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
    #completewith ReturntoJahan
    +|cRXP_WARN_Zieht|r |T132162:0|t[Wildtierausbildung] |cRXP_WARN_auf eure Aktionsleisten. Lehrt eurem Begleiter Fähigkeiten|r
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
step << Druid/Hunter
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .accept 6364 >>Akzeptiert die Quest Rückkehr zu Jahan
    .target Tal
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Dies öffnet eine einfache Quest. Falls ihr bereits 2 Berufe habt, überspringt diesen Schritt|r
    .train 8613 >>Erlernt |T134366:0|t[Kürschnerei]
    .target Mooranta
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .accept 768 >> Akzeptiert die Quest Leder sammeln
    .target Veren Tallstrider
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    .collect 2318,12,768,1 >>|cRXP_BUY_Kauft zwölf|r |T134252:0|t[Leichtes Leder] |cRXP_BUY_aus dem Auktionshaus|r
    .target Auctioneer Stampi
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .turnin 768 >> Gebt die Quest Leder sammeln ab
    .target Veren Tallstrider
    .skill skinning,1,1
step << Hunter
    #completewith ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliegt zum Kreuzweg
    .target Tal
    .zoneskip The Barrens
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
step << Druid
    #completewith next
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Gebt die Quest Körper und Herz ab
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliegt zum Kreuzweg
    .target Tal
    .zoneskip The Barrens
step << Hunter/Druid
    #label ReturntoJahan
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Gebt die Quest Rückkehr zu Jahan ab
    .target Jahan Hawkwing
step << Shaman/Druid
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Kauft einen|r |T135154:0|t[Hirtenstab] |cRXP_BUY_bei ihm|r
    .collect 854,1,784,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith FurlScornbrow
    +|cRXP_WARN_Legt an|r |T135154:0|t[Hirtenstab] |cRXP_WARN_wenn ihr Stufe 11 seid|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Warrior
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Kauft einen|r |T133477:0|t[Riesiger Streitkolben] |cRXP_BUY_bei ihm|r
    .collect 1197,1,784,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #optional
    #completewith FurlScornbrow
    +|cRXP_WARN_Legt an|r |T133477:0|t[Riesiger Streitkolben]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uthrok|r
    >>|cRXP_BUY_Kauft viele|r |T132384:0|t[Heavy Shots] |cRXP_BUY_bei ihm|r
    >>|cRXP_WARN_Ihr werdet bald nicht mehr kaufen können!|r
    .collect 2519,1600,6061,1 --Heavy Shot (1600)
    .vendor >> Verkauft Müll
    .target Uthrok
    --Tauren Hunter gun not worth? Making them train bows in Org
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >> Reist nach Durotar
    .zoneskip Durotar
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
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Geht den Weg den Berg hinunter
    >>|cRXP_WARN_Seid vorsichtig und fallt nicht vom Berg. Der Weg ist sehr schmal. Ihr könntet sterben, wenn ihr fallt|r
step << Shaman
    #completewith next
    .zone The Barrens >> Reist nach dem Brachland
    .zoneskip The Barrens
step << Shaman
    #loop
    .goto The Barrens,53.57,25.51,0
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51,50,0
    >>Tötet einen |cRXP_ENEMY_Wassersucher der Grimmhauer|r oder |cRXP_ENEMY_Dornenwirker der Grimmhauer|r. Plündert sie für |cRXP_LOOT_Feuerteer|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #completewith FurlScornbrow
    .zone Durotar >> Reist nach Durotar
step << !Shaman
    #completewith FurlScornbrow
    .zone Durotar >> Reist nach Durotar
step
    #optional
    .abandon 764 >>Brecht die Quest Venture Company ab
    .abandon 765 >>Brecht die Quest Vorsteher Zischelspross ab
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step
    #label FurlScornbrow
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .vendor >> Verkauft Müll
    .home >> Setzt euren Ruhestein in Klingenhügel
    .bindlocation 362
    .isQuestAvailable 815
    .group
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Akzeptiert die Quest Zerbrecht ein paar Eier
    .target Cook Torka
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_Ihr könnt mit ihm von außen oder oben auf dem Bunker sprechen|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target Gar'thok
step
    #completewith Benedict
    .goto Durotar,58.08,57.13,120 >> Reist zur Burg Tiragarde
 step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Bewegt euch zum zweiten Stock der Burg
step
    #completewith AgedEnvelope
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Tötet |cRXP_ENEMY_Lieutenant Benedict|r. Plündert ihn für seinen |cRXP_LOOT_Schlüssel|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
 step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>|cRXP_WARN_Geht die Treppen in der Burg hinauf|r
    >>Öffnet |cRXP_PICK_Benedict's Truhe|r. Plündert sie für |T133471:0|t[|cRXP_LOOT_Vergilbter Umschlag|r]
    >>Benutzt den |T133471:0|t[|cRXP_LOOT_Vergilbter Umschlag|r] um die Quest zu starten
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Akzeptiert die Quest Die Befehle des Admirals
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Sailor
    .mob +Kul Tiras Marine
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >> Reisen toward Sen'jin
    .subzoneskip 367
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Akzeptiert die Quest Die Bürde eines Peons
    .target Ukor
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Akzeptiert die Quest Praktische Beute
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Akzeptiert die Quest Ein geistvolles Getränk
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .accept 808 >>Akzeptiert die Quest Minshinas Schädel
    .accept 826 >>Akzeptiert die Quest Zalazane
    .accept 823 >>Akzeptiert die Quest Bericht an Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith TaillasherEggs
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tiger|r. Sammelt ihre |cRXP_LOOT_Fell|r. Das muss jetzt nicht fertig sein.
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    #label TaillasherEggs
    .goto Durotar,59.49,83.77,0
    .goto Durotar,60.28,80.02,60,0
    .goto Durotar,60.28,82.74,60,0
    .goto Durotar,59.62,84.76,60,0
    .goto Durotar,60.02,87.94,60,0
    .goto Durotar,59.06,90.71,60,0
    .goto Durotar,61.50,91.55,60,0
    .goto Durotar,61.88,95.43,60,0
    .goto Durotar,62.69,97.21,60,0
    .goto Durotar,63.00,94.40,60,0
    .goto Durotar,59.85,89.56,60,0
    .goto Durotar,59.49,83.77,60,0
    >>Sammelt die |cRXP_PICK_Schwanzpeitscher-Eier|r vom Boden
    >>|cRXP_WARN_Sie werden normalerweise von einem|r |cRXP_ENEMY_Blutkrallenschwanzpeitscher|r bewacht
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    .goto Durotar,67.06,87.21,120 >>Schwimmt zur Hauptinsel
step
    #completewith MinshinasSkull
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MinshinasSkull
    >>Tötet |cRXP_ENEMY_Hexed Trolls|r und |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Voodoo Trolls|r |cRXP_WARN_can wirkt|r |T136052:0|t[Welle der Heilung]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Spart euren|r |T136026:0|t[Erdschock] |cRXP_WARN_für die|r |T136052:0|t[Welle der Heilung] falls er sie wirkt << Shaman
    >>|cRXP_WARN_Spart euren|r |T132155:0|t[Solarplexus] |cRXP_WARN_auf, wenn er|r |T136052:0|t[Welle der Heilung] wirkt << Rogue
    >>|cRXP_WARN_Be careful. He can wirkt|r |T136052:0|t[Welle der Heilung]|cRXP_WARN_. Benutzen von Euch|r |T134829:0|t[Trank] |cRXP_WARN_if needed|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Plündert einen der |cRXP_LOOT_Schädel|r vom Boden
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Spart euren|r |T136026:0|t[Erdschock] |cRXP_WARN_für die|r |T136052:0|t[Welle der Heilung] falls er sie wirkt << Shaman
    >>|cRXP_WARN_Spart euren|r |T132155:0|t[Solarplexus] |cRXP_WARN_auf, wenn er|r |T136052:0|t[Welle der Heilung] wirkt << Rogue
    >>|cRXP_WARN_Be careful. He can wirkt|r |T136052:0|t[Welle der Heilung]|cRXP_WARN_. Benutzen von Euch|r |T134829:0|t[Trank] |cRXP_WARN_if needed|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tigers|r. Plündert sie für |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
    .goto Durotar,67.23,88.76,40,0
    .goto Durotar,66.52,87.74,40,0
    .goto Durotar,65.94,86.72,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto Durotar,65.88,82.85,40,0
    .goto Durotar,67.38,82.61,40,0
    .goto Durotar,68.42,82.43,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto Durotar,68.47,86.77,40,0
    .goto Durotar,67.23,88.00,40,0
    >>Tötet |cRXP_ENEMY_Verhexte Trolle|r und |cRXP_ENEMY_Voodootrolle|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    >>|cRXP_WARN_Geht zu den südlichen Inseln, wenn ihr diese Quest nicht fast abgeschlossen habt. Viele|r |cRXP_ENEMY_Crawler|r |cRXP_WARN_und|r |cRXP_ENEMY_Makruras|r |cRXP_WARN_sind dort zu finden|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,59.79,83.44,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>Tötet |cRXP_ENEMY_Tigers|r. Plündert sie für |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Reist ins Dorf Sen'Jin
    .subzoneskip 367
step
    #completewith next
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Ihr könnt von außerhalb der Hütte mit ihm sprechen|r
    .vendor >> Verkauft trash und repariert
    .target Trayexir
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Gebt die Quest Minshinas Schädel ab
    .turnin 826,2 >>Gebt die Quest Zalazane ab << Shaman
    .turnin 826 >>Gebt die Quest Zalazane ab << !Shaman
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Gebt die Quest Ein geistvolles Getränk ab
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Gebt die Quest Praktische Beute ab
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step
    #completewith Stolensupplies
    +|cRXP_WARN_Bindet euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_und|r |T134712:0|t[Echt klebriger Leim]|cRXP_WARN_. Behaltet sie für Notfälle|r
step
    #loop
    .goto Durotar,49.22,48.96,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Tötet |cRXP_ENEMY_Stacheleber der Grimmhauer|r und |cRXP_ENEMY_Späher der Grimmhauer|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #label Encroachment
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Tötet |cRXP_ENEMY_Staubläufer der Grimmhauer|r und |cRXP_ENEMY_Schlachtwache der Grimmhauer|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .accept 806 >>Akzeptiert die Quest Dunkle Stürme
    .target +Orgnil Soulscar
    .goto Durotar,52.25,43.18
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 837 >>Gebt die Quest Übergriff ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .target +Orgnil Soulscar
    .goto Durotar,52.25,43.18
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 837 >>Gebt die Quest Übergriff ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Thotar
    .xp <12,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Gastwirt Grosk|r
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Kauft einen oder mehrere|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,835,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 1535 >> Trainiere deine Klassenfähigkeiten
    .target Swart
    .xp <12,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
    .xp <10,1
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Reist zum Turm
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Gebt die Quest Akzeptiert Euer Schicksal ab
    .target Furl Scornbrow
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Akzeptiert die Quest Verloren, aber nicht vergessen
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Reist nach Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
step
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Sammelt die |cRXP_PICK_Gestohlener Vorratssack|r vom Boden
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Gebt die Quest Wind in der Wüste ab
    .accept 835 >>Akzeptiert die Quest Sicherung der Linien
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Reist durch die Höhle
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tötet |cRXP_ENEMY_Wilde der Staubschwingen|r und |cRXP_ENEMY_Sturmhexe der Staubschwingen|r
    >>|cRXP_WARN_Diese Mobs fliehen. Seid vorsichtig und zieht nicht mehrere auf einmal|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step << Tauren Hunter
    #completewith next
    +|cRXP_WARN_Wählt den|r |T135493:0|t[Hickorykurzbogen] |cRXP_WARN_als Eure Questbelohnung und bewahrt ihn auf. Ihr erhaltet Bogentraining in Orgrimmar|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Gebt die Quest Sicherung der Linien ab
    .target Rezlak
step
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Dies startet einen 45-Minuten-Timer für die Quest. Geht NICHT AFK und loggt euch nicht aus für die nächsten 15 Minuten|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .target Rhinag
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Springt in den Donnergrat << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Wirkt|r |T136095:0|t[Tier freigeben] |cRXP_WARN_und springt dann in Donnergrat|r << Hunter
    +|cRXP_WARN_Dismiss von Euch imp und then jump into Donnergrat|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Seid sehr vorsichtig. Tötet die patrollierenden|r |cRXP_ENEMY_Brennen Fanatiker der Brennenden Klinge|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzschlag Hides|r |cRXP_WARN_im Hintergrund, bevor ihr ihn zieht|r
    >>|cRXP_WARN_Zieht|r ihn rückwärts zu den |cRXP_ENEMY_Blitzschlag Hides|r |cRXP_WARN_die ihr gerade besiegt habt. Ansonsten könntet ihr zusätzliche Brennende-Klinge-Mobs aggrieren|r
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T132155:0|t[Solarplexus] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Rogue
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T136026:0|t[Erdschock] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Shaman
    >>|cRXP_WARN_Ihr könnt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Fizzle|r wirken |cRXP_WARN_und tötet|r |cRXP_ENEMY_Wichtel|r |cRXP_WARN_zuerst|r << Mage
    >>|cRXP_WARN_Tötet den Wichtel zunächst.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << !Warlock
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank], |T133728:0|t[Schwacher Gesundheitsstein] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step << Druid
    #completewith next
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
    .xp <12,1
    .isQuestComplete 806
    .zoneskip Moonglade
    .group
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 8936 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <12,1
    .isQuestComplete 806
    .group
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .cooldown item,6948,>0
    .isQuestComplete 806
    .use 6948
    .group
step << Shaman
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .cooldown item,6948,>0
    .use 6948
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .vendor >> Verkauft Müll
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Warrior
    .collect 1179,20,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (20)
    .collect 2287,20,818,1 << Rogue/Warrior --Haunch of Meat (20)
    .target Innkeeper Grosk
    .money <0.05
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Gebt die Quest Dunkle Stürme ab
    .accept 828 >>Akzeptiert die Quest Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r
    .accept 828 >>Akzeptiert die Quest Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target Gar'Thok
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Thotar
    .xp <12,1
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <12,1
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 1535 >> Trainiere deine Klassenfähigkeiten
    .target Swart
    .xp <12,1
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> Reist nach Margoz
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Gebt die Quest Margoz ab
    .accept 827 >>Akzeptiert die Quest Die Knochenhöhle
    .target Margoz
    .isQuestTurnedIn 806
    .group
step << Shaman
    #completewith Collars1
    .goto Durotar,53.18,29.15,50 >> Reist nach Staubwindhöhle
    .solo
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Reist nach Staubwindhöhle
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Tötet |cRXP_ENEMY_Thugs|r und |cRXP_ENEMY_Neophytes|r. Plündert sie für |cRXP_LOOT_Collars|r
    >>Tötet |cRXP_ENEMY_Kultisten|r. Plündert sie für |cRXP_LOOT_Reagenzienbeutel|r
    .complete 827,1 --Searing Collar (6)
    .mob +Burning Blade Thug
    .mob +Burning Blade Neophyte
    .complete 1525,2 --Reagent Pouch (1)
    .mob +Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << !Shaman
    #label Collars1
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Tötet |cRXP_ENEMY_ Brennende Klinge Thugs|r, |cRXP_ENEMY_Neophytes|r und |cRXP_ENEMY_Cultists|r. Plündert sie für |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,51.90,25.70,0
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
    .solo
step << skip --logout skip Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_Springen auf den Stein. Führt einen Ausloggen-Überspringen durch, indem ihr den Charakter von Euch so positioniert, dass es aussieht, als würde er schweben, dann meldet euch ab und wieder an|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Reist nach Margoz
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Gebt die Quest Die Knochenhöhle ab
    .accept 829 >>Akzeptiert die Quest Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >> Betretet Orgrimmar
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,45.13,63.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Erlernt die Orgrimmar-Flugroute
    .target Doras
    .isQuestAvailable 809
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <12,1
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|rSprecht mit|cRXP_FRIENDLY_ Kor'ghan|r
    .accept 813 >>Akzeptiert die Quest Suche nach dem Gegengift
    .target Kor'ghan
    .isOnQuest 812
step
    #completewith FindingAntitode
    >>|cRXP_WARN_Brecht die Quest Heilmittel benötigt ab. Dies entfernt den Timer der Quest, aber ihr könnt sie dennoch machen|r
    .abandon 812 >>Brecht die Quest Heilmittel benötigt ab
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Hunter
    #completewith HunterTraining
    .goto Orgrimmar,68.02,38.69,30 >> Reist in Das Tal der Ehre
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >>Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Erlernen Bogen
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2507,1,813,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #label HunterTraining
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r
    .collect 2515,1600,828,1 << Hunter --Sharp Arrow (1600)
    .collect 5439,1,813,1 << Hunter --Small Quiver (1)
    .target Ghrawt
step << Hunter
    #optional
    #completewith FindingAntitode
    +|cRXP_WARN_Legt |r |T135499:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Kauft einen|r |T133477:0|t[Riesiger Streitkolben] |cRXP_BUY_von ihm|r
    .collect 1197,1,813,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #optional
    #completewith FindingAntitode
    +Rüstet |T133477:0|tden|cRXP_WARN_ [Riesiger Streitkolben]|r
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Kauft ein|r |T135154:0|t[Hirtenstab] |cRXP_BUY_von ihm|r
    .collect 854,1,813,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith FindingAntitode
    +Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #label LeaveOrg2
    #completewith Conscript
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step
    #label FindingAntitode
    #loop
    .goto Durotar,38.89,16.91,0
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << !Shaman
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Reist südlich entlang des Flusses zur Fernwacht
    >>Tötet |cRXP_ENEMY_Schaudermagenkrokilisk|r auf dem Weg. Plündert sie für |cRXP_LOOT_Krons Amulett|r
    >>|cRXP_WARN_Überspringt und brecht die Quest ab, falls es nicht droppt.|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>Reist südlich entlang des Flusses. Tötet |cRXP_ENEMY_Ätzmaul Crocolisks|r auf dem Weg. Sammelt sie für |cRXP_LOOT_Kron's Amulet|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
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
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Gebt die Quest Ruf des Feuers ab
    .accept 1526 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Benutzt das|r |T134732:0|t[Feuersapta]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Tötet die |cRXP_ENEMY_Schwache Feuermanifestation|r. Plündert sie für eine |cRXP_LOOT_Leuchtendes Holzscheit|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Klickt die |cRXP_PICK_Kohlenpfanne|r auf dem Boden
    .turnin 1526 >>Gebt die Quest Ruf des Feuers ab
    .accept 1527 >>Akzeptiert die Quest Ruf des Feuers
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Geht den Weg den Berg hinunter
    >>|cRXP_WARN_Seid vorsichtig und fallt nicht vom Berg. Der Weg ist sehr schmal. Ihr könntet sterben, wenn ihr fallt|r
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>Tötet |cRXP_ENEMY_Dreadmaw Crocolisks|r. Plündert sie für |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Überspringt und brecht die Quest ab, falls es nicht droppt.|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Gebt die Quest Verloren, aber nicht vergessen ab
    .target Misha Tor'kren
    .isQuestComplete 816
step
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step
    #label Conscript
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Gebt die Quest Ak'zeloth ab
    .accept 924 >>Akzeptiert die Quest Die Dämonensaat
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step
    .goto The Barrens,62.34,20.03
    .turnin 926 >>Gebt die Quest Fehlerhafter Kraftstein ab
    >>|cRXP_WARN_Sammelt|r |T134095:0|t[Fehlerhafter Kraftstein] |cRXP_WARN_neben|r |cRXP_FRIENDLY_Ak'zeloth|r
    >>|cRXP_WARN_Dieser Gegenstand hat einen 30-Minuten-Timer, also seid schnell|r
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Gebt die Quest Ruf des Feuers ab
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Sammelt |cRXP_PICK_Chens leeres Fässchen|r vom Boden und akzeptiert die Quest. Falls es nicht da ist, bekommt ihr sie später
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    #completewith DemonSeed
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> Reist zur Spitze des Berges
    .isOnQuest 924
step
    #completewith next
    +|cRXP_WARN_Passt auf, falls|r |cRXP_ENEMY_Rathorian|r |cRXP_WARN_aktiv ist, es ist ein Level-15-Rare. Seid bereit, eure|r |T133728:0|t[Faintly Glowing Schädel] |cRXP_WARN_und|r |T134712:0|t[Echt klebriger Leim] |cRXP_WARN_zu benutzen, falls nötig|r
    .unitscan Rathorian
step
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Rechts-klickt den |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Stellt sicher, dass ihr einen|r |T134095:0|t[Fehlerhafter Kraftstein] |cRXP_WARN_(30 Minuten Dauer) bei euch habt|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >> Reist den Berg hinunter, von wo ihr gekommen seid
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Wassersucher|r, |cRXP_ENEMY_Dornenwirker|r und |cRXP_ENEMY_Jäger|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> Plündert |cRXP_PICK_Chens leeres Fässchen|r vom Boden und startet die Quest
    >>|cRXP_WARN_Falls es nicht da ist, werdet ihr es später bekommen|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Tötet |cRXP_ENEMY_Wassersucher|r, |cRXP_ENEMY_Dornenwirker|r und |cRXP_ENEMY_Jäger|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Schnabel|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r und |cRXP_FRIENDLY_Thork|r
    .turnin 844 >>Gebt die Quest Ebenenschreiter-Bedrohung ab
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 845 >>Akzeptiert die Quest Die Zhevras
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Gebt die Quest Das Ende der Unterbrechungen ab
    .accept 872 >>Akzeptiert die Quest Vereitelung der Angriffe
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
step << Druid
    #completewith next
    .cast 18960 >>Wirkt |T135758:0|t[Teleportieren: Mondlichtung]
    .xp <12,1
    .cooldown item,6948,>0
    .zoneskip Moonglade
    .solo
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 8936 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <12,1
    .cooldown item,6948,>0
    .solo
step << Druid
    #completewith FlytoOrg
    .hs >> Ruhestein nach Das Wegekreuz
    .cooldown item,6948,>0
    .xp <12,1
    .use 6948
    .solo
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Shaman/Warrior
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fliege nach Donnerfels
    .zoneskip Thunder Bluff
step << Shaman/Warrior
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Gebt die Quest Flug nach Donnerfels ab
    .accept 6363 >>Akzeptiert die Quest Tal der Windreitermeister
    .target Ahanu
step << Shaman/Warrior
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .target Cairne Bloodhoof
step << Shaman/Warrior
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Gebt die Quest Tal der Windreitermeister ab
    .accept 6364 >>Akzeptiert die Quest Rückkehr zu Jahan
    .target Tal
step << Shaman/Warrior
    #completewith ReturntoJahan2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fliege nach Das Wegekreuz
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
step << Shaman/Warrior
    #completewith next
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 380,1
    .subzoneskip 380
step << Shaman/Warrior
    #label ReturntoJahan2
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Gebt die Quest Rückkehr zu Jahan ab
    .target Jahan Hawkwing
step
    #label FlytoOrg
    #completewith SlumberSandPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fliege nach Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8045 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
    .xp <14,1
step
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|rSprecht mit|cRXP_FRIENDLY_ Kor'ghan|r
    .turnin 813 >>Gebt die Quest Suche nach dem Gegengift ab
    .target Kor'ghan
    .isQuestComplete 813
    .isQuestAvailable 812
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Legt |r |T135499:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Kauft einen|r |T133477:0|t[Riesiger Streitkolben] |cRXP_BUY_von ihm|r
    .collect 1197,1,398,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Legt an|r |T133477:0|t[Riesiger Streitkolben]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Kauft ein|r |T135154:0|t[Hirtenstab] |cRXP_BUY_von ihm|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith SlumberSandPickup
    +Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #completewith SlumberSandPickup
    #label LeaveOrg3
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .turnin 812 >>Gebt die Quest Heilmittel benötigt ab
    .target Rhinag
step
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r in der Taverne
    .accept 1818 >> Akzeptiert die Quest Gespräch mit Dillinger
    .target Austil de Mon
step
    #label SlumberSandPickup
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Akzeptiert die Quest Eine neue Seuche
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .target Apothecary Johaan
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Gebt die Quest Gespräch mit Dillinger ab
    .accept 1819 >> Akzeptiert die Quest Ulag der Spalter
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Klickt auf den Schädel auf dem Boden. Dies wird|r |cRXP_ENEMY_Ulag.|r beschwören |cRXP_WARN_Tötet ihn|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Gebt die Quest Ulag der Spalter ab
    .accept 1820 >> Akzeptiert die Quest Gespräch mit Coleman
    .target Deathguard Dillinger
step
    #loop
    .goto Tirisfal Glades,43.58,61.39,0
    .goto Tirisfal Glades,56.77,59.83,60,0
    .goto Tirisfal Glades,57.41,61.92,60,0
    .goto Tirisfal Glades,55.03,63.17,60,0
    .goto Tirisfal Glades,54.24,65.34,60,0
    .goto Tirisfal Glades,50.74,62.38,60,0
    .goto Tirisfal Glades,49.92,61.17,60,0
    .goto Tirisfal Glades,47.92,60.42,60,0
    .goto Tirisfal Glades,46.61,59.75,60,0
    .goto Tirisfal Glades,44.02,60.11,60,0
    .goto Tirisfal Glades,43.58,61.39,60,0
    >>Tötet |cRXP_ENEMY_Schattenhunde|r. Plündert sie für ihr |cRXP_LOOT_Blut|r
    >>|cRXP_WARN_Ihr werdet erhalten|r |T133849:0|t[Schlummer Sand] |cRXP_WARN_aus dem Folgeziel dieser Quest, ihr könnt es überspringen, wenn ihr möchtet|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
step
    .goto Tirisfal Glades,60.59,51.77
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tKlickt auf |cRXP_PICK_Wanted Poster|r
    .accept 398 >>Akzeptiert die Quest GESUCHT: Madenauge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Gebt die Quest Eine neue Seuche ab
    .accept 368 >>Akzeptiert die Quest Eine neue Seuche
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestComplete 367
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Akzeptiert die Quest Eine neue Seuche
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestTurnedIn 367
step
    #completewith next
    .goto Tirisfal Glades,58.66,30.77
    >>Tötet |cRXP_ENEMY_Madenauge|r auf dem Weg zum Strand. Plündert ihn für seine |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    >>Tötet |cRXP_ENEMY_Murlocs|r am Strand. Beute sie für ihre |cRXP_LOOT_Schuppen|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    .goto Tirisfal Glades,58.66,30.77
    >>Tötet |cRXP_ENEMY_Madenauge|r. Plündert ihn für seine |cRXP_LOOT_Tatze|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
    #completewith MaggetEyeTurnIn
    .goto Tirisfal Glades,59.88,51.58,150 >> Reist zurück nach Brill
    .subzoneskip 159
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Gebt die Quest Eine neue Seuche ab
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #label MaggetEyeTurnIn
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Gebt die Quest GESUCHT: Madenauge ab
    .target Executor Zygand
step
    #completewith UCflightpath2
    +|cRXP_WARN_Bindet euren|r |T133849:0|t[Schlummer Sand]|cRXP_WARN_. Bewahrt ihn für Notfallsituationen auf|r
    .isQuestComplete 368
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Gebt die Quest Gespräch mit Coleman ab
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <14,1
step
    #completewith UCflightpath2
    .goto Tirisfal Glades,61.80,65.06,20 >> Betrete Unterstadt
    .zoneskip Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step
    #label UCflightpath2
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits die Flugroute erlernt habt!|r
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    .target Michael Garrett
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Rhyker|r
    >>|cRXP_BUY_Kauft sechs|r |T134339:0|t[Verfärbtes Worgherz] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step
    #optional
    .abandon 806 >> Brecht die Quest Dunkle Stürme ab.
    .isOnQuest 806
step
    #optional
    .abandon 408 >> Brecht die Quest Die Familiengruft ab.
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >> Brecht die Quest Agamand-Erbstücke ab.
    .isOnQuest 1821
step
    #label LeaveUndercity3
    #completewith EscortErland
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >> Reist nach Silberwald
    .zoneskip Silverpine Forest
    ]])

