if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore

step << !Tauren
    #completewith next
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    +|cRXP_WARN_Ihr habt einen Leitfaden für Tauren ausgewählt. Diese Zone wird für euch NICHT gut funktionieren, da eine der Hauptquests fehlt, die nur für Tauren verfügbar ist. Es wird empfohlen, dass ihr die gleiche Startzone wählt, in der ihr startet|r
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull Hawkwind|r
    .accept 747 >>Akzeptiert die Quest Die Jagd beginnt
    .target Grull Hawkwind
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Häuptling Hawkwind|r
    .accept 752 >>Akzeptiert die Quest Eine bescheidene Bitte
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto 1412/1,-317.90,-2852.63,30,0--c:Mulgore,46.05,75.32
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie, bis ihr 10 Kupfer an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie Softbreeze|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target Harutt Thunderhorn
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela Dawnstrider|r
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers]
    .target Meela Dawnstrider
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Fleisch|r und |cRXP_LOOT_Ebenenschreiter-Feder|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-522.37,-3052.65--c:Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großmutter Hawkwind|r
    .turnin 752 >>Gebt die Quest Eine bescheidene Bitte ab
    .accept 753 >>Akzeptiert die Quest Eine bescheidene Bitte
    .target Greatmother Hawkwind
step
    .goto 1412/1,-532.14,-3059.84--c:Mulgore,50.22,81.37
    >>Plündert |cRXP_LOOT_Wasserkrug|r auf dem Brunnen hinter |cRXP_FRIENDLY_Großmutter Hawkwind|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto 1412/1,-385.20,-3117.38,0--c:Mulgore,47.36,83.05
    .goto 1412/1,-532.65,-2991.68,50,0--c:Mulgore,50.23,79.38
    .goto 1412/1,-573.24,-2967.71,50,0--c:Mulgore,51.02,78.68
    .goto 1412/1,-564.50,-2864.96,50,0--c:Mulgore,50.85,75.68
    .goto 1412/1,-440.17,-2916.33,50,0--c:Mulgore,48.43,77.18
    .goto 1412/1,-371.85,-2894.41,50,0--c:Mulgore,47.10,76.54
    .goto 1412/1,-303.52,-3026.27,50,0--c:Mulgore,45.77,80.39
    .goto 1412/1,-292.73,-3094.77,50,0--c:Mulgore,45.56,82.39
    .goto 1412/1,-385.20,-3117.38,50,0--c:Mulgore,47.36,83.05
    >>Tötet |cRXP_ENEMY_Ebenenschreiter|r. Plündert sie für |cRXP_LOOT_Ebenenschreiter-Fleisch|r und |cRXP_LOOT_Ebenenschreiter-Feder|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 747,1 >>Gebt die Quest Die Jagd beginnt ab << Druid
    .turnin 747 >>Gebt die Quest Die Jagd beginnt ab << !Druid
    .accept 3091 >>Akzeptiert die Quest Einfache Notiz << Warrior
    .accept 3092 >>Akzeptiert die Quest Geätzte Notiz << Hunter
    .accept 3093 >>Akzeptiert die Quest Mit Runen beschriftete Notiz << Shaman
    .accept 3094 >>Akzeptiert die Quest Tiefgrüne Notiz << Druid
    .accept 750 >>Akzeptiert die Quest Die Jagd geht weiter
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie Softbreeze|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Leichtes Geschoss] |cRXP_BUY_von ihr|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Häuptling Hawkwind|r
    .turnin 753 >>Gebt die Quest Eine bescheidene Bitte ab
    .accept 755 >>Akzeptiert die Quest Riten der Erdenmutter
    .target Chief Hawkwind
step << Shaman
    .goto 1412/1,-216.18,-2926.26--c:Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Marjak Keenblade|r|cRXP_BUY_. Kauft einen|r |T135139:0|t[Kurzstab] |cRXP_BUY_von ihm|r
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
    #loop
    .goto 1412/1,-243.41,-3384.87,0--c:Mulgore,44.60,90.86
    .goto 1412/1,-172.00,-3330.07,50,0--c:Mulgore,43.21,89.26
    .goto 1412/1,-245.46,-3409.53,50,0--c:Mulgore,44.64,91.58
    .goto 1412/1,-306.09,-3373.23,50,0--c:Mulgore,45.82,90.52
    .goto 1412/1,-333.31,-3405.08,50,0--c:Mulgore,46.35,91.45
    .goto 1412/1,-420.65,-3418.09,50,0--c:Mulgore,48.05,91.83
    .goto 1412/1,-482.30,-3379.05,50,0--c:Mulgore,49.25,90.69
    .goto 1412/1,-571.18,-3368.09,50,0--c:Mulgore,50.98,90.37
    .goto 1412/1,-474.60,-3338.29,50,0--c:Mulgore,49.10,89.50
    .goto 1412/1,-369.79,-3308.84,50,0--c:Mulgore,47.06,88.64
    .goto 1412/1,-267.04,-3351.65,50,0--c:Mulgore,45.06,89.89
    .goto 1412/1,-243.41,-3384.87,50,0--c:Mulgore,44.60,90.86
    >>Tötet |cRXP_ENEMY_Bergpumas|r. Plündert sie für ihre |cRXP_LOOT_Bergpumapelze|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto 1412/1,-139.63,-3430.08--c:Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seher Graytongue|r
    >>|cRXP_WARN_Dies startet eine Quest mit einem 10-Minuten-Zeitlimit|r
    .turnin 755 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 757 >>Akzeptiert die Quest Ritus der Kraft
    .accept 95805 >>Akzeptiert die Quest Barmherzigkeit von An'she und Mu'sha
    .target Seer Graytongue
step
    #loop
	.goto 1412/1,-292.73,-3285.20,40,0--c:Mulgore,45.56,87.95
	.goto 1412/1,-362.60,-3281.44,40,0--c:Mulgore,46.92,87.84
	.goto 1412/1,-452.50,-3246.84,40,0--c:Mulgore,48.67,86.83
	.goto 1412/1,-554.23,-3213.96,40,0--c:Mulgore,50.65,85.87
	.goto 1412/1,-572.72,-3139.98,40,0--c:Mulgore,51.01,83.71
	.goto 1412/1,-626.67,-3065.32,40,0--c:Mulgore,52.06,81.53
	.goto 1412/1,-616.90,-2998.53,40,0--c:Mulgore,51.87,79.58
	.goto 1412/1,-606.63,-2923.52,40,0--c:Mulgore,51.67,77.39
	.goto 1412/1,-621.01,-2847.15,40,0--c:Mulgore,51.95,75.16
	.goto 1412/1,-537.27,-2887.22,40,0--c:Mulgore,50.32,76.33
	.goto 1412/1,-461.75,-2869.75,40,0--c:Mulgore,48.85,75.82
	.goto 1412/1,-387.77,-2851.94,40,0--c:Mulgore,47.41,75.30
	.goto 1412/1,-356.43,-2951.61,40,0--c:Mulgore,46.80,78.21
	.goto 1412/1,-307.11,-3026.96,40,0--c:Mulgore,45.84,80.41
	.goto 1412/1,-265.50,-3086.55,40,0--c:Mulgore,45.03,82.15
	.goto 1412/1,-217.21,-3146.15,40,0--c:Mulgore,44.09,83.89
	.goto 1412/1,-207.45,-3221.16,40,0--c:Mulgore,43.90,86.08
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
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 750 >>Gebt die Quest Die Jagd geht weiter ab
    .accept 780 >>Akzeptiert die Quest Die Kampfeber
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie Softbreeze|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
step
    .goto 1412/1,-247.00,-2899.21--c:Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kriegerheldin Windfeather|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .accept 3376 >>Akzeptiert die Quest Tötet Spitzhauer!
    .target Brave Windfeather
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .turnin 3091 >>Gebt die Quest Einfache Notiz ab
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Harutt Thunderhorn
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka Farshot|r
    .turnin 3092 >>Gebt die Quest Geätzte Notiz ab
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Lanka Farshot
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart Mistrunner|r
    .turnin 3094 >>Gebt die Quest Tiefgrüne Notiz ab
    .train 8921 >> Erlernt |T136096:0|t[Mondfeuer]
    .target Gart Mistrunner
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seherin Ravenfeather|r
    .accept 1519 >>Akzeptiert die Quest Ruf der Erde
    .target Seer Ravenfeather
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela Dawnstrider|r
    .turnin 3093 >>Gebt die Quest Mit Runen beschriftete Notiz ab
    .train 8042 >>Erlernt |T136026:0|t[Erdschock]
    .target Meela Dawnstrider
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Kampfeber|r. Plündert sie für ihre |cRXP_LOOT_Kampfeberflanke|r und |cRXP_LOOT_Kampfeberschnauze|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    .goto 1412/1,-1005.500,-3372.700
    >>Klickt den |cRXP_PICK_Schrein|r
    >>|cRXP_WARN_Stellt sicher, dass der Timer nicht abläuft|r
    .turnin 95805 >>Gebt die Quest Barmherzigkeit von An'she und Mu'sha ab
step
    #loop
    .goto 1412/1,-828.57,-3199.92,0--c:Mulgore,55.99,85.46
    .goto 1412/1,-659.55,-2989.63,50,0--c:Mulgore,52.70,79.32
    .goto 1412/1,-736.09,-3007.09,50,0--c:Mulgore,54.19,79.83
    .goto 1412/1,-815.21,-3022.51,50,0--c:Mulgore,55.73,80.28
    .goto 1412/1,-853.74,-3070.11,50,0--c:Mulgore,56.48,81.67
    .goto 1412/1,-810.07,-3145.12,50,0--c:Mulgore,55.63,83.86
    .goto 1412/1,-830.62,-3202.32,50,0--c:Mulgore,56.03,85.53
    .goto 1412/1,-818.81,-3276.98,50,0--c:Mulgore,55.80,87.71
    .goto 1412/1,-866.07,-3330.41,50,0--c:Mulgore,56.72,89.27
    .goto 1412/1,-927.72,-3330.41,50,0--c:Mulgore,57.92,89.27
    .goto 1412/1,-915.91,-3244.79,50,0--c:Mulgore,57.69,86.77
    .goto 1412/1,-896.38,-3197.52,50,0--c:Mulgore,57.31,85.39
    .goto 1412/1,-828.57,-3199.92,50,0--c:Mulgore,55.99,85.46
    >>Tötet |cRXP_ENEMY_Kampfeber|r. Plündert sie für ihre |cRXP_LOOT_Kampfeberflanke|r und |cRXP_LOOT_Kampfeberschnauze|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto 1412/1,-1017.63,-3126.97,30 >>Reist durch die Höhle--c:Mulgore,59.67,83.33
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
    .goto 1412/1,-1062.33,-3048.54,35,0--c:Mulgore,60.54,81.04
    .goto 1412/1,-1155.31,-3056.41,35,0--c:Mulgore,62.35,81.27
    .goto 1412/1,-1162.51,-2971.13,35,0--c:Mulgore,62.49,78.78
    .goto 1412/1,-1276.56,-2933.11--c:Mulgore,64.71,77.67
    >>Tötet |cRXP_ENEMY_Häuptling Spitzhauer Dornenmantel|r in der großen Hütte. Plündert seinen |cRXP_LOOT_Kopf|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto 1412/1,-1201.04,-3105.39,40 >>BETRETET die Höhle--c:Mulgore,63.24,82.70
step
    #label DirtyMap
    .goto 1412/1,-1201.04,-3105.39--c:Mulgore,63.24,82.70
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
    .goto 1412/1,-1236.49,-2956.06,0--c:Mulgore,63.93,78.34
    .goto 1412/1,-1230.32,-2898.18,40,0--c:Mulgore,63.81,76.65
    .goto 1412/1,-1184.60,-2907.08,40,0--c:Mulgore,62.92,76.91
    .goto 1412/1,-1101.88,-2917.70,40,0--c:Mulgore,61.31,77.22
    .goto 1412/1,-1115.76,-2974.90,40,0--c:Mulgore,61.58,78.89
    .goto 1412/1,-1164.56,-2996.48,40,0--c:Mulgore,62.53,79.52
    .goto 1412/1,-1250.36,-2979.01,40,0--c:Mulgore,64.20,79.01
    .goto 1412/1,-1333.59,-2948.87,40,0--c:Mulgore,65.82,78.13
    .goto 1412/1,-1236.49,-2956.06,40,0--c:Mulgore,63.93,78.34
    >>Tötet |cRXP_ENEMY_Stacheleber der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto 1412/1,-1232.89,-3017.71,0--c:Mulgore,63.86,80.14
    .goto 1412/1,-1226.73,-3053.33,40,0--c:Mulgore,63.74,81.18
    .goto 1412/1,-1232.89,-3011.89,40,0--c:Mulgore,63.86,79.97
    .goto 1412/1,-1291.46,-2964.97,40,0--c:Mulgore,65.00,78.60
    .goto 1412/1,-1345.40,-2938.59,40,0--c:Mulgore,66.05,77.83
    .goto 1412/1,-1339.24,-2913.59,40,0--c:Mulgore,65.93,77.10
    .goto 1412/1,-1217.99,-2884.48,40,0--c:Mulgore,63.57,76.25
    .goto 1412/1,-1232.89,-3017.71,40,0--c:Mulgore,63.86,80.14
    >>Tötet |cRXP_ENEMY_Schamane der Borstennacken|r. Plündert sie für ihre |cRXP_LOOT_Ritualsalbe|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #loop
    .goto 1412/1,-1239.06,-3015.66,40,0--c:Mulgore,63.98,80.08
    .goto 1412/1,-1256.01,-2954.35,40,0--c:Mulgore,64.31,78.29
    .goto 1412/1,-1223.13,-2882.08,40,0--c:Mulgore,63.67,76.18
    .goto 1412/1,-1171.75,-2879.34,40,0--c:Mulgore,62.67,76.10
    .goto 1412/1,-1103.43,-2914.62,40,0--c:Mulgore,61.34,77.13
    .goto 1412/1,-1122.95,-2977.98,40,0--c:Mulgore,61.72,78.98
    .goto 1412/1,-1152.23,-3065.32,40,0--c:Mulgore,62.29,81.53
    .goto 1412/1,-1076.71,-3040.66,40,0--c:Mulgore,60.82,80.81
    .goto 1412/1,-1038.69,-3079.02,40,0--c:Mulgore,60.08,81.93
    .goto 1412/1,-1087.50,-3092.38,40,0--c:Mulgore,61.03,82.32
    .goto 1412/1,-1151.20,-3082.44,40,0--c:Mulgore,62.27,82.03
    .xp 5+880 >> Farmt bis 880+/2800 XP << !Shaman
    .xp 5 >> Farmt bis Stufe 5 << Shaman
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Camp Narache
    .use 6948
step
    .goto 1412/1,-259.85,-2914.28--c:Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 780 >>Gebt die Quest Die Kampfeber ab
    .target Grull Hawkwind
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kriegerheldin Windfeather|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .turnin 3376 >>Gebt die Quest Tötet Spitzhauer! ab
    .target Brave Windfeather
step
    .goto 1412/1,-279.37,-2893.73--c:Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kawnie Softbreeze|r
    .vendor >> Verkauft Müll
    .target Kawnie Softbreeze
step
    .goto 1412/1,-247.00,-2899.21--c:Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kriegerheldin Windfeather|r
    >>|cRXP_WARN_Sie patrouilliert herum|r
    .turnin 3376 >>Gebt die Quest Tötet Spitzhauer! ab
    .target Brave Windfeather
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seherin Ravenfeather|r
    .turnin 1519 >>Gebt die Quest Ruf der Erde ab
    .accept 1520 >>Akzeptiert die Quest Ruf der Erde
    .target Seer Ravenfeather
step
    .goto 1412/1,-221.83,-2878.31--c:Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Häuptling Hawkwind|r
    .turnin 781 >>Gebt die Quest Angriff auf Camp Narache ab
    .turnin 757 >>Gebt die Quest Ritus der Kraft ab
    .accept 763 >>Akzeptiert die Quest Riten der Erdenmutter
    .accept 96659 >>Akzeptiert die Quest Der Abenteurer
    .target Chief Hawkwind
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto 1412/1,-712.98,-3018.05,30 >> Reist zum Felsen--c:Mulgore,53.74,80.15
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Benutzt den|r |T134743:0|t[Erdsapta]
    .use 6635
step << Shaman
    .goto 1412/1,-712.98,-3018.05--c:Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit der |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>Gebt die Quest Ruf der Erde ab
    .accept 1521 >>Akzeptiert die Quest Ruf der Erde
    .target Minor Manifestation of Earth
step << Shaman
    .goto 1412/1,-250.09,-2882.08--c:Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Seherin Ravenfeather|r
    .turnin 1521 >>Gebt die Quest Ruf der Erde ab
    .target Seer Ravenfeather
step << Shaman
    .goto 1412/1,-264.47,-2874.20--c:Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meela Dawnstrider|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Meela Dawnstrider
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka Farshot|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto 1412/1,-225.94,-2865.64--c:Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanka Farshot|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Lanka Farshot
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart Mistrunner|r
    .train 467 >>Erlernt |T136104:0|t[Dornen]
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto 1412/1,-268.58,-2873.52--c:Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart Mistrunner|r
    .train 5177 >>Erlernt |T136006:0|t[Zorn]
    .target Gart Mistrunner
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71--c:Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Harutt Thunderhorn
step
    .goto 1412/1,69.47,-3065.66--c:Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Antur Fallow|r
    .accept 1656 >>Akzeptiert die Quest Eine unvollendete Aufgabe
    .target Antur Fallow

]])


RXPGuides.RegisterGuide([[
#forever
#era/som--h
<< Horde
#name 6-12 Mulgore
#version 11
#group RestedXP Forever Dungeonführer (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 das Brachland


step
	#softcore
	#completewith BloodhoofHome
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
	#hardcore
	#completewith BloodhoofHome
    .subzone 222 >>Reist zum Dorf der Bluthufe
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaga Wildhoof|r
    .turnin 96659 >>Gebt die Quest Die Abenteurerin ab
    .accept 96605 >>Akzeptiert die Quest Die große weite Welt
    .target Kaga Wildhoof
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|cRXP_WARN_Tippt am Lagerfeuer /sitzen und wartet eine Minute, bis ihr den Buff "Camp Belohnungen" bekommt|r
    .complete 96605,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sitzen
    .timer 59, RP
    .complete 96605,2 --|Gain the Boosted Rest buff
step
    #hardcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaga Wildhoof|r
    .turnin 96605 >>Gebt die Quest Die große weite Welt
    .accept 96661 >>Akzeptiert die QuestGrundlagen des Zeltens: Kochkunst
    .target Kaga Wildhoof
step
    #softcore
    .goto 1412/1,-408.900,-2179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw Sharpmane|r 
    .accept 96130 >>Akzeptiert die Quest Chakuyak
    .target Yaw Sharpmane
step
    #softcore
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahab Wheathoof|r 
    .accept 99411 >>Akzeptiert die Quest Kyle wird vermisst!
    .target Ahab Wheathoof
step
    #softcore
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step
    #hardcore
    .goto 1412/1,-385.20,-2396.76--c:Mulgore,47.36,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target Ruul Eagletalon
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkaufttrash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (7s 1c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn diese euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (4s 14c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cRXP_BUY_von ihm|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
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
    .goto 1412/1,-347.70,-2365.25--c:Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .turnin 1656 >>Gebt die Quest Eine unvollendete Aufgabe ab
    .target Innkeeper Kauth
step
    #label BloodhoofHome
    .goto 1412/1,-347.70,-2365.25--c:Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .turnin 1656 >>Gebt die Quest Eine unvollendete Aufgabe ab
    .home >>Setzt den Ruhestein von Euch in Das Dorf der Bluthufe
    .target Innkeeper Kauth
    .bindlocation 222
step
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .turnin 763 >>Gebt die Quest Riten der Erdenmutter ab
    .accept 745 >>Akzeptiert die Quest Gemeinsame Nutzung des Landes
    .accept 767 >>Akzeptiert die Quest Ritus der Sicht
    .accept 746 >>Akzeptiert die Quest Zwergen-Buddelei
    .target Baine Bloodhoof
step
    .goto 1412/1,-405.75,-2243.32--c:Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Gebt die Quest Ritus der Sicht ab
    .accept 771 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step
    #hardcore
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step
    #hardcore
    .goto 1412/1,-408.900,-2179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw Sharpmane|r 
    .accept 96130 >>Akzeptiert die Quest Chakuyak
    .target Yaw Sharpmane
step
    #hardcore
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahab Wheathoof|r 
    .accept 99411 >>Akzeptiert die Quest Kyle wird vermisst!
    .target Ahab Wheathoof
step
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target Harken Windtotem
step
    .goto 1412/1,-496.200,-2347.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang Stonehoof|r 
    .accept 99108 >>Akzeptiert die Quest Sparringskampf
    .target Krang Stonehoof
step
    .goto 1412/1,-521.600,-2345.400
    >>Sprecht mit einem |cRXP_FRIENDLY_Kriegernovize|r, dann besiegt ihn im Kampf
    .complete 99108,1 --|3/3 Player Duels won or Novice Warriors defeated
    .target Novice Warrior
    .skipgossip
step
    .goto 1412/1,-496.100,-2348.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang Stonehoof|r
    .turnin 99108 >>Gebt die Quest Sparringskampf ab
    .target Krang Stonehoof
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .accept 748 >>Akzeptiert die Quest Vergiftetes Wasser
    .target Mull Thunderhorn
step
    .goto 1412/1,-426.800,-2373.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kriegerheld Wildrunner|r
    >>|cRXP_WARN_Er patrouilliert ein wenig herum|r
    .accept 99079 >>Akzeptiert die Quest Langläuferin Malah
    .target Brave Wildrunner
step
    #softcore
    .goto 1412/1,-385.20,-2396.76--c:Mulgore,47.36,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target Ruul Eagletalon
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaga Wildhoof|r
    .turnin 96659 >>Gebt die Quest Die Abenteurerin ab
    .accept 96605 >>Akzeptiert die Quest Die große weite Welt
    .target Kaga Wildhoof
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|cRXP_WARN_Tippt am Lagerfeuer /sitzen und wartet eine Minute, bis ihr den Buff "Camp Belohnungen" bekommt|r
    .complete 96605,1 --|1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sitzen
    .timer 59, RP
    .complete 96605,2 --|Gain the Boosted Rest buff
step
    #softcore
    .goto 1412/1,-363.000,-2490.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaga Wildhoof|r
    .turnin 96605 >>Gebt die Quest Die große weite Welt
    .accept 96661 >>Akzeptiert die QuestGrundlagen des Zeltens: Kochkunst
    .target Kaga Wildhoof
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
    .complete 748,2 --Plainstrider Talon (4)
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob +Adult Plainstrider
step << !Tauren
    #completewith Ambercorns
    >>Tötet |cRXP_ENEMY_Erwachsener Ebenenschreiter|r. Plündert sie für |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step
    #label Ambercorns
    #loop
    .goto 1412/1,-539.33,-2550.20,0--c:Mulgore,50.36,66.49
    .goto 1412/1,-454.56,-2479.99,15,0--c:Mulgore,48.71,64.44
    .goto 1412/1,-539.33,-2550.20,15,0--c:Mulgore,50.36,66.49
    .goto 1412/1,-619.47,-2459.78,15,0--c:Mulgore,51.92,63.85
    .goto 1412/1,-578.89,-2706.72,15,0--c:Mulgore,51.13,71.06
    .goto 1412/1,-539.33,-2550.20,15,0--c:Mulgore,50.36,66.49
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
	.goto 1412/1,-562.96,-2556.02,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-562.96,-2556.02,50,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-575.29,-2452.24,50,0--c:Mulgore,51.06,63.63
	.goto 1412/1,-664.17,-2398.47,50,0--c:Mulgore,52.79,62.06
	.goto 1412/1,-725.31,-2385.46,50,0--c:Mulgore,53.98,61.68
	.goto 1412/1,-812.13,-2422.79,50,0--c:Mulgore,55.67,62.77
	.goto 1412/1,-852.72,-2496.77,50,0--c:Mulgore,56.46,64.93
	.goto 1412/1,-830.11,-2594.38,50,0--c:Mulgore,56.02,67.78
	.goto 1412/1,-778.74,-2658.43,50,0--c:Mulgore,55.02,69.65
	.goto 1412/1,-640.54,-2672.81,50,0--c:Mulgore,52.33,70.07
	.goto 1412/1,-541.38,-2678.64,50,0--c:Mulgore,50.40,70.24
	.goto 1412/1,-448.91,-2650.89,50,0--c:Mulgore,48.60,69.43
	.goto 1412/1,-314.31,-2660.14,50,0--c:Mulgore,45.98,69.70
	.goto 1412/1,-447.88,-2580.34,50,0--c:Mulgore,48.58,67.37
    >>Tötet |cRXP_ENEMY_Präriewolf|r. Plündert sie für ihre |cRXP_LOOT_Präriewolftatze|r
    >>Tötet |cRXP_ENEMY_Erwachsener Ebenenschreiter|r. Plündert sie für ihr |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r] und |cRXP_LOOT_Ebenenschreiterkralle|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob +Adult Plainstrider
step << !Tauren
    #loop
	.goto 1412/1,-562.96,-2556.02,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-562.96,-2556.02,50,0--c:Mulgore,50.82,66.66
	.goto 1412/1,-575.29,-2452.24,50,0--c:Mulgore,51.06,63.63
	.goto 1412/1,-664.17,-2398.47,50,0--c:Mulgore,52.79,62.06
	.goto 1412/1,-725.31,-2385.46,50,0--c:Mulgore,53.98,61.68
	.goto 1412/1,-812.13,-2422.79,50,0--c:Mulgore,55.67,62.77
	.goto 1412/1,-852.72,-2496.77,50,0--c:Mulgore,56.46,64.93
	.goto 1412/1,-830.11,-2594.38,50,0--c:Mulgore,56.02,67.78
	.goto 1412/1,-778.74,-2658.43,50,0--c:Mulgore,55.02,69.65
	.goto 1412/1,-640.54,-2672.81,50,0--c:Mulgore,52.33,70.07
	.goto 1412/1,-541.38,-2678.64,50,0--c:Mulgore,50.40,70.24
	.goto 1412/1,-448.91,-2650.89,50,0--c:Mulgore,48.60,69.43
	.goto 1412/1,-314.31,-2660.14,50,0--c:Mulgore,45.98,69.70
	.goto 1412/1,-447.88,-2580.34,50,0--c:Mulgore,48.58,67.37
    >>Tötet |cRXP_ENEMY_Erwachsener Ebenenschreiter|r. Plündert sie für |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 287505,1,99411,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
step << Tauren
    #completewith next
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt das |T134028:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r], um ihn zu füttern
    >>|cRXP_WARN_Er läuft im Uhrzeigersinn in Kreisen um Das Dorf der Bluthufe|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
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
    .goto 1412/1,-709.89,-2543.01--c:Mulgore,53.68,66.28
    >>|cRXP_WARN_Benutzt das|r |T135139:0|t[Säuberungstotem von Winterhoof] |cRXP_WARN_beim Brunnen|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    #loop
    .goto 1412/1,-729.42,-2547.12,0--c:Mulgore,54.06,66.40
    .goto 1412/1,-692.94,-2525.88,10,0--c:Mulgore,53.35,65.78
    .goto 1412/1,-710.92,-2519.37,10,0--c:Mulgore,53.70,65.59
    .goto 1412/1,-725.31,-2531.36,10,0--c:Mulgore,53.98,65.94
    .goto 1412/1,-729.42,-2547.12,10,0--c:Mulgore,54.06,66.40
    >>Sammelt die |cRXP_PICK_Quellsteine|r um den Brunnen ein
    .complete 771,1 --Well Stone (2)
step
    #completewith KyleFed
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt das |T134028:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r], um ihn zu füttern
    >>|cRXP_WARN_Er läuft im Uhrzeigersinn in Kreisen um Das Dorf der Bluthufe|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 1412/1,-399.07,-2378.95--c:Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .vendor >> Verkauft Müll
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>Gebt die Quest Säuberung von Winterhoof ab
    .accept 756 >>Akzeptiert die Quest Thunderhorn-Totem
    .target Mull Thunderhorn
step << Warrior
    .goto 1412/1,-356.43,-2357.03--c:Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkaufttrash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (7s 1c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn diese euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (4s 14c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cRXP_BUY_von ihm|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith EnterCave
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith EnterCave
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith EnterCave
    +|cRXP_WARN_Legt die|r |T135611:0|t[Verschnörkelte Donnerbüchse] an
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    .goto 1412/1,-285.000,-2263.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pyall|r
    .train 2550 >>Erlerne Kochkunst
    .turnin 96661 >>Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .target Pyall Silentstride
step
    #label Vision
    .goto 1412/1,-405.75,-2243.32--c:Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Folge nicht dem Wolf, der erscheint|r
    .turnin 771 >>Gebt die Quest Ritus der Sicht ab
    .accept 772 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahab Wheathoof|r 
    .turnin 99411 >>Gebt die Quest Kyle wird vermisst! ab
    .target Ahab Wheathoof
    .isQuestComplete 99411
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <8,1
step
    #optional
    #label KyleFed
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .accept 749 >>Akzeptiert die Quest Die Überfallene Karawane
	.unitscan Morin Cloudstalker
step
    .goto 1412/1,-1066.400,-2325.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malah Longwind|r
    .turnin 99079 >>Gebt die Quest Langläuferin Malah ab
    .accept 99081 >>Akzeptiert die Quest Schwieriges Unterfangen
    .target Malah Longwind
step
    #completewith EnterCave
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
	#completewith EnterCave
	>>Tötet |cRXP_ENEMY_Sturzflieger|r in ganz Mulgore. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #label RavagedCaravan1
    .goto 1412/1,-712.98,-1922.74--c:Mulgore,53.74,48.17
    >>Klickt die |cRXP_PICK_Versiegelte Vorratskiste|r
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step << Tauren
    #loop
    .goto 1412/1,-936.97,-1937.47,0--c:Mulgore,58.1,48.6
    .goto 1412/1,-936.97,-1937.47,60,0--c:Mulgore,58.1,48.6
    .goto 1412/1,-752.02,-1646.34,60,0--c:Mulgore,54.5,40.1
    .goto 1412/1,-335.88,-2009.39,60,0--c:Mulgore,46.4,50.7
    >>Tötet |cRXP_ENEMY_StalkersPräriepirscher|r und |cRXP_ENEMY_Pumas|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    .goto 1412/1,54.800,-2442.200
    >>Tötet |cRXP_ENEMY_Chakuyak|r. Plündert sie für den |cRXP_LOOT_Pelz|r
    .complete 96130,1 --|1/1 Chakuyak's Pelt
    .mob Chakuyak
step
    #label EnterCave
    #completewith LongWalkers
    .goto 1412/1,297.800,-2398.500,30 >>Betretet die Höhle
step
    #completewith Escort1
    >>Tötet |cRXP_ENEMY_Gerber der Bleichmähnen|r, |cRXP_ENEMY_Kürschner der Bleichmähnen|r und |cRXP_ENEMY_Wilderer der Bleichmähnen|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    #label LongWalkers
    .goto 1412/1,297.800,-2398.500,20,0
    .goto 1412/1,395.800,-2339.300,20,0
    .goto 1412/1,442.300,-2439.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Perith Stormhoof|r
    >>|cRXP_WARN_Dies startet eine Begleitquest|r
    .accept 98430 >>Akzeptiert die Quest Die Langläufer
    .target Perith Stormhoof
step
    #label Escort1
    .goto 1412/1,192.500,-2394.000
    >>Begleitet |cRXP_FRIENDLY_Perith Stormhoof|r aus der Höhle
    .complete 98430,1 --escort (manually entered cords where its completed)
    .target Perith Stormhoof
step
    #label Gnolls
    #loop
    .goto 1412/1,229.100,-2403.900,0
    .goto 1412/1,229.100,-2403.900,40,0
    .goto 1412/1,367.900,-2364.200,30,0
    .goto 1412/1,442.300,-2340.600,30,0
    .goto 1412/1,450.000,-2407.900,30,0
    .goto 1412/1,460.000,-2341.200,30,0
    .goto 1412/1,479.700,-2345.900,30,0
    >>Tötet |cRXP_ENEMY_Gerber der Bleichmähnen|r, |cRXP_ENEMY_Kürschner der Bleichmähnen|r und |cRXP_ENEMY_Wilderer der Bleichmähnen|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    #softcore
	#completewith Thunderhorn
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #hardcore
    #completewith Thunderhorn
    .subzone 222 >> Reist zurück zum Dorf der Bluthufe
step
    #completewith KyleFed2
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt das |T134028:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r], um ihn zu füttern
    >>|cRXP_WARN_Er läuft im Uhrzeigersinn in Kreisen um Das Dorf der Bluthufe|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 1412/1,-408.700,-2180.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 96130 >>Gebt die Quest Chakuyak ab
    .target Yaw Sharpmane
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Verkaufttrash. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T133053:0|t[Hölzerner Schlaghammer] (7s 1c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.97--c:Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer] |cRXP_BUY_von ihm|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn diese euch genug Geld für eine |T135611:0|t[Verschnörkelte Donnerbüchse] (4s 14c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse] |cRXP_BUY_von ihm|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-308.14,-2248.11--c:Mulgore,45.86,57.67
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
    .goto 1412/1,-310.20,-2284.42--c:Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harant|r
    .vendor >> Verkauft trash und repariert
    .target Harant Ironbrace
step
    .goto 1412/1,-392.500,-2318.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kriegerheld Wildrunner|r
    >>|cRXP_WARN_Er patrouilliert ein wenig herum|r
    .turnin 99081 >>Gebt die Quest Finstere Kunde ab
    .accept 99101 >>Akzeptiert die Quest Unser uralter Feind
    .target Brave Wildrunner
step
    .goto 1412/1,-392.900,-2333.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 745 >>Gebt die Quest Gemeinsame Nutzung des Landes ab
    .turnin 99101 >>Gebt die Quest Unser uralter Feind ab
    .accept 99080 >>Akzeptiert die Quest Vertreibt sie
    .target Baine Bloodhoof
step
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Gebt die Quest Thunderhorn-Totem ab
    .timer 8,Thunderhorn Totem RP
    .accept 758 >>Akzeptiert die Quest Säuberung von Thunderhorn
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <8,1
step
    #label KyleFed2
    .goto 1412/1,-347.70,-2364.91--c:Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihm|r << Warrior
    .vendor >> Verkauft Müll << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #loop
    .goto 1412/1,-422.300,-2250.300,0
    .goto 1412/1,-422.300,-2250.300,30,0
    .goto 1412/1,-374.900,-2263.800,30,0
    .goto 1412/1,-361.900,-2328.100,30,0
    .goto 1412/1,-438.600,-2387.500,30,0
    .goto 1412/1,-491.400,-2326.900,30,0
    .goto 1412/1,-469.300,-2256.000,30,0
    .use 33009>> Findet |cRXP_FRIENDLY_Kyle|r. Benutzt das |T134028:0|t[|cRXP_LOOT_Zartes Schreiterfleisch|r], um ihn zu füttern
    >>|cRXP_WARN_Er läuft im Uhrzeigersinn in Kreisen um Das Dorf der Bluthufe|r
    .complete 99411,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 1412/1,-430.600,-2097.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ahab Wheathoof|r 
    .turnin 99411 >>Gebt die Quest Kyle wird vermisst! ab
    .target Ahab Wheathoof
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
    .goto 1412/1,-237.76,-1826.50--c:Mulgore,44.49,45.36
    >>|cRXP_WARN_Benutzt das|r |T135139:0|t[Säuberung von Thunderhorn] |cRXP_WARN_am Brunnen|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto 1412/1,441.42,-1980.96--c:Mulgore,31.27,49.87
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Ausgrabungsleiterhacke|r
    .use 4702 >> |cRXP_WARN_Zerstört die|r |T134707:0|t[Spitzhacken] |cRXP_WARN_in der Schmiede|r
    >>|cRXP_WARN_Passt auf, denn |cRXP_ENEMY_Gutachter von Bael'dun|r wirken|r |T135929:0|t[Geringes Heilen] |cRXP_WARN_(Distanzzauber: heilt sich selbst oder einen nahegelegenen Gegner unter 50% Gesundheit für etwa 75 Gesundheit)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    #loop
	.goto 1412/1,417.27,-1653.53,0--c:Mulgore,31.74,40.31
	.goto 1412/1,297.06,-1769.98,50,0--c:Mulgore,34.08,43.71
	.goto 1412/1,353.57,-1744.30,50,0--c:Mulgore,32.98,42.96
	.goto 1412/1,418.30,-1748.41,50,0--c:Mulgore,31.72,43.08
	.goto 1412/1,451.18,-1714.50,50,0--c:Mulgore,31.08,42.09
	.goto 1412/1,449.13,-1672.71,50,0--c:Mulgore,31.12,40.87
	.goto 1412/1,417.27,-1653.53,50,0--c:Mulgore,31.74,40.31
	.goto 1412/1,381.31,-1682.99,50,0--c:Mulgore,32.44,41.17
	.goto 1412/1,323.26,-1687.44,50,0--c:Mulgore,33.57,41.30
	.goto 1412/1,310.41,-1651.82,50,0--c:Mulgore,33.82,40.26
	.goto 1412/1,276.51,-1684.36,50,0--c:Mulgore,34.48,41.21
	.goto 1412/1,275.48,-1721.35,50,0--c:Mulgore,34.50,42.29
    >>Tötet |cRXP_ENEMY_Windhexe der Windfurien|r und |cRXP_ENEMY_Harpyie der Windfurien|r. Plündert sie für |cRXP_LOOT_Windfurienkralle|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto 1412/1,333.53,-1523.73,50 >> Betretet die Höhle direkt nördlich von den Harpyien der Windfurien--c:Mulgore,33.37,36.52
step
	#label Burial
    .goto 1412/1,366.93,-1509.00--c:Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Gebt die Quest Ritus der Sicht ab
    .accept 773 >>Akzeptiert die Quest Ritus der Weisheit
    .target Seer Wiserunner
step
    #completewith SacredBurial
    .destroy 4823 >> |cRXP_WARN_Ihr könnt|r |T134712:0|t[Wasser der Seher] |cRXP_WARN_zerstören, da es nicht mehr benötigt wird|r
step
    #completewith TBHome
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30 >>Nehmt den Aufzug nach Donnerfels
step
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit Eberton Schattentotem|cRXP_FRIENDLY_
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit] 
    .accept 76156 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
step
    #label TBHome
    .goto 1456/1,38.32,-1300.48--c:Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Pala|r
    .home >>Setzt euren Ruhestein in Donnerfels
    .target Innkeeper Pala
    .bindlocation 1638
step
    #completewith SacredBurial
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30,0
    .zone Mulgore >>Verlasst Donnerfels
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
    .goto 1412/1,-1026.88,-1150.40--c:Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Akzeptiert die Quest Eine heilige Bestattung
    .target Lorekeeper Raintotem
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #label RiteofWisdom
    .goto 1412/1,-1109.08,-992.51--c:Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Vorfahrengeist|r
    .turnin 773 >>Gebt die Quest Ritus der Weisheit ab
    .accept 775 >>Akzeptiert die Quest Reise nach Donnerfels
    .target Ancestral Spirit
step
    #loop
	.goto 1412/1,-1026.88,-1150.40,0--c:Mulgore,59.85,25.62
	.goto 1412/1,-1026.88,-1150.40,25,0--c:Mulgore,59.85,25.62
	.goto 1412/1,-1093.15,-1058.27,25,0--c:Mulgore,61.14,22.93
	.goto 1412/1,-1125.52,-1043.20,25,0--c:Mulgore,61.77,22.49
	.goto 1412/1,-1146.58,-1028.13,25,0--c:Mulgore,62.18,22.05
	.goto 1412/1,-1153.77,-988.40,25,0--c:Mulgore,62.32,20.89
	.goto 1412/1,-1117.81,-940.79,25,0--c:Mulgore,61.62,19.50
	.goto 1412/1,-1057.19,-940.79,25,0--c:Mulgore,60.44,19.50
	.goto 1412/1,-1042.80,-994.22,25,0--c:Mulgore,60.16,21.06
	.goto 1412/1,-1055.65,-1025.05,25,0--c:Mulgore,60.41,21.96
	.goto 1412/1,-1092.12,-1056.56,25,0--c:Mulgore,61.12,22.88
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto 1412/1,-1026.88,-1150.40--c:Mulgore,59.85,25.62
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
	.goto 1412/1,-572.21,-903.12,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	>>Tötet |cRXP_ENEMY_Sturzflieger|r. Plündert sie für |cRXP_LOOT_Trophäen-Sturzfliegerkiel|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #loop
    .goto 1412/1,-780.79,-1385.36,0--c:Mulgore,55.06,32.48
    .goto 1412/1,-780.79,-1385.36,60,0--c:Mulgore,55.06,32.48
    .goto 1412/1,-718.11,-1670.32,60,0--c:Mulgore,53.84,40.80
    .goto 1412/1,-684.72,-1819.65,60,0--c:Mulgore,53.19,45.16
    .goto 1412/1,-903.58,-1946.37,60,0--c:Mulgore,57.45,48.86
    .goto 1412/1,-985.26,-2080.97,60,0--c:Mulgore,59.04,52.79
    .goto 1412/1,-989.37,-2262.50,60,0--c:Mulgore,59.12,58.09
    .goto 1412/1,-452.50,-1808.69,60,0--c:Mulgore,48.67,44.84
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
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3020 >> Farmt bis 3020+/6500 XP
    .isQuestComplete 761
    .isQuestComplete 766
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3720 >> Farmt bis 3720+/6500 XP
    .isQuestComplete 761
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+3700 >> Farmt bis 3700+/6500 XP
    .isQuestComplete 766
step
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
	.goto 1412/1,-906.66,-926.41,60,0--c:Mulgore,57.51,19.08
	.goto 1412/1,-788.50,-912.36,60,0--c:Mulgore,55.21,18.67
	.goto 1412/1,-674.44,-866.81,60,0--c:Mulgore,52.99,17.34
	.goto 1412/1,-572.21,-903.12,60,0--c:Mulgore,51.00,18.40
	.goto 1412/1,-512.61,-983.26,60,0--c:Mulgore,49.84,20.74
	.goto 1412/1,-511.59,-1084.30,60,0--c:Mulgore,49.82,23.69
	.goto 1412/1,-496.17,-1166.84,60,0--c:Mulgore,49.52,26.10
	.goto 1412/1,-506.45,-1236.71,60,0--c:Mulgore,49.72,28.14
	.goto 1412/1,-561.42,-1278.84,60,0--c:Mulgore,50.79,29.37
	.goto 1412/1,-635.91,-1302.81,60,0--c:Mulgore,52.24,30.07
	.goto 1412/1,-737.12,-1315.14,60,0--c:Mulgore,54.21,30.43
	.goto 1412/1,-836.79,-1312.40,60,0--c:Mulgore,56.15,30.35
	.goto 1412/1,-920.02,-1316.86,60,0--c:Mulgore,57.77,30.48
	.goto 1412/1,-972.42,-1249.73,60,0--c:Mulgore,58.79,28.52
	.goto 1412/1,-1063.35,-1159.31,60,0--c:Mulgore,60.56,25.88
	.goto 1412/1,-1009.92,-1073.00,60,0--c:Mulgore,59.52,23.36
    .xp 9+4400 >> Farmt bis 4400+/6500 XP
step
    #sofcore
    #completewith Bloodhoofturnins1
    .goto 1412/1,-598.900,-1603.700
    .deathskip >> Die at the waypoint arrow (or further south of it) and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith Bloodhoofturnins1
    .subzone 222 >>Reist zurück zum Dorf der Bluthufe
step
    .goto 1412/1,-347.19,-2364.91--c:Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Kauth|r
    .vendor >> Verkauft Müll
    .target Innkeeper Kauth
    .isQuestAvailable 870
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn Whitecloud
    .isOnQuest 770
step
    #optional
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Akzeptiert die Quest Der Weg der Jäger
    .target Skorn Whitecloud
    .xp <10,1
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r und |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    .timer 8,Säuberung von Thunderhorn RP
    .accept 759 >>Akzeptiert die Quest Wildmane-Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93--c:Mulgore,48.54,60.38
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, und |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 758 >>Gebt die Quest Säuberung von Thunderhorn ab
    .timer 8,Säuberung von Thunderhorn RP
    .accept 759 >>Akzeptiert die Quest Wildmane-Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93--c:Mulgore,48.54,60.38
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r und |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63--c:Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r und |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40--c:Mulgore,47.51,60.16
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10--c:Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step
    #completewith AlphaTeeth
    .destroy 4702 >> |cRXP_WARN_Ihr könnt|r |T134707:0|t[Ausgrabungsleiterhacke] |cRXP_WARN_zerstören, da sie nicht mehr benötigt werden|r
step << Hunter
    .goto 1412/1,-289.65,-2275.51--c:Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Kauft|r |T132384:0|t[Schweres Geschoss] |cRXP_BUY_von ihm|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto 1412/1,-365.17,-2227.56--c:Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .target Krang Stonehoof
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Akzeptiert die Quest Ruf des Feuers
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 5928 >> Akzeptiert die Quest Dem Ruf folgen << Tauren
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8924 >> Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
step << Hunter
    #loop
    .goto 1412/1,24.77,-2239.89,0--c:Mulgore,39.38,57.43
    .goto 1412/1,-154.53,-2152.56,50,0--c:Mulgore,42.87,54.88
    .goto 1412/1,-44.59,-2177.22,50,0--c:Mulgore,40.73,55.60
    .goto 1412/1,24.77,-2239.89,50,0--c:Mulgore,39.38,57.43
    .use 15914 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Ausgewachsener Ebenenschreiter|r |cRXP_WARN_auf maximaler Reichweite|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6087 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-494.63,-1720.66,0--c:Mulgore,49.49,42.27
    .goto 1412/1,-375.96,-1990.55,50,0--c:Mulgore,47.18,50.15
    .goto 1412/1,-348.73,-1890.20,50,0--c:Mulgore,46.65,47.22
    .goto 1412/1,-427.33,-1823.41,50,0--c:Mulgore,48.18,45.27
    .goto 1412/1,-494.63,-1720.66,50,0--c:Mulgore,49.49,42.27
    .use 15915 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Präriepirscher|r |cRXP_WARN_bei maximaler Reichweite|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6088 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-379.55,-1688.47,0--c:Mulgore,47.25,41.33
    .goto 1412/1,-379.55,-1688.47,80,0--c:Mulgore,47.25,41.33
    .goto 1412/1,-285.02,-1652.85,80,0--c:Mulgore,45.41,40.29
    .goto 1412/1,-601.49,-1793.62,80,0--c:Mulgore,51.57,44.40
    .use 15916 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Sturzflieger|r |cRXP_WARN_bei maximaler Reichweite und wirkt es sofort erneut, falls sie euch zu Boden werfen|r
    >>|cRXP_WARN_Falls ihr fehlschlagt und eure Zähmerruten-Aufladungen aufgebraucht sind, brecht die Quest ab, nehmt sie wieder an und kommt zurück|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6089 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Yaw Sharpmane
step
    .goto 1412/1,-399.07,-2378.95--c:Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_von ihr|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Akzeptiert die Quest Der Weg der Jäger
    .target Skorn Whitecloud
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
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
    #loop
    .goto 1412/1,-1360.30,-2568.01,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1403.97,-2457.38,50,0--c:Mulgore,67.19,63.78
    .goto 1412/1,-1360.30,-2568.01,50,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1232.89,-2544.03,50,0--c:Mulgore,63.86,66.31
    .goto 1412/1,-1127.57,-2516.98,50,0--c:Mulgore,61.81,65.52
    .goto 1412/1,-1117.30,-2373.13,50,0--c:Mulgore,61.61,61.32
    .goto 1412/1,-1218.51,-2345.38,50,0--c:Mulgore,63.58,60.51
    .goto 1412/1,-1320.23,-2306.34,50,0--c:Mulgore,65.56,59.37
    .goto 1412/1,-1426.06,-2295.72,50,0--c:Mulgore,67.62,59.06
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Präriewolfalpha|r
    >>|cRXP_WARN_Dies erlaubt es euch|r |T132278:0|t[Biss Rang 2] zu trainieren
    .mob Prairie Wolf Alpha
step << Tauren
    #completewith Centaurs
    >>Tötet die |cRXP_ENEMY_Präriewolfalphas|r in der Gegend. Plündert sie für ihre |cRXP_LOOT_Zähne|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Kundschafter der Galak|r und |cRXP_ENEMY_Zentaur der Galak|r
    .complete 99080,2 --|4/4 Galak Outrunner slain
    .mob +Galak Outrunner
    .complete 99080,1 --|6/6 Galak Centaur slain
    .mob +Galak Centaur
step
    .goto 1412/1,-1246.100,-2181.700
    >>Tötet |cRXP_ENEMY_Herak der Plünderer|r. Plündert ihn, um seinen |cRXP_LOOT_Kopf|r zu erhalten
    .complete 99080,3 --|1/1 Herak's Head
    .mob Herak the Pillager
step
    #label Centaurs
    #loop
    .goto 1412/1,-1248.700,-2265.300,0
    .goto 1412/1,-1248.700,-2265.300,50,0
    .goto 1412/1,-1394.500,-2316.500,50,0
    .goto 1412/1,-1188.000,-2216.400,50,0
    >>Tötet |cRXP_ENEMY_Kundschafter der Galak|r und |cRXP_ENEMY_Zentaur der Galak|r
    .complete 99080,2 --|4/4 Galak Outrunner slain
    .mob +Galak Outrunner
    .complete 99080,1 --|6/6 Galak Centaur slain
    .mob +Galak Centaur
step << Tauren
    #label AlphaTeeth
    #loop
    .goto 1412/1,-1360.30,-2568.01,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1403.97,-2457.38,50,0--c:Mulgore,67.19,63.78
    .goto 1412/1,-1360.30,-2568.01,50,0--c:Mulgore,66.34,67.01
    .goto 1412/1,-1232.89,-2544.03,50,0--c:Mulgore,63.86,66.31
    .goto 1412/1,-1127.57,-2516.98,50,0--c:Mulgore,61.81,65.52
    .goto 1412/1,-1117.30,-2373.13,50,0--c:Mulgore,61.61,61.32
    .goto 1412/1,-1218.51,-2345.38,50,0--c:Mulgore,63.58,60.51
    .goto 1412/1,-1320.23,-2306.34,50,0--c:Mulgore,65.56,59.37
    .goto 1412/1,-1426.06,-2295.72,50,0--c:Mulgore,67.62,59.06
    >>Tötet die |cRXP_ENEMY_Präriewolfalphas|r in der Gegend. Plündert sie für ihre |cRXP_LOOT_Zähne|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step
    #completewith Fizsprocket
    .goto 1412/1,-1112.16,-1892.60,20 >> Reist zur Mine der Venture Company--c:Mulgore,61.51,47.29
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #completewith VentureCos
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --|5/5 Seaforium Mining Charge
step
    .goto 1412/1,-1288.89,-1756.97--c:Mulgore,64.95,43.33
    >>Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert ihn für |cRXP_LOOT_Fizsprockets Klemmbrett|r und |T134332:0|t[|cRXP_LOOT_Expansionspläne für Mulgore|r]
    >>|cRXP_WARN_Benutzt die|r |T134332:0|t[|cRXP_LOOT_Expansionspläne für Mulgore|r] |cRXP_WARN_um die Quest zu starten|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .collect 281031,1,98424 --Mulgore Expansion Plans (x1)
    .accept 98424 >>Akzeptiert die Quest Fizsprockets Notizen
    .mob Supervisor Fizsprocket
step
    .goto 1412/1,-1128.700,-1674.600
    >>Plündert die |cRXP_PICK_Dokumente|r auf dem Boden
    .complete 98424,1 --|1/1 Shredder Operation Instructions
step
    .goto 1412/1,-1315.800,-1672.100
    >>Plündert die |cRXP_PICK_Dokumente|r auf dem Boden
    .complete 98424,2 --|1/1 Barrens Operations Best Practices
step
    #label Fizsprocket
    .goto 1412/1,-1153.900,-1637.800
    >>Plündert die |cRXP_PICK_Dokumente|r auf dem Boden
    .complete 98424,3 --|1/1 One "Gerenzo", of Stonetalon
step
    #label VentureCos
    #loop
	.goto 1412/1,-1103.94,-1901.50,0--c:Mulgore,61.35,47.55
	.goto 1412/1,-1103.94,-1901.50,25,0--c:Mulgore,61.35,47.55
	.goto 1412/1,-1039.72,-1911.44,25,0--c:Mulgore,60.10,47.84
	.goto 1412/1,-1008.90,-1924.11,25,0--c:Mulgore,59.50,48.21
	.goto 1412/1,-1018.14,-1946.03,25,0--c:Mulgore,59.68,48.85
	.goto 1412/1,-1041.78,-1955.96,25,0--c:Mulgore,60.14,49.14
	.goto 1412/1,-1137.85,-1942.26,25,0--c:Mulgore,62.01,48.74
	.goto 1412/1,-1131.68,-1911.44,25,0--c:Mulgore,61.89,47.84
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #loop
    .goto Mulgore,63.77,43.97,0
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --Seaforium Mining Charge (5)
step
    #loop
    .goto 1412/1,-784.90,-2350.18,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-597.90,-2301.54,50,0--c:Mulgore,51.50,59.23
    .goto 1412/1,-674.96,-2336.14,50,0--c:Mulgore,53.00,60.24
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    .goto 1412/1,-904.60,-2371.07,50,0--c:Mulgore,57.47,61.26
    .goto 1412/1,-1016.60,-2410.12,50,0--c:Mulgore,59.65,62.40
    .goto 1412/1,-784.90,-2350.18,50,0--c:Mulgore,55.14,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 764 >>Gebt die Quest Die Venture Company ab
    .turnin 765 >>Gebt die Quest Vorsteher Fizsprocket ab
    .turnin 98424 >>Gebt die Quest Fizsprockets Notizen ab
	.unitscan Morin Cloudstalker
step << skip -- Tauren
    #softcore
	#completewith Thunderhorn2
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Tauren
    --#hardcore
    #completewith Thunderhorn2
    .subzone 222 >>Reist zum Dorf der Bluthufe
step
    .goto 1412/1,-393.100,-2333.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 99080 >>Gebt die Quest Vertreibt sie ab
    .accept 99082 >>Akzeptiert die Quest Der Oberhäuptling
    .target Baine Bloodhoof
step << Tauren
    #label Thunderhorn2
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Gebt die Quest Wildmane-Totem ab
    .accept 760 >>Akzeptiert die Quest Säuberung von Wildmane
    .target Mull Thunderhorn
step << !Druid
    #completewith ExitTB2
    .hs >> Ruhestein nach Donnerfels
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith ExitTB2
    .zone Thunder Bluff >>Reist nach Donnerfels
step
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit] 
    .turnin 76156 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76160 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
step << Hunter
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Gebt die Quest Der Weg der Jäger ab
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestComplete 861
step << Hunter
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto 1456/1,-82.45,-1472.07--c:Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Gebt die Quest Die Ausbildung des Tiers ab
    .target Holt Thunderhorn
step << Hunter
    .goto 1456/1,-47.79,-1435.06--c:Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Erlernt eure Begleiterfähigkeiten
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_Zieht|r |T132162:0|t[Wildtierausbildung] |cRXP_WARN_auf eure Aktionsleisten. Lehrt eurem Begleiter Fähigkeiten|r
step << Shaman/Druid
    .goto 1456/1,89.46,-1286.50--c:Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Erlernt Zweihandstreitkolben
    .target Ansekhwa
    .money <0.100
step << Hunter
    .goto 1456/1,89.46,-1286.50--c:Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
    .money <0.100
step
    .goto 1456/1,122.13,-1263.32--c:Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Akzeptiert die Quest Vorbereitungen auf die Zeremonie
    .target Eyahn Eagletalon
step
    #optional
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .accept 776 >>Akzeptiert die Quest Riten der Erdenmutter
    .turnin 99082 >>Gebt die Quest Der Oberhäuptling ab
    .turnin 98430 >>Gebt die Quest Die Langläufer ab
    .target Cairne Bloodhoof
    .isQuestComplete 99082
step
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Gebt die Quest Reise nach Donnerfels ab
    .accept 776 >>Akzeptiert die Quest Riten der Erdenmutter
    .turnin 98430 >>Gebt die Quest Die Langläufer ab
    .target Cairne Bloodhoof
step << Tauren Druid
    .goto 1456/1,-298.50,-1049.01--c:Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Akzeptiert die Quest Die Oasen des Brachlandes
    .target Arch Druid Hamuul Runetotem
step << Tauren Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>Reist zur Anhöhe der Ältesten--c:Thunder Bluff,71.60,30.15
step << Tauren Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    .turnin 5928 >>Gebt die Quest Dem Ruf folgen ab
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Tauren Druid
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Akzeptiert die Quest Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Tauren Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
    .zoneskip Moonglade
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Gebt die Quest Mondlichtung ab
    .accept 5930 >>Akzeptiert die Quest Großer Bärengeist
    .target Dendrite Starblaze
step << Tauren Druid
    .goto 1450/1,-2286.12,8068.28--c:Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großer Bärengeist|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Tauren Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Wirkt |r|T135758:0|t[Teleportieren: Mondlichtung]
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94--c:Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Gebt die Quest Großer Bärengeist ab
    .accept 5932 >>Akzeptiert die Quest Zurück nach Donnerfels
    .target Dendrite Starblaze
step << Tauren Druid
    #completewith DruidBearForm
    .hs >> Ruhestein nach Donnerfels
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Tauren Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.46--c:Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fliege nach Donnerfels
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Tauren Druid
    #label DruidBearForm
    .goto 1456/1,-283.89,-1039.96--c:Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Gebt die Quest Zurück nach Donnerfels ab
    .accept 6002 >>Akzeptiert die Quest Körper und Herz
    .target Turak Runetotem
step
    #ah
    .goto 1456/1,52.93,-1150.53--c:Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Dies öffnet eine einfache Quest. Falls ihr bereits 2 Berufe habt, überspringt diesen Schritt|r
    .train 8613 >>Erlernt |T134366:0|t[Kürschnerei]
    .target Mooranta
step
    #ah
    .goto 1456/1,53.35,-1161.18--c:Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .accept 768 >> Akzeptiert die Quest Leder sammeln
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,95.10,-1210.23--c:Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft zwölf|r |T134252:0|t[Leichtes Leder] |cRXP_BUY_aus dem Auktionshaus|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,53.35,-1161.18--c:Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Veren|r
    .turnin 768 >> Gebt die Quest Leder sammeln ab
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto 1456/1,-29.42,-1182.54--c:Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_Kauft|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihr, um euren Begleiter zu füttern|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step
    #label ExitTB2
    #completewith Harpies
    .goto 1456/1,186.800,-1309.400,30,0
    .goto 1456/1,147.900,-1290.600,30,0
    .zone Mulgore >>Verlasst Donnerfels
step
    #completewith ThunderBluff2
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r]. Benutzt es, um die Quest zu starten
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr ihn nicht finden könnt|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Akzeptiert die Quest Der Dämonennarbenumhang
    .use 4854
    .unitscan Ghost Howl
step
    #completewith Arrachea
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step
    #completewith next
    >>Plündert |cRXP_PICK_Windzornzapfen|r auf dem Boden
    >>|cRXP_WARN_Sie sind hauptsächlich unter/neben den Bäumen zu finden|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
step
    #loop
    .goto 1412/1,419.33,-1238.77,0--c:Mulgore,31.7,28.2
    .goto 1412/1,496.39,-940.79,0--c:Mulgore,30.2,19.5
    .goto 1412/1,419.33,-1238.77,40,0--c:Mulgore,31.7,28.2
    .goto 1412/1,496.39,-940.79,40,0--c:Mulgore,30.2,19.5
    >>Tötet |cRXP_ENEMY_Zauberhexerin der Windfurien|r. Plündert sie für ihre |cRXP_LOOT_Azurblaue Feder|r
    >>Tötet |cRXP_ENEMY_Matriarchin der Windfurien|r. Plündert sie für |cRXP_LOOT_Bronzene Feder|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
step
    #label Harpies
    #loop
    .goto 1412/1,460.000,-1055.700,0
    .goto 1412/1,517.800,-1163.900,40,0
    .goto 1412/1,530.000,-1074.100,40,0
    .goto 1412/1,593.200,-1003.200,40,0
    .goto 1412/1,460.000,-1055.700,40,0
    >>Plündert |cRXP_PICK_Windzornzapfen|r auf dem Boden
    >>|cRXP_WARN_Sie sind hauptsächlich unter/neben den Bäumen zu finden|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
step << Tauren
    .goto 1412/1,-135.52,-745.57--c:Mulgore,42.5,13.8
    .use 5416 >>|cRXP_WARN_Benutzt|r |T135139:0|t[Läuterungstotem der Wildmähnen] |cRXP_WARN_am Brunnen|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
    #label Arrachea
    #loop
    .goto 1412/1,-654.41,-690.77,0--c:Mulgore,52.6,12.2
    .goto 1412/1,-654.41,-690.77,90,0--c:Mulgore,52.6,12.2
    .goto 1412/1,-448.91,-824.34,90,0--c:Mulgore,48.6,16.1
    .goto 1412/1,-613.31,-1430.57,90,0--c:Mulgore,51.8,33.8
    .goto 1412/1,-839.36,-1399.74,90,0--c:Mulgore,56.2,32.9
    >>Tötet |cRXP_ENEMY_Arra'Chea|r (Großes schwarzes Kodo). Tötet und plündert ihn für sein |cRXP_LOOT_Horn|r
    >>|cRXP_WARN_Er patrouilliert im Uhrzeigersinn um das nördliche-Mulgore|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
step
    #label ProwlerClaws
    #loop
    .goto 1412/1,-201.28,-648.30,0--c:Mulgore,43.78,10.96
    .goto 1412/1,-201.28,-648.30,90,0--c:Mulgore,43.78,10.96
    .goto 1412/1,12.44,-730.15,90,0--c:Mulgore,39.62,13.35
    .goto 1412/1,140.88,-849.69,90,0--c:Mulgore,37.12,16.84
    .goto 1412/1,-241.87,-868.52,90,0--c:Mulgore,44.57,17.39
    .goto 1412/1,-454.05,-987.03,90,0--c:Mulgore,48.70,20.85
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r. Plündert sie für ihre |cRXP_LOOT_Klauen|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step
    #label ThunderBluff2
    #completewith next
    .zone Thunder Bluff >> Reist nach Donnerfels
step
    #label RFCPickups1
    .goto 1456/1,-218.13,-1055.97--c:Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >> Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .target Rahauro
    .dungeon RFC
step
    .goto 1456/1,-109.58,-1209.75--c:Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>Gebt die Quest Riten der Erdenmutter ab
    .target Cairne Bloodhoof
    .isQuestComplete 776
step
    .goto 1456/1,122.13,-1263.32--c:Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Gebt die Quest Vorbereitungen auf die Zeremonie ab
    .target Eyahn Eagletalon
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76160 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .accept 76240 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Auktionator Rikno Noragg|r
    >>|cRXP_BUY_Kauft einen|r |T133894:0|t[Roher glänzender Kleinfisch] |cRXP_BUY_vom Auktionshaus|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Reist zu |cRXP_FRIENDLY_Sewa Mistrunner|r
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Erlernt |T136245:0|t[Angeln]
    .target Kah Mistrunner
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Kauft eine|r |T132932:0|t[Angelrute] |cRXP_BUY_und|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_von ihr|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Legt die|r |T132932:0|t[Angelrute] an
    .use 6256
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Befestige das|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_WARN_an eurer|r |T132932:0|t[Angelrute]
    .use 6529
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Fischt im Teich, bis ihr einen |T133894:0|t[|cRXP_LOOT_Roher glänzender Kleinfisch|r] erhaltet
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
step
    >>Benutzt das |T132147:0|t[Messer Set] |cRXP_WARN_um|r |T134007:0|t[Fischstücke] |cRXP_WARN_herzustellen|r
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .turnin 76240 >>Gebt die Quest Schleicht mit der Erdenmutter ab
    .target Boarton Shadetotem
step
    .goto 1456/1,-123.15,-1412.93--c:Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Gebt die Quest Der Weg der Jäger ab
    .accept 860 >>Akzeptiert die Quest  Sergra Darkthorn
    .target Melor Stonehoof
step
    #completewith next
    .goto 1456/1,-141.400,-1432.700,10,0
    .goto 1456/1,-161.300,-1454.200,10,0
    .zone Mulgore >>Springt von der Anhöhe der Jäger auf den kleinen Hügel um Donnerfels zu verlassen
    >>|cRXP_WARN_Folgt den Pfeil genau, um nicht zu sterben. Heilt euch vor dem zweiten Sprung.|r
step
    #completewith WildManeTurnIn
    .subzone 222 >>Reist zum Dorf der Bluthufe
step
    .goto 1412/1,-353.86,-2336.14--c:Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    .goto 1412/1,-445.31,-2341.62--c:Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>Gebt die Quest Säuberung von Wildmane ab
    .target Mull Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80--c:Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto 1412/1,-442.74,-2315.59--c:Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Trainiere deine Klassenfähigkeiten
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78--c:Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30--c:Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Trainiere deine Klassenfähigkeiten
    .target Yaw Sharpmane
    .xp <12,1
step
    #optional
    #label WildManeTurnIn
step
    #completewith CampTFP
    .goto 1412/1,-1527.78,-2341.62,100,0--c:Mulgore,69.6,60.4
    .zone The Barrens >> Reist nach Das Brachland
step << Tauren Druid
    .goto 1413/1,-1633.08,-2499.35--c:The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_Benutzt das|r |T132857:0|t[Lunarstaub des Cenarius] |cRXP_WARN_beim|r |cRXP_PICK_Mondkinstein|r
    >>Tötet |cRXP_ENEMY_Mondklaue|r, wenn er spawnt. Sprecht mit dem |cRXP_FRIENDLY_Geist von Mondklaue|r danach.
    >>|cRXP_WARN_Be careful! |cRXP_ENEMY_Mondklaue|r wirkt|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Angriffe alle 10 Sek.)|r
    >>|cRXP_WARN_Vermeidet|r |cRXP_ENEMY_Donnerköpfe|r |cRXP_WARN_in der Gegend|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << !Druid
    .goto 1413/1,-1881.35,-2383.82--c:The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
	.target Omusa Thunderhorn
    .isQuestAvailable 848
step << Druid
    .goto 1413/1,-1881.35,-2383.82--c:The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .fly Thunder Bluff >>Fliege nach Donnerfels << Tauren
    .target Omusa Thunderhorn
    .isQuestAvailable 848
step << Tauren Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>Reist zur Anhöhe der Ältesten--c:Thunder Bluff,71.60,30.15
step << Tauren Druid
    .goto 1456/1,-281.56,-1039.41--c:Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Gebt die Quest Körper und Herz ab
    .target Turak Runetotem
step << Tauren Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fliege nach Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
step
    #optional
    #label CampTFP
step << Tauren
    .goto 1413/1,-1926.95,-2346.66--c:The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kirge Sternhorn|r
    .accept 854 >>Akzeptiert die Quest Reise nach Crossroads
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Reisen nördlichen in Richtung Das Wegekreuz
step
    .goto 1413/1,-2672.76,-544.77--c:The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Gebt die Quest Die Oasen des Brachlandes ab << Tauren Druid
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step
    .goto 1413/1,-2669.72,-481.94--c:The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Gebt die Quest Sergra Darkthorn ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step
    .goto 1413/1,-2595.75,-473.15--c:The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Gebt die Quest Reise zum Wegekreuz ab << Tauren
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step
    .goto 1413/1,-2607.91,-475.18--c:The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Er ist an der Spitze des Turms|r
    .accept 867 >>Akzeptiert die Quest Räuberische Harpyien
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2589.67,-424.51--c:The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
step
    .goto 1413/1,-2566.36,-350.19--c:The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Akzeptiert die Quest Ein Bündel Bälge
    .target Jahan Hawkwing
step
    .goto 1413/1,-2595.75,-437.35--c:The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_Fliegt nicht irgendwohin|r
    .turnin 6361 >>Gebt die Quest Ein Bündel Bälge ab
    .accept 6362 >>Akzeptiert die Quest Flug nach Thunder Bluff
    .target Devrak
step
    .goto 1413/1,-2639.32,-436.00--c:The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step << skip
    .goto 1413/1,-2645.40,-406.94--c:The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    --Setting HS later, gonna hearth back to TB first after Ratchet pirate section
step << Shaman
    #completewith next
    >>Sucht nach |cRXP_PICK_Chens leeres Fässchen|r neben |cRXP_FRIENDLY_Kranal|r. Sammelt die Beute und startet die Quest
    >>|cRXP_WARN_Ihr könnt es später holen, falls es nicht da ist|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Akzeptiert die Quest Chens leeres Fässchen
    .use 4926
step << Shaman
    .goto 1413/1,-3037.56,264.63--c:The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0--c:Durotar,36.74,57.78
    .goto 1411/1,-3899.31,-241.45,8,0--c:Durotar,36.63,58.15
    .goto 1411/1,-3899.31,-241.45,8,0--c:Durotar,36.63,58.15
    .goto 1411/1,-3906.71,-270.71,8,0--c:Durotar,36.77,58.98
    .goto 1411/1,-3910.94,-247.45,8,0--c:Durotar,36.85,58.32
    .goto 1411/1,-3931.56,-240.75,8,0--c:Durotar,37.24,58.13
    .goto 1411/1,-3964.35,-242.51,8,0--c:Durotar,37.86,58.18
    .goto 1411/1,-3974.39,-228.76,8,0--c:Durotar,38.05,57.79
    .goto 1411/1,-4020.92,-219.95,8,0--c:Durotar,38.93,57.54
    .goto 1411/1,-4034.67,-232.64,8,0--c:Durotar,39.19,57.90
    .goto 1411/1,-4033.08,-255.91,10 >> Reist den Weg den Berg hinauf zu |cRXP_FRIENDLY_Telf|r--c:Durotar,39.16,58.56
    >>|cRXP_WARN_Seid vorsichtig und fallt nicht vom Berg. Der Weg ist sehr schmal. Ihr könntet sterben, wenn ihr fallt|r
step << Shaman
    #label CallofFire2
    .goto 1411/1,-3999.24,-268.95--c:Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Gebt die Quest Ruf des Feuers ab
    .accept 1525 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << Warrior
    .goto 1413/1,-3598.95,186.93--c:The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Gebt die Quest Veteran Uzzek ab
    .accept 1498 >>Akzeptiert die Quest Weg der Verteidigung
    .target Uzzek
step << Warrior
    #loop
    .goto 1411/1,-4042.60,812.52,0--c:Durotar,39.34,28.25
    .goto 1411/1,-4030.44,724.04,40,0--c:Durotar,39.11,30.76
    .goto 1411/1,-4042.60,812.52,40,0--c:Durotar,39.34,28.25
    .goto 1411/1,-4030.44,875.62,40,0--c:Durotar,39.11,26.46
    .goto 1411/1,-4045.25,925.32,40,0--c:Durotar,39.39,25.05
    .goto 1411/1,-4077.50,960.22,40,0--c:Durotar,40.00,24.06
    .goto 1411/1,-4210.22,952.11,40,0--c:Durotar,42.51,24.29
    .goto 1411/1,-4042.60,812.52,40,0--c:Durotar,39.34,28.25
    >>Tötet |cRXP_ENEMY_Blitzechse|r. Plündert sie für ihre |cRXP_ENEMY_Schuppen|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto 1413/1,-3598.95,186.93--c:The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Gebt die Quest Weg der Verteidigung ab
    .accept 1502 >>Akzeptiert die Quest Thun'grim Firegaze
    .target Uzzek

]])
